//
//  Park.swift
//  NPF-1
//
//  Created by Rohit B Iyer on 2/16/16.
//  Copyright © 2016 Rohit Bhaskar. All rights reserved.
//

import Foundation
import CoreLocation

class Park: CustomStringConvertible {
    
// MARK: - Variable declerations and their description
    
    private var parkName: String = ""
    private var parkLocation: String = ""
    private var dateFormed: String = ""
    private var area: String = ""
    private var link: String = ""
    private var location: CLLocation?
    private var imageLink: String = ""
    private var imageName: String = ""
    private var imageSize: String = ""
    private var imageType: String = ""
    private var parkDescription: String = ""
    
    var description: String{
        return "{\n\tparkName: \(parkName)\n\tparkLocation: \(parkLocation)\n\tdateFormed: \(dateFormed)\n\tarea: \(area)\n\tlink: \(link)\n\tlocation: \(location)\n\timageLink: \(imageLink)\n\timageName: \(imageName)\n\timageSize: \(imageSize)\n\timageType: \(imageType)\n\tparkDescription: \(parkDescription)\n}"
    }

// MARK: - Initializers
    
    convenience init(){
        self.init(parkName: "Unknown", parkLocation: "Unknown", dateFormed: "Unknown", area:"Unknown", link:"Unknown", location: nil, imageLink: "Unknown", imageName: "Unknown", imageSize: "Unknown", imageType: "Unknwown", parkDescription: "Unknown")
    }
    
    init(parkName: String, parkLocation: String, dateFormed: String, area:String, link: String, location: CLLocation?, imageLink: String, parkDescription: String){
        self.setParkName(parkName)
        self.setParkLocation(parkLocation)
        self.setDateFormed(dateFormed)
        self.setArea(area)
        self.setLink(link)
        self.setLocation(location)
        self.setImageLink(imageLink)
        self.setImageName(imageName)
        self.setImageSize(imageSize)
        self.setImageType(imageType)
        self.setParkDescription(parkDescription)
        
    }
    
// MARK: - Accessor methods for variables
    
    func getParkName() -> String{
        return self.parkName
    }
    
    func getParkLocation() -> String{
        return self.parkLocation
    }
    
    func getDateFormed() -> String{
        return self.dateFormed
    }
    
    func getArea() -> String{
        return self.area
    }
    
    func getLink() -> String{
        return self.link
    }
    
    func getLocation() -> CLLocation?{
        if location != nil {
            return location!
        }else{
            return nil
        }
    }
    
     func getImageLink() -> String{
        return self.imageLink
    }
    
    func getImageName() -> String{
        return self.imageName
    }
    
    func getImageSize() -> String{
        return self.imageSize
    }
    
    func getImageType() -> String{
        return self.imageType
    }
    
    func getParkDescription() -> String{
        return self.parkDescription
    }
    
// MARK:- Mutator methods for the variables
    
    func setParkName(_parkName: String){
        if _parkName.characters.count > 3 && _parkName.characters.count < 75{
            if !_parkName.stringByReplacingOccurrencesOfString(" ", withString: "").isEmpty{
            self.parkName = _parkName
            }else{
                print("Bad value of \(_parkName) in setParkName: setting to TBD")
                self.parkName = "TBD"
            }
        }else{
            print("Bad value of \(_parkName) in setParkName: setting to TBD")
            self.parkName = "TBD"
        }
        
    }

    func setParkLocation(_parkLocation: String){
        if _parkLocation.characters.count > 3 && _parkLocation.characters.count < 75{
            if !_parkLocation.stringByReplacingOccurrencesOfString(" ", withString: "").isEmpty{
                self.parkLocation = _parkLocation
            }else{
                print("Bad value of \(_parkLocation) in setParkLocation: setting to TBD")
                self.parkLocation = "TBD"
            }

        }else{
            print("Bad value of \(_parkLocation) in setParkLocation: setting to TBD")
            self.parkLocation = "TBD"
        }
   }
    
    func setDateFormed(_dateFormed: String){
        self.dateFormed = _dateFormed
    }
    
    func setArea(_area: String){
        self.area = _area
    }
    
    func setLink(_link: String){
        self.link = _link
    }
    
    func setLocation(_location: CLLocation?){
        self.location = _location
    }
    
    func setImageLink(_imageLink: String){
        self.imageLink = _imageLink
    }
    
    func setImageName(_imageName: String){
        self.imageName = _imageName
    }
    
    func setImageSize(_imageSize: String){
        self.imageSize = _imageSize
    }
    
    func setImageType(_imageType: String){
        self.imageType = _imageType
    }

    func setParkDescription(_parkDescription: String){
        self.parkDescription = _parkDescription
    }
    
}