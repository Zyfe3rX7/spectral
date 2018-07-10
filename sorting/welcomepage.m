

#import "welcomepage.h"
#import "AppDelegate.h"
#import "Ystudent+CoreDataProperties.h"
#import "registerview.h"
#import "loginbtn.h"
@interface welcomepage ()
{
    AppDelegate *a;
    NSManagedObjectContext *context01;
    
}

@end

@implementation welcomepage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // create an object of appdelegate.
        //xcode 8.21 specification
    
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)LOGIN:(id)sender {
    
    loginbtn *lb=[[loginbtn alloc]init];
    [self.navigationController pushViewController:lb animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)REGISTER:(id)sender {
    
    a=(AppDelegate *)[UIApplication sharedApplication].delegate;
    

    
    if (_txt1.text.length && _txt2.text.length && _txt3.text.length && _txt4.text.length != 0) {

        
        NSManagedObjectContext *context1=((AppDelegate *)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
        
        Ystudent *ss=[NSEntityDescription insertNewObjectForEntityForName:@"Ystudent" inManagedObjectContext:context1];
        
        ss.name=[NSString stringWithFormat:@"%@",_txt1.text];
        
        ss.age=[NSString stringWithFormat:@"%@",_txt2.text];
        ss.un=[NSString stringWithFormat:@"%@",_txt3.text];
        
        ss.password=[NSString stringWithFormat:@"%@",_txt4.text];
        
        [a saveContext];

        
        
        
        UIAlertView *al=[[UIAlertView alloc]initWithTitle:@"THANK YOU" message:@"DATA SUCESSFULLY SAVED. YOU CAN LOGIN NOW WITH YOUR PASSWORD AND NAME" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [al show];
        
        _txt1.text=@"";
        _txt2.text=@"";
        _txt3.text=@"";
        _txt4.text=@"";
        
        
 
        
        
        
        registerview *reg=[[registerview alloc]init];
     
        [self.navigationController pushViewController:reg animated:YES];
        
        
       
        

    }
    else
    {
    UIAlertView *al2=[[UIAlertView alloc]initWithTitle:@"WARRNING" message:@"PLEASE FILL THE DATA COMPLETELY" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [al2 show];
    
    }
    
}
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    // Prevent crashing undo bug – see note below.
//    if(range.length + range.location > textField.text.length)
//    {
//        return NO;
//    }
//    
//    NSUInteger newLength = [textField.text length] + [string length] - range.length;
//    return newLength <= 15;
//}/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
