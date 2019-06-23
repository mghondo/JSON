import UIKit

extension DateFormatter {
    static let iso8601Full : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}

enum AddressType : String, Decodable {
    case apartment = "apartment"
    case house = "house"
    case condo = "condo"
    case townHouse = "townHouse"
}

struct Geo : Decodable {
    var latitude : Double
    var longitude : Double
}

struct Address : Decodable {
    var street : String
    var city : String
    var state : String
    var geo : Geo
    var addressType : AddressType
}

struct Customer : Decodable {
    var firstName : String
    var lastName : String
    var address : Address
    var dateCreated : Date
}

struct CustomerResponse : Decodable {
    var customers : [Customer]
}

let json = """

    {
        "customers": [
        {
            "firstName" : "John",
            "lastName" : "Doe",
            "dateCreated" : "05/09/2018",
            "address" : {
                "street" : "1200 Richmond Ave",
                "city" : "Houston",
                "state" : "TX",
            "geo" : {
                "latitude" : 34.56,
                "longitude" : 35.65
                },
                "addressType" : "house"
            }
        }
    ]
}

""".data(using: .utf8)!

let decoder = JSONDecoder()
decoder.dateDecodingStrategy = .formatted(DateFormatter.iso8601Full)

let customerResponse = try! decoder.decode(CustomerResponse.self, from: json)
print(customerResponse)






//import UIKit
//
//
//
//let json = """
//
//
//
//""".data(using: .utf8)!


