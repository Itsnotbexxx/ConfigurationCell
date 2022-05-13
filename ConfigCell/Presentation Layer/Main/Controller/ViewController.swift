//
//  ViewController.swift
//  ConfigCell
//
//  Created by Бексултан Нурпейс on 12.05.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let items: [CellConfigurator] = [
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        TextCellConfigurator(item: "The way to get started is to quit talking and begin doing"),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        TextCellConfigurator(item: "The greatest glory in living lies not in never falling, but in rising every time we fall."),
        TextCellConfigurator(item: "If life were predictable it would cease to be life, and be without flavor"),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        TextCellConfigurator(item: "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. "),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex")),
        TextCellConfigurator(item: "Life is what happens when you're busy making other plans."),
        UserCellConfigurator(item: User(imageName: "ava", name: "Itsnotbex"))
    ]
    
    private lazy var tableDirector: TableDirector = {
        let tableDirector = TableDirector(tableView: tableView, items: items)
        return tableDirector
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        configureTableView()
        tableDirector.tableView.reloadData()
    }
    
    private func configureTableView(){
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func cellActionHandlers(){
        self.tableDirector.actionProxy
            .on(action: .didSelect) { (config: UserCellConfigurator, cell) in
                            
                        }
            .on(action: .willDisplay) { (config: ImageViewCellConfigurator, cell) in
                           cell.backgroundColor = .gray
                       }
            .on(action: .custom(UserCell.didTapButtonAction)){ (config: UserCellConfigurator, cell) in
                           print("button did tap")
                       }
            .on(action: .custom(UserCell.didTapFollowButtonAction)){ (config: UserCellConfigurator, cell) in
                           print("follow button did tap")
                       }
    }

}

