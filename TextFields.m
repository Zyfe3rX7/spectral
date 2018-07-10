//
//  TextFields.m
//  UICatalog
//
//  Created by zocer on 8/4/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "TextFields.h"
#import "SearchBar.h"

@interface TextFields ()

@end

@implementation TextFields

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(5, 10, 200, 50);
    lbl.text=@"TEXT FIELDS";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:25];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    //UITextField with out RoundedRect
    CGRect frame = CGRectMake(70, 100, 200, 30);
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
        
    //Secure UITextField
    CGRect txtpasswordframe = CGRectMake(70, 250, 200, 30);
    UITextField * txtpassword = [[UITextField alloc] initWithFrame:txtpasswordframe];
    txtpassword.placeholder=@"Enter Password";
    txtpassword.borderStyle = UITextBorderStyleRoundedRect;
    txtpassword.textColor = [UIColor blackColor];
    txtpassword.textColor = [UIColor blackColor];
    txtpassword.font = [UIFont systemFontOfSize:14];
    //txtpassword.enabled = NO;//  //Povide Hiding
    txtpassword.secureTextEntry = YES;//Provide Password Security
    //txtpassword.becomeFirstResponder;//To Showing Keyboard at first time
    [self.view addSubview:txtpassword];
    
    //UITextField(With Leftiew)
    UITextField * myTextField = [[UITextField alloc] init];
    myTextField.frame=CGRectMake(70, 380, 200, 30);
    [myTextField setRightViewMode:UITextFieldViewModeAlways];
    myTextField.rightView= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"go.gif"]];
    myTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:myTextField];
}

-(BOOL)textFieldShouldReturn:(UITextField *)txttext
{
    [txttext resignFirstResponder];
    return YES;
}

-(IBAction)next:(id)sender
{
    SearchBar * sb=[[SearchBar alloc]init];
    [self.navigationController pushViewController:sb animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_lb release];
    [super dealloc];
}
@end
