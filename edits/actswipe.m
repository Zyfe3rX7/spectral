//
//  actswipe.m
//  asd
//
//  Created by iROID Technologies on 3/12/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "actswipe.h"

@interface actswipe ()

@end

@implementation actswipe



- (void)viewDidLoad {
    [super viewDidLoad];
[self.navigationController setNavigationBarHidden:YES];
_img.frame = CGRectMake(-300, 0, 20, 20);

}

- (IBAction)btnact:(id)sender {
//
//    UIImageView * vew2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"10.jpeg"]];
//    vew2.frame=CGRectMake(130, 150, 100, 100);
//    [self.view addSubview:vew2];
//    [vew2 setImage:[UIImage imageNamed:@"10.jpg"]];
    
    _img.hidden=false;
    [UIView animateWithDuration:1.0
                     animations:^(void) {
                         _img.frame = CGRectMake(0, 0, 200, 500);
                 
                     }];
    
    [UIView animateWithDuration:2.5
                     animations:^(void)
     {
    bttn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn1 setTitle:@"111111" forState:UIControlStateNormal];
    bttn1.frame=CGRectMake(0, 60, 50, 100);
         bttn1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:bttn1];
    
    bttn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn2 setTitle:@"222222" forState:UIControlStateNormal];
    bttn2.frame=CGRectMake(0, 120, 50, 100);
bttn2.backgroundColor = [UIColor redColor];
    [self.view addSubview:bttn2];
    
    bttn3=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn3 setTitle:@"333333" forState:UIControlStateNormal];
    bttn3.frame=CGRectMake(0, 180, 50, 100);
         bttn3.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:bttn3];
    
    bttn4=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn4 setTitle:@"444444" forState:UIControlStateNormal];
    bttn4.frame=CGRectMake(0, 240, 50, 100);
         bttn4.backgroundColor = [UIColor blueColor];
    [self.view addSubview:bttn4];
    
    bttn5=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn5 setTitle:@"555555" forState:UIControlStateNormal];
    bttn5.frame=CGRectMake(0, 300, 50, 100);
         bttn5.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:bttn5];
    
    bttn6=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bttn6 setTitle:@"666666" forState:UIControlStateNormal];
    bttn6.frame=CGRectMake(0, 360, 50, 100);
         bttn6.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:bttn6];
     }];
      self.btn.hidden = true ;

}

- (IBAction)lftact:(id)sender {
    _btn.hidden = false;
    bttn1.hidden=true;
    bttn2.hidden=true;
    bttn3.hidden=true;
    bttn4.hidden=true;
    bttn5.hidden=true;
    bttn6.hidden=true;
    vew2.image = Nil;
    [vew2 setNeedsDisplay];
    vew2.hidden = true;
    [UIView animateWithDuration:1.0
                     animations:^(void) {
                         _img.frame = CGRectMake(-300, 0, 20, 20);
                         
                     }];
    
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


//NSArray * myArray = [NSArray arrayWithObjects:
//                     [UIImage imageNamed:@"10.jpg"],nil];
//[vew2 setAnimationImages:myArray];
//vew2.animationDuration = 5.0;
//vew2.animationRepeatCount = 0;
//[vew2 startAnimating];
//
//
//
//CGRect screenRect = [[UIScreen mainScreen] bounds];
//
//[UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//    vew2.frame = CGRectMake(250,
//                            vew2.frame.origin.y,
//                            vew2.frame.size.width,
//                            vew2.frame.size.height);
//}
//                 completion:^(BOOL finished) {
//
//                     vew2.frame = CGRectMake(250,             vew2.frame.origin.y,
//                                             vew2.frame.size.width, vew2.frame.size.height);
//                 }];


@end
