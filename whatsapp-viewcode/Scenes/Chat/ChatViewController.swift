//
//  ChatViewController.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 07/07/22.
//

import UIKit

class ChatViewController: UIViewController {
    var userId: String?
    var chat = [ChatModel]()
    
    lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    convenience init(userId: String ) {
        self.init()
        self.userId = userId
        print(userId)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegates()
        addSubViews()
        configureSubViews()
        configureView()
    }
    
    private func delegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func addSubViews() {
        view.addSubview(tableView)
    }
    
    private func configureSubViews() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func configureView() {
        view.backgroundColor = .white;
    }
    
}

extension ChatViewController: UITableViewDelegate {
    
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
