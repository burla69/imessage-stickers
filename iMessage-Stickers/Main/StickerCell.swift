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

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.snp.remakeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with sticker: Sticker) {
        imageView.image = sticker.image
    }
}
