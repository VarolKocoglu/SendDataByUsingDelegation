//
//  SegueViewController.swift
//  SendDataByUsingDelegation
//
//  Created by varol on 8.01.2022.
//

import UIKit

class SegueViewController: UIViewController {

    @IBOutlet weak var segueTextField: UITextField!
    
    var delegate: SegueViewControllerToViewControllerProtocol?  //MARK: 3-A) Sınıfa özel yazılmış protocolün nesnesini oluşturma kısmı

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //Send buttonunun tetiklendiği yer
    @IBAction func segueSendButton(_ sender: Any) {
        if let text = segueTextField.text {
            delegate?.sendSegueClassData(text: text) //MARK: 3-B) Eklenen buton yardımı ile protocol nesnenin metoduna gerekli input değerini girerek tetiklemek kısmı
            self.navigationController?.popViewController(animated: true) // Home ekranına geçişi sağlayan fonksiyon.
        }    }
    
}
