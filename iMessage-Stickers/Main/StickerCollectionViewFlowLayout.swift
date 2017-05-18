//
//  StickerCollectionViewFlowLayout.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit

private let headerHeight: CGFloat = 50
private let stickerHeight: CGFloat = 250

private struct NumberOfItemsPerRow {
    static let compact: CGFloat = 3
    static let medium: CGFloat = 4
    static let regular: CGFloat = 5
}

final class StickerCollectionViewFlowLayout: UICollectionViewFlowLayout {

    private var baseView: UIView!
    private var baseWidth: CGFloat { return baseView.bounds.width }

    private var deviceHorizontal: Bool {
        let screenBounds = UIWindow().screen.bounds
        return screenBounds.width > screenBounds.height
    }

    init(baseView: UIView) {
        super.init()
        self.baseView = baseView
        minimumInteritemSpacing = 0
        minimumLineSpacing = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func updateItemSize(with sizeClass: UIUserInterfaceSizeClass) {
        switch sizeClass {
        case .compact:
            if UI_USER_INTERFACE_IDIOM() == .phone && deviceHorizontal {
                setItemSize(for: NumberOfItemsPerRow.medium)
            } else {
                setItemSize(for: NumberOfItemsPerRow.compact)
            }
        case .regular:
            setItemSize(for: NumberOfItemsPerRow.regular)
        case .unspecified:
            setItemSize(for: NumberOfItemsPerRow.compact)
        }
    }

    private func setItemSize(for numberOfItemsPerRow: CGFloat) {
        headerReferenceSize = CGSize(width: baseWidth, height: headerHeight)
        itemSize = CGSize(width: baseWidth / numberOfItemsPerRow, height: stickerHeight)
    }
}
