//
//  PokeCell.swift
//  Pokedex
//
//  Created by stuartsumnersmith on 08/06/2016.
//  Copyright © 2016 Bwlch. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell{
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLBL:UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLBL.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
}
