//
//  SecondViewController.m
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "SecondViewController.h"

FirstViewController *firstView;
//
//@interface SecondViewController ()
//
//@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[]
    
     firstView = [[FirstViewController alloc] init];
    
    
    [self.textOn2View setDelegate:self];
    [self.textOn2View setText:@" start "];
    
    [firstView setDelegate:self];

    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC*3), dispatch_get_main_queue(), ^(void){
        
        [firstView.textCalc setText:@"bbb"];
        NSLog(@" tututu ");
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateTextFromFirstToSecond:(NSString *)textFromInput {
    NSLog(@"@ run delegate %@ ",textFromInput);
    [self.textOn2View setText:textFromInput];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@" ponownie ");
    NSLog(@"%@", firstView);
}

@end
