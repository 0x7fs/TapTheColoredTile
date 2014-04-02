//
//  NodeAdditions.m
//  RunningGame
//
//  Created by Mick on 3/30/14.
//  Copyright (c) 2014 MacCDevTeam LLC. All rights reserved.
//

#import "NodeAdditions.h"

@implementation SKNode (NodeAdditions)

- (BOOL)shouldPlaySounds
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults boolForKey:@"shouldPlaySounds"];
}

- (SKAction *)_winSoundAction
{
    static SKAction *action = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        action = [SKAction playSoundFileNamed:@"win.m4a" waitForCompletion:YES];
    });
    
    return action;
}


- (SKAction *)_loseSoundAction
{
    static SKAction *action = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        action = [SKAction playSoundFileNamed:@"lose.m4a" waitForCompletion:YES];
    });
    
    return action;
}

- (SKAction *)_tapSoundAction
{
    static SKAction *action = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        action = [SKAction playSoundFileNamed:@"tap.m4a" waitForCompletion:YES];
    });
    
    return action;
}


- (SKAction *)_beepSoundAction
{
    static SKAction *action = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        action = [SKAction playSoundFileNamed:@"beep.m4a" waitForCompletion:YES];
    });
    
    return action;
}


@end
