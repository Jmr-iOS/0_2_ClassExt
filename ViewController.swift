/************************************************************************************************************************************/
/** @file		ViewController.swift
 *  @project    0_0 - Empty Template (Swift)
 * 	@brief		x
 * 	@details	x
 *
 * 	@author		Justin Reina, Firmware Engineer, Jaostech
 * 	@created	11/12/15
 * 	@last rev	1/8/18
 *
 *
 * 	@section    Reference
 *      https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//
 *      apple_ref/doc/uid/TP40014097-CH10-ID158
 *
 * 	@section	Opens
 * 			none listed
 *
 * 	@section	Legal Disclaimer
 * 			All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 * 			Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class ViewController: UIViewController {

    
    /********************************************************************************************************************************/
    /** @fcn        viewDidLoad()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;

        
        demo_subClass();
        demo_valueRef();
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        //listen to 'Home' press
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(UIApplicationDelegate.applicationWillResignActive(_:)),
                                               name: NSNotification.Name.UIApplicationWillResignActive,
                                               object: nil);
        return;
    }
    

    /********************************************************************************************************************************/
    /** @fcn        demo_subClass()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func demo_subClass() {
        
        //print on construction
        let jmr = ParentClass(name: "Jill");
        let hap = ChildClass(name: "Sarah");
        
        
        //print on parent class call
        _ = ParentClass.init(name: "James");
        
        //print on routine call
        print("ViewController.demo_subClass():     \(jmr.greet(person: "Justin"))");        /* ParentClass call                     */
        print("ViewController.demo_subClass():     \(hap.greet(person: "Mark"))");          /* ParentClass call                     */
        print("ViewController.demo_subClass():     \(hap.shout(person: "Sam"))");           /* ChildClass call                      */

        print("ViewController.demo_subClass():     subclass demo complete");
        
        return;
    }
    
    
    // @brief       Reference Types
    class Dog {
        var wasFed = false;
    }
    
    //@brief        Value Types
    struct Cat {
        var wasFed = false;
    }
    
    /********************************************************************************************************************************/
    /** @fcn        demo_valueRef()
     *  @brief      Classes are by ref, all else by value
     *  @details    Start with vars, you can always move to a class later with little effort
     *
     *  @note   the Swift standard library uses value types almost exclusively
     *
     *  @section    Declaration Summary
     *      - let(ref - Class): reference remains constant, fields may change
     *      - let(val - Int):   all remains constant
     *      - var():            all can change
     *
     *  @section    Usage Summary
     *      - Reference (Class) - shared, mutable state
     *      - Value (Int) - evaluation & comparison make sense
     *
     *  @section    Reference
     *      https://www.raywenderlich.com/112027/reference-value-types-in-swift-part-1b
     *
     *  @note    'dog' simply points to a location in memory that stores 'dog'
     *  @note    'puppy' then just points to the same memory location
     */
    /********************************************************************************************************************************/
    func demo_valueRef() {
        
        //--------------------both are simply references to the same object & memory location---------------------------------------//
        let dog = Dog();
        let puppy = dog;                                    /* puppy becomes dog by reference                                       */

        
        print("ViewController.demo_valueRef():     dog(\(dog.wasFed)),\tpuppy(\(puppy.wasFed))");
        
        puppy.wasFed = true;
        
        print("ViewController.demo_valueRef():     dog(\(dog.wasFed)),\tpuppy(\(puppy.wasFed))");
        print("ViewController.demo_valueRef():     -->both class refs point to the same object in mem");
        
        
        //-----------------------Value types are referenced completely differently than reference types are-------------------------//
        let a = 42;
        var b = a;                                          /* b becomes a by copy                                                  */
        
        print("ViewController.demo_valueRef():     a(\(a)),\tb(\(b))");
        
        //perform an operation on the second var
        b+=1;
        
        print("ViewController.demo_valueRef():     a(\(a)),\tb(\(b))");
        print("ViewController.demo_valueRef():     -->both int values point to seperate values in mem");
        
        
        //-----------------------------------------------Structs are by value-------------------------------------------------------//
        let cat = Cat();
        var kitty = cat;                                    /* kitty becomes cat by copy                                            */
        
        print("ViewController.demo_valueRef():     cat(\(cat.wasFed)),\tkitty(\(kitty.wasFed))");
        
        kitty.wasFed = true;
        
        print("ViewController.demo_valueRef():     cat(\(cat.wasFed)),\tkitty(\(kitty.wasFed))");
        print("ViewController.demo_valueRef():     -->both structs point to seperate value in mem");
        
        
        //---------------------------------------------------Function Args----------------------------------------------------------//
        let poodle = Dog();
        let bengal = Cat();
        
        print("ViewController.demo_valueRef():     the poodle is \(poodle.wasFed), the cat is \(bengal.wasFed)");
        test_fcn(d: poodle, c: bengal);
        print("ViewController.demo_valueRef():     the poodle is \(poodle.wasFed), the cat is \(bengal.wasFed)");
        
        print("ViewController.demo_valueRef():     -->classes are passed by ref, structs are passed read-only");
    
        
        print("ViewController.demo_valueRef():     value vs. reference demo complete");
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        test_fcn()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func test_fcn(d : Dog, c : Cat) {
        
        print("ViewController.test_fcn():          the d is \(d.wasFed), the c is \(c.wasFed)");
        
        d.wasFed = true;
        //c.wasFed = true;                                      /* @rslt    "Cannot assign to property: 'c' is a 'let' constant"    */
        
        print("ViewController.test_fcn():          the d is \(d.wasFed), the c is \(c.wasFed)");
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        applicationWillResignActive(_ notification: Notification)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func applicationWillResignActive(_ notification: Notification) {
        print("I'm out of focus, home was pressed!");
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        didReceiveMemoryWarning()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        return;
    }
}


