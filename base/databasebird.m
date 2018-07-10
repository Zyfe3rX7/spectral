//
//  databasebird.m
//  databasepractise
//
//  Created by Hyma on 27/06/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import "databasebird.h"
#import "AppDelegate.h"
#import "regview.h"
#import "Birds+CoreDataProperties.h"
#import "sort.h"
#import "loginbtn.h"
@interface databasebird ()
{
    AppDelegate *a;
    databasebird *d;
    NSManagedObjectContext *econtext;
    
}

@end

@implementation databasebird

- (void)viewDidLoad {
    [super viewDidLoad];
    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
   
    econtext=((AppDelegate *)[[UIApplication sharedApplication]delegate]).persistentContainer.viewContext;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)registeract:(id)sender {
    
    
    Birds *rr=[NSEntityDescription insertNewObjectForEntityForName:@"Birds" inManagedObjectContext:econtext];
    rr.name=[NSString stringWithFormat:@"%@",self.tx1.text];
    rr.username=[NSString stringWithFormat:@"%@",self.tx2.text];
    rr.password=[NSString stringWithFormat:@"%@",self.tx3.text];
    rr.age=[NSString stringWithFormat:@"%@",self.tx4.text];
    
    [a saveContext];
    
    
   //if (self.tx1.text.length && self.tx2.text.length && self.tx3.text.length && self.tx4.text.length!=0)
    
    if (self.tx1.text.length && self.tx2.text.length && self.tx3.text.length && self.tx4.text.length != 0) {
    
    
        UIAlertView *alertw=[[UIAlertView alloc]initWithTitle:@"hello" message:@"data successfully saved" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertw show];
        self.tx1.text=@"";
        self.tx2.text=@"";
        self.tx3.text=@"";
        self.tx4.text=@"";
        
        regview *m=[[regview alloc]init];
        [self.navigationController pushViewController:m animated:YES];
   }
    
    else
    {
        UIAlertView *al=[[UIAlertView alloc]initWithTitle:@"alert" message:@"please put data" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [al show];
    
        self.tx1.text=@"";
        self.tx2.text=@"";
        self.tx3.text=@"";
        self.tx4.text=@"";
    
    
    }
    
    
 
}

- (IBAction)login:(id)sender {
    
    loginbtn *l=[[loginbtn alloc]init];
    [self.navigationController pushViewController:l animated:YES];
    
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
