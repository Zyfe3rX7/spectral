//
//  TextView.m
//  UICatalog
//
//  Created by zocer on 8/7/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//
int i;
#import "TextView.h"
#import "Pickers.h"

@interface TextView ()

@end

@implementation TextView

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
    // Do any additional setup after loading the view from its nib.
    
    lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(5, 10, 200, 50);
    lbl.text=@"TEXT VIEW";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:25];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    
    //UITextView with Text
    CGRect textViewFrame = CGRectMake(10, 45, 300, 200);
    UITextView * textView = [[UITextView alloc] initWithFrame:textViewFrame];
    textView.returnKeyType = UIReturnKeyDone;
    [textView setText:@"Some Random Text"];
    [textView setTextColor:[UIColor brownColor]];
    [textView setTextAlignment:NSTextAlignmentLeft];
    [textView setFont:[UIFont boldSystemFontOfSize:18]];
    textView.scrollEnabled = YES;
    textView.editable = YES;
        textView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"d2.jpeg"]];
    //textView.backgroundColor=[UIColor grayColor];
   // [textView becomeFirstResponder];
    [self.view addSubview:textView];
    
}

-(IBAction)next:(id)sender
{
    Pickers * p=[[Pickers alloc]init];
    [self.navigationController pushViewController:p animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [super dealloc];
}
@end
