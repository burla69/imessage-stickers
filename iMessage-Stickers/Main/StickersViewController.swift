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
        
        title = "iMessage Stickers"

        // Set collection view
        stickerCollectionView = StickerCollectionView(baseView: view)
        stickerCollectionView.delegate = self
        stickerCollectionView.alwaysBounceVertical = true
        view.addSubview(stickerCollectionView)
        stickerCollectionView.snp.remakeConstraints { make in
            make.top.equalTo(self.topLayoutGuide.snp.bottom)
            make.left.bottom.right.equalToSuperview()
        }
    }
}

extension StickersViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let content = Stickers[indexPath.section].stickers[indexPath.row].image
        let activityViewController = UIActivityViewController(activityItems: [content], applicationActivities: nil)
        if UI_USER_INTERFACE_IDIOM() == .pad {
            guard let sourceView = collectionView.cellForItem(at: indexPath) else { return }
            activityViewController.popoverPresentationController?.sourceView = sourceView
            activityViewController.popoverPresentationController?.sourceRect = CGRect(x: sourceView.frame.width / 2, y: sourceView.frame.height / 2, width: 0, height: 0)
        }
        present(activityViewController, animated: true, completion: nil)
    }
}
