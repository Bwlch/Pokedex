//
//  pokemonDetailVC.swift
//  Pokedex
//
//  Created by stuartsumnersmith on 13/06/2016.
//  Copyright © 2016 Bwlch. All rights reserved.
//

import UIKit

class pokemonDetailVC: UIViewController {
    
   
    @IBOutlet weak var nameLbl: UILabel!
    
    
    @IBOutlet weak var mainImg: UIImageView!
    
   
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    
    @IBOutlet weak var defenseLbl: UILabel!
    
    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var pokedexLbl: UILabel!
    
    @IBOutlet weak var currentEvoImg: UIImageView!
    
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    @IBOutlet weak var evoLbl: UILabel!
    
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttack: UILabel!

    
    
    
    
    var pokemon: Pokemon!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
        mainImg.image = UIImage(named:"\(pokemon.pokedexId)")
        pokemon.downloadPokemonDetails { () -> () in
       
        }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    

}
