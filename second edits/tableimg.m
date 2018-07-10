
#import "tableimg.h"

@interface tableimg ()
{
    UILabel * lblCellvalue;
    UILabel * lbltxtvalue;
    NSArray *array1;
    NSArray *array2;
    NSArray *array3;
}

@end

@implementation tableimg
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
    tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewCellStyleDefault];
    tableView.scrollEnabled = YES;
    tableView.rowHeight = 45;
    tableView.showsVerticalScrollIndicator = YES;
    tableView.userInteractionEnabled = YES;
    tableView.bounces = YES;
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    array1 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",@"Item 4",nil];

    
    array2 = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item 3",nil];
    
    array3 =[NSArray arrayWithObjects:[UIImage imageNamed:@"1"],
                 [UIImage imageNamed:@"2"],[UIImage imageNamed:@"3"],[UIImage imageNamed:@"4"],[UIImage imageNamed:@"5"],[UIImage imageNamed:@"1"],[UIImage imageNamed:@"2"],nil];
    

}


//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    if (section == 1) {
//        return 70;
//    } else {
//        return 0;
//    }
//
//}


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
//      cell.imageView.image = [UIImage imageNamed:@"1"];
cell.imageView.image = (UIImage *)[array3 objectAtIndex:indexPath.row];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
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
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    UIImage *myImage = [UIImage imageNamed:@"a1.png"];
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
//    imageView.frame = CGRectMake(10,10,60,60);
//
//    if (section == 0){
//        return imageView;
//    }else if (section == 1){
//        return imageView;
//    }else if (section == 2){
//        return imageView;
//    }else{
//        return 0;
//    }
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 18)];
    view.clipsToBounds=YES;
    UIImage *myImage = [UIImage imageNamed:@"a1"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
    imageView.frame = CGRectMake(0,0,300,100);
    imageView.clipsToBounds=YES;
    [view addSubview:imageView];
//
//    return imageView;

//    UIImageView *imgVew = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"a1.png"]];
//    return imgVew;
    
    
    [view setBackgroundColor:[UIColor colorWithRed:255/255.0 green:100/255.0 blue:100/255.0 alpha:1.0]];

    return view;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{cell.selectedBackgroundView = [[UIImageView alloc] init];
    UIImage *img  = [UIImage imageNamed:@"a1"];
    ((UIImageView *)cell.selectedBackgroundView).image = img;}


//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIAlertView *messageAlert = [[UIAlertView alloc]
//                                 initWithTitle:@"Row Selected" message:@"You've selected a row" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//
//
//    [messageAlert show];
//
//    NSLog(@"selected tableview row is %ld",(long)indexPath.row);
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
//
//    cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"10.jpeg"]];
//
//
//}







@end

