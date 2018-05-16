//
//  ViewController.swift
//  TextSpeech
//
//  Created by Karthick on 5/16/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

  let str = "With the release of iOS 7, Apple introduced a text to speech API that allows developers to add text to speech functionality to an application in a quick and easy way. This can be useful when adding an accessibility layer to an application or to include it as a feature in a learning game. In this tutorial, you'll learn how to implement such a feature using Swift."
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let label = UILabel()
    label.frame = CGRect(x:10 ,y:50,width:self.view.frame.size.width-20,height:self.view.frame.size.height-150)
    label.text = str
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    self.view.addSubview(label)
    
    let button = UIButton()
    button.frame = CGRect(x:self.view.frame.size.width/2-40 , y: self.view.frame.size.height-150, width: 80, height: 80)
    button.setImage(#imageLiteral(resourceName: "Button"), for: .normal)
    button.addTarget(self, action: #selector(self.speech), for: .touchUpInside)
    self.view.addSubview(button)
   
    print(AVSpeechSynthesisVoice.speechVoices() )//U can get how many languges support fo text to speech.
      }
 @objc func speech(){
    let utterance = AVSpeechUtterance(string: str)
  utterance.voice = AVSpeechSynthesisVoice(language: "en-US")//U you are change the suppoe ted languge u can get that spech text;
    let synth = AVSpeechSynthesizer()
    synth.speak(utterance)
  
  
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

