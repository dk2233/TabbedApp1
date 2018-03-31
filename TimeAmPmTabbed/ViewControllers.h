//
//  ViewControllers.h
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 31.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#ifndef ViewControllers_h
#define ViewControllers_h

#import <UIKit/UIKit.h>


typedef enum{
    SWITCH_OFF,
    SWITCH_ON
} SwitchState_t;


//protocol has to be in view that sends sthg
@protocol SecondDelegate <NSObject>

@optional
-(void)updateTextFromFirstToSecond:(NSString *)textFromInput;
-(void)getInfoFromSwitch:(SwitchState_t )state;
@end




@interface FirstViewController : UIViewController <UITextFieldDelegate, SecondDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textTime;
@property (weak, nonatomic) IBOutlet UISlider *timeSlider;
@property (weak, nonatomic) IBOutlet UITextField *textCalc;
@property (weak, nonatomic) id<SecondDelegate>delegate;


@end




@interface SecondViewController : UIViewController <UITextFieldDelegate, SecondDelegate, UITabBarDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textOn2View;
@property (weak,nonatomic) NSString *initialText;
@property (weak, nonatomic) IBOutlet UISwitch *SecondSwitch;
@property (weak, nonatomic) IBOutlet UILabel *SecondLabel;
@property (weak, nonatomic) id<SecondDelegate>delegate;


@end





#endif /* ViewControllers_h */
