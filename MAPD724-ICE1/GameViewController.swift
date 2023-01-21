//
//  GameViewController.swift
//  MAPD724-ICE1
//
//  Created by SY on 1/21/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let scene = GKScene(fileNamed: "GameScene")
        {
            
            if let sceneNode = scene.rootNode as! GameScene?
            {
                sceneNode.scaleMode = .aspectFill
                
                if let view = self.view as! SKView?
                {
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true
                }
            }
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
        return .portrait
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
