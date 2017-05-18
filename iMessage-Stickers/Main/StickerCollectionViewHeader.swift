//
//  StickerCollectionViewHeader.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit
import SnapKit

final class StickerCollectionViewHeader: UICollectionReusableView {

    static let ReuseIdentifier = String(describing: StickerCollectionViewHeader.self)

    private var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(nameLabel)
        nameLabel.snp.remakeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(_ section: Section) {
        nameLabel.text = section.name
    }
}
