//
//  StatisticsViewController.swift
//  Recipe Book
//
//  Created by Marek Marciszewski on 07/09/2019.
//  Copyright © 2019 Marek Marciszewski. All rights reserved.
//

import UIKit

class StatisticsViewController: UITableViewController {
    
    var cocktailsStatistics = [String : Int]()
    var cocktailsStatisticsArray = [Int]()
    
    var cocktailsNames = [String]()
    
    var maxNumber = 0
    var indexOfMaxNumber = 0
    
    var arrayOfIndexes = [Int]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        //cocktailsStatistics = defaults.object(forKey: "cocktailsStatistics") as? [String : Int] ?? [:]
        cocktailsStatisticsArray = defaults.object(forKey: "cocktailsStatisticsArray") as? [Int] ?? []
        
        
            maxNumber = cocktailsStatisticsArray.max() ?? 0
        //indexOfMaxNumber = cocktailsStatisticsArray.firstIndex {$0 == maxNumber}!
        
        for (index, max) in cocktailsStatisticsArray.enumerated() {
            if max == maxNumber {
                let newElement = index
                arrayOfIndexes.append(newElement)
                print(index, max)
                
            }
        }
        print("NEW ELEMENTS ARRAY: \(arrayOfIndexes)")
        print(cocktailsStatisticsArray)
        //print("INDEX: \(indexOfMaxNumber)")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktailsStatisticsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "statisticsCell") as! StatisticsTableViewCell
        
        //let numberOfClicks = cocktailsStatisticsArray[indexPath.row]
        cell.update(array: cocktailsStatisticsArray, index: indexPath.row)
        cell.updateNames(array: cocktailsNames, index: indexPath.row)
        
        
        let elemntsInArray = arrayOfIndexes.count
        switch elemntsInArray {
        case 1:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 2:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
             else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 3:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
             else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 4:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                    cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 5:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 6:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 7:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 8:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 9:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 10:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 11:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 12:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 13:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 14:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 15:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 16:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 17:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 18:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 19:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[18] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 20:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[18] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[19] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 21:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[18] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[19] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[20] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 22:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[18] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[19] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[20] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[21] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 23:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[18] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[19] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[20] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[21] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[22] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        case 24:
            if indexPath.row == arrayOfIndexes[0] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[1] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[2] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[3] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[4] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[5] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[6] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[7] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[8] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[9] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[10] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[11] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[12] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[13] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[14] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[15] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[16] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[17] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[18] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[19] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[20] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[21] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[22] {
                cell.changeColorOfTheRowWhenMax()
            }
            else if indexPath.row == arrayOfIndexes[23] {
                cell.changeColorOfTheRowWhenMax()
            }
            else {
                cell.changeColorToPrevious()
            }
        default:
            break
        }
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    @IBAction func trashTapped(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert",  message: "Would you like to reset all the data collected so far?", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes", style: .destructive) { (action) in
            
            self.cocktailsStatisticsArray = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            let defaults = UserDefaults.standard
            defaults.setValue(self.cocktailsStatisticsArray, forKey: "cocktailsStatisticsArray")
            self.tableView.reloadData()
            }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            
        }
        
        alert.addAction(cancel)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
