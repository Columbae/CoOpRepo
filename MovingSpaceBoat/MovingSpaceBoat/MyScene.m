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
