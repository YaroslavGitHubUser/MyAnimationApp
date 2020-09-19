//
//  Animation.swift
//  MyAnimationApp
//
//  Created by Yaroslav on 19.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

struct Animation {
    let type: String
    let duration: Int
    let force: Int
}

extension Animation {
    static func getAnimation() -> [Animation] {
        return [Animation(type: "pop", duration: 2, force: 2),
                Animation(type: "shake", duration: 1, force: 1),
                Animation(type: "swing", duration: 3, force: 3),
                Animation(type: "squeeze", duration: 2, force: 2)]
    }
}
