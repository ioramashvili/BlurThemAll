import UIKit
import Foundation
import PlaygroundSupport


PlaygroundPage.current.needsIndefiniteExecution = true

extension UIView {
    func addBlurEffect() {
        addSubview(createBlur())
    }
    
    func createBlur() -> UIView {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blurEffectView
    }
}

let liveView = UIView(frame: CGRect(x: 0, y: 0, width: 600, height: 600))


let image = UIImage(named: "1024x1024.jpg")
let imageView = UIImageView(image: image)
imageView.frame = liveView.bounds
imageView.contentMode = .scaleAspectFit
imageView.clipsToBounds = true


let blur = imageView.createBlur()
blur.alpha = 0
imageView.addSubview(blur)

UIView.animate(withDuration: 5) {
    blur.alpha = 1
}

liveView.addSubview(imageView)

PlaygroundPage.current.liveView = imageView

URL(string: "www.google.com")

















