#import "asynch.h"


@interface asynch ()
{
    UITableView *table;
    int indexcode;
}
@end

@implementation asynch
@synthesize datax,mutarray;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    mutarray=[[NSMutableArray alloc]init];
    datax=[[NSMutableData alloc]init];

        NSURLRequest *reuest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://iroidtech.com/wecare/api/news_events/list?&format=json"]];
    NSURLConnection *connect=[NSURLConnection connectionWithRequest:reuest delegate:self];
    NSLog(@"Connecting String=%@",connect);
    
    
    
    table=[[UITableView alloc]initWithFrame:CGRectMake(20, 50, 400, 400) style:UITableViewStyleGrouped];
    table.delegate=self;
    table.dataSource=self;

    [self.view addSubview:table];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"Cell Identifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid];
    }
        if(indexPath.row==0)
        {
        cell.textLabel.text=[[mutarray objectAtIndex:indexPath.section]valueForKey:@"id"];
        

        }
        else if(indexPath.row==1)
        {
            cell.textLabel.text=[[mutarray objectAtIndex:indexPath.section]valueForKey:@"title"];
        }
        else if(indexPath.row==2)
        {
            cell.textLabel.text=[[mutarray objectAtIndex:indexPath.section]valueForKey:@"subtitle"];
        }
        else if(indexPath.row==3)
        {
           
            
            
            
            
            NSString *g=[[mutarray objectAtIndex:indexPath.section]valueForKey:@"image"];
            NSString *h=[NSString stringWithFormat:@"http://iroidtech.com/wecare/uploads/news_events/%@",g];
            NSURL *tu1=[NSURL URLWithString:h];
            NSMutableData *sdata=[NSMutableData dataWithContentsOfURL:tu1];
            cell.imageView.image=[UIImage imageWithData:sdata];
            
            
            
            
            
            
//            cell.textLabel.text=[[mutarray objectAtIndex:indexPath.section]valueForKey:@"image"];
        }

    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return mutarray.count;
}

/////////////////////////////////////////////////
//

//NSString *g=[[tabArray objectAtIndex:1]valueForKey:@"image"];
//NSString *h=[NSString stringWithFormat:@"http://iroidtech.com/wecare/uploads/partnership_categories/%@",g];
//NSURL *tu1=[NSURL URLWithString:h];
//NSMutableData *sdata=[NSMutableDatadataWithContentsOfURL:tu1];
//cell.img.image=[UIImage imageWithData:sdata];
//
-(NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response
{
    return request;
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [datax appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    mutarray=[NSJSONSerialization JSONObjectWithData:datax options:NSJSONReadingMutableContainers error:nil];
    [table reloadData];
}
//
//
/////////////////////////////////////////

@end
