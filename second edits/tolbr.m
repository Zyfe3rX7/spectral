//
//  tolbr.m
//  asd2
//
//  Created by iROID Technologies on 3/22/18.
//  Copyright © 2018 asd. All rights reserved.
//

#import "tolbr.h"

@interface tolbr ()

@end

@implementation tolbr

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
   
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];


    UIToolbar * toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(10,200,300,50)];
    toolbar.tintColor = [UIColor blackColor];
    
    UIButton * btnhome1=[[UIButton alloc]init];
    btnhome1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnhome1.frame=CGRectMake(5, 5, 50, 20);
    [btnhome1 setTitle:@"HOME" forState:UIControlStateNormal];
    [self.view addSubview:btnhome1];
    
    UIButton * btnhome=[[UIButton alloc]init];
    btnhome=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnhome.frame=CGRectMake(120, 5, 70, 35);
    [btnhome setTitle:@"ABOUT" forState:UIControlStateNormal];
    [self.view addSubview:btnhome];
    
    UIButton * btnhome2=[[UIButton alloc]init];
    btnhome2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnhome2.frame=CGRectMake(150, 5, 80, 35);
    [btnhome2 setTitle:@"CONTACT" forState:UIControlStateNormal];
    [self.view addSubview:btnhome2];
    

    UIBarButtonItem *labeltext= [[UIBarButtonItem alloc] initWithCustomView:btnhome1];
    UIBarButtonItem * button = [[UIBarButtonItem alloc]initWithTitle:@"Status" style:UIBarButtonItemStyleDone target:self action:nil];
    UIBarButtonItem * buttonhome= [[UIBarButtonItem alloc] initWithCustomView:btnhome];
    UIBarButtonItem * textfieldName= [[UIBarButtonItem alloc] initWithCustomView:btnhome2];
    
    NSArray *items = [NSArray arrayWithObjects:labeltext,button,buttonhome, textfieldName,nil];
    toolbar.items = items;
    [self.view addSubview:toolbar];
}
@end
