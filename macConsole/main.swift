//
//  main.swift
//  macConsole
//
//  Created by Droisys on 8/30/17.
//  Copyright © 2017 meroApp. All rights reserved.
//

import Foundation
import Darwin

extension String {
    var asciiArray: [UInt32] {
        return unicodeScalars.filter{$0.isASCII}.map{$0.value}
    }
}
extension Character {
    var asciiValue: UInt32? {
        return String(self).unicodeScalars.filter{$0.isASCII}.first?.value
    }
}

extension String {
    
    var length: Int {
        return self.characters.count
    }
    
    subscript (i: Int) -> String {
        return self[Range(i ..< i + 1)]
    }
    
    func substring(from: Int) -> String {
        return self[Range(min(from, length) ..< length)]
    }
    
    func substring(to: Int) -> String {
        return self[Range(0 ..< max(0, to))]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return self[Range(start ..< end)]
    }
    
}
//print("Hello, World!")
//
//func mergeTwoArray(arr1:[Int],arr2:[Int])-> [Int]{
//    var result = arr1 + arr2;
//    
//    var i = 0;
//    var j = 0;
//    
//    // find indexes for items in arr1
//    for (k,_) in result.enumerated() {
//        
//        // if all the elements of arr1 are added then add all the elements of arr2 directly
//        if(i > arr1.count - 1){
//            result[k] = arr2[j];
//            j = j + 1;
//            continue;
//        }
//        
//        // if all the elements of arr2 are added then direclty add all the elements of arr1 to result
//        if(j > arr2.count - 1){
//            result[k] = arr1[i];
//            i = i + 1
//            
//            continue;
//        }
//        
//        if(arr1[i] < arr2[j]){
//            result[k] = arr1[i]
//            i = i + 1
//        }else{
//            result[k] = arr2[j]
//            j = j + 1
//        }
//        
////        print(k);
//    }
//    
//    return result;
//}
//
//let arr1 = [0,2,4,6,8,10]
//let arr2 = [1,3,5,7,9,11]
//
//let res = mergeTwoArray(arr1: arr1, arr2: arr2)

//func myMergeSort(input:[Int]){
//    var x = 2;
//    while(input.count >= x){
//        print(x);
//        x = 2 * x
//    }
//}


//let input = [6,5,1,3,8,4,7,9,2]
//
//var result = input;
//
//func myRecMergeSort(low:Int,high:Int,input:[Int]){
//    
//    let middle = (low + high)/2 + 1;
//    
//    myRecMergeSort(low: low, high: middle, input: input)
//    myRecMergeSort(low: middle, high: high, input: input)
//    
////    result = mergeTwoArray(arr1: <#T##[Int]#>, arr2: <#T##[Int]#>)
//    
//}


//myMergeSort(input: res)

//print(res)

//HKB

//let input:[Any] = [[1,2,3],4,5,[[6]],[[7]],[8],9]
//var result:[Int] = [];
//
//func flattenArray(input:[Any]){
//    
//    for item in input {
//        
//        if let arr = item as? [Any] {
//            flattenArray(input: arr);
//        }else{
//            print(item)
//        }
//    }
//}
//
//flattenArray(input: input)

//print(result)

//class Person: Equatable, Hashable {
//    var Id: Int
//    var Name: String
//    
//    init(id: Int, name: String?) {
//        self.Id = id
//        self.Name = name ?? ""
//    }
//    
//    var hashValue: Int {
//        get {
//            return Id.hashValue << 15 + Name.hashValue
//        }
//    }
//}
//
//func ==(lhs: Person, rhs: Person) -> Bool {
//    return lhs.Id == rhs.Id && lhs.Name == rhs.Name
//}

//var employees = Set<Employee>();
//var programmers = Set<Programmer>();

//programmers.sorted(by: <#T##(Programmer, Programmer) -> Bool#>)
//programmers.remove(<#T##member: Programmer##Programmer#>)
//print(Programmer(id: 90).hashValue)


