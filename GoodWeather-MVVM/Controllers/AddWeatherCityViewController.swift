//
//  AddWeatherCityViewController.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/07.
//

import UIKit


protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {

    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    
    var delegate: AddWeatherDelegate?
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true)
            }
        }
    }
    
    
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
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
