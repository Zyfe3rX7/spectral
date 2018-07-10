//
//  SearchBar.m
//  UICatalog
//
//  Created by zocer on 8/6/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "SearchBar.h"
#import "TextView.h"

@interface SearchBar ()

@end

@implementation SearchBar

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
    lbl.text=@"SEARCH BAR";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:25];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    
    //Search Bar
    UISearchBar * searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(5, 200, 320, 50)];
    searchBar.showsSearchResultsButton=YES;
	[self.view addSubview:searchBar];
	[searchBar release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)next:(id)sender
{
    TextView * tv=[[TextView alloc]init];
    [self.navigationController pushViewController:tv animated:YES];
}

@end
