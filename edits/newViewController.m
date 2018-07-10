//
//  newViewController.m
//  asd
//
//  Created by iROID Technologies on 2/5/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "newViewController.h"

@interface newViewController ()

@end

@implementation newViewController

- (void)viewDidLoad {
    [super viewDidLoad];
[self.navigationController setNavigationBarHidden:YES];
    
lbl=[[UILabel alloc]init];
lbl.frame=CGRectMake( 0, 5, 250, 100);
lbl.text=@"CON0";
lbl.textColor=[UIColor grayColor];
lbl.font=[UIFont boldSystemFontOfSize:25];
[self.view addSubview:lbl];
    
    lblx=[[UILabel alloc]init];
    lblx.frame=CGRectMake(130,50,150,50);
    lblx.text=@"CON1";
    lblx.textColor=[UIColor grayColor];
    lblx.font=[UIFont boldSystemFontOfSize:25];
    [self.view addSubview:lblx];
    
    lblxx=[[UILabel alloc]init];
    lblxx.frame=CGRectMake(0, 90, 150, 50);
    lblxx.text=@"CON2";
    lblxx.textColor=[UIColor greenColor];
    lblxx.font=[UIFont boldSystemFontOfSize:25];
    [self.view addSubview:lblxx];
    
    
    
    bttn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn addTarget:self action:@selector(nxt:) forControlEvents:UIControlEventTouchUpInside];
    [bttn setTitle:@"NEXT" forState:UIControlStateNormal];
    bttn.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:bttn];
    
    [_bttnq setTitle:/*@"PREVIOUS"*/ @"button" forState:UIControlStateNormal];
    CGRect frame = CGRectMake(0, 150, 200, 30);
    UITextField *txttext = [[UITextField alloc] initWithFrame:frame];
    txttext.textColor = [UIColor blackColor];
    txttext.font = [UIFont systemFontOfSize:14];
    txttext.placeholder = @"Enter Text";//Provide Text Box Text
    txttext.backgroundColor = [UIColor clearColor];
    txttext.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;//To Set the Vertical OR Horizontal Text Alignment
    txttext.autocorrectionType = UITextAutocorrectionTypeYes;//Show the Word Correction
    txttext.keyboardType = UIKeyboardTypeURL;//Specifying keyboard type(eg:Number,URL,EMAIL Address,Decimal)
    txttext.clearButtonMode = UITextFieldViewModeWhileEditing;//To Clear the Text
    txttext.returnKeyType = UIReturnKeyDone;//To specifying keyboard return key
    txttext.borderStyle = UITextBorderStyleRoundedRect;
    txttext.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:txttext];
    
    _txtt.placeholder=@"enter teeexxt";
    _zxc.text=@"OLD";
    _zzx.text=@"NEW";
    
    
    UISwitch * SwitchButton = [[UISwitch alloc] initWithFrame:CGRectMake(130, 100, 100, 50)];
    [SwitchButton addTarget:self action:@selector(changeSwitch:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:SwitchButton];
    
    Slider = [[UISlider alloc] init];
    Slider.frame=CGRectMake(130, 400, 100, 50);
    Slider.minimumValue = 1;
    Slider.maximumValue = 100;
    [Slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:Slider];
    
[_start setTitle:@"start" forState:UIControlStateNormal];
[_stop setTitle:@"stop" forState:UIControlStateNormal];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)aaa:(id)sender {
    lblxx.text=@"AF6Z";

    lbl.text=@"112233";
    _zxc.text=_txtt.text;
    NSString *myString = _zxc.text;
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [myString length];
    while (myString && charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[myString substringWithRange:subStrRange]];
    }

    //_txtt.text = reversedString;
    _zzx.text = reversedString;
}



- (IBAction)txtact:(id)sender {
    lblxx.text=@"EDIT START";
}
//- (IBAction)nxt:(id)sender {
   // _zxc.text=_txtt.text;

//}

