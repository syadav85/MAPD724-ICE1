//
//  GameObject.swift
//  MAPD724-ICE1
//
//  Created by Satender Yadav on 1/21/23.
//  Student ID: 301293305
//

import GameplayKit
import SpriteKit

class GameObject : SKSpriteNode, GameProtocol
{
    // public instance members
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    // constructor / initializer
    init(imageString: String, initialScale: CGFloat)
    {
        // initialize the game object with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Life-Cycle Functions
    
    
    func Start()
    {
        
    }
    
    func Update()
    {
        
    }
    
    
    func CheckBounds()
    {
        
    }
    
    func Reset()
    {
        
    }
    
    
}
