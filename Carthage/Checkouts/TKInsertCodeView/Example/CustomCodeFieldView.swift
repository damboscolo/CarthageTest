//
//  CustomCodeFieldView.swift
//  TKInsertCodeView
//
//  Created by Daniele Boscolo on 01/06/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import UIKit
import TKInsertCodeView

class CustomCodeFieldView: UIView, TKCodeFieldViewProtocol {
    
    @IBOutlet weak var codeTextField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    
    func loadNib() {
        guard let nib = Bundle.main.loadNibNamed("CustomCodeFieldView", owner: self)?[0] as? UIView else {
            return
        }
        nib.frame = bounds
        nib.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        nib.isUserInteractionEnabled = true
        addSubview(nib)
        clipsToBounds = true
    }
    
    // Protocoled
    
    var code: String? {
        get {
            return codeTextField.text
        }
        set {
            codeTextField.text = newValue
        }
    }
    
    func setSelected(_ selected: Bool) {
        // customize
    }
}
