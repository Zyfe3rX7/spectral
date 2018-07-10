//
//  addnewview.m
//  asd
//
//  Created by iROID Technologies on 3/12/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "addnewview.h"

@interface addnewview ()

@end

@implementation addnewview

- (void)viewDidLoad {
    [super viewDidLoad];
    _scndvie.hidden=true;

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnact:(id)sender {
    _scndvie.hidden=false;
    _btn.hidden=true;
    _scndvie.frame = CGRectMake(_scndvie.frame.origin.x,_scndvie.frame.origin.y,
                                _scndvie.frame.size.width, _scndvie.frame.size.height);
    [UIView animateWithDuration:1.0
                     animations:^(void) {
                         _scndvie.frame = CGRectMake(0, 0, 160, 500);
              _scndvie.backgroundColor = [UIColor orangeColor];
                         
                     }];
}

- (IBAction)lftact:(id)sender {
    [UIView animateWithDuration:2.0
                     animations:^(void) {
                         _scndvie.frame = CGRectMake(-1100,0,100,500);
//                         _scndvie.hidden=true;
                         
                     }];
    
    _btn.hidden=false;
    
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