//class EmployeeCollection {
//    
//    var employees:[Employee] = [];
//    
//    func filter(filterBy:(_ emp:Employee)-> Bool) -> [Employee]{
//        
//        var tempEmps:[Employee] = []
//        
//        for item in self.employees {
//            if(filterBy(item)){
//                tempEmps.append(item)
//            }
//        }
//        
//        return tempEmps;
//    }
//}
//
//var employess = EmployeeCollection()
//var salaryLessthan1000 = employess.filter { (emp:Employee) -> Bool in
//    if let salary = emp.salary , salary > 1000.0 {
//        return true
//    }else{
//        return false
//    }
//}
//
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//
////var mathFunction = addTwoInts
//
//
////func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
////    print("Result: \(mathFunction(a, b))")
////}
//
//func printMathResult(_ mathfunction:(Int,Int) -> Int){
//    print(mathFunction(1,2))
//}
//
//printMathResult(addTwoInts);

//class Programmer {
//    
//    var empId:Int;
//    var name:String?
//    
//    init(id:Int) {
//        self.empId = id
//    }
//}
//
//class Employee:Hashable,Equatable {
//    
//    var empId:Int;
//    var name:String?
//    
//    var salary:Double?
//    
//    var hashValue: Int {
//        get {
//            return empId;
//        }
//    }
//    
//    init(id:Int) {
//        self.empId = id
//    }
//    
//    static func ==(lhs: Employee, rhs: Employee) -> Bool {
//        return lhs.empId == rhs.empId
//    }
//}

//let input = [1,2,3,4,5,6,7,8]
//
//
//var count = 0
//for (i,item1) in input.enumerated() {
//    for (j,item2) in input.enumerated() {
//        for (k,item3) in input.enumerated() where i != j && j != k && i != k {
//            
//            count = count + 1
//            
//            print("(\(item1),\(item2),\(item3))")
//        }
//    }
//    
//    print(" ")
//}
//
//
//print(count)

//subset sum problem

/*let input = [1,2,3]
let sum = 7

var aArr = Array(repeating: -1, count: sum + 1)

var twoDMatrix:[[Int]] = Array(repeating: aArr, count: input.count)

for (i,arr) in twoDMatrix.enumerated() {
    twoDMatrix[i][0] = 1
}

twoDMatrix[0][input[0]] = 1

//print(twoDMatrix);

// traverse each item to fill up the matrix
for (row,item) in input.enumerated() {
    for col in 1...sum {
        
        guard row - 1 >= 0 else{
            continue;
        }
        
        if(twoDMatrix[row-1][col] == 1){
            twoDMatrix[row][col] = 1
            continue
        }
        
        guard col-input[row] >= 0 else{
            continue;
        }
        
        if(twoDMatrix[row-1][col-input[row]] == 1){
            twoDMatrix[row][col] = 1
        }
    }
}

//print(twoDMatrix[][])

print(twoDMatrix)*/

//find longest substring without repeating characters

//let input = "harikrishnabista"

//var visited:[Character?] = Array(repeating: nil, count: 256)
//var result:[Character?] = Array(repeating: nil, count: 256)

//var visited = ""
//var result = ""

//var lastRepetedItemIndex = 0;

//for (i,item) in input.characters.enumerated() {
//    
//    // checking if repeating other wise insert into visited
////    var count = 0;
//    var trackLastIndexOfVisited = 0
//    
//    if(visited.contains(String(item))){
//        print(visited.contains(String(item)))
//    }else{
//        
//    }
//    
////    for (j,itemVisited) in visited.enumerated() {
////        if( item == itemVisited){
////            lastRepetedItemIndex = j
////        }
////        
////        trackLastIndexOfVisited = j
////    }
//    
////    if(trackLastIndexOfVisited == visited.count - 1){
////        visited[i] = item
////    }else{
////        
////    }
//}

//Stack Min: How would you design a stack which, in addition to push and pop, has a function min which returns the minimum element? Push, pop and min should all operate in 0(1) time.
//Hints:#27, #59, #78


//Observe that the minimum element doesn't change very often. It only changes when a smaller element is added, or when the smallest element is popped.

//What if we kept track of extra data at each stack node? What sort of data might make it easier to solve the problem?
//
//
//
//8
//9

//
//
//10
//

//8
//7
//6

//let input = 126
//
//func sumDigits(n:Int)->Int {
//    
////    var val = n % 10
//    
//    if(n < 10){
//        return n;
//    }
//
//    return n % 10 + sumDigits(n: n/10 )
//}
//
//print(sumDigits(n: 126))