- (void)changeSwitch:(id)sender
{
    
    if([sender isOn])
    {
        NSLog(@"Switch is ON");
        lblx.text=@"ON";
    }
    else
    {
        NSLog(@"Switch is OFF");
        lblx.text=@"OFF";
    }
}
-(void)sliderAction:(id)sender
    {
        int i = Slider.value;
        NSLog(@"Slider Value=%d",i);
        _label1.text = [NSString stringWithFormat:@"%f", Slider.value];
        if (i<=30) {
            UIImageView * vew2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img1.jpeg"]];
            vew2.frame=CGRectMake(130, 150, 100, 100);
            [self.view addSubview:vew2];
            [vew2 setImage:[UIImage imageNamed:@"img1.jpg"]];
            }
         else
             {
            UIImageView * vew2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img2.jpeg"]];
            vew2.frame=CGRectMake(130, 150, 100, 100);
            [self.view addSubview:vew2];
            [vew2 setImage:[UIImage imageNamed:@"img2.jpg"]];
            
        }

    }

/*- (void) checkButtonClick:(UIButton *)paramSender
{
    UIButton * myButton = paramSender;
    
    
    if([myButton.currentTitle isEqualToString:@"Start"])
    {
        
        NSArray * myArray = [NSArray arrayWithObjects:
                             [UIImage imageNamed:@"1.jpg"];
                             [UIImage imageNamed:@"2.jpg"];
                             [UIImage imageNamed:@"3.jpg"];
                             [UIImage imageNamed:@"4.jpg"];
                             [UIImage imageNamed:@"5.jpg"];
                             [UIImage imageNamed:@"6.jpg"];
                             [UIImage imageNamed:@"7.jpg"];
                             [UIImage imageNamed:@"8.jpg"];
                             [UIImage imageNamed:@"9.jpg"];
                             [UIImage imageNamed:@"10.jpg"];
                             [self.veww setAnimationImages:myArray];
                             self.veww.animationDuration = 3.0;
                             self.veww.animationRepeatCount = 0;
                             [self.veww startAnimating];
                             }
                             else if ([myButton.currentTitle isEqualToString:@"Stop"])
                             {
                         
                                 [self.veww stopAnimating];
                             }
                             
     }*/


-(IBAction)sliderValue:(UISlider *)sender {
    _label1.text = [NSString stringWithFormat:@"%f", _slider1.value];
}

- (IBAction)start:(id)sender {
    
    
    NSArray * myArray = [NSArray arrayWithObjects:
                         [UIImage imageNamed:@"1.jpg"],
                         [UIImage imageNamed:@"2.jpg"],
                         [UIImage imageNamed:@"3.jpg"],
                         [UIImage imageNamed:@"4.jpg"],
                         [UIImage imageNamed:@"5.jpg"],
                         [UIImage imageNamed:@"6.jpg"],
                         [UIImage imageNamed:@"7.jpg"],
                         [UIImage imageNamed:@"8.jpg"],
                         [UIImage imageNamed:@"9.jpg"],
                         [UIImage imageNamed:@"10.jpg"],nil];
    [_veww setAnimationImages:myArray];
    _veww.animationDuration = 5.0;
    _veww.animationRepeatCount = 0;
    [_veww startAnimating];
    
    
    
CGRect screenRect = [[UIScreen mainScreen] bounds];
  
    [UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _veww.frame = CGRectMake(250,
         _veww.frame.origin.y,
         _veww.frame.size.width,
         _veww.frame.size.height);
    }
                     completion:^(BOOL finished) {
                         
                         _veww.frame = CGRectMake(250,			 _veww.frame.origin.y,
                              _veww.frame.size.width, _veww.frame.size.height);
                     }];
    
    
 
}

    
- (IBAction)stop:(id)sender {
    
    [UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _veww.frame = CGRectMake(5.0,
                                 _veww.frame.origin.y,
                                 _veww.frame.size.width,
                                 _veww.frame.size.height);
    }
                     completion:^(BOOL finished) {
                         
                         
                     }];
   /*[_veww stopAnimating];*/
}


                           
                             @end
                          
                             
