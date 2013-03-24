//
//  StudentLoggedViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentViewController.h"

@interface StudentLoggedViewController : CurrentViewController {
    IBOutlet UILabel *label;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

@end
