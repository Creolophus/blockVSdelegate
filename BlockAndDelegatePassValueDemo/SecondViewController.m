//
//  SecondViewController.m
//  BlockAndDelegatePassValueDemo
//
//  Created by FrankLiu on 14/12/9.
//  Copyright (c) 2014年 FrankLiu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)passText:(id)sender {
    //接下来我用了条件编译，来控制Block传值，或是delegate传值
#if BLOCK_PASS
    self.passBlock(self.inputTextField.text);
    NSLog(@"Block执行了！");
#else
    [self.delegate passText:self.inputTextField.text];
    NSLog(@"代理方法执行了！");
#endif
}
@end
