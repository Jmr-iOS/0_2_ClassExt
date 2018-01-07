/************************************************************************************************************************************/
/** @file       ParentClass.swift
 *  @project    0_2 - Class Extension
 *  @brief      show class extension in Swift
 *  @details    x
 *
 *  @notes      x
 *
 *  @section    Reference
 *      https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//
 *      apple_ref/doc/uid/TP40014097-CH10-ID158
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


class ParentClass: NSObject {
    
    /********************************************************************************************************************************/
    /** @fcn        init(name:String)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    init(name:String) {
        super.init();

        print(greet(person: name));                       /* Prints "Hello, 'name'!"                                                */

        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        greet(person: String) -> String
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func greet(person: String) -> String {
        let greeting = "Hello " + person + ".";
        return greeting;
    }
}


