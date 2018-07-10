//
//  sort.m
//  databasepractise
//
//  Created by Hyma on 01/07/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import "sort.h"
#import "AppDelegate.h"
#import "Birds+CoreDataClass.h"
#import "regview.h"
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
    //initializing and allocating array
   
    //xcode code
    
    NSManagedObjectContext *econtext=((AppDelegate *)[[UIApplication sharedApplication]delegate]).persistentContainer.viewContext;
    
       //coredata fetch
    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]init];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Birds" inManagedObjectContext:econtext];
    // sending request
    
    [fetchRequest setEntity:entity];
    
    
    NSSortDescriptor *sort=[[NSSortDescriptor alloc]initWithKey:@"name" ascending:YES];
    
    [fetchRequest setSortDescriptors:[NSArray arrayWithObjects:sort,nil]];
    NSError *err=nil;
     fetcharray=[[NSArray alloc]init];
    //fetcharray =[econtext executeRequest:fetchRequest error:&err];
    fetcharray = [econtext executeFetchRequest:fetchRequest error:&err];
    
    
    
    
    // Do any additional setup after loading the view from
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return fetcharray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
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
        cell.textLabel.text=[[fetcharray objectAtIndex:indexPath.section]valueForKey:@"username"];
        
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
