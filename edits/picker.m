
//
//  Pickers.m
//  UICatalog
//
//  Created by zocer on 8/7/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "picker.h"
@interface picker()

{
    UIPickerView * custompicker;
    UIDatePicker * datepicker;
    NSMutableArray * firstarray,* secondarray;
    UILabel * lblcp;
    UILabel * lbldp;
    NSString * strdisplay;
}

@end

@implementation picker



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
 
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    lblcp = [[UILabel alloc]initWithFrame:CGRectMake(10,100,300,20)];
    lblcp.textColor = [UIColor blackColor];
    lblcp.textAlignment = NSTextAlignmentLeft;
    lblcp.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:lblcp];
    
   
    lbldp = [[UILabel alloc]initWithFrame:CGRectMake(20,210,290,20)];
    lbldp.textColor = [UIColor greenColor];
    lbldp.textAlignment = NSTextAlignmentCenter;
    lbldp.font=[UIFont boldSystemFontOfSize:14];
    [self.view addSubview:lbldp];
    
    
    firstarray = [[NSMutableArray alloc]initWithObjects:@"A",@"B",@"C",@"D",nil];
    
    
    secondarray = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",nil];
    
    
    custompicker = [[UIPickerView alloc]initWithFrame:CGRectMake(20,35,300,200)];
    custompicker.backgroundColor = [UIColor clearColor];
    custompicker.delegate = self;
    custompicker.dataSource = self;
    custompicker.showsSelectionIndicator=YES;
    
    [self.view addSubview:custompicker];
    
    
    datepicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(20,240,300,200)];
    datepicker.datePickerMode = UIDatePickerModeDateAndTime;
    datepicker.backgroundColor = [UIColor clearColor];
    [datepicker addTarget:self action:@selector(date) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datepicker];
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component ==0)
        
        return 4;
    else
        return 3;
    
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView==custompicker)
    {
        if(component==0)
        {
            strdisplay=[firstarray objectAtIndex:row];
        }
        else
        {
            strdisplay=[secondarray objectAtIndex:row];
            
           
        }
    }
    return strdisplay;
}










-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    lblcp.text = [NSString stringWithFormat:@"%@ %@",[firstarray objectAtIndex:[custompicker selectedRowInComponent:0]],[secondarray objectAtIndex:[custompicker selectedRowInComponent:1]]];
    

}

















-(void)date
{
    NSDateFormatter * dateformat = [[NSDateFormatter alloc]init];
    [dateformat setDateFormat:@"EE, d LLLL yyyy hh:mm:ss a Z"];
 
    lbldp.text =[NSString stringWithFormat:@"%@",[dateformat stringFromDate:datepicker.date]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