//public int countX(String str) {
//    
//}
//
//func countX(str:String)->Int{
//    
//    var newStr = str
//    
//    if(str.characters.count == 0){
//        return 0;
//    }
//    
//    var count = 0
//    if(str.lowercased().characters.last == "x"){
//        count = 1
//    }
//    
//    newStr.characters.removeLast()
//    
//    return count + countX(str: newStr)
//}
//
//print(countX(str: "Hxarikrishnabistax"))

//var newStr = "harikrishna"
//
//print(newStr)

// one edit away
//


//func checkIfOneEditAway(str1:String,str2:String)->Bool{
//    
//    var auxStorage = Array(repeating: 0, count: 256)
//    
//    for i in 0...max(str1.characters.count, str2.characters.count){
//        
//        // for string 1
//        if i < str1.characters.count {
//            let ch1 = Character(str1[i])
//            if let ascii = ch1.asciiValue {
//                auxStorage[Int(ascii)] = auxStorage[Int(ascii)] + 1
//            }
//        }
//        
//        //for string2
//        if i < str2.characters.count {
//            let ch2 = Character(str2[i])
//            
//            if let ascii = ch2.asciiValue {
//                auxStorage[Int(ascii)] = auxStorage[Int(ascii)] - 1
//            }
//        }
//    }
//    
//    var sum = 0;
//    for item in auxStorage {
//        sum = sum + item
//    }
//    
//    if(sum == 1 || sum == -1){
//        return true
//    }
//    
//    return false
//}
//
//print(checkIfOneEditAway(str1: "pale", str2: "palel2"))

//Write a function that takes an unsigned integer and returns the number of 1 bits it has.


//Given 2 integer arrays, determine of the 2nd array is a rotated version of the 1st array. Ex. Original Array A={1,2,3,5,6,7,8} Rotated Array B={5,6,7,8,1,2,3}

//Find the only element in an array that only occurs once

// solution is to create an dictionary and count the number of occurance of the element


//let input = [5,6,7,8,1,2,3,3,4,5,3,4,5]
//
//var aDic:[Int:Int] = Dictionary()
//
//for item in input {
//    
//    if let existingItem = aDic[item] {
//        aDic[item] = existingItem + 1
//    }else{
//        aDic[item] = 1
//    }
//}
//
//for item in aDic {
//    if(item.value > 1){
//        
//    }else{
//        print(item.key)
//    }
//}
//
////let result =  aDic.sorted { (item1: (key: Int, value: Int), item2: (key: Int, value: Int)) -> Bool in
////    return item1.key > item2.key
////}
////
////print(result)
//
//print(aDic.keys.sorted())

//Use dynamic programming to find the first X prime numbers

/*var result:[Int] = []
result.append(2)

func checkIfPrime(n:Int)->Bool{
    
    for item in result{
        
        if(item > n/2){
            break
        }
        
        if( n % item == 0) {
            return false
        }
    }
    
    result.append(n)
    return true
}

//print(checkIfPrime(n: 11))

let input = 25

for index in 3...input {
    print(checkIfPrime(n: index))
}

print(result)*/
//Implement parseInt

/*func parseInt(input:String)->Int? {
    var result = 0;
    
    var multiplier = 1
    for item in input.characters.reversed() {
        
        // return if they are not parseble
        guard let digitInt = getBasicInt(digit: item) else {
            return nil
        }

        guard result < Int.max - multiplier * digitInt else {
            return nil
        }
        
        result = result + multiplier * digitInt
        
        
        guard multiplier < Int.max / 10 else {
            return nil
        }
        
        multiplier = multiplier * 10
    }
    
    return result
}


func getBasicInt(digit:Character)->Int? {
    switch digit {
    case "0":
        return 0
    case "1":
        return 1
    case "2":
        return 2
    case "3":
        return 3
    case "4":
        return 4
    case "5":
        return 5
    case "6":
        return 6
    case "7":
        return 7
    case "8":
        return 8
    case "9":
        return 9
    default: return nil
    }
}*/

//print(parseInt(input: "101010101010101001010101010101010010101010101010100101010101010101001010101010101010010101010101010100"))

//print("\(Int.max)")

