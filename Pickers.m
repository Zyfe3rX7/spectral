//
//  Pickers.m
//  UICatalog
//
//  Created by zocer on 8/7/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "Pickers.h"
#import "ImageAnimation.h"

@interface Pickers ()

{
    UIPickerView * custompicker;
    UIDatePicker * datepicker;
    NSMutableArray * firstarray,* secondarray;
    UILabel * lblcp;
    UILabel * lbldp;
    NSString * strdisplay;
}

@end

@implementation Pickers



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(0, 5e0, 200, 50);
    lbl.text=@"CUSTOM PICKER & DATE PICKER";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(260, 10, 60, 30);
    [self.view addSubview:btnnext];
    
    
    //Label for custom picker
    lblcp = [[UILabel alloc]initWithFrame:CGRectMake(0,200,300,120)];
    lblcp.textColor = [UIColor blackColor];
    lblcp.textAlignment = NSTextAlignmentLeft;
    lblcp.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:lblcp];
    
    //Label for date picker
    lbldp = [[UILabel alloc]initWithFrame:CGRectMake(0,200,250,20)];
    lbldp.textColor = [UIColor blackColor];
    lbldp.textAlignment = NSTextAlignmentLeft;
    lbldp.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:lbldp];
    
    //To set the values in first component
    firstarray = [[NSMutableArray alloc]initWithObjects:@"Helo",@"Cello",@"Wonder",@"Knok",nil];
    
    //To set the values in second component
    secondarray = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",nil];
    
    //Custom Picker View
    custompicker = [[UIPickerView alloc]initWithFrame:CGRectMake(0,135,300,20)];
    custompicker.backgroundColor = [UIColor clearColor];
    custompicker.delegate = self;
    custompicker.dataSource = self;
    custompicker.showsSelectionIndicator=YES;
    [self.view addSubview:custompicker];
    
    //Date Picker View
    datepicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,435,100,20)];
    datepicker.datePickerMode = UIDatePickerModeDateAndTime;
    datepicker.backgroundColor = [UIColor clearColor];
    [datepicker addTarget:self action:@selector(date) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datepicker];
}

//Method to specifying the number of components in Picker(2-Columns)
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
    
}

//Method to specifying the number of rows in Picker(rows-3,4)
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component ==0)
        
        return 4;
    else
        return 3;
    
}

//To set the Picker Row Title
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
            
                         //OR
            
            //strdisplay=[[NSNumber numberWithInt:row]stringValue];
        }
    }
    return strdisplay;
}

//To set the Picker Action(To set the label text)
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    lblcp.text = [NSString stringWithFormat:@"%@ %@",[firstarray objectAtIndex:[custompicker selectedRowInComponent:0]],[secondarray objectAtIndex:[custompicker selectedRowInComponent:1]]];
    
                                //OR
    
    //    lblcp.text = [NSString stringWithFormat:@"%@ %d",[firstarray objectAtIndex:[custompicker selectedRowInComponent:0]],[custompicker selectedRowInComponent:1]];
}

//Method for showing the date in label(Showing the date)
-(void)date
{
    NSDateFormatter * dateformat = [[NSDateFormatter alloc]init];
    [dateformat setDateFormat:@"EE, d LLLL yyyy hh:mm:ss a Z"];
    //dateformat.dateStyle=NSDateFormatterFullStyle;
    lbldp.text =[NSString stringWithFormat:@"%@",[dateformat stringFromDate:datepicker.date]];
}

-(IBAction)next:(id)sender
{
    ImageAnimation * i=[[ImageAnimation alloc]init];
    [self.navigationController pushViewController:i animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
