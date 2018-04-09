//
//  FirstViewController.m
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "ViewControllers.h"
#import "AppDelegate.h"
#import <math.h>
//
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // textTime is delegating to this class
    [_textTime setDelegate:self];
    [self.textTime setText:@"textTime"];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)timeSliderChanged:(id)sender {
    
    //NSLog(@"%f",[self.timeSlider value]);
    
    [self.textTime setText:[NSString stringWithFormat:@"%f",[self.timeSlider value]]];
    [self.delegate updateTextFromFirstToSecond:[self.textTime text]];
    
    float b =  [self.timeSlider value] *4;
    [self.textCalc setText:[NSString stringWithFormat:@"%f",b]];
    
    [self.textMod setText:[NSString stringWithFormat:@"%f",fmod(b, 2.0)]];
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

//and this is a method of UITetxFieldDelegate
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    NSLog(@"self:  %@ ", self);
    [self.delegate updateTextFromFirstToSecond:[self.textTime text]];
    
    return YES;
}


-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"%@", self);
}

-(void)getInfoFromSwitch:(SwitchState_t)state
{
    if (state==SWITCH_OFF){
        [_textTime setText:@" OFF"];
        [_textCalc setBackgroundColor:[UIColor colorWithRed:1.0 green:0.4 blue:0.2 alpha:1.0]];
    }
    else
    {
        [_textCalc setBackgroundColor:[UIColor colorWithRed:0.3 green:0.8 blue:0.2 alpha:1.0]];
    }
}

@end
