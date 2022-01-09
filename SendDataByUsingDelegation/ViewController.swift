//
//  ViewController.swift
//  SendDataByUsingDelegation
//
//  Created by varol on 7.01.2022.
//

import UIKit

// #MARK: Storyboard partının başladığı yer
class ViewController: UIViewController, StoryboardViewControllerToViewController {// #MARK: 4-A) Storyboard ekranı içi sınıfa protocolün eklendiği yer

    @IBOutlet weak var showTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Storyboard buttonuna basıldığında tetiklenecek metod
    @IBAction func clickedStoryboardButton(_ sender: Any) {
        //Storyboard classının objesini oluşturulduğu satır
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "StoryboardViewController") as! StoryboardViewController
        vc.delegate = self // #MARK: 4-C) Gidilecek ekrana(Storyboarda) yetkilendirmeyi göndermek için gerekli işlemlerin yapıldığı satır
        self.navigationController?.pushViewController(vc, animated: true) // #MARK: 4-D) Storyboard ekranına geçiş işleminin yapıldığı satır
    }
    
    func sendStoryboardClassData(text: String) { // #MARK: 4-B) Protocol'ün methodunu, metod vasıtasıyla yollanacak datayı kullanacak şekilde tamamlamak.
        showTextLabel.text = "Storyboard ile bu string aktarılmıştır: \(text)" //Gelen data ekrandaki text'in içine aktarılıyor.
    }
// #MARK: Storyboard partının bittiği yer
    
    
// #MARK: Segue partının başladığı yer
    
    //Sayfa geçişi olmadan hemen önce tetiklenen fonksiyondur. SegueVievController'a yetkinin verilmesi için kullanıldı.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSegue" {
            let segueViewController = segue.destination as! SegueViewController //Segue classının objesini oluşturulduğu satır
            segueViewController.delegate = self // #MARK: 4-C) Gidilecek ekrana(Segueye) yetkilendirmeyi göndermek için gerekli işlemlerin yapıldığı satır
        }
    }
    
    //Segue buttonun tetiklediği fonksiyondur.
    @IBAction func clickedSegueButton(_ sender: Any) {
        performSegue(withIdentifier: "toSegue", sender: nil) // #MARK: 4-D) Storyboard ekranına geçiş işleminin yapıldığı satır
    }
}

extension ViewController: SegueViewControllerToViewControllerProtocol { // #MARK: 4-A) Storyboard ekranı içi sınıfa protocolün eklendiği yer
    
    func sendSegueClassData(text: String) { // #MARK: 4-B) Protocol'ün methodunu, metod vasıtasıyla yollanacak datayı kullanacak şekilde tamamlamak.
        showTextLabel.text = "Segue ile bu string aktarılmıştır: \(text)" //Gelen data ekrandaki text'in içine aktarılıyor.
    }
}
// #MARK: Segue partının bittiği yer
