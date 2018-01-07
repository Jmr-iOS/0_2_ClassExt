/************************************************************************************************************************************/
/** @file       ChildClass.swift
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


class ChildClass: ParentClass {
    
    override init(name:String) {
        super.init(name: name);

        print("I am also the child...");                       /* Prints a unique message                                           */

        return;
    }
    
    func shout(person: String) -> String {
        let greeting = "Hey " + person + "!";
        return greeting;
    }
}


