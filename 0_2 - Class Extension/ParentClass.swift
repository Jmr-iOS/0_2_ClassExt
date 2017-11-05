/************************************************************************************************************************************/
/** @file       ParentClass.swift
 *  @project    0_2 - Class Extension
 *  @brief      show class extension in Swift
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    11/06/17
 *  @last rev   x
 *
 *
 *  @notes      x
 *
 *  @section    Opens
 *      none current
 *
 *  @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


//@ref  https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//
//      apple_ref/doc/uid/TP40014097-CH10-ID158
class ParentClass: NSObject {
    
    init(name:String) {
        super.init();

        print(greet(person: name));                       /* Prints "Hello, 'name'!"                                                */

        return;
    }
    
    func greet(person: String) -> String {
        let greeting = "Hello " + person + ".";
        return greeting;
    }
}


