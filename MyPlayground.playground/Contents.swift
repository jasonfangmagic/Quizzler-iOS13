
struct Town {
    let name = "Angelaland"
    var citizens = ["Angela", "Jack Bauer"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify(){
        print("Defences increased")
    }
    
    mutating func harvestRice(){
        resources ["Rice"] = 100
    }
}
    

var myTown = Town()

print(myTown.citizens)

print("\(myTown.resources) has \(myTown.resources["Grain"]!) bags of grains")

myTown.citizens.append("Keanu Reeves")


print(myTown.citizens)

myTown.fortify()




struct Town2 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(townName: String, people: [String], stats: [String: Int]) {
        
        name = townName
        citizens = people
        resources = stats
    }
    
    func fortify(){
        print("Defences increased")
    }
}

var anotherTown = Town2(townName: "Nameless Island", people: ["Tom Hanks"], stats: ["Coconuts": 100])

print(anotherTown.citizens)


struct Town3 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify(){
        print("Defences increased")
    }
}
var anotherTown2 = Town3(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])

var ghostTown = Town3(name: "Ghosty", citizens: [], resources: ["Tumblewee": 1])

ghostTown.fortify()


// Functions

//1. Functions with code
func greeting(){
    print("Hello")
}
greeting()
//2. Functions with Inputs
func greeting2(name: String){
    print("Hello \(name)")
}
greeting2(name: "Jason")
// 3. Functions with outputs
func greeting3(name: String) -> Bool {
    if name == "Jason"{
        return true
    } else {
        return false
    }
}
var doorsShouldOpen = greeting3(name: "Jaosn")
print(doorsShouldOpen)
