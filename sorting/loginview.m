

#import "loginview.h"
#import "AppDelegate.h"
#import "loginbtn.h"
#import "Ystudent+CoreDataProperties.h"
@interface loginview (){

    AppDelegate *a;
    NSArray *array01;


}

@end

@implementation loginview

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    a=((AppDelegate *)[UIApplication sharedApplication].delegate);
 NSManagedObjectContext *context01=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    // nsrequest and nsentity
    
    NSFetchRequest *req=[[NSFetchRequest alloc]init];
    
    NSEntityDescription *entity01=[NSEntityDescription entityForName:@"Ystudent" inManagedObjectContext:context01];
    
    [req setEntity:entity01];
    
    NSError *err=nil;
    
    array01=[context01 executeFetchRequest:req error:&err];
    

    
    
    
    
    
    
    
    
    
    
    _array001=[[NSArray alloc]init];
    
//    self.tx1.text=[[_arraylv objectAtIndex:0]valueForKey:@"name"];
//    self.txl2.text=[[_arraylv objectAtIndex:0]valueForKey:@"age"];
//    
//    self.txl3.text=[[_arraylv objectAtIndex:0]valueForKey:@"un"];
//    self.txl4.text=[[_arraylv objectAtIndex:0]valueForKey:@"password"];
//    
//
    
    
    
    
    
    
    self.txt1.text=[[_array001 objectAtIndex:0]valueForKey:@"name"];
    self.txt2.text=[[_array001 objectAtIndex:0]valueForKey:@"age"];
    self.txt3.text=[[_array001 objectAtIndex:0]valueForKey:@"un"];
    self.txt4.text=[[_array001 objectAtIndex:0]valueForKey:@"password"];
    
  
    
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
