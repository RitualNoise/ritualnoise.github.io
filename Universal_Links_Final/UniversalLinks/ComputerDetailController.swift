/**
 Copyright (c) 2016 Razeware LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

import UIKit

class ComputerDetailController: UIViewController {
  
  @IBOutlet weak var imgBoard: UIImageView!
  @IBOutlet weak var lblName: UILabel!
  @IBOutlet weak var txtDescription: UITextView!
  @IBOutlet weak var lblLink: UILabel!
  @IBOutlet weak var lblVendor: UILabel!
  
  var item: Computer?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    txtDescription.scrollEnabled = false
    if let computer = item {
      imgBoard.image = computer.imgBoard
      lblName.text = computer.name
      txtDescription.text = computer.description
      lblLink.text = "Website: \(computer.link)"
      lblVendor.text = "Vendor: \(computer.vendor)"
    }
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.navigationBarHidden = false
    navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
    navigationController?.navigationBar.shadowImage = UIImage()
    navigationController?.navigationBar.translucent = true
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    txtDescription.scrollEnabled = true
  }
}
