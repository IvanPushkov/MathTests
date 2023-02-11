import UIKit


   
    struct Example {
       
    }
    
    extension Example {
        
      
        
        
        static func getRandomExample () -> [String: String] {
            
            let figurs  =  1...15
            let firstNumber: Int? = figurs.randomElement()
            let sacondNumber: Int? = figurs.randomElement()
            
            func division (a: Int, b: Int) -> Double {
                let a = 0
                let b = 0
                let c = ( (Double(round(Double(a)) / Double(b) )))
                return c
                          }
            
            let exampls: [String: String] =
            [ "\(firstNumber!) + \(sacondNumber!) = ?" : "\(firstNumber! + sacondNumber!)",
              "\(firstNumber!) - \(sacondNumber!) = ?" : "\(firstNumber! - sacondNumber!)",
              "\(firstNumber!) X \(sacondNumber!) = ?": "\(firstNumber! * sacondNumber!)",
              "\(firstNumber!) : \(sacondNumber!) = ?": "\(division(a: firstNumber!, b: sacondNumber!) )"
            ]
            
            return exampls
        }
        
        static func getSummExample () -> [String: String] {
            
            let figurs  =  1...100
            let firstNumber: Int? = figurs.randomElement()
            let sacondNumber: Int? = figurs.randomElement()
            let exampls: [String: String] =
            [ "\(firstNumber!) + \(sacondNumber!) = ?" : "\(firstNumber! + sacondNumber!)",
              
            ]
            
            return exampls
        }
        
        static func getSubtractionExample () -> [String: String] {
            
            let figurs  =  1...15
            let firstNumber: Int? = figurs.randomElement()
            let sacondNumber: Int? = figurs.randomElement()
            let exampls: [String: String] =
            [ "\(firstNumber!) - \(sacondNumber!) = ?" : "\(firstNumber! - sacondNumber!)",
              
            ]
            
            return exampls
        }
        static func getDivisionExample () -> [String: String] {
            
            let figurs  =  1...100
            let firstNumber: Int? = (figurs.randomElement())
            let sacondNumber: Int? = figurs.randomElement()
            func division (a: Int, b: Int) -> Double {
               
                let c = (Double(round((Double(a) / Double(b)) * 10) / 10 ))
                return c
                          }
            let exampls: [String: String] =
            [ "\(firstNumber!) : \(sacondNumber!) = ?" : "\(division(a: firstNumber!, b: sacondNumber!))",
              
            ]
            
            return exampls
        }
        static func getMultiplicationExample () -> [String: String] {
            
            let figurs   =  1...20
            let firstNumber: Int? = figurs.randomElement()
            let sacondNumber: Int? = figurs.randomElement()
            let exampls: [String: String] =
            [ "\(firstNumber!) X \(sacondNumber!) = ?" : "\(firstNumber! * sacondNumber!)",
              
            ]
            
            return exampls
        }
        
    }
    
    
    

