//
//  StoryboardViewController.swift
//  SendDataByUsingDelegation
//
//  Created by varol on 8.01.2022.
//

import UIKit

class StoryboardViewController: UIViewController {

    @IBOutlet weak var storyboardTextField: UITextField!
    
    var delegate: StoryboardViewControllerToViewController?  //MARK: 3-A) Sınıfa özel yazılmış protocolün nesnesini oluşturma kısmı
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //Send buttonunun tetiklendiği yer
    @IBAction func storyboardSendButton(_ sender: Any) {
        if let text = storyboardTextField.text {
            delegate?.sendStoryboardClassData(text: text) //MARK: 3-B) Eklenen buton yardımı ile protocol nesnenin metoduna gerekli input değerini girerek tetiklemek kısmı
            self.navigationController?.popViewController(animated: true) // Home ekranına geçişi sağlayan fonksiyon.
        }
    }
}
