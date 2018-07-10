#import "synchx.h"

@interface synchx ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *table;
    NSMutableArray *myarray;
    NSMutableData *mdata;
    int index;
    
}
@end

@implementation synchx

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /////////////////////////
    NSURLRequest *nrl1=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://iroidtech.com/wecare/api/areas/districts_by_stateid?state_id=1&format=json"]];
    NSURLConnection *conn1=[NSURLConnection connectionWithRequest:nrl1 delegate:self];

    NSURLResponse *nsr=nil;
    NSError *nser=nil;
    NSData*dta=[NSURLConnection sendSynchronousRequest:nrl1 returningResponse:&nsr error:&nser];
    myarray=[NSJSONSerialization JSONObjectWithData:dta options:NSJSONReadingMutableContainers error:&nser];
    NSLog(@"array%@",myarray);
    //////////////////////////
    //    NSLog(@"Response-%@",nsr);
    //    NSLog(@"Error-%@",nser);
    //    NSLog(@"conn%@",conn1);
    //    NSLog(@"Request-%@",nrl1);
    //    NSLog(@"Data-%@",dta);
    //////////////////////////
    
    table=[[UITableView alloc]initWithFrame:CGRectMake(20, 50, 200, 400) style:UITableViewStyleGrouped];
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
    index=0;
   [table reloadData];
    
   
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return myarray.count;
    ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"Cell Identifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid];
    }
   
        cell.textLabel.text=[[myarray objectAtIndex:indexPath.row]valueForKey:@"id"];
   
    return cell;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
