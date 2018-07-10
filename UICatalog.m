//
//  UICatalog.m
//  UICatalog
//
//  Created by appzoc on 09/02/15.
//  Copyright (c) 2015 appzoc. All rights reserved.
//

#import "UICatalog.h"
#import "ViewController.h"
#import "Controls.h"
#import "TextFields.h"
#import "SearchBar.h"
#import "TextView.h"
#import "Pickers.h"
#import "ImageAnimation.h"
#import "WebView.h"
#import "SegmentControl.h"
#import "ToolBar.h"
#import "Alerts.h"
#import "Transitions.h"
#import "TableViewArray.h"
#import "GroupTable.h"
#import "CustomTable.h"

@interface UICatalog ()
{
    UITableViewCell *cell;
}
@end

@implementation UICatalog
@synthesize tableView,arrayItems;

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

    self.navigationItem.title = @"      UICATALOG";
    
    CGRect tableFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-10);
    tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
    tableView.scrollEnabled = YES;
    tableView.separatorColor = [UIColor blackColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    arrayItems = [[NSArray alloc] initWithObjects:@"BUTTONS",@"CONTROLS",@"TEXT FIELDS",@"SEARCH BAR",@"TEXT VIEW",@"PICKER",@"IMAGE ANIMATION",@"WEB VIEW",@"SEGMENT CONTROL",@"TOOL BAR",@"ACTION SHEET & ALERT VIEW",@"TRANSITIONS",@"PLAIN TABLE",@"GROUP TABLE",@"CUSTOM TABLE",nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [arrayItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [arrayItems objectAtIndex:indexPath.row];
    cell.textLabel.font=[UIFont boldSystemFontOfSize:13];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
        if (indexPath.row==0)
        {
            ViewController * gt=[[ViewController alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }

        else if (indexPath.row==1)
        {
            Controls * gt=[[Controls alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==2)
        {
            TextFields * gt=[[TextFields alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
    
        else if (indexPath.row==3)
        {
            SearchBar * gt=[[SearchBar alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==4)
        {
            TextView * gt=[[TextView alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==5)
        {
            Pickers * gt=[[Pickers alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==6)
        {
            ImageAnimation * gt=[[ImageAnimation alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==7)
        {
            WebView * gt=[[WebView alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==8)
        {
            SegmentControl * gt=[[SegmentControl alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==9)
        {
            ToolBar * gt=[[ToolBar alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==10)
        {
            Alerts * gt=[[Alerts alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
    
        else if (indexPath.row==11)
        {
            Transitions * gt=[[Transitions alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==12)
        {
            TableViewArray * gt=[[TableViewArray alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==13)
        {
            GroupTable * gt=[[GroupTable alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
        else if (indexPath.row==14)
        {
            CustomTable * gt=[[CustomTable alloc]init];
            [self.navigationController pushViewController:gt animated:YES];
        }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
