//
//  StudentAgreeViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "CurrentViewController.h"
#import "AssistanceList.h"

@interface StudentAgreeViewController : CurrentViewController{
       NSInteger countDown;
}

@property (retain, nonatomic) IBOutlet UIView *popupView;
@property (retain, nonatomic) IBOutlet UIView *timerView;
@property (retain, nonatomic) IBOutlet UIView *assistancePopupView;
@property (retain, nonatomic) IBOutlet UITableView *assistanceTable;
@property (retain, nonatomic) IBOutlet UILabel *timeLabel;
@property (retain, nonatomic) IBOutlet UILabel *timerLabel;
@property (retain, nonatomic) IBOutlet UILabel *examStartLabel;
@property (retain ,nonatomic) IBOutlet UIButton *startExamButton;
@property (retain ,nonatomic) IBOutlet UIButton *popupButton;
@property (nonatomic, retain) NSDate *examTime;
@property (retain) AssistanceList *assistanceList;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)assistanceButtonPressed:(id)sender;
- (IBAction)examStarts;
- (IBAction)showPopUp:(id)sender;
- (void)updateTimerLabel;

@end
