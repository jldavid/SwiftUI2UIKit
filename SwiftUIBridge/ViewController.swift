import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    private func configureView() {
        let helloViewController = UIHostingController(rootView: HelloView())
        addChild(helloViewController)
        helloViewController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(helloViewController.view)
        NSLayoutConstraint.activate([
            helloViewController.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloViewController.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

struct HelloView: View {
    var body: some View {
        VStack {
            Text("Hello World")
            Text("Hello from Centennial")
        }
        .background(.yellow)
    }
}
