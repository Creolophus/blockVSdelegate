//
//  ViewController.m
//  BlockAndDelegatePassValueDemo
//
//  Created by FrankLiu on 14/12/9.
//  Copyright (c) 2014年 FrankLiu. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//在用storyboard，想取到segue指向的controller时，我们要用下面这个方法
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSecondController"]) {
        SecondViewController* secondController = segue.destinationViewController;
    //接下来我用了条件编译，来控制Block传值，或是delegate传值
#if BLOCK_PASS
        secondController.passBlock = ^(NSString* text){
            self.outputLabel.text = text;
        };
        NSLog(@"Block传递给secondController的属性了！");
#else
        secondController.delegate = self;
        NSLog(@"代理签署了！");
#endif
    }
}

#pragma mark PassTextDelegate
-(void)passText:(NSString*)text
{
    self.outputLabel.text = text;
}

@end
