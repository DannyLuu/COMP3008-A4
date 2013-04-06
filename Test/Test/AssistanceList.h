//
//  AssistanceList.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-24.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssistanceList : UITableViewController

-(id)initWithArray:(NSArray*)array;
-(void)showAssistanceBox:(UIButton*)sender;

@property (retain) NSArray *assistance;
@property (retain) UIPopoverController *popOver;

@end