//leetcode
//8.1 Triple Step: A child is running up a staircase with n steps and can hop either 1 step, 2 steps, or 3 steps at a time. Implement a method to count how many possible ways the child can run up the stairs.

//let n = 3
//var storage:[Int] = Array(repeating: -1, count: n+1)
//
//func coutWaysOfClimbingStairCase(_ n:Int)->Int{
//    if( n < 0){
//        return 0
//    }else if(n == 1){
//        return 1
//    }else if(storage[n] > 0){
//        return storage[n]
//    }else{
//       
//        let result = coutWaysOfClimbingStairCase(n-1) + coutWaysOfClimbingStairCase(n-2) + coutWaysOfClimbingStairCase(n-3)
//        
//        storage[n] = result
//        
//        return result;
//    }
//}
//
//print(coutWaysOfClimbingStairCase(n))


//extension Double {
//    var km: Double { return self * 1000.0 }
//    var m: Double { return self }
//    var cm: Double { return self / 100.0 }
//    var mm: Double { return self / 1000.0 }
//    var ft: Double { return self / 3.28084 }
//}
//////let oneInch = 25.4.mm
//////print("One inch is \(oneInch) meters")
//////// Prints "One inch is 0.0254 meters"
////let threeFeet = 3.ft
////print("Three feet is \(threeFeet.km) km")
////// Prints "Three feet is 0.914399970739201 meters"
//
//let aMarathon = 42.km + 195.ft
//print(aMarathon)

//Iterator design pattern

//protocol CollectionContainer {
//    func getIterator() -> Iterator
//}
//
//protocol Iterator {
//    func hasNext()->Bool
//    func next()->String
//}
//
//class NamesCollection: CollectionContainer {
//    
//    private var items:[String]
//    private var iterator:CollectionIterator
//    
//    init(items:[String]) {
//        self.items = items
//        self.iterator = CollectionIterator(items: items)
//    }
//    
//    func getIterator() -> Iterator{
//        return self.iterator
//    }
//}
//
//class CollectionIterator: Iterator {
//    
//    private var items:[String]
//    private var index = 0
//    
//    init(items:[String]) {
//        self.items = items
//    }
//    
//    func next() -> String {
//        let val = items[index]
//        
//        index = index + 1
//        
//        return val
//    }
//    
//    func hasNext() -> Bool {
//        if(index < (items.count - 1)){
//            return true
//        }
//        return false
//    }
//}
//
//
//let names = ["Hari","Krishna","Bista","Ghimire"]
//
//let collection = NamesCollection(items: names)
//
//while(collection.getIterator().hasNext()){
//    print(collection.getIterator().next())
//}

// generating list of unique random nunbers
//var arr = Array(repeating: -1, count: 25)
//
//for (i,_) in arr.enumerated() {
//    arr[i] = i
//}
//
//for i in 0...arr.count - 1 {
//    let lower : UInt32 = UInt32(i)
//    let upper : UInt32 = UInt32(arr.count - 1)
//    let randIndex = Int(arc4random_uniform(upper - lower) + lower)
//    
//    //swap ith index value with randIndex
//    let temp = arr[i]
//    arr[i] = arr[randIndex]
//    arr[randIndex] = temp
//}
//
//print(arr)

//protocol IDirectoryItem {
//    var name:String {get set}
//    var size:Double {get set}
//    
//    func computeSize()->Double
//    
//    func printMe()
//}
//
//
//class File: IDirectoryItem {
//    var size: Double
//    var name: String
//
//    func printMe() {
//        print(self.name)
//    }
//
//    func computeSize() -> Double {
//        return self.size
//    }
//
//    
//
//    init(name:String, size:Double) {
//        self.name = name
//        self.size = size
//    }
//}
//
//class Directory: IDirectoryItem {
//    
//    var size: Double
//    var name: String
//    
//    var files:[IDirectoryItem] = []
//    
//    init(name:String, size:Double) {
//        self.name = name
//        self.size = size
//    }
//    
//    func printMe() {
//        print(self.name)
//    }
//    
//    func computeSize() -> Double {
//        return self.size
//    }
//}

