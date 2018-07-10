//
//  Alerts.m
//  UICatalog
//
//  Created by zocer on 8/11/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "Alerts.h"
#import "Transitions.h"

@interface Alerts ()

@end

@implementation Alerts

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
    lbl.frame=CGRectMake(5, 10, 250, 50);
    lbl.text=@"ALERTS";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(250, 20, 60, 30);
    [self.view addSubview:btnnext];
    
    UIButton * btnactionsheet = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnactionsheet.frame = CGRectMake(20.0f, 150.0f, 280.0f, 88.0f);
    [btnactionsheet setTitle:@"Show Action Sheet" forState:UIControlStateNormal];
    [btnactionsheet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnactionsheet.tintColor = [UIColor darkGrayColor];
    [btnactionsheet addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnactionsheet];
    
    UIButton * btnalertview = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnalertview.frame = CGRectMake(20.0f, 300.0f, 280.0f, 88.0f);
    [btnalertview setTitle:@"Show Alert View" forState:UIControlStateNormal];
    [btnalertview setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnalertview.tintColor = [UIColor darkGrayColor];
    [btnalertview addTarget:self action:@selector(showAlertView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnalertview];
}

- (void)showActionSheet:(id)sender
{
    NSString *actionSheetTitle = @"Action Sheet Demo"; //Action Sheet Title
    NSString *destructiveTitle = @"Destructive Button"; //Action Sheet Button Titles
    NSString *other1 = @"Button 1";
    NSString *other2 = @"Button 2";
    NSString *other3 = @"Button 3";
   // NSString *cancelTitle = @"Cancel Button";
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:actionSheetTitle
                                  delegate:self
                                  cancelButtonTitle:@"Cancel Button"
                                  destructiveButtonTitle:destructiveTitle
                                  otherButtonTitles:other1, other2, other3, nil];
    
    [actionSheet showInView:self.view];
}
-(void)showAlertView:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Good" message:@"Now u know to display Alert View" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //Get the name of the current pressed button
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if  ([buttonTitle isEqualToString:@"Destructive Button"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Destructive" message:@"Now u know to display Alert View" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
        
    }
    if ([buttonTitle isEqualToString:@"Button 1"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button One" message:@"Button One pressed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    if ([buttonTitle isEqualToString:@"Button 2"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Two" message:@"Button Two pressed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    if ([buttonTitle isEqualToString:@"Button 3"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Three" message:@"Button Three pressed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    if ([buttonTitle isEqualToString:@"Cancel Button"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cancel" message:@"Button Cancel pressed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
}

-(IBAction)next:(id)sender
{
    Transitions * t=[[Transitions alloc]init];
    [self.navigationController pushViewController:t animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
