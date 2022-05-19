//
//  Nutrition.swift
//  nutrition
//
//  Created by Macintosh on 19/05/22.
//

import Foundation

public class Nutrition {
    
    // Properties
    public var textEntry: String?
    public let APIManager = NetworkManager.shared
    public static let shared = InitializerCl()
    
    
    //    MARK:- Get Tags for entered Text
    public func getTgs()-> ([JSON]?,Error?){
//        return self.NM.GetTags(for: self.textEntry!)
        var int : [JSON]?
        var err :Error?
        self.APIManager.GetTags(for: self.textEntry!) { success, error in
            guard let json = success else {
                err = error
                return
            }
            int = json
        }
        return(int,err)
    }
    
    
    //    MARK:- Get Meal Id for selected Category
//    public func getMealId(for cat: MealType) ->  Promise<Int> {
//        return self.NM.GetMealID(category: cat, rawText: self.textEntry!)
//    }
//
//    //    MARK:- Get Log Id
//    public func GetLogId(for MealID: String,date:Date)-> Promise<Int> {
//        return self.NM.getLogID(for:MealID ,rawText:self.textEntry!,user_ID:Helper.shared.uuid,date:date)
//    }
    
    
}