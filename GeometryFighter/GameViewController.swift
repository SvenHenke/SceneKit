//
//  GameViewController.swift
//  GeometryFighter
//
//  Created by SvenHenke on 02.05.16.
//  Copyright (c) 2016 SvenHenke. All rights reserved.
//



import UIKit
import SceneKit

class GameViewController: UIViewController {
    
    
    var scnView: SCNView!
    
    var scnScene: SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupScene()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func setupView() {
    scnView = self.view as! SCNView
    }

    func setupScene() {
        scnScene = SCNScene()
        scnView.scene = scnScene
        
        scnScene.background.contents = "GeometryFighter.scnassets/Textures/Background_Diffuse.png"
    }
    
    
}

