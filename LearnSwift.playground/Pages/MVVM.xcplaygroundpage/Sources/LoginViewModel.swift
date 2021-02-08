import Foundation

public protocol LoginViewModel {
    var username : String? {get set}
    var password : String? {get set}
    func isUserNameValid(_ userName:String) -> Error?
    func login(userName: String, password: String, result:@escaping (Result<String,Error>)->Void)
}

public class EmailLoginViewModel : LoginViewModel {
    public var username: String?
    public var password: String?
    
    public func isUserNameValid(_ userName:String) -> Error? {
        return nil
    }
    
    public func login(userName: String, password: String, result:@escaping (Result<String,Error>)->Void) {
        DispatchQueue.global(qos: .userInteractive).async {
            result(.success("Hello \(userName)"))
        }
    }
}
