//
//  DetailViewController.swift
//  Recipe Book
//
//  Created by Marek Marciszewski on 05/09/2019.
//  Copyright © 2019 Marek Marciszewski. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var coctailDictionary = [[
        "image" : "martini",
        "ingredients" : "37.5ml Smirnoff Vanilla \n 25ml Passoa \n Juice of 1⁄2 Lime \n Dash Vanilla \n 25ml Passion fruit Puree \n 25ml Pineapple Juice \n 25ml Prosecco",
        "method" : "Shake all ingredients except prosecco and double strain. Serve prosecco in shot glass to the side.",
        "garnish" : "Garnish – Passion fruit"],
        [
        "image" : "martini3",
        "ingredients" : "37.5ml Smirnoff Vanilla \n 25ml Chambord \n 40ml Pineapple juice \n Juice of 1⁄2 Lime \n Dash Gomme",
        "method" : "Shake all ingredients and double strain.",
        "garnish" : "Garnish – Raspberries"],
        [
        "image" : "martini",
        "ingredients" : "37.5ml Cazcabel Coffee \n 25ml Crème de Cacao \n 35ml Cream",
        "method" : "Shake all ingredients and double strain.",
        "garnish" : "Garnish – Line of cocoa powder off centre"],
        [
        "image" : "martini",
        "ingredients" : "37.5ml New Amsterdam \n 25ml Kahlua \n Dash Gomme \n 35ml (single) espresso",
        "method" : "Shake all ingredients and double strain.",
        "garnish" : "Garnish – 3 coffee beans"],
        [
        "image" : "whisky",
        "ingredients" : "37.5ml Brockmans Gin \n Juice of 1⁄2 Lemon \n Dash Gomme \n 12.5ml Crème de Cassis",
        "method" : "Shake all ingredients except cassis and strain over crushed ice. Drizzle cassis in a circular motion to create a marbling effect.",
        "garnish" : "Garnish – Lemon wheel and Blackberry"],
        [
        "image" : "whisky",
        "ingredients" : "62.5ml Woodford Reserve \n Brown Sugar Cube \n 3 dash Angostura BItters",
        "method" : "Place sugar cube in bottom of mixing glass. Soak with 3 dashes of angostura bitters. Crush sugar cube with muddler. Add whiskey and 4 ice cubes. Stir until ice has almost melted. Add more ice and continue to stir. Once sufficiently diluted use a julep strainer to strain over ice.",
        "garnish" : "Garnish – Large orange zest, twisted"],
        [
        "image" : "whisky",
        "ingredients" : "37.5ml Disaronno Amaretto \n 12.5ml Makers Mark \n Juice of 1⁄2 Lemon \n Dash Gomme",
        "method" : "Shake all ingredients and strain over ice.",
        "garnish" : "Garnish – Lemon wheel"],
        [
        "image" : "whisky",
        "ingredients" : "37.5ml Bacardi Carta Negra \n 25ml Pepsi syrup \n 15ml lime juice \n Dash Angostura \n Ayala Brut Majeur",
        "method" : "Build rum, pepsi syrup, lime and bitters in glass. Add ice and top with Champagne.",
        "garnish" : "Garnish – Lime wedge"],
        [
        "image" : "hurricane4",
        "ingredients" : "25ml Cazcabel Blanco \n 25ml Cointreau \n 40ml Orange Juice \n 40ml Cranberry Juice \n Juice of 1⁄2 a lime \n 2 dash angostura orange",
        "method" : "Shake all ingredients and strain over ice.",
        "garnish" : "Garnish – Orange Zest"],
        [
            "image" : "hurricane4",
            "ingredients" : "37.5ml Koko Kanu \n 25ml Archers \n 40ml Pineapple Juice 40ml Cranberry \n Juice Juice of 1⁄2 a lime \n 2 dash grapefruit orange",
            "method" : "Shake all ingredients except cranberry juice and strain over ice. Pour cranberry on top to float.",
            "garnish" : "Garnish – Lime wheel"],
        [
            "image" : "hurricane4",
            "ingredients" : "37.5ml Makers Mark \n 25ml Cointreau \n 25ml White Peach Puree \n Btl Fever Tree Ginger Ale",
            "method" : "Shake all ingredients except ginger and strain over ice. Add ginger ale and stir.",
            "garnish" : "Garnish – Orange Zest"],
        [
            "image" : "hurricane4",
            "ingredients" : "50ml Bacardi Carta Blanca \n Btl Ginger Beer \n Juice of 1⁄2 a lime",
            "method" : "Fill glass with ice and pour ginger beer and lime juice in. Float rum on top.",
            "garnish" : "Garnish – Lime wedge"],
        [
            "image" : "whisky",
            "ingredients" : "25ml Nelson’s Navy Gin \n 25ml Cointreau \n 25ml passion fruit puree \n Juice of 1⁄2 Lime \n Dash Orgeat \n Dash Grenadine",
            "method" : "Small dash grenadine in bottom of glass and fill with crushed ice. Shake all other ingredients and strain. Place crushed ice in lime juicer and press to create ice boat.",
            "garnish" : "Garnish – Ice boat and passion fruit"],
        [
            "image" : "martini",
            "ingredients" : "25ml Nelson’s Timur Gin \n 25ml Grand Marnier \n 25ml strawberry puree \n Juice of 1⁄2 Lime \n Dash Gomme \n Dash Grapefruit bitters \n Fresh basil – 4 leaves",
            "method" : "Clap and then shred 3 leaves basil and place in boston glass. Add all other ingredients, shake and strain.",
            "garnish" : "Garnish – ???"],
        [
            "image" : "hurricane4",
            "ingredients" : "50ml Nelson’s Rhubarb & Custard \n Dash grenadine \n 40ml Cream \n Juice of 1⁄2 Lemon \n Dash Gomme \n Lemonade",
            "method" : "Double shake (twice the time) all ingredients except lemonade. Strain into glass with no ice. Once settled slowly top with lemonade until foam protrudes from glass.",
            "garnish" : "Garnish – (foam)"],
        [
            "image" : "champagne",
            "ingredients" : "20ml Nelson’s Rhubarb & Custard \n Juice of 1⁄4 lemon \n Dash gomme \n Ayala Brut Majeur",
            "method" : "Shake all ingredients except Champagne. Double strain into flute glass and top with Champagne.",
            "garnish" : "Garnish – Lemon Wedge"],
        [
            "image" : "champagne",
            "ingredients" : "15ml Crème de Cassis \n Prosecco/Ayala",
            "method" : "Build all ingredients in glass.",
            "garnish" : "Garnish – Blackberry"],
        [
            "image" : "champagne",
            "ingredients" : "15ml Chambord \n Prosecco/Ayala",
            "method" : "Build all ingredients in glass.",
            "garnish" : "Garnish –Raspberry"],
        [
            "image" : "champagne",
            "ingredients" : "25ml White Peach Puree \n Prosecco/Ayala",
            "method" : "Build all ingredients in glass.",
            "garnish" : "Garnish –Raspberry"],
        [
            "image" : "champagne",
            "ingredients" : "25ml Orange Juice \n Prosecco/Champagne",
            "method" : "Build all ingredients in glass.",
            "garnish" : "Garnish – Half Strawberry"],
        [
            "image" : "champagne2",
            "ingredients" : "Sugar Cube (Brown) \n 3 dashes Angostura bitters \n 15ml VSOP Cognac \n Ayala Brut Majeur",
            "method" : "Build all ingredients in glass. Leave sugar cube intact.",
            "garnish" : "Garnish – Orange Zest"],
        [
            "image" : "martini",
            "ingredients" : "25ml Passion fruit puree \n 25ml soda water \n 35ml Pineapple juice \n Juice of 1⁄2 a lime \n Dash vanilla \n Drop grenadine \n 25ml lemonade",
            "method" : "Shake all ingredients except lemonade and double strain. Serve lemonade in shot glass on the side.",
            "garnish" : "Garnish – Passion fruit"],
        [
            "image" : "hurricane4",
            "ingredients" : "20ml white peach puree \n Dash grenadine \n 40ml Orange Juice \n 40ml Cranberry Juice",
            "method" : "Shake all ingredients except cranberry and strain over ice. Float cranberry juice on top.",
            "garnish" : "Garnish – Orange Zest"],
        [
            "image" : "hurricane4",
            "ingredients" : "Btl ginger ale \n 25ml Strawberry puree \n Juice of 1⁄2 a lime \n 2 dash orange bitters",
            "method" : "Build all ingredients into glass with ice and stir.",
            "garnish" : "Garnish – Lime wheel"]]
    
    

    var selection: String!
    
    @IBOutlet private weak var detailsLabel: UILabel!
    @IBOutlet weak var coctailImage: UIImageView!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var methodLabel: UILabel!
    @IBOutlet weak var garnishLabel: UILabel!
    
    var timer = Timer()
    var countdownTimer = Timer()
    
    var delayInSeconds = 5
    
    @IBOutlet weak var timerSwitch: UISwitch!
    
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var timerBackgroundView: UIView!
    
    @IBAction func timerSwitchPressed(_ sender: Any) {
        
        
        
        //let timeInSeconds = delayInSeconds
        
        if timerSwitch.isOn {
            let defaults = UserDefaults.standard
            delayInSeconds = defaults.integer(forKey: "delayInSeconds")
            secondsLabel.text = "\(delayInSeconds)"
            setTimer(seconds: Double(delayInSeconds))
            countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        } else {
            let defaults = UserDefaults.standard
            defaults.set(delayInSeconds, forKey: "delayInSeconds")
            timer.invalidate()
            countdownTimer.invalidate()
            secondsLabel.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let delay = defaults.integer(forKey: "delay")
        
        delayInSeconds = delay
        
        secondsLabel.text = "\(delay)"
        
        if timerSwitch.isOn {
            setTimer(seconds: Double(delay))
        }
        
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        
        switch selection {
            case "PORNSTAR MARTINI":
                updateUI(image: coctailDictionary[0]["image"]!, ingredients: coctailDictionary[0]["ingredients"]!, method: coctailDictionary[0]["method"]!, garnish: coctailDictionary[0]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 88/255, green: 145/255, blue: 103/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            
            print("PORNSTAR MARTINI")
            case "FRENCH MARTINI":
                updateUI(image: coctailDictionary[1]["image"]!, ingredients: coctailDictionary[1]["ingredients"]!, method: coctailDictionary[1]["method"]!, garnish: coctailDictionary[1]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 88/255, green: 145/255, blue: 103/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("FRENCH MARTINI")
            case "ALEJANDRO":
                updateUI(image: coctailDictionary[2]["image"]!, ingredients: coctailDictionary[2]["ingredients"]!, method: coctailDictionary[2]["method"]!, garnish: coctailDictionary[2]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 88/255, green: 145/255, blue: 103/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("ALEJANDRO")
            case "ESPRESSO MARTINI":
                updateUI(image: coctailDictionary[3]["image"]!, ingredients: coctailDictionary[3]["ingredients"]!, method: coctailDictionary[3]["method"]!, garnish: coctailDictionary[3]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 88/255, green: 145/255, blue: 103/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("ESPRESO MARTINI")
            case "GREAT BRITISH BRAMBLE":
                updateUI(image: coctailDictionary[4]["image"]!, ingredients: coctailDictionary[4]["ingredients"]!, method: coctailDictionary[4]["method"]!, garnish: coctailDictionary[4]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("GREAT BRITISH BRAMBLE")
            case "OLD FASHIONED":
                updateUI(image: coctailDictionary[5]["image"]!, ingredients: coctailDictionary[5]["ingredients"]!, method: coctailDictionary[5]["method"]!, garnish: coctailDictionary[5]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("OLD FASHIONED")
            case "AMARETTO SOUR":
                updateUI(image: coctailDictionary[6]["image"]!, ingredients: coctailDictionary[6]["ingredients"]!, method: coctailDictionary[6]["method"]!, garnish: coctailDictionary[6]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("AMARETTO SOUR")
            case "CUBA LIBERTE":
                updateUI(image: coctailDictionary[7]["image"]!, ingredients: coctailDictionary[7]["ingredients"]!, method: coctailDictionary[7]["method"]!, garnish: coctailDictionary[7]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
                
                setTextColor(color: .white)
                
            print("CUBA LIBERTE")
            case "JALISCO BREEZE":
                updateUI(image: coctailDictionary[8]["image"]!, ingredients: coctailDictionary[8]["ingredients"]!, method: coctailDictionary[8]["method"]!, garnish: coctailDictionary[8]["garnish"]!)
                
                view.backgroundColor = UIColor(red: 160/255, green: 204/255, blue: 120/255, alpha: 1.0)
                
                setTextColor(color: .darkText)
                
            print("JALISCO BREEZE")
        case "KOKO PARADISO":
            updateUI(image: coctailDictionary[9]["image"]!, ingredients: coctailDictionary[9]["ingredients"]!, method: coctailDictionary[9]["method"]!, garnish: coctailDictionary[9]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 160/255, green: 204/255, blue: 120/255, alpha: 1.0)
            
            setTextColor(color: .darkText)
            
            print("KOKO PARADISO")
        case "KENTUCKY PUNCH":
            updateUI(image: coctailDictionary[10]["image"]!, ingredients: coctailDictionary[10]["ingredients"]!, method: coctailDictionary[10]["method"]!, garnish: coctailDictionary[10]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 160/255, green: 204/255, blue: 120/255, alpha: 1.0)
            
            setTextColor(color: .darkText)
            
            print("KENTUCKY PUNCH")
        case "DARK & STORMY":
            updateUI(image: coctailDictionary[11]["image"]!, ingredients: coctailDictionary[11]["ingredients"]!, method: coctailDictionary[11]["method"]!, garnish: coctailDictionary[11]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 160/255, green: 204/255, blue: 120/255, alpha: 1.0)
            
            setTextColor(color: .darkText)
            
            print("DARK & STORMY")
        case "SAILOR SATURN":
            updateUI(image: coctailDictionary[12]["image"]!, ingredients: coctailDictionary[12]["ingredients"]!, method: coctailDictionary[12]["method"]!, garnish: coctailDictionary[12]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 240/255, green: 215/255, blue: 140/255, alpha: 1.0)
            
            setTextColor(color: .black)
            
            print("SAILOR SATURN")
        case "TIMUR GRANDE":
            updateUI(image: coctailDictionary[13]["image"]!, ingredients: coctailDictionary[13]["ingredients"]!, method: coctailDictionary[13]["method"]!, garnish: coctailDictionary[13]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 240/255, green: 215/255, blue: 140/255, alpha: 1.0)
            
            setTextColor(color: .black)
            
            print("TIMUR GRANDE")
        case "RHUBARB & CUSTARD GIN FIZZ":
            updateUI(image: coctailDictionary[14]["image"]!, ingredients: coctailDictionary[14]["ingredients"]!, method: coctailDictionary[14]["method"]!, garnish: coctailDictionary[14]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 240/255, green: 215/255, blue: 140/255, alpha: 1.0)
            
            setTextColor(color: .black)
            
            print("RHUBARB & CUSTARD GIN FIZZ")
        case "NO. 7 75":
            updateUI(image: coctailDictionary[15]["image"]!, ingredients: coctailDictionary[15]["ingredients"]!, method: coctailDictionary[15]["method"]!, garnish: coctailDictionary[15]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 240/255, green: 215/255, blue: 140/255, alpha: 1.0)
            
            setTextColor(color: .black)
            
            print("NO. 7 75")
        case "KIR ROYALE":
            updateUI(image: coctailDictionary[16]["image"]!, ingredients: coctailDictionary[16]["ingredients"]!, method: coctailDictionary[16]["method"]!, garnish: coctailDictionary[16]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("KIR ROYALE")
        case "CHAMBOARD FIZZ":
            updateUI(image: coctailDictionary[17]["image"]!, ingredients: coctailDictionary[17]["ingredients"]!, method: coctailDictionary[17]["method"]!, garnish: coctailDictionary[17]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("CHAMBOARD FIZZ")
        case "BELLINI":
            updateUI(image: coctailDictionary[18]["image"]!, ingredients: coctailDictionary[18]["ingredients"]!, method: coctailDictionary[18]["method"]!, garnish: coctailDictionary[18]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("BELLINI")
        case "MIMOSA":
            updateUI(image: coctailDictionary[19]["image"]!, ingredients: coctailDictionary[19]["ingredients"]!, method: coctailDictionary[19]["method"]!, garnish: coctailDictionary[19]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("MIMOSA")
        case "CLASSIC CHAMPAGNE":
            updateUI(image: coctailDictionary[20]["image"]!, ingredients: coctailDictionary[20]["ingredients"]!, method: coctailDictionary[20]["method"]!, garnish: coctailDictionary[20]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 68/255, green: 132/255, blue: 117/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("CLASSIC CHAMPAGNE")
        case "SOFT PORNSTAR":
            updateUI(image: coctailDictionary[21]["image"]!, ingredients: coctailDictionary[21]["ingredients"]!, method: coctailDictionary[21]["method"]!, garnish: coctailDictionary[21]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 32/255, green: 117/255, blue: 97/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("SOFT PORNSTAR")
        case "CUDDLES ON THE BEACH":
            updateUI(image: coctailDictionary[22]["image"]!, ingredients: coctailDictionary[22]["ingredients"]!, method: coctailDictionary[22]["method"]!, garnish: coctailDictionary[22]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 32/255, green: 117/255, blue: 97/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("CUDDLES ON THE BEACH")
        case "PECK ON THE CHEEK":
            updateUI(image: coctailDictionary[23]["image"]!, ingredients: coctailDictionary[23]["ingredients"]!, method: coctailDictionary[23]["method"]!, garnish: coctailDictionary[23]["garnish"]!)
            
            view.backgroundColor = UIColor(red: 32/255, green: 117/255, blue: 97/255, alpha: 1.0)
            
            setTextColor(color: .white)
            
            print("PECK ON THE CHEEK")
        default:
            print("DOMYSLNY PRZYPADEK")
        }
        
        detailsLabel.text = selection
        
        timerBackgroundView.layer.cornerRadius = 20
        timerBackgroundView.clipsToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancelPressed(_ sender: Any) {
        //dismiss(animated: true, completion: nil)
    }
    
    func updateUI(image: String, ingredients: String, method: String, garnish: String) {
        coctailImage.image = UIImage(named: image)
        ingredientsLabel.text = ingredients
        methodLabel.text = method
        garnishLabel.text = garnish
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
        timer.invalidate()
        countdownTimer.invalidate()
    }
    
    func setTextColor(color: UIColor) {
        detailsLabel.textColor = color
        ingredientsLabel.textColor = color
        methodLabel.textColor = color
        garnishLabel.textColor = color
    }
    
    func setTimer(seconds: Double) {
        timer = Timer.scheduledTimer(timeInterval: seconds, target: self, selector: #selector(invalidateTimer), userInfo: nil, repeats: false)
        }
    
    @objc func invalidateTimer() {
        dismiss(animated: true, completion: nil)
        timer.invalidate()
    }
    
    @objc func countdown() {
        delayInSeconds -= 1
        secondsLabel.text = "\(delayInSeconds)"
        if delayInSeconds == 0 {
            countdownTimer.invalidate()
        }
    }
    
}

