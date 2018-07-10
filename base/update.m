//
//  update.m
//  databasepractise
//
//  Created by Hyma on 14/07/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import "update.h"
#import "AppDelegate.h"

@interface update ()

@end

@implementation update

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tff1.text=[[_array01 objectAtIndex:0]valueForKey:@"name"];
    _tff2.text=[[_array01 objectAtIndex:0]valueForKey:@"username"];
    
    _tff3.text=[[_array01 objectAtIndex:0]valueForKey:@"password"];
    
    _tff4.text=[[_array01 objectAtIndex:0]valueForKey:@"age"];
    
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

@end
