//
//  regview.m
//  databasepractise
//
//  Created by Hyma on 29/06/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import "regview.h"
#import "AppDelegate.h"
#import "sort.h"
#import "Birds+CoreDataClass.h"


@interface regview ()
{
    AppDelegate *a;
    NSArray *fetcharray;
}

@end

@implementation regview

- (void)viewDidLoad {
    [super viewDidLoad];
    //object of regview to get txtfield
    
    
    // creating object of appdelegata
    
    
    
    
    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
    
    
    // xcode fetch
    
    
    NSManagedObjectContext *econtext=((AppDelegate *)[[UIApplication sharedApplication]delegate]).persistentContainer.viewContext;
    
   //core data fetch
    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]init];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Birds" inManagedObjectContext:econtext];
    // sending request
    
    [fetchRequest setEntity:entity];

    

    
    
    
    //loading  array with objects using request
    NSError *error=nil;
    
    //fetcharray=[econtext executeRequest:req error:&erro];
    
    fetcharray=[[NSArray alloc]init];
    
    fetcharray = [econtext executeFetchRequest:fetchRequest error:&error];
    
   
//    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
//    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Birds" inManagedObjectContext:econtext];
//    [fetchRequest setEntity:entity];
//    
//    NSError *error = nil;
//    fetchedObjects = [econtext executeFetchRequest:fetchRequest error:&error];
//    
//    
 
    
    
    
    
    
    // Do any additional setup after loading the view from its nib.
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
