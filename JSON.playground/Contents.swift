import UIKit





let payload1 = """
{
    "coordinates": [
        {
            "latitude": 37.332,
            "longitude": -122.011
        }
    ]
}

""".data(using: .utf8)!

let payload2 = """
{
    "coordinates": [
        [37.332, -122.011]
    ]
}

""".data(using: .utf8)!

let payload3 = """
{
    "coordinates": [
        "37.332, -122.011"
    ]
}

""".data(using: .utf8)!

//let json = """
//
//
//
//""".data(using: .utf8)!


