//
//  swipx.m
//  asd
//
//  Created by iROID Technologies on 3/8/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "swipx.h"

@interface swipx ()

@end

@implementation swipx

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    
    
    
    
    
}


- (IBAction)rgtac:(id)sender {
    _lblx.text=@"Swiped Right" ;
}


- (IBAction)lftac:(id)sender {
    _lblx.text=@"Swiped Left";
}


- (IBAction)dwnac:(id)sender {
    _lblx.text=@"Swiped Down";
}

- (IBAction)upac:(id)sender {
    _lblx.text=@"Swiped Up";
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

- (IBAction)rgta:(id)sender {
}
@end
