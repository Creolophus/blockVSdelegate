//
//  SecondViewController.h
//  BlockAndDelegatePassValueDemo
//
//  Created by FrankLiu on 14/12/9.
//  Copyright (c) 2014年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassTextDelegate.h"

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputTextField;

@property (strong) void (^passBlock)(NSString*);
@property (weak,nonatomic) id <PassTextDelegate> delegate;

- (IBAction)passText:(id)sender;
@end
