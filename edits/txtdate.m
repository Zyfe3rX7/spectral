//
//  txtdate.m
//  asd
//
//  Created by iROID Technologies on 2/26/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "txtdate.h"

@interface txtdate ()
{
    UIPickerView * custompicker;
    UIDatePicker * datepicker;
    NSMutableArray * firstarray,* secondarray;
    UILabel * lbldp;
    NSString * strdisplay;
}
@end

@implementation txtdate

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    lbldp = [[UILabel alloc]initWithFrame:CGRectMake(20,210,290,20)];
    lbldp.textColor = [UIColor greenColor];
    lbldp.textAlignment = NSTextAlignmentCenter;
    lbldp.font=[UIFont boldSystemFontOfSize:14];
   

    datepicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(20,240,300,200)];
    datepicker.datePickerMode = UIDatePickerModeDateAndTime;
    datepicker.backgroundColor = [UIColor clearColor];
    [datepicker addTarget:self action:@selector(date) forControlEvents:UIControlEventValueChanged];

    

}

-(void)date
{
    NSDateFormatter * dateformat = [[NSDateFormatter alloc]init];
    [dateformat setDateFormat:@"EE, d LLLL yyyy hh:mm:ss a Z"];
    
    lbldp.text =[NSString stringWithFormat:@"%@",[dateformat stringFromDate:datepicker.date]];
        _txtfield.text=lbldp.text;
        [datepicker removeFromSuperview];
        [lbldp removeFromSuperview];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)txtact:(id)sender {
     [self.view addSubview:lbldp];
     [self.view addSubview:datepicker];
}






- (IBAction)datee:(id)sender {
    
    [super viewDidLoad];
    lbldp = [[UILabel alloc]initWithFrame:CGRectMake(20,210,290,20)];
    lbldp.textColor = [UIColor greenColor];
    lbldp.textAlignment = NSTextAlignmentCenter;
    lbldp.font=[UIFont boldSystemFontOfSize:14];
    
    
    datepicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(20,240,300,200)];
    datepicker.datePickerMode = UIDatePickerModeDateAndTime;
    datepicker.backgroundColor = [UIColor clearColor];
    [datepicker addTarget:self action:@selector(date) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:lbldp];
    [self.view addSubview:datepicker];
}





@end
