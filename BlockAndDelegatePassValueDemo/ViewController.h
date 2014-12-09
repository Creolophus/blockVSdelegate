//
//  ViewController.h
//  BlockAndDelegatePassValueDemo
//
//  Created by FrankLiu on 14/12/9.
//  Copyright (c) 2014年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassTextDelegate.h"

@interface ViewController : UIViewController<PassTextDelegate>

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

