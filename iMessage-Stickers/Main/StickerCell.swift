//
//  StickerCell.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit
import SnapKit

final class StickerCell: UICollectionViewCell {

    static let reuseIdentifier = String(describing: StickerCell.self)

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .green
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(nameLabel)
        nameLabel.snp.remakeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with sticker: Sticker) {
        nameLabel.text = sticker.name
    }
}
