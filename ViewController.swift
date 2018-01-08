/************************************************************************************************************************************/
/** @file		ViewController.swift
 *  @project    0_0 - Empty Template (Swift)
 * 	@brief		x
 * 	@details	x
 *
 * 	@author		Justin Reina, Firmware Engineer, Jaostech
 * 	@created	11/12/15
 * 	@last rev	1/7/18
 *
 *
 * 	@notes		x
 *
 * 	@section	Opens
 * 			none current
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
        print("ViewController.demo_subClass():     \(hap.greet(person: "Mark"))");          /* ChildClass call                      */
        print("ViewController.demo_subClass():     \(hap.shout(person: "Sam"))");           /* ParentClass call                     */

        print("ViewController.demo_subClass():     subclass demo complete");
        
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


