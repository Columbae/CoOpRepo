//
//  MyScene.m
//  MovingSpaceBoat
//
//  Created by Klemen Košir on 9/13/13.
//  Copyright (c) 2013 Lonely Cappuccino. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.80 green:0.15 blue:0.3 alpha:1.0];
<<<<<<< HEAD
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hsdld!";
        myLabel.fontSize = 50;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
=======

        spaceboat = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship.png"];
        [spaceboat setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
        spaceboat.anchorPoint = CGPointMake(0.5f, 0.5f);
        [self addChild:spaceboat];
>>>>>>> Klemen
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    //UITouch *touch = [touches anyObject];
    //[spaceboat removeAllActions];
    //[spaceboat runAction:[SKAction moveTo:[touch locationInNode:self] duration:0.1]];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [spaceboat setPosition:[touch locationInNode:self]];
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    
}

@end
