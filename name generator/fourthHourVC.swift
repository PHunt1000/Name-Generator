//
//  fourthHourVC.swift
//  name generator
//
//  Created by teacher on 8/22/16.
//  Copyright © 2016 Mathien. All rights reserved.
//

import UIKit

class fourthHourVC: UIViewController
{
    @IBOutlet weak var nameLabel: UILabel!

    var fourthHour = ["E. Anderson", "V. Anderson", "Asta", "Bernero", "Bischof", "Blake", "Conduitt", "DuBois", "Grogger", "Heick", "Jaramillo", "Kinsey", "Losurdo", "Majeed", "Menconi", "Mendoza", "O'Connell", "Robinson", "Thyfault", "Tripuraneni", "Tufenkjian", "Walji", "Wiesman"]

    var timer = NSTimer()
    var counter = 0


    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func screenTapped(sender: AnyObject)
    {
        if counter == 0
        {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.125, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)

            counter += 1
        }
    }

    @IBAction func stopButtonPressed(sender: AnyObject)
    {
        timer.invalidate()

        counter = 0
    }

    // called every time interval from the timer
    func timerAction()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fourthHour.count)))
        nameLabel.text = fourthHour[randomIndex]
    }
}
