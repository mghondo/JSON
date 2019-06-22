import UIKit

struct Customer : Codable {
    var firstName : String
    var lastName : String
    var age : Int

//The cool thing is that the code below isn't needed.
//    private enum CodingKeys : String, CodingKey {
//        case firstName
//        case lastName
//        case age
//    }
//
//    func encode(to encoder : Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.firstName, forKey: .firstName)
//        try container.encode(self.lastName, forKey: .lastName)
//        try container.encode(self.age, forKey: .age)
//    }

}

let json = """
{
    "firstName" : "John",
    "lastName" : "Doe",
    "age" : 34
}
""".data(using: .utf8)!

let customer = try! JSONDecoder().decode(Customer.self, from: json)
print(customer)

let encodeCustomerJSON = try! JSONEncoder().encode(customer)

print(encodeCustomerJSON)

print(String(data: encodeCustomerJSON,encoding : .utf8)!)









    





