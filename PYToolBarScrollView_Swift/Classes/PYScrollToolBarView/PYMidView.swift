
//
//  PYMindView.swift
//  koalareading
//
//  Created by 李鹏跃 on 2017/10/27.
//  Copyright © 2017年 koalareading. All rights reserved.
//

import UIKit
public class PYMidView: UIView {
    
    var delegate: PYToolBarViewProtocol?
    private var isFirstSetToolBarUI: Bool = true
    
    override public func layoutSubviews() {
        if isFirstSetToolBarUI {
            self.delegate?.registerToolBarView().displayUI()
            layoutIfNeeded()
            isFirstSetToolBarUI = false
        }
    }
}
