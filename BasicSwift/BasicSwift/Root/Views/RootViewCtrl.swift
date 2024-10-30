//
//  RootViewCtrl.swift
//  BasicSwift
//
//  Created by 배정길 on 10/30/24.
//

import UIKit

class RootViewCtrl: UIViewController {

    private let viewModel = RootViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

}

// MARK: - UITableViewDataSource
extension RootViewCtrl: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.studyTopics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let topic = viewModel.studyTopics[indexPath.row]
        cell.textLabel?.text = topic.title
        return cell
    }
}

// MARK: - UITableViewDelegate
extension RootViewCtrl: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let selectedTopic = viewModel.selectTopic(at: indexPath.row) {
            print("Selected topic: \(selectedTopic.title) - \(selectedTopic.description)")
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
