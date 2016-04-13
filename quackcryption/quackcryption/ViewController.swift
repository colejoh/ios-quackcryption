//
//  ViewController.swift
//  quackcryption
//
//  Created by Cole Johnson on 4/12/16.
//  Copyright © 2016 Cole Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var mainText: UITextView!
    
    var notQuack = true;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       
    @IBAction func mainButtonClicked(sender: UIButton) {
        let textFromView: String = mainText.text
        var ret:String
        if(notQuack) {
            mainButton.setTitle("Quackcrypted", forState: .Normal)
            ret = quackcrypt(textFromView)
            notQuack = false
            
        } else {
            mainButton.setTitle("Not Quackcrypted", forState: .Normal)
            ret = quackReader(textFromView)
            notQuack = true
        }
        
        mainText.text = ret
        
        print("tapped")
    }
    
    /*
     This is the function to encrypt the sting of text the user sent in
     Parameters:
        plainString: String that the user sent in in the text box;
     Return:
        Function will return a sting full of quacks
    */
    func quackcrypt(plainString: String) -> String {
        var quacked = ""
        
        //Turning the passed string into a character array
        let plainStringArray : Array<Character> = [Character](plainString.characters)
        
        for character in plainStringArray {
            let asciiValueOfCharacter = character.unicodeValue()
            switch asciiValueOfCharacter {
            case 0:
                quacked += "quackquack";
                break;
            case 1:
                quacked += "Quackquack";
                break;
            case 2:
                quacked += "qUackquack";
                break;
            case 3:
                quacked += "QUackquack";
                break;
            case 4:
                quacked += "quAckquack";
                break;
            case 5:
                quacked += "QuAckquack";
                break;
            case 6:
                quacked += "qUAckquack";
                break;
            case 7:
                quacked += "QUAckquack";
                break;
            case 8:
                quacked += "quaCkquack";
                break;
            case 9:
                quacked += "QuaCkquack";
                break;
            case 10:
                quacked += "qUaCkquack";
                break;
            case 11:
                quacked += "QUaCkquack";
                break;
            case 12:
                quacked += "quACkquack";
                break;
            case 13:
                quacked += "QuACkquack";
                break;
            case 14:
                quacked += "qUACkquack";
                break;
            case 15:
                quacked += "QUACkquack";
                break;
            case 16:
                quacked += "quacKquack";
                break;
            case 17:
                quacked += "QuacKquack";
                break;
            case 18:
                quacked += "qUacKquack";
                break;
            case 19:
                quacked += "QUacKquack";
                break;
            case 20:
                quacked += "quAcKquack";
                break;
            case 21:
                quacked += "QuAcKquack";
                break;
            case 22:
                quacked += "qUAcKquack";
                break;
            case 23:
                quacked += "QUAcKquack";
                break;
            case 24:
                quacked += "quaCKquack";
                break;
            case 25:
                quacked += "QuaCKquack";
                break;
            case 26:
                quacked += "qUaCKquack";
                break;
            case 27:
                quacked += "QUaCKquack";
                break;
            case 28:
                quacked += "quACKquack";
                break;
            case 29:
                quacked += "QuACKquack";
                break;
            case 30:
                quacked += "qUACKquack";
                break;
            case 31:
                quacked += "QUACKquack";
                break;
            case 32:
                quacked += "quackQuack";
                break;
            case 33:
                quacked += "QuackQuack";
                break;
            case 34:
                quacked += "qUackQuack";
                break;
            case 35:
                quacked += "QUackQuack";
                break;
            case 36:
                quacked += "quAckQuack";
                break;
            case 37:
                quacked += "QuAckQuack";
                break;
            case 38:
                quacked += "qUAckQuack";
                break;
            case 39:
                quacked += "QUAckQuack";
                break;
            case 40:
                quacked += "quaCkQuack";
                break;
            case 41:
                quacked += "QuaCkQuack";
                break;
            case 42:
                quacked += "qUaCkQuack";
                break;
            case 43:
                quacked += "QUaCkQuack";
                break;
            case 44:
                quacked += "quACkQuack";
                break;
            case 45:
                quacked += "QuACkQuack";
                break;
            case 46:
                quacked += "qUACkQuack";
                break;
            case 47:
                quacked += "QUACkQuack";
                break;
            case 48:
                quacked += "quacKQuack";
                break;
            case 49:
                quacked += "QuacKQuack";
                break;
            case 50:
                quacked += "qUacKQuack";
                break;
            case 51:
                quacked += "QUacKQuack";
                break;
            case 52:
                quacked += "quAcKQuack";
                break;
            case 53:
                quacked += "QuAcKQuack";
                break;
            case 54:
                quacked += "qUAcKQuack";
                break;
            case 55:
                quacked += "QUAcKQuack";
                break;
            case 56:
                quacked += "quaCKQuack";
                break;
            case 57:
                quacked += "QuaCKQuack";
                break;
            case 58:
                quacked += "qUaCKQuack";
                break;
            case 59:
                quacked += "QUaCKQuack";
                break;
            case 60:
                quacked += "quACKQuack";
                break;
            case 61:
                quacked += "QuACKQuack";
                break;
            case 62:
                quacked += "qUACKQuack";
                break;
            case 63:
                quacked += "QUACKQuack";
                break;
            case 64:
                quacked += "quackqUack";
                break;
            case 65:
                quacked += "QuackqUack";
                break;
            case 66:
                quacked += "qUackqUack";
                break;
            case 67:
                quacked += "QUackqUack";
                break;
            case 68:
                quacked += "quAckqUack";
                break;
            case 69:
                quacked += "QuAckqUack";
                break;
            case 70:
                quacked += "qUAckqUack";
                break;
            case 71:
                quacked += "QUAckqUack";
                break;
            case 72:
                quacked += "quaCkqUack";
                break;
            case 73:
                quacked += "QuaCkqUack";
                break;
            case 74:
                quacked += "qUaCkqUack";
                break;
            case 75:
                quacked += "QUaCkqUack";
                break;
            case 76:
                quacked += "quACkqUack";
                break;
            case 77:
                quacked += "QuACkqUack";
                break;
            case 78:
                quacked += "qUACkqUack";
                break;
            case 79:
                quacked += "QUACkqUack";
                break;
            case 80:
                quacked += "quacKqUack";
                break;
            case 81:
                quacked += "QuacKqUack";
                break;
            case 82:
                quacked += "qUacKqUack";
                break;
            case 83:
                quacked += "QUacKqUack";
                break;
            case 84:
                quacked += "quAcKqUack";
                break;
            case 85:
                quacked += "QuAcKqUack";
                break;
            case 86:
                quacked += "qUAcKqUack";
                break;
            case 87:
                quacked += "QUAcKqUack";
                break;
            case 88:
                quacked += "quaCKqUack";
                break;
            case 89:
                quacked += "QuaCKqUack";
                break;
            case 90:
                quacked += "qUaCKqUack";
                break;
            case 91:
                quacked += "QUaCKqUack";
                break;
            case 92:
                quacked += "quACKqUack";
                break;
            case 93:
                quacked += "QuACKqUack";
                break;
            case 94:
                quacked += "qUACKqUack";
                break;
            case 95:
                quacked += "QUACKqUack";
                break;
            case 96:
                quacked += "quackQUack";
                break;
            case 97:
                quacked += "QuackQUack";
                break;
            case 98:
                quacked += "qUackQUack";
                break;
            case 99:
                quacked += "QUackQUack";
                break;
            case 100:
                quacked += "quAckQUack";
                break;
            case 101:
                quacked += "QuAckQUack";
                break;
            case 102:
                quacked += "qUAckQUack";
                break;
            case 103:
                quacked += "QUAckQUack";
                break;
            case 104:
                quacked += "quaCkQUack";
                break;
            case 105:
                quacked += "QuaCkQUack";
                break;
            case 106:
                quacked += "qUaCkQUack";
                break;
            case 107:
                quacked += "QUaCkQUack";
                break;
            case 108:
                quacked += "quACkQUack";
                break;
            case 109:
                quacked += "QuACkQUack";
                break;
            case 110:
                quacked += "qUACkQUack";
                break;
            case 111:
                quacked += "QUACkQUack";
                break;
            case 112:
                quacked += "quacKQUack";
                break;
            case 113:
                quacked += "QuacKQUack";
                break;
            case 114:
                quacked += "qUacKQUack";
                break;
            case 115:
                quacked += "QUacKQUack";
                break;
            case 116:
                quacked += "quAcKQUack";
                break;
            case 117:
                quacked += "QuAcKQUack";
                break;
            case 118:
                quacked += "qUAcKQUack";
                break;
            case 119:
                quacked += "QUAcKQUack";
                break;
            case 120:
                quacked += "quaCKQUack";
                break;
            case 121:
                quacked += "QuaCKQUack";
                break;
            case 122:
                quacked += "qUaCKQUack";
                break;
            case 123:
                quacked += "QUaCKQUack";
                break;
            case 124:
                quacked += "quACKQUack";
                break;
            case 125:
                quacked += "QuACKQUack";
                break;
            case 126:
                quacked += "qUACKQUack";
                break;
            case 127:
                quacked += "QUACKQUack";
                break;
            case 128:
                quacked += "quackquAck";
                break;
            case 129:
                quacked += "QuackquAck";
                break;
            case 130:
                quacked += "qUackquAck";
                break;
            case 131:
                quacked += "QUackquAck";
                break;
            case 132:
                quacked += "quAckquAck";
                break;
            case 133:
                quacked += "QuAckquAck";
                break;
            case 134:
                quacked += "qUAckquAck";
                break;
            case 135:
                quacked += "QUAckquAck";
                break;
            case 136:
                quacked += "quaCkquAck";
                break;
            case 137:
                quacked += "QuaCkquAck";
                break;
            case 138:
                quacked += "qUaCkquAck";
                break;
            case 139:
                quacked += "QUaCkquAck";
                break;
            case 140:
                quacked += "quACkquAck";
                break;
            case 141:
                quacked += "QuACkquAck";
                break;
            case 142:
                quacked += "qUACkquAck";
                break;
            case 143:
                quacked += "QUACkquAck";
                break;
            default:
                quacked = "error"
                break;
            }
            quacked += " "
        }
    
        return quacked
    }

    /*
     This function will decrpt the quackcrypted string
     Parameters:
        encryptedString: The string of text that is full of quacks
     Return:
        Function returns the plaintext version of the encrypted string
     */
    func quackReader(encryptedString: String) -> String {
        let quackCryptedArray = encryptedString.componentsSeparatedByString(" ")
        var deQuacked = ""
        for quack in quackCryptedArray {
            switch quack {
            case "quackquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "Quackquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUackquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUackquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quAckquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuAckquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUAckquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUAckquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quaCkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuaCkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUaCkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUaCkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quACkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuACkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUACkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUACkquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quacKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuacKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUacKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUacKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quAcKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuAcKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUAcKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUAcKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quaCKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuaCKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUaCKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUaCKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quACKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuACKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUACKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUACKquack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quackQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuackQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUackQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUackQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quAckQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuAckQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUAckQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUAckQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quaCkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuaCkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUaCkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUaCkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quACkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuACkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUACkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUACkQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quacKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuacKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUacKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUacKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quAcKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuAcKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUAcKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUAcKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quaCKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuaCKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUaCKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUaCKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quACKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuACKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "qUACKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QUACKQuack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "quackqUack":
                deQuacked += String(UnicodeScalar(0));
                break;
            case "QuackqUack":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUackqUack":
                deQuacked += String(UnicodeScalar(66));
                break;
            case "QUackqUack":
                deQuacked += String(UnicodeScalar(67));
                break;
            case "quAckqUack":
                deQuacked += String(UnicodeScalar(68));
                break;
            case "QuAckqUack":
                deQuacked += String(UnicodeScalar(69));
                break;
            case "qUAckqUack":
                deQuacked += String(UnicodeScalar(70));
                break;
            case "QUAckqUack":
                deQuacked += String(UnicodeScalar(71));
                break;
            case "quaCkqUack":
                deQuacked += String(UnicodeScalar(72));
                break;
            case "QuaCkqUack":
                deQuacked += String(UnicodeScalar(73));
                break;
            case "qUaCkqUack":
                deQuacked += String(UnicodeScalar(74));
                break;
            case "QUaCkqUack":
                deQuacked += String(UnicodeScalar(75));
                break;
            case "quACkqUack":
                deQuacked += String(UnicodeScalar(76));
                break;
            case "QuACkqUack":
                deQuacked += String(UnicodeScalar(77));
                break;
            case "qUACkqUack":
                deQuacked += String(UnicodeScalar(78));
                break;
            case "QUACkqUack":
                deQuacked += String(UnicodeScalar(79));
                break;
            case "quacKqUack":
                deQuacked += String(UnicodeScalar(80));
                break;
            case "QuacKqUack":
                deQuacked += String(UnicodeScalar(81));
                break;
            case "qUacKqUack":
                deQuacked += String(UnicodeScalar(82));
                break;
            case "QUacKqUack":
                deQuacked += String(UnicodeScalar(83));
                break;
            case "quAcKqUack":
                deQuacked += String(UnicodeScalar(84));
                break;
            case "QuAcKqUack":
                deQuacked += String(UnicodeScalar(85));
                break;
            case "qUAcKqUack":
                deQuacked += String(UnicodeScalar(86));
                break;
            case "QUAcKqUack":
                deQuacked += String(UnicodeScalar(87));
                break;
            case "quaCKqUack":
                deQuacked += String(UnicodeScalar(88));
                break;
            case "QuaCKqUack":
                deQuacked += String(UnicodeScalar(89));
                break;
            case "qUaCKqUack":
                deQuacked += String(UnicodeScalar(90));
                break;
            case "QUaCKqUack":
                deQuacked += String(UnicodeScalar(91));
                break;
            case "quACKqUack":
                deQuacked += String(UnicodeScalar(92));
                break;
            case "QuACKqUack":
                deQuacked += String(UnicodeScalar(93));
                break;
            case "qUACKqUack":
                deQuacked += String(UnicodeScalar(94));
                break;
            case "QUACKqUack":
                deQuacked += String(UnicodeScalar(95));
                break;
            case "quackQUack":
                deQuacked += String(UnicodeScalar(96));
                break;
            case "QuackQUack":
                deQuacked += String(UnicodeScalar(97));
                break;
            case "qUackQUack":
                deQuacked += String(UnicodeScalar(98));
                break;
            case "QUackQUack":
                deQuacked += String(UnicodeScalar(99));
                break;
            case "quAckQUack":
                deQuacked += String(UnicodeScalar(100));
                break;
            case "QuAckQUack":
                deQuacked += String(UnicodeScalar(101));
                break;
            case "qUAckQUack":
                deQuacked += String(UnicodeScalar(102));
                break;
            case "QUAckQUack":
                deQuacked += String(UnicodeScalar(103));
                break;
            case "quaCkQUack":
                deQuacked += String(UnicodeScalar(104));
                break;
            case "QuaCkQUack":
                deQuacked += String(UnicodeScalar(105));
                break;
            case "qUaCkQUack":
                deQuacked += String(UnicodeScalar(106));
                break;
            case "QUaCkQUack":
                deQuacked += String(UnicodeScalar(107));
                break;
            case "quACkQUack":
                deQuacked += String(UnicodeScalar(108));
                break;
            case "QuACkQUack":
                deQuacked += String(UnicodeScalar(109));
                break;
            case "qUACkQUack":
                deQuacked += String(UnicodeScalar(110));
                break;
            case "QUACkQUack":
                deQuacked += String(UnicodeScalar(111));
                break;
            case "quacKQUack":
                deQuacked += String(UnicodeScalar(112));
                break;
            case "QuacKQUack":
                deQuacked += String(UnicodeScalar(113));
                break;
            case "qUacKQUack":
                deQuacked += String(UnicodeScalar(114));
                break;
            case "QUacKQUack":
                deQuacked += String(UnicodeScalar(115));
                break;
            case "quAcKQUack":
                deQuacked += String(UnicodeScalar(116));
                break;
            case "QuAcKQUack":
                deQuacked += String(UnicodeScalar(117));
                break;
            case "qUAcKQUack":
                deQuacked += String(UnicodeScalar(118));
                break;
            case "QUAcKQUack":
                deQuacked += String(UnicodeScalar(119));
                break;
            case "quaCKQUack":
                deQuacked += String(UnicodeScalar(120));
                break;
            case "QuaCKQUack":
                deQuacked += String(UnicodeScalar(121));
                break;
            case "qUaCKQUack":
                deQuacked += String(UnicodeScalar(122));
                break;
            case "QUaCKQUack":
                deQuacked += String(UnicodeScalar(123));
                break;
            case "quACKQUack":
                deQuacked += String(UnicodeScalar(124));
                break;
            case "QuACKQUack":
                deQuacked += String(UnicodeScalar(125));
                break;
            case "qUACKQUack":
                deQuacked += String(UnicodeScalar(126));
                break;
            case "QUACKQUack":
                deQuacked += String(UnicodeScalar(127));
                break;
            case "quackquAck":
                deQuacked += String(UnicodeScalar(128));
                break;
            case "QuackquAck":
                deQuacked += String(UnicodeScalar(129));
                break;
            case "qUackquAck":
                deQuacked += String(UnicodeScalar(130));
                break;
            case "QUackquAck":
                deQuacked += String(UnicodeScalar(131));
                break;
            case "quAckquAck":
                deQuacked += String(UnicodeScalar(132));
                break;
            case "QuAckquAck":
                deQuacked += String(UnicodeScalar(133));
                break;
            case "qUAckquAck":
                deQuacked += String(UnicodeScalar(134));
                break;
            case "QUAckquAck":
                deQuacked += String(UnicodeScalar(135));
                break;
            case "quaCkquAck":
                deQuacked += String(UnicodeScalar(136));
                break;
            case "QuaCkquAck":
                deQuacked += String(UnicodeScalar(137));
                break;
            case "qUaCkquAck":
                deQuacked += String(UnicodeScalar(138));
                break;
            case "QUaCkquAck":
                deQuacked += String(UnicodeScalar(139));
                break;
            case "quACkquAck":
                deQuacked += String(UnicodeScalar(140));
                break;
            case "QuACkquAck":
                deQuacked += String(UnicodeScalar(141));
                break;
            case "qUACkquAck":
                deQuacked += String(UnicodeScalar(142));
                break;
            case "QUACkquAck":
                deQuacked += String(UnicodeScalar(143));
                break;
            case "quacKquAck":
                deQuacked += String(UnicodeScalar(144));
                break;
            case "QuacKquAck":
                deQuacked += String(UnicodeScalar(145));
                break;
            case "qUacKquAck":
                deQuacked += String(UnicodeScalar(146));
                break;
            case "QUacKquAck":
                deQuacked += String(UnicodeScalar(147));
                break;
            case "quAcKquAck":
                deQuacked += String(UnicodeScalar(148));
                break;
            case "QuAcKquAck":
                deQuacked += String(UnicodeScalar(149));
                break;
            case "qUAcKquAck":
                deQuacked += String(UnicodeScalar(150));
                break;
            case "QUAcKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACKquAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quackQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuackQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUackQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUackQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAckQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAckQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAckQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAckQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACkQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quacKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuacKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUacKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUacKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAcKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAcKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAcKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAcKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACKQuAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quackqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuackqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUackqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUackqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAckqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAckqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAckqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAckqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACkqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quacKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuacKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUacKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUacKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAcKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAcKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAcKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAcKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACKqUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quackQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuackQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUackQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUackQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAckQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAckQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAckQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAckQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACkQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quacKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuacKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUacKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUacKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAcKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAcKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAcKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAcKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUACKQUAck":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quackquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuackquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUackquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUackquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quAckquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuAckquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUAckquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUAckquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quaCkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuaCkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUaCkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QUaCkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "quACkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "QuACkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            case "qUACkquaCk":
                deQuacked += String(UnicodeScalar(65));
                break;
            default:
                deQuacked += "ERROR"
            }
        }
        return deQuacked
    }


}

