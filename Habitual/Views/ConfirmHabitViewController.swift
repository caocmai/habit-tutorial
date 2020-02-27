//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by Cao Mai on 2/25/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {
    
    var habitImage: Habit.Images!
    @IBOutlet weak var habitNameInputField: UITextField!
    
    
    @IBOutlet weak var habitImageView: UIImageView!
    
    
    @IBAction func createHabitButtonPressed(_ sender: Any) {
        
        // Checking if texfield is empty
        guard let text = habitNameInputField.text, !text.isEmpty else { return print("Field can't be EMPTY!!") }
        
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitNameInputField.text else { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        updateUI()
    }

    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
