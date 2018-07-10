//
//  grouptable.m
//  asd
//
//  Created by iROID Technologies on 3/14/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "grouptable.h"

@interface grouptable ()
{
    UILabel * lblCellvalue;
    UILabel * lbltxtvalue;
    NSArray *array1;
    NSArray *array2;
}

@end

@implementation grouptable
@synthesize strCellValue,strtxtValue;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
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
    
    array1 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",nil];
    
    array2 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",nil];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if (section==0)
    {
        return [array1 count];
    }
    else if (section==1)
    {
        return [array2 count];
    }
    return 0;
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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
