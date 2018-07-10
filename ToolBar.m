//
//  ToolBar.m
//  UICatalog
//
//  Created by zocer on 8/11/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "ToolBar.h"
#import "Alerts.h"

@interface ToolBar ()

@end

@implementation ToolBar

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
    lbl.text=@"TOOL BAR";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(250, 20, 60, 30);
    [self.view addSubview:btnnext];
    
    //Tool Bar
    UIToolbar * toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(10,200,300,50)];
    toolbar.tintColor = [UIColor blackColor];//Create a tool bar
    
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
    
    
    //Adding the tool bar items
    UIBarButtonItem *labeltext= [[UIBarButtonItem alloc] initWithCustomView:btnhome1];
    UIBarButtonItem * button = [[UIBarButtonItem alloc]initWithTitle:@"Status" style:UIBarButtonItemStyleDone target:self action:nil];
    UIBarButtonItem * buttonhome= [[UIBarButtonItem alloc] initWithCustomView:btnhome];
    UIBarButtonItem * textfieldName= [[UIBarButtonItem alloc] initWithCustomView:btnhome2];
    
    NSArray *items = [NSArray arrayWithObjects:labeltext,button,buttonhome, textfieldName,nil];
    toolbar.items = items;
    [self.view addSubview:toolbar];
}

-(IBAction)next:(id)sender
{
    Alerts * a=[[Alerts alloc]init];
    [self.navigationController pushViewController:a animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
