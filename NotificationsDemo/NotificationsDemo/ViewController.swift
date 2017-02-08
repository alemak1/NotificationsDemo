//
//  ViewController.swift
//  NotificationsDemo
//
//  Created by Aleksander Makedonski on 2/8/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scheduleNotification()
    }

    func scheduleNotification(){
        let content = UNMutableNotificationContent()
        content.title = "10 second notification demo"
        content.subtitle = "From Changzhou Panda"
        content.body =  "New C++ Tutorial Available - lambda functions"
        content.badge = 1
        content.sound = UNNotificationSound(named: "gong.aif")
        
        let imageURL = Bundle.main.url(forResource: "labtop", withExtension: "png")
        
        let attachment = try! UNNotificationAttachment(identifier: "labtop.png", url: imageURL!, options: nil)
        
        content.attachments = [attachment]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
        
        let request = UNNotificationRequest(identifier: "10 second notificaiton", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
  

}

