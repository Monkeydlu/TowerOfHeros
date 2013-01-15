//
//  StartScreenSceen.h
//  LOLERS
//
//  Created by MingYang Lu on 11/25/12.
//  Copyright (c) 2012 Vanderbilt University. All rights reserved.
//

#import "cocos2d.h"


@interface StartScreenScene : CCScene {

}

@end

@interface StartMenuLayer : CCLayerColor {

}
-(void)startGame: (id)sender;
-(void)continueGame: (id)sender;
@end