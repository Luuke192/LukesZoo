//
//  zooClass.swift
//  LukesZoo-LL
//
//  Created by Lucas Lell on 10/13/16.
//  Copyright © 2016 Luuke192. All rights reserved.
//

import Foundation

class ZooMain {
    var listOfEmployees = [Employee]()
    var listOfVisitors = [Visitor]()
    var listOfMammals = [Mammal]()
    var listOfBirds = [Birds]()
    var listOfAmphibians = [Amphibian]()
    let io = Io()
    
    // !!!!CREATING PEOPLE DOWN HERE!!!!
    
    func newPerson(_ typeOfPerson: String) {
        if typeOfPerson == "EMPLOYEE" {
            newEmployee()
        } else if typeOfPerson == "VISITOR" {
            newVisitor()
        } else {
            print("No such command! Try again.")
        }
    }
    
    func newEmployee() {
        print("\nWhat's the name of the new employee?: ")
        let name = io.getInput()
        print("\nWhat should their ID tag be?: ")
        let tag = io.getInput()
        if let newTag = Int(tag) {
            let newPerson = Employee(name, newTag)
            listOfEmployees.append(newPerson)
        } else {
            print("\nTry again and please use a number this time!")
        }
    }
    
    func newVisitor() {
        print("\nWhat's the name of the new visitor?: ")
        let name = io.getInput()
        let newPerson = Visitor(name)
        listOfVisitors.append(newPerson)
    }
    
    // !!!!DISPLAY PEOPLE FUNCTIONS!!!!
    
    func showEmployees() {
        print("\n----Employees----\n")
        if listOfEmployees.count - 1 >= 0 {
            for each in 0...listOfEmployees.count - 1 {
                print("Employee Name: \(listOfEmployees[each].name)\nID: \(listOfEmployees[each].tag)\n")
            }
            print("\n")
        } else {
            return
        }
    }
    
    func showVisitors() {
        print("\n----Visitors----\n")
        if listOfVisitors.count - 1 >= 0 {
            for each in 0...listOfVisitors.count - 1 {
                print("Visitors Name: \(listOfVisitors[each].name)\n")
            }
            print("\n")
        } else {
            return
        }
    }
    
    // !!!!CREATING PEOPLE UP HERE!!!!
    
    
    // !!!!CREATING ANIMALS DOWN HERE!!!!
    
    func newAnimal(_ typeOfAnimal: String) {
        if typeOfAnimal == "MAMMAL" {
            newMammal()
        } else if typeOfAnimal == "AMPHIBIAN" {
            newAmphibian()
        } else if typeOfAnimal == "BIRD" {
            newBird()
        } else {
            print("No such command! Try again.")
        }
    }
    
    func newMammal() {
        var hasFur = false
        print("\nWhat's the name of this new mammal?:")
        let name = io.getInput()
        print("\nWhat species is it derived from?:")
        let species = io.getInput()
        print("\nDoes the new mammal have fur? Type 'Y' or 'Yes' for yes! 'N' or 'No' for no!:")
        let hasFurOrNot = io.getInput().uppercased()
        if hasFurOrNot == "Y" || hasFurOrNot == "YES" {
            hasFur = true
        }
        
        let newMammal = Mammal(name, Animal.Exhibit.mammalsRoam, species, hasFur)
        listOfMammals.append(newMammal)
    }
    
    func newAmphibian() {
        print("\nWhat's the name of this new amphibian?:")
        let name = io.getInput()
        print("\nWhat species is it derived from?:")
        let species = io.getInput()
        print("\nWhat's the weight of the new amphibian in pounds?:")
        if let weight = Int(io.getInput()) {
            let newAmphibian = Amphibian(name, Animal.Exhibit.amphibianTank, species, weight)
            listOfAmphibians.append(newAmphibian)
        } else {
            print("Try using a number value this time!")
        }
    }
    
    func newBird() {
        var migrating = false
        print("\nWhat's the name of this new bird?:")
        let name = io.getInput()
        print("\nWhat species is it derived from?:")
        let species = io.getInput()
        print("Does the new bird have a migration pattern? Type 'Y' or 'Yes' for yes! 'N' or 'No' for no!:")
        let migrateOrNot = io.getInput().uppercased()
        if migrateOrNot == "Y" || migrateOrNot == "YES" {
            migrating = true
        }
        
        let newbird = Birds(name, Animal.Exhibit.teamEagle, species, migrating)
        listOfBirds.append(newbird)
    }
    
    // !!!!DISPLAY ANIMAL FUNCTIONS!!!!
    
    func showMammals() {
        print("\n----Mammals----\n")
        if listOfMammals.count - 1 >= 0 {
            for each in 0...listOfMammals.count - 1 {
                print("Mammal Name: \(listOfMammals[each].name)\nExhibit Name: \(listOfMammals[each].exhibit.rawValue)\nSpecies Name: \(listOfMammals[each].species)\nHas Fur: \(listOfMammals[each].hasFur)")
            }
            print("\n")
        } else {
            return
        }
    }
    
    func showAmphibians() {
        print("\n----Amphibians----\n")
        if listOfAmphibians.count - 1 >= 0 {
            for each in 0...listOfAmphibians.count - 1 {
                print("Amphibian Name: \(listOfAmphibians[each].name)\nExhibit Name: \(listOfAmphibians[each].exhibit.rawValue)\nSpecies Name: \(listOfAmphibians[each].species)\nWeight: \(listOfAmphibians[each].weight) lbs")
            }
            print("\n")
        } else {
            return
        }
    }
    
    func showBirds() {
        print("\n----Birds----\n")
        if listOfBirds.count - 1 >= 0 {
            for each in 0...listOfBirds.count - 1 {
                print("Bird Name: \(listOfBirds[each].name)\nExhibit Name: \(listOfBirds[each].exhibit.rawValue)\nSpecies Name: \(listOfBirds[each].species)\nHas a Migrating Pattern: \(listOfBirds[each].migrating)")
            }
            print("\n")
        } else {
            return
        }
    }
    
    // !!!!CREATING ANIMALS UP HERE!!!!
}
