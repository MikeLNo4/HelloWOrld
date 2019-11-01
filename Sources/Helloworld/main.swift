import Foundation
import FoundationNetworking



func checkIsConnectedToNetwork() {
   let hostUrl: String = "https://google.com"
   if let url = URL(string: hostUrl) {
      var request = URLRequest(url: url)
      request.httpMethod = "HEAD"
      URLSession(configuration: .default)
      .dataTask(with: request) { (_, response, error) -> Void in
         guard error == nil else {
            print("Error:", error ?? "")
            return
         }
         guard (response as? HTTPURLResponse)?
         .statusCode == 200 else {
            print("The host is down")
            return
         }
         print("The host is up and running")
      }
      .resume()
   }
}
checkIsConnectedToNetwork()
