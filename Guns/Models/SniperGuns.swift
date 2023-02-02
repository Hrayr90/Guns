//
//  SniperGuns.swift
//  Guns
//
//  Created by Hrayr  Hakobyan on 02.02.23.
//

import UIKit

struct SniperGuns {

    let modelname: String
    let calibre: String
    let image: UIImage!
}

let sniperGuns = [
                    SniperGuns(modelname: "CheyTac M200", calibre: "408 CheyTac", image: UIImage(named: "CheyTac M200")),
                    SniperGuns(modelname: "CZ527", calibre: "7.62x54", image: UIImage(named: "CZ527")),
                    SniperGuns(modelname: "MCMillan TAC50", calibre: "12.7x66", image: UIImage(named: "MCMillan TAC50")),
                    SniperGuns(modelname: "T5000", calibre: "5.56x45", image: UIImage(named: "T5000")),
                    SniperGuns(modelname: "Barrett M82", calibre: "12.7x99", image: UIImage(named: "Barrett M82")),
                    SniperGuns(modelname: "Steyr SSG 69", calibre: "7.62x51", image: UIImage(named: "Steyr SSG 69")),
                    SniperGuns(modelname: "Tiger", calibre: "7.62x54", image: UIImage(named: "Tiger")),
                    SniperGuns(modelname: "Barrett M95", calibre: "12.7x99", image: UIImage(named: "Barrett M95")),
                    SniperGuns(modelname: "Arctic Warfare Magnum", calibre: "300 Winchester", image: UIImage(named: "Arctic Warfare Magnum")),
                    SniperGuns(modelname: "SAKO TRG 42", calibre: "300 Winchester", image: UIImage(named: "SAKO TRG 42"))
]
