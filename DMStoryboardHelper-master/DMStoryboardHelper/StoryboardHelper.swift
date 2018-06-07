//
//  StoryboardHelper.swift
//  GitTest
//
//  Created by Masuhara on 2015/09/18.
//  Copyright © 2015年 AuraOtsuka. All rights reserved.
//

import UIKit

struct StoryboardHelper {
    
    static var currentDevice = UIDevice.current
    static var height = UIScreen.main.bounds.size.height
    
    static func adjust(to window: UIWindow?, devices: DevicesType) {
        
        // Check window
        guard let window = window else {
            print("Window is nil.")
            return
        }
        
        var storyboard = UIStoryboard()

        /// Switch Storyboard
        /// ref: https://qiita.com/tomohisaota/items/f8857d01f328e34fb551
        switch (devices, height) {
        case (_, 667),
             (_, 736),
             (_, 812):
            // iPhone 6, 6s, 6+, 7, 7s, 7+, 8, X
            storyboard = UIStoryboard(name: "Main", bundle: nil)
        case (_, 480),
             (.iPhone, 1024),
             (.iPhone, 1112),
             (.iPhone, 1366):
            // iPhone4, 4s, iPhone sim on iPad
            storyboard = UIStoryboard(name: "3.5inch", bundle: nil)
        case (_, 1024),
             (_, 1112),
             (_, 1366):
            // iPad, Air, mini, Pro
            storyboard = UIStoryboard(name: "9.7inch", bundle: nil)
        default:
            // iPhone 5, 5s, 5c, SE
            storyboard = UIStoryboard(name: "Main", bundle: nil)
        }
        
        window.rootViewController = storyboard.instantiateInitialViewController()! as UIViewController
        window.makeKeyAndVisible()
    }
}

enum DevicesType {
    case universal
    case iPhone
    case iPad
}