//class Employee {
//    var name:String
//    var empId:Int
//    
//    init(name:String,empId:Int) {
//        self.name = name
//        self.empId = empId
//    }
//}
//
//class MyDictionary {
//    
//    typealias Element = (key: String, value: Any)
//    
//    var size:Int
//    
//    var storage:[[Element]]
//    
//    init(size:Int) {
//        self.size = size
//        storage = Array(repeating: [], count: size)
//    }
//    
//    func hashing(key:String) -> Int {
//        return key.characters.count
//    }
//    
//    func insert(key:String,emp:Any) {
//
//        storage[hashing(key: key)].append((key, emp))
//    }
//    
//    func getVal(key:String) -> Any? {
//        for item in storage[hashing(key: key)] {
//            if(item.key == key){
//                return item.value
//            }
//        }
//        
//        return nil
//    }
//    
//    func printMe() {
//        print(storage)
//    }
//}
//
//let aDic = MyDictionary(size: 10);
//
//let emp1 = Employee(name: "hari", empId: 1)
//
//let emp2 = Employee(name: "krishna", empId: 2)
//let emp3 = Employee(name: "Bista", empId: 3)
//
//let emp4 = Employee(name: "abcd", empId: 4)
//
//aDic.insert(key: emp1.name, emp: emp1)
//aDic.insert(key: emp2.name, emp: emp2)
//aDic.insert(key: emp3.name, emp: emp3)
//
//aDic.insert(key: emp4.name, emp: emp4)
//
//
//
//aDic.printMe()
//
//print((aDic.getVal(key: "Bista") as! Employee).empId)

//aDic.insert(key: emp.name, emp: emp)


//var arr = Array(repeating: Array(repeating: 0, count: 2), count: 3)
//
//arr[0][1] = 18
//
////var storage:[[Int]] = Array
//
////arr[0][0] = 100;
//
//print(arr)

// Binary tree

/*class Node {
    var key:Int
    var left:Node?
    var right:Node?
    
    init(key:Int) {
        self.key = key
    }
}

class BinaryTree {
    var root:Node?
    
    private func insertIntoTree(currNode:Node, key:Int){
        if(currNode.key < key){
            if let rightNode = currNode.right {
                insertIntoTree(currNode: rightNode, key: key)
            }else{
                currNode.right = Node(key: key)
            }
        }else{
            if let leftNode = currNode.left {
                insertIntoTree(currNode: leftNode, key: key)
            }else{
                currNode.left = Node(key: key)
            }
        }
    }
    
    func insert(key:Int) {
        if root == nil {
            self.root = Node(key: key)
            return
        }
        
        insertIntoTree(currNode: root!, key: key)
    }
    
    private func preOrderTraversal(currNode:Node?) {
        if let currNode = currNode {
            preOrderTraversal(currNode: currNode.left)
            print(currNode.key)
            preOrderTraversal(currNode: currNode.right)
        }
    }
    
    func printMe() {
        preOrderTraversal(currNode: root);
    }
    
    private func lookUp(currNode:Node?,key:Int) -> Node? {
        if let currNode = currNode {
            if currNode.key == key {
                return currNode
            }else if (currNode.key < key){
                // look up in right
              return lookUp(currNode: currNode.right, key: key)

            }else {
                // look up in left
               return lookUp(currNode: currNode.left, key: key)
            }
        }
        
        return nil
    }
    
    public func lookUp(key:Int) -> Node? {
        return lookUp(currNode: root, key: key)
    }
    
    private func getParent(node:Node,parent:Node?) -> Node? {
        
        guard let parent = parent else {
            return nil
        }
        
        if parent.key == node.key {
            return nil
        }
        
        if parent.left?.key == node.key || parent.right?.key == node.key {
            return parent
        }else if (parent.key < node.key){
            // look up in right
            return getParent(node: node, parent: parent.right)
        }else {
            // look up in left
            return getParent(node: node, parent: parent.left)
        }
    }
    
    func deleteForKey(key:Int) -> Node? {
        if let delNode = lookUp(key: key) {
            deleteNode(node:delNode)
            return delNode
        }
        
        return nil
    }
    
    func deleteNode(node:Node) {
        
        if let parent = self.getParent(node: node, parent: self.root) {
            if node.left == nil && node.right == nil {
                // cheking whether the current node to delete is right child or left child
                if parent.right?.key == node.key {
                    parent.right = nil
                }else {
                    parent.left = nil
                }
                
                return
            }
            
            //no right child
            if let leftChild = node.left, node.right == nil {
                // cheking whether the current node to delete is right child or left child
                if parent.right?.key == node.key {
                    parent.right = leftChild
                }else {
                    parent.left = leftChild
                }
                
                return
            }
            
            // no left child
            if let rightChild = node.right, node.left == nil {
                // cheking whether the current node to delete is right child or left child
                if parent.right?.key == node.key {
                    parent.right = rightChild
                }else {
                    parent.left = rightChild
                }
                
                return
            }
            
            // has both child
            if let succesor = findSuccesor(currNode: node) {
                // cheking whether the current node to delete is right child or left child
                if parent.right?.key == node.key {
                    parent.right = succesor
                }else {
                    parent.left = succesor
                }
            }
        }
    }
    
    func findSuccesor(currNode:Node) -> Node? {
        if  let leftChild = currNode.left {
            return findSuccesor(currNode: leftChild)
        }else {
            return currNode
        }
    }
}

let binTree = BinaryTree();
binTree.insert(key: 10)
binTree.insert(key: 20)
binTree.insert(key: 5)
binTree.insert(key: 2)
binTree.insert(key: 6)
binTree.insert(key: 21)
binTree.insert(key: 19)

//print(binTree.printMe())

binTree.printMe()
binTree.deleteForKey(key: 6)
binTree.printMe()*/



