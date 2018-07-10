//
//  TableViewArray.m
//  UICatalog
//
//  Created by zocer on 8/18/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "TableViewArray.h"
#import "CustomTable.h"

@interface TableViewArray ()

@end

@implementation TableViewArray
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
    
    lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(5, 10, 250, 50);
    lbl.text=@"TABLE WITH ARRAY";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(250, 20, 60, 30);
    [self.view addSubview:btnnext];
    
    //Plain Table View with NSArray(Seting the table Values)
    
    CGFloat x = 0;
    CGFloat y = 50;
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    CGRect tableFrame = CGRectMake(x, y, width, height);
    tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
    tableView.scrollEnabled = YES;
//    tableView.rowHeight = 45;
//    tableView.showsVerticalScrollIndicator = YES;
//    tableView.userInteractionEnabled = YES;
//    tableView.bounces = YES;
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
     arrayItems = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",@"Item 7",@"Item 8",@"Item 9",@"Item 10", @"Item 11",@"Item 12",@"Item 13",@"Item 14",@"Item 15",nil];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [arrayItems objectAtIndex:indexPath.row];
    return cell;
}

-(IBAction)next:(id)sender
{
    CustomTable * tvma=[[CustomTable alloc]init];
   [self.navigationController pushViewController:tvma animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
