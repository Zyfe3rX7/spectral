//
//  ViewController.m
//  UICatalog
//
//  Created by zocer on 8/1/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "ViewController.h"
#import "Controls.h"
#import "CustomTable.h"

@interface ViewController ()

@end

@implementation ViewController

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
    lbl.frame=CGRectMake(30, 90, 150, 50);
    lbl.text=@"hello";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:25];
    lbl.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    //Rounded Rectangle Button with Text
    RoundedRectButton=[[UIButton alloc]init];
    RoundedRectButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    RoundedRectButton.frame=CGRectMake(120, 100, 100, 50);
    [RoundedRectButton setTitle:@"SUBMIT" forState:UIControlStateNormal];
    [RoundedRectButton addTarget:self action:@selector(RoundedRectButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:RoundedRectButton];
    
    //Rounded Rectangle Button with Image
    UIButton * RoundedRectButtonimg = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    RoundedRectButtonimg.frame = CGRectMake(120, 180, 100, 50);
    [RoundedRectButtonimg setImage:[UIImage imageNamed:@"images.png"] forState:UIControlStateNormal];
    [RoundedRectButtonimg setImage:[UIImage imageNamed:@"botanic.png"] forState:UIControlStateHighlighted];
    [RoundedRectButtonimg setImage:[UIImage imageNamed:@"tick..jpg"] forState:UIControlStateSelected];
    RoundedRectButtonimg.showsTouchWhenHighlighted = YES;
    [self.view addSubview:RoundedRectButtonimg];
    
    //DisclosureButton
    UIButton *DisclosureButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    DisclosureButton.frame=CGRectMake(120, 260, 100, 50);
    [self.view addSubview:DisclosureButton];
    
    //InfoLight Button
    UIButton *InfoLightButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    InfoLightButton.frame = CGRectMake(120, 320, 100, 50);
    [InfoLightButton setTitle:@"i" forState:UIControlStateNormal];
    [self.view addSubview:InfoLightButton];
    
    //InfoDark Button
    UIButton *InfoDarkButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    InfoDarkButton.frame = CGRectMake(120, 370, 100, 50);
    [InfoDarkButton setTitle:@"i" forState:UIControlStateNormal];
    [self.view addSubview:InfoDarkButton];
    
    //Add Button
    UIButton* AddButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    AddButton.frame=CGRectMake(120, 420, 100, 50);
    AddButton.tintColor = [UIColor whiteColor];
    [self.view addSubview:AddButton];
}

-(IBAction)next:(UIButton *)sender
{
    Controls * c=[[Controls alloc]init];
    [self.navigationController pushViewController:c animated:YES];
}

-(void)RoundedRectButton
{
    lbl1=[[UILabel alloc]init];
    lbl1.frame=CGRectMake(0, 60, 300, 30);
    lbl1.text=@"Submit Button Clicked";
    lbl1.textColor=[UIColor grayColor];
    lbl1.font=[UIFont boldSystemFontOfSize:25];
    lbl1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lbl1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
