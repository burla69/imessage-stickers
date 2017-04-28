//
//  StickersViewController.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit

final class StickersViewController: UIViewController {

    private var stickerCollectionView: StickerCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up view
        automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = .white

        // Set collection view
        stickerCollectionView = StickerCollectionView(baseView: view)
        view.addSubview(stickerCollectionView)
        stickerCollectionView.snp.remakeConstraints { make in
            make.top.equalTo(self.topLayoutGuide.snp.bottom)
            make.left.bottom.right.equalToSuperview()
        }
    }
}
