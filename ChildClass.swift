/************************************************************************************************************************************/
/** @file       ChildClass.swift
 *  @project    0_2 - Class Extension
 *  @brief      show class extension in Swift
 *  @details    x
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
    
    /********************************************************************************************************************************/
    /** @fcn        init(name:String)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override init(name:String) {
        super.init(name: name);

        print("I am also the child...");                       /* Prints a unique message                                           */

        return;
    }
    
    /********************************************************************************************************************************/
    /** @fcn        shout(person: String) -> String
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func shout(person: String) -> String {
        let greeting = "Hey " + person + "!";
        return greeting;
    }
}


