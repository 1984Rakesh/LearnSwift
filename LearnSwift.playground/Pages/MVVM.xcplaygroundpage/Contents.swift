//: MVVM
/*:
 * Model-View-ViewModel this makes it easy to undertsand the difference components of MVVM
 * Similar to MVC design pattern
 * Model : same as model in MVC
 * View : same as view in MVC this might also contain combination of controller and view class to form the VIEW part
 * ViewModel :
    * acts a bridge between the model and the view, View model contains the logic to perform network or database operations.
    * Validations on data, and actions that needs to performed on the data.
    * ViewModel generally is a protocol which is further implemented by some concreate class.
    * which then passed on to View. View in unware of the concreate ViewModel class and Model Class should never be refered by the View class.
 */
import PlaygroundSupport

let loginVC = LoginViewController()
PlaygroundPage.current.liveView = loginVC
