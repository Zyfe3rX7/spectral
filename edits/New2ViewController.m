//
//  New2ViewController.m
//  asd
//
//  Created by iROID Technologies on 2/8/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "New2ViewController.h"

@interface New2ViewController ()

@end

@implementation New2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];

    UIImageView *vie=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"hi.png"]];
    vie.frame=CGRectMake(50, 50, 100, 100);
    [self.view addSubview:vie];
    [vie setImage:[UIImage imageNamed:@"hi.png"]];

    UIImageView * vew1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img1.jpeg"]];
    vew1.frame=CGRectMake(100, 100, 100, 100);
    [self.view addSubview:vew1];
    [vew1 setImage:[UIImage imageNamed:@"img1.jpg"]];
    
    UIImageView * vew2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img2.jpeg"]];
    vew2.frame=CGRectMake(130, 150, 100, 100);
    [self.view addSubview:vew2];
    [vew2 setImage:[UIImage imageNamed:@"img2.jpg"]];
    
    UIPageControl * PageControl = [[UIPageControl alloc] init];
    PageControl.frame = CGRectMake(120,100,100,50);
    PageControl.backgroundColor=[UIColor redColor];
    PageControl.numberOfPages = 5;
    PageControl.currentPage = 0;
    [self.view addSubview:PageControl];

    
    
    UIActivityIndicatorView * actind1 = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    actind1.center = CGPointMake(127, 611);
    [actind1 startAnimating];
    [self.view addSubview:actind1];
    
    [_actind startAnimating];
    
    
  
    UIProgressView * pr = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleBar];
    pr.backgroundColor=[UIColor greenColor];
    pr.frame = CGRectMake(120,400,100,50);
    [self.view addSubview:pr];
    
    [_p setProgress:1 animated:YES];
    _p.progress=1;
    
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect myFrame = CGRectMake(10, 150, 300, 40);
    NSArray *seg11 = [[NSArray alloc] initWithObjects: @"Red",
                           @"Blue", @"Green", @"Yellow", nil];
    self->seg1 = [[UISegmentedControl alloc] initWithItems:seg11];
    self->seg1.frame = myFrame;
    //[self->seg1 removeSegmentAtIndex:2
      //                                   animated:true];
    //[self->seg1 insertSegmentWithTitle:@"Brown"
      //                                      atIndex:3
        //                                   animated:true];
    [self->seg1 setSelectedSegmentIndex:1];
    [self.view addSubview:self->seg1];
    
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

@end
