//
//  StartScreenSceen.m
//  LOLERS
//
//  Created by MingYang Lu on 11/25/12.
//  Copyright (c) 2012 Vanderbilt University. All rights reserved.
//

#import "StartScreenScene.h"

@implementation StartScreenScene

- (id) init {
    self = [super init];
    if (self != nil) {
        CCSprite * bg = [CCSprite spriteWithFile:@"StartScreenBg.png"];
        [bg setPosition:ccp(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[StartMenuLayer node] z:1];
    }
    return self;
}
@end


@implementation StartMenuLayer
- (id) init {
    if (self != nil) {
		
        CCMenuItemImage *startButton = [CCMenuItemImage itemFromNormalImage:@"ButtonNewGame.png" 
														selectedImage:@"ButtonNewGame.png" //replace with selected image.  
															   target:self 
															 selector:@selector(startGame:)];
		CCMenuItemImage *contButton = [CCMenuItemImage itemFromNormalImage:@"ButtonNewGame.png" 
														selectedImage:@"ButtonNewGame.png" //replace with selected image.  
															   target:self 
															 selector:@selector(continueGame::)];
		CCMenu *menu = [CCMenu menuWithItems:startButton, contButton, nil];
		[menu alignItemsVertically];
		[menu setPosition:ccp(80, 130)];
		[self addChild:menu];
    }
    return self;
}
-(void)startGame: (id)sender {
	
	
	
	/*
	GameScene * gs = [GameScene node];
    [[Director sharedDirector] replaceScene:gs];
	 */
}
-(void)continueGame: (id)sender {
    NSLog(@"help");
}
@end