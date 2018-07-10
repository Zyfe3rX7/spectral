

#import "loginbtn.h"
#import "AppDelegate.h"
#import "lv.h"
#import "Ystudent+CoreDataProperties.h"
#import "sort.h"
@interface loginbtn (){

    AppDelegate *a;
    NSArray *arraylb;
    
    
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
- (IBAction)LOGINBTN:(id)sender {//creating an object of appdelegate
    
    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
    
    
    //xcode 8.2.1 specification code
    
    NSManagedObjectContext *context=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    
    //creating feathch request and entity
    
    
    NSFetchRequest *req=[[NSFetchRequest alloc]init];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Ystudent" inManagedObjectContext:context];
    
    [req setEntity:entity];
    // setting predicate
    
    
    NSPredicate *pre=[NSPredicate predicateWithFormat:@"un like %@ and password like %@",_txtl1.text,_txtl2.text];
    
    [req setPredicate:pre];
    
    
        //creating  error and array to store
    NSError *err=nil;
    
    arraylb=[[NSArray alloc]init];
    arraylb=[context executeFetchRequest:req error:&err];
    
    
    
    if (arraylb.count!=0)
    {
        
        lv *lvi=[[lv alloc]init];
        
        //passing value
        lvi.array001=arraylb;
        
        
        //lv.str1=self.tf1.text;
        //lv.str2=self.tf2.text;
        [self.navigationController pushViewController:lvi animated:YES];
        
        
    }
    else
    {
        
        self.lb.text=@"Invalid username & password";
        
    }
    
    
    
    
    
    
    
   
    
    
    
    
}
- (IBAction)SORTACTION:(id)sender {
    
    sort *st=[[sort alloc]init];
    [self.navigationController pushViewController:st animated:YES];
    
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
