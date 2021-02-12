//: Lens
//: * In below define structure all structures are immutable, and properties within them are immutable
//: * structs are value type 
struct Address : CustomDebugStringConvertible {
    let street : String
    var debugDescription: String {
        return "{\(street)}"
    }
}

struct Company : CustomDebugStringConvertible {
    let name : String
    let address : Address
    let person : Person
    
    var debugDescription: String {
        return "{\(name), \(person), \(address)}"
    }
}

struct Person : CustomDebugStringConvertible {
    let name : String
    let address : Address
    
    var debugDescription: String {
        return "{\(name), \(address)}"
    }
}

let companyAddress = Address(street: "Viman Nagar")
let personAdress = Address(street: "Kalyani nagar")
let person = Person(name: "Rakesh", address: personAdress)
let company = Company( name: "Ohum", address:companyAddress, person: person)


//company.address = Address(street: "This causes error!!"), since address is let

extension Person {
    func getName() -> String {
        return self.name
    }
    
    func  setName(_ name:String) -> Person {
        Person(name: name, address: self.address)
    }
    
    func getAddress() -> Address {
        self.address
    }
    
    func setAddress(_ address:Address ) -> Person {
        Person(name: self.name, address: address)
    }
}

extension Company {
    func getName() -> String {
        return self.name
    }
    
    func  setName(_ name:String) -> Company {
        Company(name: name, address: self.address, person: self.person)
    }
    
    func getAddress() -> Address {
        self.address
    }
        
    func setAddress(_ address:Address) -> Company {
        Company(name: self.name, address: address, person: self.person)
    }
    
    func getPerson() -> Person {
        self.person
    }
        
    func setPerson(_ person:Person) -> Company {
        Company(name: self.name, address: self.address, person:person)
    }
}

extension Address {
    func getStreet() -> String {
        self.street
    }
    
    func setStreet(_ name:String) ->Address {
        return Address(street: name)
    }
}

company.setAddress(Address(street: "Koregoan Park")) // this actually returns a new company
company.setPerson(company.person.setName("Dipak"))

//: Lens
struct Lens <A, B>{
    let get : (A) -> B
    let set : (B, A) -> A
}

let nameLens = Lens<Person,String>(get: { $0.getName() },
                                   set: { $1.setName($0) })
nameLens.get(person)
nameLens.set("Dipak", person)

let personLens = Lens<Company,Person>( get:{ $0.getPerson() },
                                        set:{ $1.setPerson($0)})
personLens.get(company)
personLens.set(
    nameLens.set( "Rakesh Patole",
                  personLens.get(company)),
    company)

personLens
nameLens

func compose<A,B,C>(lhs:Lens<A,B>, rhs:Lens<B,C>) -> Lens<A,C> {
    Lens<A,C>(get: { a in rhs.get(lhs.get(a)) },
              set: { (c, a) in lhs.set( rhs.set(c, lhs.get(a)), a) })
}

let personNameLens = compose(lhs: personLens, rhs: nameLens)
personNameLens.get(company)
personNameLens.set("Dipak",company)

func *<A,B,C>(lhs:Lens<A,B>, rhs:Lens<B,C>) -> Lens<A,C> {
    compose(lhs: lhs, rhs: rhs)
}

(personLens * nameLens).get(company)
(personLens * nameLens).set("Amit", company)

extension Address {
    static let streetLens = Lens<Address,String>(get: { $0.getStreet() },
                                                 set: { $1.setStreet($0) })
}

extension Person {
    static let nameLens = Lens<Person,String>(get: { $0.getName() },
                                              set: { $1.setName($0) })
    
    static let addressLens = Lens<Person,Address>(get: { $0.getAddress() },
                                                  set: { $1.setAddress($0) })
}

extension Company {
    static let nameLens = Lens<Company,String>(get: { $0.getName() },
                                               set: { $1.setName($0) })
    
    static let personLens = Lens<Company,Person>(get: { $0.getPerson() },
                                                 set: { $1.setPerson($0) })
    
    static let addressLens = Lens<Company,Address>(get: { $0.getAddress() },
                                                   set: { $1.setAddress($0) })
}

(Company.personLens * Person.addressLens * Address.streetLens).get(company)
(Company.personLens * Person.addressLens * Address.streetLens).set("Wadgaon", company)

infix operator *~: MultiplicationPrecedence
func *~ <A,B> (_ lhs:Lens<A,B>, rhs:B) -> (A) -> A {
    return { a in lhs.set( rhs, a) }
}

let someFunction = Person.nameLens *~ "Ranjeeta"
someFunction(person)

infix operator |>: AdditionPrecedence
func |> <A, B, C> (_ lhs:@escaping (A)->B, rhs:@escaping (B)->C ) -> (A)->C {
    return { a in rhs(lhs(a)) }
}

func |> <A, B> (_ x:A, f:(A)->B ) -> B {
    f(x)
}

let newCompany = company
    |> Company.personLens * Person.nameLens *~ "Manisha"
    |> Company.personLens * Person.addressLens * Address.streetLens *~ "Nanded City"
    |> Company.nameLens *~ "Times"


print("\(newCompany)")