//print(binTree.lookUp(key: 2))

//let node = Node(key: 19)

//print(binTree.getParent(node: node, parent: binTree.root!)?.key)


// merge sort

//write function that merges same array right half and left half

//func merge(arr:[Int],l,r){
//    
//}

//class mergeSortHelper {
//    var arr:[Int]
//    
//    init(arr:[Int]) {
//        self.arr = arr
//    }
//    
//    func mergeSort(si:Int,ei:Int) {
//
//        if ei > si {
//            let mi = (ei - si)/2
//            
//            mergeSort(si: si, ei: mi)
//            mergeSort(si: mi+1, ei: ei)
//            
//            merge(si: si, ei: ei)
//        }
//    }
//    
//    func sort() {
//        merge(si: 0, ei: self.arr.count - 1)
//    }
//    
//    func merge(si:Int,ei:Int) {
//        
//        // prepare two array from si and ei
//        var i = 0
//        var arr1 = Array(repeating: 0, count: (ei-si)/2)
//        
//        for j in si...(si + ei)/2 {
//            arr1[i] = self.arr[j]
//            i = i + 1
//        }
//        
//        var arr2 = Array(repeating: 0, count: (ei - si) - arr1.count)
//        
//        i = 0
//        for j in (si + ei)/2 + 1...ei {
//            arr2[i] = self.arr[j]
//            i = i + 1
//        }
//        
//        let result = mergeTwoArray(arr1: arr1, arr2: arr2)
//        
//        // replace org array values with sorted result
//        self.arr.replaceSubrange(si...ei, with: result)
//    }
//    
//    func mergeTwoArray(arr1:[Int],arr2:[Int])-> [Int]{
//        var result = arr1 + arr2;
//    
//        var i = 0;
//        var j = 0;
//    
//        // find indexes for items in arr1
//        for (k,_) in result.enumerated() {
//    
//            // if all the elements of arr1 are added then add all the elements of arr2 directly
//            if(i > arr1.count - 1){
//                result[k] = arr2[j];
//                j = j + 1;
//                continue;
//            }
//    
//            // if all the elements of arr2 are added then direclty add all the elements of arr1 to result
//            if(j > arr2.count - 1){
//                result[k] = arr1[i];
//                i = i + 1
//    
//                continue;
//            }
//    
//            if(arr1[i] < arr2[j]){
//                result[k] = arr1[i]
//                i = i + 1
//            }else{
//                result[k] = arr2[j]
//                j = j + 1
//            }
//        }
//        
//        return result;
//
//    }
//}

//postfix conversion

//class MyStack {
//    
//    var storage:[Int]
//}

