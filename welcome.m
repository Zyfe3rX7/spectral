//
//  welcome.m
//  UICatalog
//
//  Created by iROID Technologies on 11/18/15.
//  Copyright (c) 2015 appzoc. All rights reserved.
//

#import "welcome.h"

@interface welcome ()

@end

@implementation welcome

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    UILabel *lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(5, 100, 250, 50);
    lbl.text=self.titlevalue;
    //lbl.textColor=[UIColor blackColor];
    //lbl.text=@"WELCOME";
    lbl.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:lbl];
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
