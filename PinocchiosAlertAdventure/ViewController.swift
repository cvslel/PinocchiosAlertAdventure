//
//  ViewController.swift
//  PinocchiosAlertAdventure
//
//  Created by Cenker Soyak on 4.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createUI()
    }

    func createUI(){
        let firstButton = UIButton()
        firstButton.setTitle("1st Button", for: UIControl.State.normal)
        firstButton.backgroundColor = .darkGray
        view.addSubview(firstButton)
        firstButton.addTarget(self, action: #selector(giveAnAlert), for: UIControl.Event.touchUpInside)
        firstButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.left.equalTo(view.snp.left).offset(70)
            make.right.equalTo(view.snp.right).offset(-70)
            make.height.equalTo(50)
        }
        let secondButton = UIButton()
        secondButton.setTitle("2nd Button", for: UIControl.State.normal)
        secondButton.backgroundColor = .green
        view.addSubview(secondButton)
        secondButton.addTarget(self, action: #selector(giveAnAlertForSecond), for: UIControl.Event.touchUpInside)
        secondButton.snp.makeConstraints { make in
            make.top.equalTo(firstButton.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(70)
            make.right.equalTo(view.snp.right).offset(-70)
            make.height.equalTo(50)
        }
        let thirdButton = UIButton()
        thirdButton.setTitle("3rd Button", for: UIControl.State.normal)
        thirdButton.backgroundColor = .red
        view.addSubview(thirdButton)
        thirdButton.addTarget(self, action: #selector(giveAnAlertForThird), for: UIControl.Event.touchUpInside)
        thirdButton.snp.makeConstraints { make in
            make.top.equalTo(secondButton.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(70)
            make.right.equalTo(view.snp.right).offset(-70)
            make.height.equalTo(50)
        }
        let fourthButton = UIButton()
        fourthButton.setTitle("4th Button", for: UIControl.State.normal)
        fourthButton.backgroundColor = .cyan
        view.addSubview(fourthButton)
        fourthButton.addTarget(self, action: #selector(giveAnAlertForFourth), for: UIControl.Event.touchUpInside)
        fourthButton.snp.makeConstraints { make in
            make.top.equalTo(thirdButton.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(70)
            make.right.equalTo(view.snp.right).offset(-70)
            make.height.equalTo(50)
        }
        let fifthButton = UIButton()
        fifthButton.setTitle("5th Button", for: UIControl.State.normal)
        fifthButton.backgroundColor = .yellow
        view.addSubview(fifthButton)
        fifthButton.addTarget(self, action: #selector(giveAnAlertForFifth), for: UIControl.Event.touchUpInside)
        fifthButton.snp.makeConstraints { make in
            make.top.equalTo(fourthButton.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(70)
            make.right.equalTo(view.snp.right).offset(-70)
            make.height.equalTo(50)
        }
    }
    @objc func giveAnAlert(){
        let alert = UIAlertController(title: "First Button", message: "This button has no capabilities", preferredStyle: .alert)
        present(alert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.dismiss(animated: true)
        }
    }
    @objc func giveAnAlertForSecond(){
        let secondAlert = UIAlertController(title: "Second Button", message: "Go Back", preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel)
        secondAlert.addAction(cancelButton)
        present(secondAlert, animated: true)
    }
    @objc func giveAnAlertForThird(){
        let thirdAlert = UIAlertController(title: "Third Button", message: "You? Again?", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
        thirdAlert.addAction(okButton)
        thirdAlert.addAction(cancelButton)
        present(thirdAlert, animated: true)
    }
    @objc func giveAnAlertForFourth(){
        var fourthAlert = UIAlertController(title: "Fourth Button", message: "I'm sick of it..", preferredStyle: .alert)
        fourthAlert.addTextField { textfield in
            textfield.placeholder = "Enter something"
        }
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { okButton in
            let textField = fourthAlert.textFields![0]
            print(String(textField.text ?? "ENTER SOMETHING!!"))
        }
        fourthAlert.addAction(okButton)
        present(fourthAlert, animated: true)
    }
    @objc func giveAnAlertForFifth(){
        let fifthAlert = UIAlertController(title: "Fifth Button", message: "Get Out", preferredStyle: .actionSheet)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { okButton in
            print("Cenker")
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
        fifthAlert.addAction(okButton)
        fifthAlert.addAction(cancelButton)
        present(fifthAlert, animated: true)
    }
}


