struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func getFullName() -> String {
        if middleName == nil {
            return  firstName + " " + lastName
        } else {
            
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Jon", middleName: nil, lastName: "Mullins")


me.getFullName()

// ^^^^ that's thte wrong way

let airportCodes  = ["CDG": "Charles de Gaulle"]
//let newYorkAirport = airportCodes["JFK"]

if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("That key does not exist")
}

let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""


if let movie = movieDictionary["Spectre"],
    let cast = movie["cast"] {
    leadActor = cast[0]
}

struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend(dict: [String: String]) -> Friend? {
    guard let name = dict["name"], age = dict["age"] else {
        return nil
    }
    let address = dict["address"]
    return Friend(name: name, age: age, address: address)
}

struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        guard let title = dict["title"], let author = dict["author"] else {
            return nil
        }
        
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}