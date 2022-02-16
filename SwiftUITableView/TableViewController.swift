import UIKit

class TableViewController: UITableViewController {

    enum Cell {
        case normalCell
        case swiftUICell
    }

    let cells: [Cell] = [.normalCell, .swiftUICell, .normalCell]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "NormalTableViewCell", bundle: nil), forCellReuseIdentifier: "NormalTableViewCell")
    }

    // MARK: - TableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch cells[indexPath.row] {
        case .normalCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NormalTableViewCell", for: indexPath) as! NormalTableViewCell
            cell.label.text = "\(indexPath.row)"
            return cell
        case .swiftUICell:
            return RowViewCell(index: indexPath.row)
        }
    }
}
