//
//  LOGIN.m
//  databasepractise
//
//  Created by Hyma on 06/07/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import "LOGIN.h"
#import "AppDelegate.h"
#import "sort.h"
#import "Birds+CoreDataClass.h"
#import "update.h"
@interface LOGIN ()
{

    AppDelegate *a;
    NSArray *fetcharray;

}

@end

@implementation LOGIN

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
//    
//    
//    // xcode fetch
//    
//    
//    NSManagedObjectContext *econtext=((AppDelegate *)[[UIApplication sharedApplication]delegate]).persistentContainer.viewContext;
//    
//    //core data fetch
//    
//    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]init];
//    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Birds" inManagedObjectContext:econtext];
//    // sending request
//    
//    [fetchRequest setEntity:entity];
//    
//    //loading  array with objects using request
//    NSError *error=nil;
//    
//    //fetcharray=[econtext executeRequest:req error:&erro];
//    
//    fetcharray=[[NSArray alloc]init];
//    
//    fetcharray = [econtext executeFetchRequest:fetchRequest error:&error];
//    
    
    self.tf1.text=[[_arr objectAtIndex:0]valueForKey:@"name"];
    self.tf2.text=[[_arr objectAtIndex:0]valueForKey:@"username"];
    self.tf3.text=[[_arr objectAtIndex:0]valueForKey:@"password"];
    self.tf4.text=[[_arr objectAtIndex:0]valueForKey:@"age"];
    
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)SORTACTION:(id)sender {
    
    sort *st=[[sort alloc]init];
    [self.navigationController pushViewController:st animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)updateaction:(id)sender {
    
    
    for (NSManagedObjectContext *ob in self.arr) {
    
         [ob setValue:_tf1.text forKey:@"name"];
         [ob setValue:_tf2.text forKey:@"username"];
         [ob setValue:_tf3.text forKey:@"password"];
         [ob setValue:_tf4.text forKey:@"age"];
    }
    
    
    
    a=((AppDelegate *)[UIApplication sharedApplication].delegate);
    
    // xcode code
    
    NSManagedObjectContext *econtext=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    //core data fetch
 
    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]init];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Birds" inManagedObjectContext:econtext];
    // sending request
    
    [fetchRequest setEntity:entity];
    
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"username like %@ and password like %@ ",_tf1.text,_tf2.text];
    
    [fetchRequest setPredicate:predicate];
    
    fetcharray =[[NSArray alloc]init];
    
    NSError *err=nil;
    fetcharray = [econtext executeFetchRequest:fetchRequest error:&err];
    
    
    update *up=[[update alloc]init];
    
    up.self.array01=fetcharray;
    
    
        [self.navigationController pushViewController:up animated:YES];
    
    
}
- (IBAction)deleteaction:(id)sender {
    
    NSManagedObjectContext *econtext=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    
    
    for (NSManagedObjectContext *ob in self.arr) {
        [econtext deleteObject:ob];
        [a saveContext];
        
       
        
    }
    
     UIAlertView *ai=[[UIAlertView alloc]initWithTitle:@"MESSAGE" message:@"YOUR MESSAGE HAS BEEN DELETED" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [ai show];
    
    
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
