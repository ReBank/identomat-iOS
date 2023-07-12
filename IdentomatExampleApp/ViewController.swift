//
//  ViewController.swift
//  IdentomatExampleApp
//
//  Created by Identomat Inc. on 12/24/20.
//

import UIKit
import identomat
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClick(_ sender: Any) {
        Api.getToken(context: self, flagsDict: DataManager.flagsDict);
    }
    func start(){
        //set up identomat
        IdentomatManager.getInstance().setUp(token: Api.token)
        IdentomatManager.getInstance().setBaseUrl(url: Api.BASE_URL + "api/" )
        
        //set result view
        let resultViewController = storyboard!.instantiateViewController(withIdentifier: "result_view")
        resultViewController.modalPresentationStyle = .fullScreen
        
        IdentomatManager.getInstance().callBack {
            self.present(resultViewController, animated: true, completion: nil)
        }
        
        //set strings
        IdentomatManager.getInstance().setStringsTableName(tableName: "languages")
        IdentomatManager.getInstance().setStrings(dict: DataManager.strings)
        IdentomatManager.getInstance().setLogo(view:getAnimationView());
        IdentomatManager.getInstance().setVariables(variables: DataManager.variables)
        //start identomat
        let identomatView = IdentomatManager.getInstance().getIdentomatView()
        identomatView.modalPresentationStyle = .fullScreen
        self.present(identomatView, animated: true, completion: nil)
    }
    func fail(){
        
    }
    func getAnimationView() -> UIView{
        let animationView = Lottie.AnimationView()
        let animation = Lottie.Animation.named("loading")
        animationView.animation = animation;
        animationView.loopMode = .loop
        animationView.backgroundBehavior = .pauseAndRestore
        animationView.play()
        return animationView;
    }
}

