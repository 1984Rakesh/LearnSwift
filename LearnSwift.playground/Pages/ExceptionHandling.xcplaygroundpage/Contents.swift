//: **Exception Handling**
//: Error is a protocol hence can implemented by struct enum class
import Foundation

enum HTTPError : Int,  LocalizedError {
    case NotFound = 202, AllOk = 200
    
    public var errorDescription : String {
        switch self {
        case .NotFound:
            return "Not Found"
            
        case .AllOk:
            return "All Ok!!"
        }
    }
}

//: **functions can throw error**
func someFuncThatCanThrowError() throws -> String {
    throw HTTPError.NotFound
}

func someFuncThatCatchesError() {
    do {
        let value = try someFuncThatCanThrowError()
    } catch {
        if let e = error as? HTTPError {
            print(e.errorDescription)
        }
        else {
            print(error)
        }
    }
}
