

#import "update.h"

@interface update ()

@end

@implementation update

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.uptxt1.text=[[_updatearray objectAtIndex:0]valueForKey:@"name"];
    
    self.uptxt2.text=[[_updatearray objectAtIndex:0]valueForKey:@"age"];
    
    self.uptxt3.text=[[_updatearray objectAtIndex:0]valueForKey:@"un"];
    
    self.uptxt4.text=[[_updatearray objectAtIndex:0]valueForKey:@"password"];
    
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

- (IBAction)uptxt1:(id)sender {
}
- (IBAction)uptxt3:(id)sender {
}
@end
