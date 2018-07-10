

#import "registerview.h"
#import "welcomepage.h"
#import "AppDelegate.h"
#import "Ystudent+CoreDataProperties.h"
@interface registerview ()<UITableViewDelegate,UITableViewDataSource>
{

    AppDelegate *a;
    NSManagedObjectContext *context01;
    NSArray *array01;

}

@end

@implementation registerview

- (void)viewDidLoad {
    [super viewDidLoad];
    
    a=((AppDelegate *)[UIApplication sharedApplication].delegate);
    context01=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    
    
    
    

    
    NSFetchRequest *req=[[NSFetchRequest alloc]init];
    
    NSEntityDescription *entity01=[NSEntityDescription entityForName:@"Ystudent" inManagedObjectContext:context01];
    
    [req setEntity:entity01];
    
    
    
    
    
    
// putting datas from reto array
    
    
    
    
    NSError *err=nil;
    
    array01=[context01 executeFetchRequest:req error:&err];
    
//    _txrv1.text=[[array01 objectAtIndex:0]valueForKey:@"name"];
//    _txr2.text=[[array01 objectAtIndex:0]valueForKey:@"age"];
//    
//    _txr3.text=[[array01 objectAtIndex:0]valueForKey:@"un"];
//    _txr4.text=[[array01 objectAtIndex:0]valueForKey:@"password"];
//    
    
    
    // Do any additional setup after loading the view from its nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return array01.count;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ci=@"hai";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ci];
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ci];
    }
    if (indexPath.row==0) {
        cell.textLabel.text=[[array01 objectAtIndex:indexPath.section]valueForKey:@"name"];
    }
    if (indexPath.row==1) {
        cell.textLabel.text=[[array01 objectAtIndex:indexPath.section]valueForKey:@"age"];
    }
    if (indexPath.row==2) {
        cell.textLabel.text=[[array01 objectAtIndex:indexPath.section]valueForKey:@"un"];
    }
    if (indexPath.row==3) {
        cell.textLabel.text=[[array01 objectAtIndex:indexPath.section]valueForKey:@"password"];
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
