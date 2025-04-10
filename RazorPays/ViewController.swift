//
//  ViewController.swift
//  RazorPays
//
//  Created by Amit Shah on 10/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    var razorPayment: RazorpayPaymentManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        razorPayment = RazorpayPaymentManager(vc: self)
        razorPayment.delegate = self
    }

    @IBAction func payNowTapped(_ sender: UIButton) {
        razorPayment.startPayment(amount: 100)
    }
    
}


// MARK: - RazorPaymentDelegate methods
extension ViewController: RazorPaymentDelegate {
    
    func paymentDidSucceed(paymentId: String, signature: String) {
        print("Payment succeeded with ID: \(paymentId)")
    }
    
    func paymentDidFail(code: Int32, description: String) {
        print("Payment failed: \(description)")
    }
    
}
