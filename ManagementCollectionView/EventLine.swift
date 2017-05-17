//
//  EventLine.swift
//  ManagementCollectionView
//
//  Created by Cntt20 on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import Foundation
import UIKit
class EventLine
{
    // Variables
    var dates: String            //
    var events: [Event]     //
    var dateImages: UIImage
    
    init(dateOfWeek: String, includeEvents: [Event], dateImage: UIImage)
    {
        dates = dateOfWeek
        events = includeEvents
        dateImages = dateImage
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.cn(), self.t2(), self.t3(), self.t4(), self.t5(), self.t6(), self.t7()]
    }
    
    // Private methods
    
    private class func cn() -> EventLine {
        //
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        
        return EventLine(dateOfWeek: "Sunday", includeEvents: events, dateImage: #imageLiteral(resourceName: "sunday"))
    }
    
    private class func t2() -> EventLine {
        //  (1)
        var events = [Event]()
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        
        
        return EventLine(dateOfWeek: "Monday", includeEvents: events, dateImage: #imageLiteral(resourceName: "monday"))
    }
    
    private class func t3() -> EventLine {
        //  (1)
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        //
        return EventLine(dateOfWeek: "Tuesday", includeEvents: events, dateImage: #imageLiteral(resourceName: "tuesday"))
    }
    
    private class func t4() -> EventLine {
        //
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        
        return EventLine(dateOfWeek: "Wednesday", includeEvents: events, dateImage: #imageLiteral(resourceName: "wednesday"))
    }
    
    private class func t5() -> EventLine {
        //
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        
        
        return EventLine(dateOfWeek: "Thursday", includeEvents: events, dateImage: #imageLiteral(resourceName: "thursday"))
    }
    
    private class func t6() -> EventLine {
        //
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        //
        return EventLine(dateOfWeek: "Friday", includeEvents: events, dateImage: #imageLiteral(resourceName: "friday"))
    }
    
    private class func t7() -> EventLine {
        //
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description", eventImaged: #imageLiteral(resourceName: "readingBook")))
        events.append(Event(titled: "Going to school", description: "Description", eventImaged: #imageLiteral(resourceName: "goingtoschool")))
        events.append(Event(titled: "Doing homeworks", description: "Description", eventImaged: #imageLiteral(resourceName: "doingHomework")))
        events.append(Event(titled: "Walking", description: "Description", eventImaged: #imageLiteral(resourceName: "walking")))
        events.append(Event(titled: "Listening To Music", description: "Description", eventImaged: #imageLiteral(resourceName: "listeningToMusic")))
        events.append(Event(titled: "Learning English", description: "Description", eventImaged: #imageLiteral(resourceName: "learningEnglish")))
        events.append(Event(titled: "Learning Guitar", description: "Description", eventImaged: #imageLiteral(resourceName: "learningGuitar")))
        events.append(Event(titled: "Do excecise", description: "Description", eventImaged: #imageLiteral(resourceName: "doExercise")))
        events.append(Event(titled: "Hangout With friends", description: "Description", eventImaged: #imageLiteral(resourceName: "hangoutWithFriends")))
        events.append(Event(titled: "Playing game", description: "Description", eventImaged: #imageLiteral(resourceName: "playingGame")))
        //
        return EventLine(dateOfWeek: "Saturday", includeEvents: events, dateImage: #imageLiteral(resourceName: "saturday"))
    }
}
