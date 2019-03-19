//Help Direct Initial VC to Navigation Controller
func goTo(_ view: String, animate: Bool){
    OperationQueue.main.addOperation {
        func topMostController() -> UIViewController {
            var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
            while (topController.presentedViewController != nil) {
                topController = topController.presentedViewController!
            }
            return topController
        }
        if let second = topMostController().storyboard?.instantiateViewController(withIdentifier: view) {
            topMostController().present(second, animated: animate, completion: nil)
            // topMostController().navigationController?.pushViewController(second, animated: animate)

        }
    }
}

func navGoTo(_ view: String, animate: Bool){
        OperationQueue.main.addOperation {
        func topMostController() -> UIViewController {
            var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
            while (topController.presentedViewController != nil) {
                topController = topController.presentedViewController!
            }
            return topController
        }
        if let second = topMostController().storyboard?.instantiateViewController(withIdentifier: view) {
            self.navigationController?.pushViewController(second, animated: animate)
            

        }
    }
}