//
//  editDeviceController.swift
//  Smart BMS Utility
//
//  Created by Justin on 05.11.20.
//

import UIKit

class editDeviceController: UIViewController {
    
    static var deviceIndex = -1
    var selectedDevice: device!

    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var deviceNameTextField: UITextField!
    
    override func viewDidLoad() {
        if DevicesController.getConnectedDevice() != nil {
            selectedDevice = DevicesController.getConnectedDevice()
        }
        else {
            selectedDevice = DevicesController.deviceArray[editDeviceController.deviceIndex]
        }
        
        deviceNameTextField.text = selectedDevice.settings.deviceName
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Something Else", style: .plain, target: nil, action: nil)
        super.viewDidLoad()
    }
    @IBAction func saveButton(_ sender: Any) {
        self.dismiss(animated: true) { [self] in
            NotificationCenter.default.post(name: Notification.Name("reloadDevices"), object: nil)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if DevicesController.getConnectedDevice() != nil {
            DevicesController.getConnectedDevice()?.settings.deviceName = deviceNameTextField.text
            DevicesController.getConnectedDevice()?.saveDeviceSettings()
        }
        else {
            DevicesController.deviceArray[editDeviceController.deviceIndex].settings.deviceName = deviceNameTextField.text
            DevicesController.deviceArray[editDeviceController.deviceIndex].saveDeviceSettings()
        }
    }
}
