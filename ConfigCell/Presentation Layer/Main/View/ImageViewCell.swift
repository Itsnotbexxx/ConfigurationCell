//
//  ImageViewCell.swift
//  ConfigCell
//
//  Created by Бексултан Нурпейс on 13.05.2022.
//

import UIKit

typealias ImageViewCellConfigurator = TableCellConfigurator<ImageViewCell, String>

class ImageViewCell: UITableViewCell, ConfigurableCell {

    typealias DataType = String
    
    private let avatarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          layoutUI()
      }
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    private func layoutUI(){
        selectionStyle = .none
        contentView.addSubview(avatarImage)
        avatarImage.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(8)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
    }
    
    func configure(data: String) {
        avatarImage.image = UIImage(named: data)
    }

}
