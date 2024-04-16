import UIKit

extension UITableView {

    func skeleton(_ height: CGFloat, _ status: Bool = true) {
        self.rowHeight = UITableView.automaticDimension
        self.estimatedRowHeight = CGFloat(height)
        self.skeleton(status)
    }

    func skeleton(_ height: CGFloat, _ count: Int) {
        if count != 0 {
            self.superview?.showLoader()
        } else {
            skeleton(height)
        }

    }

    override func skeleton(_ status: Bool = false) {
        if status {
            super.skeleton(status)
        } else {
            self.superview?.hideLoader()
            self.hideSkeleton()
        }
    }
}

extension UIView {
    @objc func skeleton(_ status: Bool = false) {
        if status {
            Utils.showTrLoader(inView: self)
            self.showAnimatedGradientSkeleton()
        } else {
            self.hideLoader()
            self.hideSkeleton()
        }
    }
}

