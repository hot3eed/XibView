//
//  XibView.swift
//  XibView
//
//  Created by Abd-Elrhman Rizk on 10/12/19.
//

import UIKit

/**
 A `UIView` that's loadable from `.xib` files and designable in Interface Builder.
 Subclass this view, create a `.xib` with the File's Owner set as the subclass,
 add your nice new control to a storyboard and voila: live rendering!
 
 - important:
 - Any subclass' `.xib` file must have the exact same name as the subclass'
 name and be set as the '.xib' File's Owner.
 - Don't forget `@IBDesignable`.
 */
@IBDesignable
public class XibView: UIView {
    private var contentView: UIView?
    
    private var nibName: String {
        //The dynamic type of self.
        return String(describing: type(of: self))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addContentView()
    }
    
    private func addContentView() {
        guard let view = firstViewFromNib() else {
            return
        }
        self.contentView = view
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
        self.backgroundColor = .clear
    }
    
    private func firstViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        
        return view
    }
}
