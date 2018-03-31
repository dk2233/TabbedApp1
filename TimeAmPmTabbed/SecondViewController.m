//
//  SecondViewController.m
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "ViewControllers.h"
#import "AppDelegate.h"

#define CHANGED_LABEL @" other "

@interface SecondViewController ()

@end

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    
    [self.textOn2View setText:_initialText];
    
    //NSLog(@" %@ == %@ ",[[bar viewControllers] objectAtIndex:0U],_mainView);
    //[[ [bar viewControllers] objectAtIndex:0U] setDelegate:self];
    [self.textOn2View setDelegate:self];
    
    
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
- (IBAction)SecondViewSwitchAcition:(id)sender {
    static NSString *textOriginal;
    
    SwitchState_t state = SWITCH_OFF;
    if ( ![_SecondLabel.text isEqualToString: CHANGED_LABEL] )
    {
        textOriginal = _SecondLabel.text;
        [_SecondLabel setText:@" other "];
        state = SWITCH_ON;
        
    }
    else
    {
        [_SecondLabel setText:textOriginal];
        state = SWITCH_OFF;
    }
    [self.delegate getInfoFromSwitch:state];
    
}


@end
