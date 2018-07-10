
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

    }
    return self;
}

- (void)viewDidLoad
{
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
        
        array1 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",nil];
        
        array2 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",@"Item 5",@"Item 6",@"Item 7",@"Item 8",nil];
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
    return nil;
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
  
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:@"You've selected a row" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    

    [messageAlert show];
        
    NSLog(@"selected tableview row is %ld",(long)indexPath.row);
     static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"10.jpeg"]];

    
    }

    



    

@end

