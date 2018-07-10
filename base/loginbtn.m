//
//  loginbtn.m
//  databasepractise
//
//  Created by Hyma on 06/07/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import "loginbtn.h"
#import "LOGIN.h"
#import "AppDelegate.h"
#import "Birds+CoreDataClass.h"
@interface loginbtn ()
{
    AppDelegate *a;
    NSArray *fetchedObjects;


}

@end

@implementation loginbtn

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)loginv:(id)sender {
    
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
    
    fetchedObjects =[[NSArray alloc]init];
    
    NSError *err=nil;
    fetchedObjects = [econtext executeFetchRequest:fetchRequest error:&err];
    
    if (fetchedObjects.count!=0)
    {
        LOGIN *lv=[[LOGIN alloc]init];
        lv.arr=fetchedObjects;
        //lv.str1=self.tf1.text;
        //lv.str2=self.tf2.text;
        [self.navigationController pushViewController:lv animated:YES];
        
        
    }
    else
    {
        
        self.lb1.text=@"Invalid username & password";
        
    }
    
    
    
    
}

@end
