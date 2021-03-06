//
//  IconTextButton.swift
//  Grouper Login
//
//  Created by Logan Prestigiacomo on 3/16/21.
//

import UIKit

struct IconTextButtonViewModel {
    let text: String
    let image: UIImage?
    let backgroundColor: UIColor?
}

final class IconTextButton: UIButton {
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        addSubview(iconImageView)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with viewModel: IconTextButtonViewModel) {
        label.text = viewModel.text
        backgroundColor = viewModel.backgroundColor
        iconImageView.image = viewModel.image
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        let iconSize: CGFloat = 30
        let iconRightPadding: CGFloat = 8
        let iconX: CGFloat = (frame.size.width - label.frame.size.width - iconSize - iconRightPadding) / 2
        iconImageView.frame = CGRect(x: iconX,
                                     y: (frame.size.height - iconSize)/2,
                                     width: iconSize,
                                     height: iconSize)
        label.frame = CGRect(x: iconX + iconSize + iconRightPadding,
                             y: 0,
                             width: label.frame.size.width,
                             height: frame.size.height)
    }


}
