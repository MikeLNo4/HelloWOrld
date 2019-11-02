import Foundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


class ViewController: UIViewController {

    var destination:String = "192.168.0.1"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.checkIsConnectedToNetwork(destination: String)
    }

    func checkIsConnectedToNetwork(to destination: String) {
        let hostUrl: String = destination
        if let url = URL(string: hostUrl) {
            var request = URLRequest(url: url)
            //url.description
            request.httpMethod = "HEAD"
            URLSession(configuration: .default)
                .dataTask(with: request) { (_, response, error) -> Voidin
                    guard error == nil else {
                        print("Error:", error ?? "")
                        return
                    }
                    guard (response as? HTTPURLResponse)?
                        .statusCode == 200 else {
                            print("The host is down")
                            return
                    }
                    print("The host \(request) is up and running")
            }
            .resume()
        }
    }
}
let me = ViewController()
me.checkIsConnectedToNetwork(to: "http://192.168.189.1/")
