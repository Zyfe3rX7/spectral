		//
//  calc.m
//  asd
//
//  Created by iROID Technologies on 2/14/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "calc.h"

@interface calc ()

@end

@implementation calc

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    
   [_x9 setTitle: @"9" forState:UIControlStateNormal];
    [_x8 setTitle: @"8" forState:UIControlStateNormal];
    [_x7 setTitle: @"7" forState:UIControlStateNormal];
    [_x6 setTitle: @"6" forState:UIControlStateNormal];
    [_x5 setTitle: @"5" forState:UIControlStateNormal];
    [_x4 setTitle: @"4" forState:UIControlStateNormal];
    [_x3 setTitle: @"3" forState:UIControlStateNormal];
    [_x2 setTitle: @"2" forState:UIControlStateNormal];
    [_x1 setTitle: @"1" forState:UIControlStateNormal];
    [_x0 setTitle: @"0" forState:UIControlStateNormal];
    
    [_multiply setTitle: @"*" forState:UIControlStateNormal];
    [_add setTitle: @"+" forState:UIControlStateNormal];
    [_sub setTitle: @"-" forState:UIControlStateNormal];
    [_div setTitle: @"/" forState:UIControlStateNormal];
    [_calcu setTitle: @"Calculate" forState:UIControlStateNormal];
    _question.text=@"";
    
    
    /*CGRect frame = CGRectMake(70, 100, 200, 30);
    UITextField *num = [[UITextField alloc] initWithFrame:frame];
    num.textColor = [UIColor blackColor];
    num.font = [UIFont systemFontOfSize:14];
    num.placeholder = @"Enter Text";
    num.backgroundColor = [UIColor clearColor];
    num.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    num.autocorrectionType = UITextAutocorrectionTypeYes;
    num.keyboardType = UIKeyboardTypeURL;
    num.clearButtonMode = UITextFieldViewModeWhileEditing;
    num.returnKeyType = UIReturnKeyDone;
    num.borderStyle = UITextBorderStyleRoundedRect;
    num.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:num];*/
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (IBAction)a9:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"9"];
    num.text = _question.text;
    int i = 9;
    
}
- (IBAction)a8:(id)sender {
   _question.text = [_question.text stringByAppendingString:@"8"];
    int i = 8;
}
- (IBAction)a7:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"7"];
    int i = 7;
}
- (IBAction)a6:(id)sender {
   _question.text = [_question.text stringByAppendingString:@"6"];
    int i = 6;
}
- (IBAction)a5:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"5"];
    int i = 5;
}
- (IBAction)a4:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"4"];
    int i = 4;
}
- (IBAction)a3:(id)sender {
  _question.text = [_question.text stringByAppendingString:@"3"];
    int i = 3;
}
- (IBAction)a2:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"2"];
    int i = 2;
}
- (IBAction)a1:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"1"];
    int i = 1;
}
- (IBAction)a0:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"0"];
    int i = 0;
}

- (IBAction)amult:(id)sender{
    
   _question.text = [_question.text stringByAppendingString:@"*"];
    
}
- (IBAction)aadd:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"+"];
}
- (IBAction)asub:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"-"];
}
- (IBAction)adiv:(id)sender {
    _question.text = [_question.text stringByAppendingString:@"/"];
}
- (IBAction)acalcu:(id)sender {
}








@end
