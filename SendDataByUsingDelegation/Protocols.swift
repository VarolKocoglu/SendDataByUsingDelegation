//
//  Protocols.swift
//  SendDataByUsingDelegation
//
//  Created by varol on 8.01.2022.
//

import Foundation

//Segue fonksiyonu ile ekranlar arasında data gönderimi yapabilmek için kullanılıcak protocol
protocol SegueViewControllerToViewControllerProtocol {
    func sendSegueClassData(text: String)
}

//Storyboard fonksiyonu ile ekranlar arası geçiş yapmak için kullanılacak protocol
protocol StoryboardViewControllerToViewController {
    func sendStoryboardClassData(text: String)
}
