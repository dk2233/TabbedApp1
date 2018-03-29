//
//  FirstViewController.m
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //;_textTime.delegate
    
    [_textTime setDelegate:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textWasGiven:(id)sender {
    
    NSLog(@"juz");
    NSLog(@"%@",[NSString stringWithFormat:@"%@", [self.textTime text]]);
    
}
- (IBAction)timeSliderChanged:(id)sender {
    
    //NSLog(@"%f",[self.timeSlider value]);
    
    [self.textTime setText:[NSString stringWithFormat:@"%f",[self.timeSlider value]]];
    
}
- (IBAction)textTouchedDown:(id)sender {
    NSLog(@"touched ");
    [sender  setKeyboardType:UIKeyboardTypeNumbersAndPunctuation];
    //first
}


- (IBAction)textChanged:(UITextField *)sender {
    NSLog(@" changed %@",sender);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    
    
    //if ( false == [self.textTime isMatch])
    {
        
        float b;
        b =  [[self.textTime text] floatValue]*4;
        //          integerValue]*4;
        
        NSLog(@" var : %f",b);
        [self.textCalc setText:[NSString stringWithFormat:@"%f",b]];
    }
//    else
//    {
//        [self.textCalc setText:@" no text"];
//    }
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    //[textField setKeyboardType:UIKeyboardTypeNumberPad];
    [textField resignFirstResponder];
    return YES;
}


@end