//public struct Stack<T> {
//    fileprivate var array = [T]()
//    
//    public var isEmpty: Bool {
//        return array.isEmpty
//    }
//    
//    public var count: Int {
//        return array.count
//    }
//    
//    public mutating func push(_ element: T) {
//        array.append(element)
//    }
//    
//    public mutating func pop() -> T? {
//        return array.popLast()
//    }
//    
//    public var top: T? {
//        return array.last
//    }
//}
//
//extension Stack: Sequence {
//    public func makeIterator() -> AnyIterator<T> {
//        var curr = self
//        return AnyIterator { _ -> T? in
//            return curr.pop()
//        }
//    }
//}
//
//
//func checkIfOperator(ch:Character)->Bool {
//    switch ch {
//    case "*":
//        return true
//    case "-":
//        return true
//    case "+":
//        return true
//    case "/":
//        return true
//    default: return false
//        
//    }
//}
//
////func checkIfArithmeticOperand(ch:Character)->Bool {
////    
////    let digit = Int(ch);
////
////    return true
////}
//
////enum Example {
////    case A
////    case B
////    case C
////    case D
////}
////
////enum MyOperator{
////    case *case -;case /
////    case +
////}
//
//enum MyOperator: Character {
//    case multiply = "*"
//    case division = "/"
//    case subtraction = "-"
//    case addition = "+"
//    
//    func getPrecedence() ->Int {
//        switch self.rawValue {
//        case "*":
//            return 3
//        case "-":
//            return 1
//        case "+":
//            return 0
//        case "/":
//            return 2
//        default: return -1
//            
//        }
//    }
//}
//
//func InfixToPostfix(expr:String)->String{
//    
//    var postFix = ""
//    
//    var stack:Stack<MyOperator> = Stack()
//
//    for item in expr.characters {
//        if(checkIfOperator(ch: item)){
//
//            let currOperator = MyOperator(rawValue: item)!
//            
//            if let topOperator = stack.top, currOperator.getPrecedence() < topOperator.getPrecedence() {
//                // pop all operators in the stack
//                while stack.count > 0 {
//                    if let lastOperator = stack.pop() {
//                        postFix = "\(postFix)\(lastOperator.rawValue)"
//                    }
//                }
//            }
//            
//            stack.push(currOperator)
//            
//        }else{
//            postFix = postFix + String(item)
//        }
//    }
//    
//    while stack.count > 0 {
//        if let lastOperator = stack.pop() {
//            postFix = "\(postFix)\(lastOperator.rawValue)"
//        }
//    }
//    
//    return postFix
//}
//
//print(InfixToPostfix(expr: "9+10*3-6"))


/*
 #
 ##
 ###
 ####
 #####
*/

//let n = 6
//
//for i in 0...n-1 {
//    var str = ""
//    for j in 0...n-1 {
//        if(n - 1 - i - j  > 0){
//            str = str + " "
//        }else{
//            str = str + "#"
//        }
//    }
//    
//    print(str)
//}

//Colleen is turning  years old! Therefore, she has  candles of various heights on her cake, and candle  has height . Because the taller candles tower over the shorter ones, Colleen can only blow out the tallest candles.
//
//Given the  for each individual candle, find and print the number of candles she can successfully blow out.

//let input = [3, 2, 1, 3]
//
//var previousHeight = input[0]
//var count = 0;
//
//for item in input {
//    if(item == previousHeight){
//        count = count + 1
//        previousHeight = item
//    }
//}
//
//print(count)


// print all permutation of a string


//func generatePermutationOfString(input:String)->Set<String> {
//    let permutationSet = Set<String>()
//    
//    if(input == ni)
//    
//    var newInput = input
//    
//    let initial = newInput.characters.removeFirst()
//    
//    let result = generatePermutationOfString(input: newInput);
//    
//    for item in result
//    
//    return permutationSet
//}


// reversing the linked list asked in zoosk interview first
//class Node {
//    var name:String;
//    var next:Node?
//    var prev:Node?
//    
//    init(name:String) {
//        self.name = name
//    }
//}
//
////let aLinkedList = 
//
//let node1 = Node(name: "hari")
//
//let node2 = Node(name: "Krishna")
//
//let node3 = Node(name: "Bista")
//
//node1.next = node2
//node2.prev = node1
//
//node2.next = node3
//node3.prev = node2
//
//var currNode:Node? = node1
//
//while(currNode != nil){
//    
//    if let currNode = currNode {
//        print(currNode.name)
//    }
//    
////    let tempCurrNode = currNode
//    
//    let temp = currNode?.next
//    currNode?.next = currNode?.prev
//    currNode?.prev = temp
//
//    currNode = currNode?.prev
//}
//
//var revNode:Node? = node3
//
//while(revNode != nil){
//    
//    if let revNode = revNode {
//        print(revNode.name)
//    }
//    
//    revNode = revNode?.next
//}

