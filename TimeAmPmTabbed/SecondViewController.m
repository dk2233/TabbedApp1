//
//  SecondViewController.m
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(id)init{
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    
    [self.textOn2View setText:_initialText];
    
    //NSLog(@" %@ == %@ ",[[bar viewControllers] objectAtIndex:0U],_mainView);
    //[[ [bar viewControllers] objectAtIndex:0U] setDelegate:self];
    [self.textOn2View setDelegate:self];
    [_mainView setDelegate:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateTextFromFirstToSecond:(NSString *)textFromInput {
    _initialText = textFromInput;
    NSLog(@"@ run delegate %@ ",textFromInput);
    [self.textOn2View setText:textFromInput];
    
    NSLog(@" new: %@",[self.textOn2View text]);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@" ponownie ");
    NSLog(@"%@", self);
    //NSLog(@"super: %@",[super childViewControllers] );
}


@end
