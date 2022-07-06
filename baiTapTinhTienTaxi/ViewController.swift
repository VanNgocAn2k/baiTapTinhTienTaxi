//
//  ViewController.swift
//  baiTapTinhTienTaxi/Users/vantientu/Downloads/moneyTaxi/moneyTaxi/ViewController.swift
//
//  Created by Văn Tiến Tú on 25/06/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textNhapSoTien: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textNhapSoTien.keyboardType = .numberPad
    }
    @IBAction func actionButton(_ sender: Any) {
       // print("số \(textNhapSoTien.text!)")
//        guard let s = Int(textNhapSoTien.text!)
//        else {
//            return
//        }
//        var giaTien = 5000  // phí mở cửa xe
//        if s <= 31 {
//            giaTien += (s-1) * 4000
//        }
//        else {
//            giaTien += 30 * 4000 + (s-31) * 3000
//        }
//        print("gia tien \(giaTien)")
        guard let soTien = Int(textNhapSoTien.text!)
               else {
                   return
               }
        let price1 = 11000
        let price11 = 10000
        let price21 = 9500
        let price31 = 9000
        
        let km1 = 1
        let km11 = 11
        let km21 = 21
        let km31 = 31
        
        if (soTien / km31) >= price31 {
            
            let alert = UIAlertController(title: "Thông báo", message: "với \(soTien)đ bạn có thể đi được Taxi ở mức tiền \(price31)đ/km và bạn có thể đi được \(soTien / price31) km", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        } else if (soTien / km21) >= price21 {
            
            let alert = UIAlertController(title: "Thông báo", message: "với \(soTien)đ bạn có thể đi được Taxi ở mức tiền \(price21)đ/km và bạn có thể đi được \(soTien / price21) km", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        } else if (soTien / km11) >= price21 {
           
            let alert = UIAlertController(title: "Thông báo", message: "với \(soTien)đ bạn có thể đi được Taxi ở mức tiền \(price11)đ/km và bạn có thể đi được \(soTien / price11) km", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        } else if (soTien / km1) >= price1 {
           
            let alert = UIAlertController(title: "Thông báo", message: "với \(soTien)đ bạn có thể đi được Taxi ở mức tiền \(price1)đ/km và bạn có thể đi được \(soTien / price1) km", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        }
    }
}

