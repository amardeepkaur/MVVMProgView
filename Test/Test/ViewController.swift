//
//  ViewController.swift
//  Test
//
//  Created by Kaur, Amardeep on 2023-03-29.
//

import UIKit

class ViewController: UIViewController {

    private let bgview = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let model = ModelMock()

        let myView = MyView(
            configurer: MyViewModel(
                title: model.title,
                subtitle: model.subtitle
            )
         )
        myView.frame = CGRect(x: 0.0, y: view.safeAreaInsets.top , width: view.frame.size.width, height: 120.0)
        self.view.addSubview(myView)
        NSLayoutConstraint.activate(myView.constraints)
    }
}

protocol MyConfigurer {
    var title: String { get }
    var subtitle: String { get }
}

class ModelMock: MyConfigurer {
    var title: String {
        return "What interests you?"
    }
    
    var subtitle: String {
        return "We'll personalize your feed"
    }
}
//class MyViewController: BaseViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        API.fetchData { model in
//            let myView = MyView(
//                configurer: MyViewModel(exampleModel: model)
//             )
//             self.view.addSubview(myView)
//             NSLayoutConstraint.activate(myView.pinConstraints())
//        }
//    }
//}
