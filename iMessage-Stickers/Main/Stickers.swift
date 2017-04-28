//
//  Stickers.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import Foundation

let Stickers = [
    TestStickersSection,
    TestStickersSection1,
]

private let TestStickersSection =
    Section(name: "Test - 0",
        stickers: [
            Sticker(name: "a"),
            Sticker(name: "b"),
            Sticker(name: "c"),
            Sticker(name: "d"),
            Sticker(name: "e"),
            Sticker(name: "f"),
            Sticker(name: "g"),
            Sticker(name: "h"),
        ])

private let TestStickersSection1 =
    Section(name: "Test - 1",
        stickers: [
            Sticker(name: "i"),
            Sticker(name: "j"),
            Sticker(name: "k"),
            Sticker(name: "l"),
            Sticker(name: "m"),
            Sticker(name: "n"),
            Sticker(name: "o"),
            Sticker(name: "p"),
        ])