//
//class Node {
//    var key:Int
//    var next:Node?
//    var prev:Node?
//    
//    init(key:Int) {
//        self.key = key
//    }
//}
//
//class LinkedList {
//    var root:Node?
//    
//    func add(key:Int) {
//        
//        let newNode = Node(key: key)
//        
//        if(self.root == nil){
//            self.root = newNode
//            return
//        }
//        
//        var currNode = self.root
//        
//        while currNode?.next != nil {
//            currNode = currNode?.next
//        }
//        
//        currNode?.next = newNode
//        newNode.prev = currNode
//        
//    }
//    
//    func insertAtIndex(index:Int,key:Int) {
//        
//        let newNode = Node(key: key)
//        
//        if(self.root == nil){
//            self.root = newNode
//            return
//        }
//        
//        var count = 0;
//
//        var currNode = self.root
//        
//        while count < index {
//            currNode = currNode?.next
//            count = count + 1
//        }
//
//        newNode.prev = currNode?.prev
//        newNode.next = currNode
//        
//        currNode?.prev?.next = newNode
//        currNode?.prev = currNode
//        
//    }
//    
//    func printMe() {
//        var currNode = self.root
//        
//        while currNode != nil {
//            print(currNode?.key ?? "key absent")
//            currNode = currNode?.next
//        }
//    }
//    
//    func deleteAtIndex(index:Int)->Node? {
//        var curNode = self.root
//        
//        if(curNode == nil){
//            return nil
//        }
//        
//        var count = 0
//        while(count < index){
//            curNode = curNode?.next
//            count = count + 1
//        }
//        
//        curNode?.prev?.next = curNode?.next
//        curNode?.next?.prev = curNode?.prev
//        
//        return curNode
//    }
//    
//    func reverseSinglyLinkedList() {
//        
//        var disconectedList = self.root?.next
//        var prevv = self.root
//        var currNode = self.root?.next
//        
//        while(currNode?.next != nil){
//            
//            disconectedList = currNode?.next
//            
//            currNode?.next = prevv
//            prevv = currNode
//            
//            currNode = disconectedList
//        }
//        
//        currNode?.next = prevv
//        
//        self.root = currNode
//    }
//}
//
//let lList = LinkedList()
//
////let node1 = Node(key:1)
////let node2 = Node(key:2)
////let node3 = Node(key:3)
//
//lList.add(key: 1)
//lList.add(key: 2)
//lList.add(key: 3)
//
////lList.printMe()
//
//lList.add(key: 4)
////lList.add(key: 6)
////
////lList.insertAtIndex(index: 4, key: 5)
//
////let node = lList.deleteAtIndex(index: 2)
//
////print(node?.key ?? "nil")
//
//lList.reverseSinglyLinkedList()
//
//lList.printMe()
//
////list write program to remove duplicates from unsorted linked list




// search in rotated array

let input = [6,7,8,1,2,3,4,5]

print(FLT_MAX)


func searchInRotatedArray(input:[Int],target:Int)->Int {
    
    var low = 0
    var high = input.count - 1
    
    while(input[high] > input[low]) {
        
        // trying to see whether target is in right half and right half is sorted or
        // target is in left half and left half is sorted completed
        
        /// if either of the above condition met then do binary search on sorted half
        
        // other wise keep searching for this two condition iteratively until while condition satisfies other wise return -1 indicating the target it not there
        
        
    }
    
    return -1
}

func binarySearchInSortedArray(input:[Int],low:Int,high:Int, target:Int)->Int{
    
    var low = low
    var high = high
    
    while(low > high){
        
        let m = (low + high)/2
        
        if(input[m] == target){
            return input[m]
        }else if(target > input[m]){
            low = m + 1
        }else {
            high = m - 1
        }
    }
    
    return -1
}






