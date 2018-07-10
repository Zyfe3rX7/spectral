//
//  alertx.m
//  asd
//
//  Created by iROID Technologies on 3/1/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "alertx.h"

@interface alertx ()

@end

@implementation alertx
{
    UIActionSheet *sheet;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * btnactionsheet = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnactionsheet.frame = CGRectMake(20.0f, 150.0f, 280.0f, 88.0f);
    [btnactionsheet setTitle:@"\u25A6 Action Sheet" forState:UIControlStateNormal];
    [btnactionsheet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnactionsheet.tintColor = [UIColor darkGrayColor];
    [btnactionsheet addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnactionsheet];
    
    UIButton * btnalertview = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnalertview.frame = CGRectMake(20.0f, 300.0f, 280.0f, 88.0f);
    [btnalertview setTitle:@"\U0001F3C1 Alert View" forState:UIControlStateNormal];
    [btnalertview setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnalertview.tintColor = [UIColor darkGrayColor];
    [btnalertview addTarget:self action:@selector(showAlertView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnalertview];
    
    
    
   
}

- (void)showActionSheet:(id)sender
{
    NSString *actionSheetTitle = @"\u25A6 Action Sheet",*setImage;[UIImage imageNamed:@"10.png"];
    NSString *destructiveTitle = @"\U0001F334 Kill Button";
    NSString *other1 = @"\U0001F4CC Button A";
    NSString *other2 = @"\U0001F4D6 Button B";
    NSString *other3 = @"\U0001F30E Button C";
   
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:actionSheetTitle
                                  delegate:self
                                  cancelButtonTitle:@"\U0001F6A9 Cancel"
                                  destructiveButtonTitle:destructiveTitle
                                  otherButtonTitles:other1, other2, other3, nil];
    
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Instruction"
//                                                    message:@"Please TAP on Screen to Continue."
//                                                   delegate:self
//                                          cancelButtonTitle:@"OK"
//                                          otherButtonTitles:nil];
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(220, 50, 32, 32)];
//    UIImage *img = [UIImage imageNamed:@"Download.png"];
//    imageView.contentMode = UIViewContentModeScaleAspectFit;
//
//    [imageView setImage:img];
//    if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1) {
//        [alert setValue:imageView forKey:@"accessoryView"];
//    }else{
//        [alert addSubview:imageView];
//    }
//    [alert show];
//
//       /* [[[sheet valueForKey:@"_buttons"] objectAtIndex:1] setImage:[UIImage imageNamed:@"twitter.png"] forState:UIControlStateNormal];
//
//        [[[sheet valueForKey:@"_buttons"] objectAtIndex:2] setImage:[UIImage imageNamed:@"google-plus.png"] forState:UIControlStateNormal];
//
//        [[[sheet valueForKey:@"_buttons"] objectAtIndex:3] setImage:[UIImage imageNamed:@"youtube.png"] forState:UIControlStateNormal];  */
//
//        [sheet showInView:self.view];
//
    
[actionSheet showInView:self.view];
}

-(void)showAlertView:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Good" message:@"ABBCCDD" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];

    
    

    
    
    UIImageView *iimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 282)];
    UIImage *wonImage = [UIImage imageNamed:@"1xx.png"];
    iimageView.contentMode=UIViewContentModeCenter;
    [iimageView setImage:wonImage];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Good"
                                                        message:@"ABBCCDD"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];

    if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1) {
        [alertView setValue:iimageView forKey:@"accessoryView"];
    }else{
        [alertView addSubview:iimageView];
    }
    [alertView show];

    
    
    
    
 
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    


    
    
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if  ([buttonTitle isEqualToString:@"\U0001F334 Kill Button"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"\U0001F334 Kill Button" message:@"ABBCCCDD" delegate:self cancelButtonTitle:@" \U0001F4CC OK" otherButtonTitles:nil];
        [alert show];
        
        
        
        
        
        
        
        
 
        
    }
    if ([buttonTitle isEqualToString:@"\U0001F4CC Button A"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"\U0001F4CC Button A" message:@"Button A " delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
 
        
   



        [alert show];
        
    }
    if ([buttonTitle isEqualToString:@"\U0001F4D6 Button B"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"\U0001F4D6 Button B" message:@"Button B" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
  
    }
    if ([buttonTitle isEqualToString:@"\U0001F30E Button C"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"\U0001F30E Button C" message:@"Button C" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    }
    if ([buttonTitle isEqualToString:@"\u26A0 Cancel Button"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cancel" message:@"Cancel pressed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    }
}
-(IBAction)next:(id)sender
{
    CATransition * t=[[CATransition alloc]init];
    [self.navigationController pushViewController:t animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
