//
//  GroupTable.m
//  UICatalog
//
//  Created by zocer on 8/22/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "GroupTable.h"

@interface GroupTable ()
{
    UILabel * lblCellvalue;
    UILabel * lbltxtvalue;
    NSArray *array1;
    NSArray *array2;
}

@end

@implementation GroupTable
@synthesize strCellValue,strtxtValue;

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
    lbl.frame=CGRectMake(5, 10, 300, 50);
    lbl.text=@"GROUP TABLE";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:lbl];
  
    
    if(strCellValue!=NULL)
    {
        NSLog(@"%@", strCellValue);
        
        lblname=[[UILabel alloc]init];
        lblname.frame=CGRectMake(0, 50, 200, 50);
        lblname.textColor=[UIColor grayColor];
        lblname.font=[UIFont boldSystemFontOfSize:16];
        lblname.text=@"You are Selected:";
        [self.view addSubview:lblname];
        
        lblCellvalue=[[UILabel alloc]init];
        lblCellvalue.frame=CGRectMake(135, 50, 250, 50);
        lblCellvalue.textColor=[UIColor grayColor];
        lblCellvalue.font=[UIFont boldSystemFontOfSize:16];
        lblCellvalue.text=strCellValue;
        [self.view addSubview:lblCellvalue];
        
        CGFloat x = 0;
        CGFloat y = 90;
        CGFloat width = self.view.frame.size.width;
        CGFloat height = self.view.frame.size.height-100;
        CGRect tableFrame = CGRectMake(x, y, width, height);
        tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStyleGrouped];
        tableView.scrollEnabled = YES;
        tableView.rowHeight = 45;
        tableView.showsVerticalScrollIndicator = YES;
        tableView.userInteractionEnabled = YES;
        tableView.bounces = YES;
        tableView.delegate = self;
        tableView.dataSource = self;
        [self.view addSubview:tableView];
        
        array1 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",nil];
        
        array2 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",@"Item 7",@"Item 8",nil];
    }
    
    else if ([strtxtValue isEqualToString:@""])
    {
        lblnulltxtvalue=[[UILabel alloc]init];
        lblnulltxtvalue.frame=CGRectMake(10, 200, 500, 50);
        lblnulltxtvalue.text=@"PLEASE ENTER THE VALUE IN TEXT BOX";
        lblnulltxtvalue.textColor=[UIColor grayColor];
        lblnulltxtvalue.font=[UIFont boldSystemFontOfSize:15];
        [self.view addSubview:lblnulltxtvalue];
    }

    else if (strtxtValue!=NULL)
    {
        NSLog(@"%@", strtxtValue);
        
        lblname=[[UILabel alloc]init];
        lblname.frame=CGRectMake(0, 50, 200, 50);
        lblname.textColor=[UIColor grayColor];
        lblname.font=[UIFont boldSystemFontOfSize:16];
        lblname.text=@"You are Selected:";
        [self.view addSubview:lblname];
        
        lbltxtvalue=[[UILabel alloc]init];
        lbltxtvalue.frame=CGRectMake(135, 50, 250, 50);
        lbltxtvalue.textColor=[UIColor grayColor];
        lbltxtvalue.font=[UIFont boldSystemFontOfSize:16];
        lbltxtvalue.text=strtxtValue;
        [self.view addSubview:lbltxtvalue];
    
        myWebView = [[[UIWebView alloc] initWithFrame:CGRectMake(10, 110, 300,500)] autorelease];
        myWebView.backgroundColor = [UIColor whiteColor];        myWebView.scalesPageToFit = YES;
        myWebView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
        [myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:strtxtValue]]];
        [self.view addSubview:myWebView];
    }
    else
    {
        CGFloat x = 0;
        CGFloat y = 90;
        CGFloat width = self.view.frame.size.width;
        CGFloat height = self.view.frame.size.height-100;
        CGRect tableFrame = CGRectMake(x, y, width, height);
        tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStyleGrouped];
        tableView.scrollEnabled = YES;
        tableView.rowHeight = 45;
        tableView.showsVerticalScrollIndicator = YES;
        tableView.userInteractionEnabled = YES;
        tableView.bounces = YES;
        tableView.delegate = self;
        tableView.dataSource = self;
        [self.view addSubview:tableView];
        
        array1 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",nil];
        
        array2 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",@"Item 7",@"Item 8",nil];
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section==0)
    {
        return [array1 count];
    }
    else if (section==1)
    {
        return [array2 count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    if (indexPath.section==0)
    {
        cell.textLabel.text = [array1 objectAtIndex:indexPath.row];
    }
    else if (indexPath.section==1)
    {
        cell.textLabel.text = [array2 objectAtIndex:indexPath.row];
    }
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
