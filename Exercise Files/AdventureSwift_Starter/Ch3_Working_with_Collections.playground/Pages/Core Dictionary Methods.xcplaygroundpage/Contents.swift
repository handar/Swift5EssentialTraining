/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
Dictionary elements can be easily updated and removed using subscript syntax or class methods.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Caching and overwriting items
var playerStats: [String:Int] = ["HP": 100, "Attack": 35, "Gold": 29]
var oldValue = playerStats.updateValue(30, forKey: "Attack") //will create a keyvalue pair if it doesnt exist

//playerStats = ["Evasion": 12, "MP": 55] //gonna override dictionary elements with the new one

// Caching and removing items
//playerStats["Gold"] = nil //removes gold from the dictionary
var removedValue = playerStats.removeValue(forKey: "Gold")

print(playerStats)

// Nested dictionaries
var questBoard = [
    //value for each key is going to be a dictionary
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the boss",
        "Secret": "Win with 50% health"
    ]
]

//access Fetch Gemstone quest
var gemstoneObjective = questBoard["Fetch Gemstones"]?["Objective"] //? means break the return chain if any of the keys dont exist and return a nil value
