//
//  newViewController.h
//  asd
//
//  Created by iROID Technologies on 2/5/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newViewController : UIViewController
{
UILabel * lbl;
UILabel * lblx;
UILabel * lblxx ;
UIButton * bttn;
UISwitch * SwitchButton;
UISlider * Slider;
}
@property (strong, nonatomic) IBOutlet UIImageView *veww;
@property (strong, nonatomic) IBOutlet UIButton *stop;
@property (strong, nonatomic) IBOutlet UIButton *start;
@property (strong, nonatomic) IBOutlet UILabel *zzx;
@property (strong, nonatomic) IBOutlet UISlider *slider1;
@property (strong, nonatomic) IBOutlet UILabel *label1;
- (IBAction)txtact:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtt;
- (IBAction)nxt:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *bttnq;
@property (strong, nonatomic) IBOutlet UILabel *zxc;
@end
