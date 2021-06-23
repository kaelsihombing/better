//
//  ResultViewController.swift
//  better
//
//  Created by Santo Michael Sihombing on 30/04/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var backHomeButton: UIButton!
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var tipsOneView: UIView!
    @IBOutlet weak var tipsTwoView: UIView!
    
    @IBOutlet weak var tipsOne: UILabel!
    @IBOutlet weak var tipsTwo: UILabel!
    
    var result: String = ""
    var answers: [String] = []
    
    var tips: [[String]] = [
        ["Kamu bisa memanfaatkan sikap ini ketika keadaan sedang kritis, Apabila jalan asertif sudah ditempuh tidak menemukan jalan keluar, kamu bisa memanfaatkan sifat ini", "Kamu harus terbuka dengan pendapat lain selain pendapatmu, mendengarkan dan menghargai pendapat orang lain, memberi ruang untuk orang memberikan pendapat"],
        ["Kamu bisa memanfaatkan sifat pasifmu untuk cooling down saat emosi team meninggi , karena kamu bisa menahan untuk memberikan masukan. Selain itu sifat pasif juga bisa dimanfaatkan saat kamu memikirkan dampak jangka panjang nya jika kamu memilih menjadi pribadi assertive","Kamu harus belajar untuk terus terang terhadap suatu situasi, dan kamu juga harus mencoba untuk menyampaikan pendapatmu tidak hanya mengikuti pendapat orang lainHargai dirimu seperti kamu menghargai orang lain!!"],
        ["Kamu berani untuk mengemukakan pendapat secara jujur, yang disertai fakta. Sehingga yang perlu kamu perhatikan adalah tetap berani mengemukakan pendapat tetapi tetap menghargai pendapat orang lain agar tetap terjadi situasi yang kondusif diantara kamu dan orang lain","Kamu merupakan pendengar yang aktif, tidak gampang untuk menjudge sesuatu, dan kamu juga memikirkan perasaan orang lain, PERTAHANKAN "]
    ]
    
    var greets: [String] = ["", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backHomeButton.roundedButton()
        resultLabel.text = result
        
        assignTips(type: result)
        
        tipsOneView.layer.cornerRadius = 15.0
        tipsOneView.clipsToBounds = true
        
        tipsTwoView.layer.cornerRadius = 15.0
        tipsTwoView.clipsToBounds = true
        
        resultView.layer.cornerRadius = 15.0
        resultView.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    @IBAction func backHomeButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
       
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func assignTips(type: String) {
        if type == "Passive" {
            tipsOne.text = tips[1][0]
            tipsTwo.text = tips[1][1]
            resultImage.image = UIImage(named:"passive")
        } else if type == "Aggressive" {
            tipsOne.text = tips[0][0]
            tipsTwo.text = tips[0][1]
            resultImage.image = UIImage(named:"aggressive")
        } else if type == "Assertive" {
            tipsOne.text = tips[2][0]
            tipsTwo.text = tips[2][1]
            resultImage.image = UIImage(named:"assertive")
        }
    }
}
