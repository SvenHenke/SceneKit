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
    
    //Kamera hinzufügen
    var cameraNode: SCNNode!
    
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
        
        setupCamera()
    }
    
    func setupCamera() {
        // 1
        cameraNode = SCNNode()
        // 2
        cameraNode.camera = SCNCamera()
        // 3
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 10)
        // 4
        scnScene.rootNode.addChildNode(cameraNode)
       
        spawnShape()
    }
    
    func spawnShape() {
        // 1
        var geometry:SCNGeometry
        // 2
        switch ShapeType.random() {
        default:
            // 3
            geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        }
        // 4
        let geometryNode = SCNNode(geometry: geometry)
        // 5
        scnScene.rootNode.addChildNode(geometryNode)
        
        // 1
        scnView.showsStatistics = true
        // 2
        scnView.allowsCameraControl = true
        // 3
        scnView.autoenablesDefaultLighting = true
    }
}

