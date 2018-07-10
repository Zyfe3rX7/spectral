//  sort.h
//  dbsort
//
//  Created by iROID Technologies on 4/11/18.
//  Copyright © 2018 asd. All rights reserved.
//

#import "sort.h"
#import "AppDelegate.h"
#import "Ystudent+CoreDataProperties.h"
#import "registerview.h"
@interface sort ()<UITableViewDelegate,UITableViewDataSource>
{
    AppDelegate *a;
    
    NSArray *fetcharray;
}

@end

@implementation sort

- (void)viewDidLoad {
    [super viewDidLoad];
    
    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
    
    
    NSManagedObjectContext *econtext=((AppDelegate *)[[UIApplication sharedApplication]delegate]).persistentContainer.viewContext;

    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]init];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Ystudent" inManagedObjectContext:econtext];
 
    
    [fetchRequest setEntity:entity];
    
    
    NSSortDescriptor *sort=[[NSSortDescriptor alloc]initWithKey:@"name" ascending:YES];
    
    [fetchRequest setSortDescriptors:[NSArray arrayWithObjects:sort,nil]];
    NSError *err=nil;
    fetcharray=[[NSArray alloc]init];

    fetcharray = [econtext executeFetchRequest:fetchRequest error:&err];
    
    
    
    
    // Do any additional setup after loading the view from
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return fetcharray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    }
    if (indexPath.row==0)
    {
        cell.textLabel.text=[[fetcharray objectAtIndex:indexPath.section]valueForKey:@"name"];
        
    }
    else if (indexPath.row==1)
    {
        cell.textLabel.text=[[fetcharray objectAtIndex:indexPath.section]valueForKey:@"un"];
        
    }
    else if (indexPath.row==2)
    {
        cell.textLabel.text=[[fetcharray objectAtIndex:indexPath.section]valueForKey:@"password"];
    }
    else
    {
        cell.textLabel.text=[[fetcharray objectAtIndex:indexPath.section]valueForKey:@"age"];
    }
    
    return cell;
}
@end
