import UIKit

struct Place : Decodable {
    var name : String
    var latitude : Double
    var longitude : Double

}

let json = """
{
    "places": [
    {
        "name" : "Costa Rica",
        "latitude" : 34.56,
        "longitude" : 65.67
    },
    {
        "name" : "Boston",
        "latitude" : 134.56,
        "longitude" : 265.67
    }
    
    ]
}


""".data(using: .utf8)!

JSONDecoder().


    









