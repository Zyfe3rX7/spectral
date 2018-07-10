//
//  lv.m


#import "lv.h"
#import "loginbtn.h"
#import "AppDelegate.h"
#import "welcomepage.h"
#import "Ystudent+CoreDataProperties.h"
#import "update.h"

@interface lv ()
{
    NSArray *arr01;
    NSManagedObjectContext *econtext;
    AppDelegate *a;

}

@end

@implementation lv

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
//    
//    NSManagedObjectContext *econtext=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
//    
//    //xcode fetch request and entity
//    
//    NSFetchRequest *req=[[NSFetchRequest alloc]init];
//    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Ystudent" inManagedObjectContext:econtext];
//    
//    [req setEntity:entity];
//    
//    NSError *err=nil;
//    arr01=[econtext executeFetchRequest:req error:&err];
//    
    
    self.txt1.text=[[_array001 objectAtIndex:0]valueForKey:@"name"];
    self.txt2.text=[[_array001 objectAtIndex:0]valueForKey:@"un"];
    self.txt3.text=[[_array001 objectAtIndex:0]valueForKey:@"age"];
    self.txt4.text=[[_array001 objectAtIndex:0]valueForKey:@"password"];
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)delete:(id)sender {
    
    
    UIAlertView *at=[[UIAlertView alloc]initWithTitle:@"warrning" message:@"datas will be deleted" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [at show];
    
    
    
    for (NSManagedObjectContext *ob in self.array001) {
        
        
       NSManagedObjectContext *econtext=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
//        
        
                [econtext deleteObject:ob];
        
        welcomepage *w=[[welcomepage alloc]init];
        [self.navigationController initWithRootViewController:w];
        
    
    }
    
    
    
    
    
}
- (IBAction)update:(id)sender {
    
    //updating value in entity
    
    for (NSManagedObjectContext *ob1 in self.array001) {
    
        [ob1 setValue:_txt1.text forKey:@"name"];
        [ob1 setValue:_txt2.text forKey:@"age"];
        [ob1 setValue:_txt3.text forKey:@"un"];
        [ob1 setValue:_txt4.text forKey:@"password"];
        
        
    }
    
    //preaparing to put the updated value to an array of update file
    
    
    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
    
    
    
    NSManagedObjectContext *econtext=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    
    
    
    
    NSFetchRequest *req=[[NSFetchRequest alloc]init];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Ystudent" inManagedObjectContext:econtext];
    
    [req setEntity:entity];
    
    NSPredicate *pre=[NSPredicate predicateWithFormat:@"un like %@ and password like %@ ",_txt3.text,_txt4.text];
    
    [req setPredicate:pre];
    
    NSError *err=nil;
    NSArray *array=[econtext executeFetchRequest:req error:&err];
    
    
    
    update *up=[[update alloc]init];
    
    up.updatearray=array;
    [self.navigationController initWithRootViewController:up];
    
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
