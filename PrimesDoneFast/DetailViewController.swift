import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    var print: ((String) -> ())?

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
        // Make UIKit cry
        for _ in 0..<5000 {
            addRandomSubview()
        }
        print = printToView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print?("Received memory warning!")
        // Dispose of any resources that can be recreated.
    }


    // MARK:- Display

    private func addRandomSubview() {
        let newSubview = RandomView()
        newSubview.backgroundColor = UIColor.randomColor()
        newSubview.frame = CGRect.randomWithin(view.bounds)
        view.addSubview(newSubview)
        view.sendSubviewToBack(newSubview)
    }

    // MARK:- Printing

    private func printToView(text: String) {
        detailDescriptionLabel.text! += "\n" + text
    }

}

