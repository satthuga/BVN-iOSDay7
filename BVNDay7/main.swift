//
//  main.swift
//  BVNDay7
//
//  Created by Apple on 02/06/2021.
//

import Foundation

//MARK: - BÀI 1
struct SoHoc {
    var number1: Int = 0
    var number2: Int = 0
    
    init() {
    }
    
    init(_ number1: Int, _ number2: Int) {
        self.number1 = number1
        self.number2 = number2
    }
     
    func printInfo() {
      print("2 số: \(number1), \(number2)")
    }
    
    func addition() -> Int {
        return number1 + number2
    }
    
    func subtract() -> Int {
        return number1 - number2
    }
    
    func multi() -> Int {
        return number1*number2
    }
    
    func division() -> Int {
        if number2 == 0 {
            print("số chia phải khác 0")
            return 0
        }
        
        return number1/number2
    }
}

var SoHoc1 = SoHoc(-4, 2)
SoHoc1.printInfo()
print("thương = \(SoHoc1.division())")
print("tổng = \(SoHoc1.addition())")
print("hiệu = \(SoHoc1.subtract())")
print("tích = \(SoHoc1.multi())")

//MARK: - BÀI 2

class NhanVien {
    var name: String = ""
    var age: Int = 0
    var address: String = ""
    var salary: Double = 0
    var workingHours: Int = 0
    
    init() {
    }
    
    init(name: String, age: Int, address: String, salary: Double, workingHours: Int) {
        self.name = name
        self.age = age
        self.address = address
        self.salary = salary
        self.workingHours = workingHours
    }
    
    func printInfo() {
        print("""
            tên: \(name)
            tuổi: \(age)
            địa chỉ: \(address)
            lương: \(salary)
            tổng giờ làm: \(workingHours)
            """)
    }
    
    func tinhThuong() -> Double {
        if salary < 0 {
            print("lương phải là số dương")
            return 0
        }
        
        switch workingHours {
        case ..<0:
            print("tổng giờ làm không hợp lệ (< 0)")
            return 0
        case 0..<100:
            return 0
        case 100..<200:
            return salary*0.1
        default:
            return salary*0.2
        }
    }
    
}

var nhanVien1 = NhanVien(name: "Quỳnh", age: 26, address: "cầu giấy", salary: 1000, workingHours: 20)

nhanVien1.printInfo()
print("tiền thưởng của \(nhanVien1.name) là \(nhanVien1.tinhThuong()) USD")

//MARK: - BÀI 3
struct Triangle {
    var a, b, c: Int
    
    init(_ a: Int,_ b: Int,_ c: Int) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func isTriangle() -> Bool {
        return a + b > c && b + c > a && c + a > b
    }
    
    func perimeter() -> Int{
        if !isTriangle() {
            print("không phải 3 cạnh tam giác")
            return 0
        }
        return a + b + c
    }
    
    func area() -> Float {
        if !isTriangle() {
            print("không phải 3 cạnh tam giác")
            return 0
        }
        
        let p: Float = Float(a + b + c) / 2
        let dienTich: Float = sqrtf(p * (p - Float(a)) * (p - Float(b)) * (p - Float(c)))
        return dienTich
    }
    
    func checkType() -> String {
        if !isTriangle() {
            return "không phải 3 cạnh tam giác"
        }
        
        if a == b && b == c && c == a {
            return "Tam giác đều"
        } else if a == b || b == c || c == a {
            return "Tam giác cân"
        } else if (a*a + b*b) == c*c || (c*c + b*b) == a*a || (a*a + c*c) == b*b {
            return "Tam giác vuông"
        } else {
            return "Tam giác thường"
        }
    }
}

var triangle1 = Triangle(1, 2, 3)

print("chu vi = \(triangle1.perimeter())")
print("diện tích = \(triangle1.area())")
print(triangle1.checkType())
