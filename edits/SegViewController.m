//
//  SegViewController.m
//  asd
//
//  Created by iROID Technologies on 2/23/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "SegViewController.h"

@interface SegViewController ()

@end

@implementation SegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect myFrame = CGRectMake(50, 150, 300, 40);
    NSArray *seg11 = [[NSArray alloc] initWithObjects: nil];
    seg1 = [[UISegmentedControl alloc] initWithItems:seg11];
    seg1.frame = myFrame;
    [seg1 setSelectedSegmentIndex:1];
    [self.view addSubview:seg1];
    
    
    
    
}
- (IBAction)add:(id)sender {

    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myNumber = [f numberFromString:_indx.text];
    int minThreshold = [myNumber intValue];

    
    [self->seg1 insertSegmentWithTitle:_txt.text
                               atIndex:minThreshold
                                       animated:true];
   

}

- (IBAction)del:(id)sender {
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myNumber = [f numberFromString:_indx.text];
    int minThreshold = [myNumber intValue];
    
    [self->seg1 removeSegmentAtIndex:minThreshold animated:true];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  

}


@end
