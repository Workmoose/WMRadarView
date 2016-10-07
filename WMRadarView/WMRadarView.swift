//
//  WMRadarView.swift
//
//  Created by Jaap Wijnen on 16/09/2016.
//
//
// ------------------------------------------------------------
// "THE BEERWARE LICENSE" (Revision 42):
// Jaap Wijnen wrote this code. As long as you retain this
// notice, you can do whatever you want with this stuff. If we
// meet someday, and you think this stuff is worth it, you can
// buy me a beer in return.
// ------------------------------------------------------------
//

import UIKit

class WMRadarView: UIView {
    var numberOfWaves: Int = 5 { didSet { setup() } }
    var radarColor: UIColor = UIColor.blue { didSet { setup() } }
    var maxWaveAlpha: CGFloat = 1.0 { didSet { setup() } }
    var deltaAlpha: CGFloat = 2.5 { didSet { setup() } }
    var animationDuration: Double = 3.5 { didSet { setup() } }
    var animationOptions: UIViewAnimationOptions = [.curveEaseOut] { didSet { setup() } }

    var radius: CGFloat {
        return frame.width / 2
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
        for view in self.subviews {
            view.removeFromSuperview()
        }

        for _ in 0..<numberOfWaves {
            let circle = UIView(frame: CGRect.zero)
            circle.center = self.center
            circle.backgroundColor = radarColor
            circle.alpha = maxWaveAlpha
            circle.layer.cornerRadius = circle.bounds.width / 2
            self.addSubview(circle)
        }
    }

    func startAnimation() {
        let views = self.subviews
        for (index, view) in views.enumerated() {
            let delay = animationDuration / Double(numberOfWaves) * Double(index)
            UIView.animate(withDuration: animationDuration, delay: delay, options: [.repeat, animationOptions], animations: {
                view.frame = self.bounds
                view.layer.cornerRadius = view.frame.width / 2
                view.alpha = 0.0
                }, completion: nil)
        }
    }
}
