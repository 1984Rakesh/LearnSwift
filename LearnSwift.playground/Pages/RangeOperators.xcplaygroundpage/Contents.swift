//: **Range operators**
//: **Closed Range**
for i in 1...10 {
    print("\(i)")
}
//: **Half Open Range**
for i in 1..<10 {
    print("\(i)")
}
//: **One Sided Range**
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names[...2] {
    print("\(name)")
}

for name in names[2...] {
    print("\(name)")
}

let allNumbers = Array(1...10)
let evenNumbers = allNumbers.filter{ $0  % 2 == 0 }
print("\(evenNumbers)")
