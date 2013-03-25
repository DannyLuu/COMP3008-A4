//
//  ExtrasList.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-25.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ExtrasList : UITableViewController {
    AVAudioPlayer *audioPlayer;
    UIButton *playButton;
}

-(id)initWithArray:(NSArray*)array;
-(void)showAssistanceBox:(UIButton*)sender;

@property (retain) NSArray *assistance;
@property (retain) UIPopoverController *popOver;

@end
