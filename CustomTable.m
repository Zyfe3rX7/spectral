//
//  CustomTable.m
//  UICatalog
//
//  Created by zocer on 8/21/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "CustomTable.h"
#import "Cell.h"
#import "welcome.h"


@interface CustomTable ()
{
    UITableView * tab;
    NSArray * array;
//    NSString * strcell0;
//    NSString * strcell1;
//    NSString * strcell2;
//    NSString * strcell3;
    Cell * cel;
}
@end

@implementation CustomTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
        
    tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500) style:UITableViewStylePlain];
    tab.rowHeight=50;
    tab.delegate = self;
    tab.dataSource = self;
    //cel.actiondelegate=self;
        [self.view addSubview:tab];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"cells";
    cel = (Cell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cel == nil)
    {
       array=[[NSBundle mainBundle]loadNibNamed:@"Cell" owner:self options:nil];
        
    if (indexPath.row==0)
        {
            cel=[array objectAtIndex:0];
        }
        else if (indexPath.row==1)
        {
            cel=[array objectAtIndex:1];
                    }
        else if (indexPath.row==2)
        {
            cel=[array objectAtIndex:2];
            
        }
        else if (indexPath.row==3)
        {
            cel=[array objectAtIndex:3];
            
        }
        
        else if (indexPath.row==4)
        {
            cel=[array objectAtIndex:4];
            
        }
    
    
    if (indexPath.row==0)
    {
        cel.lblcell.text=@"CUSTOM TABLE";
        cel.lblcell.textColor=[UIColor grayColor];
        cel.lblcell.font=[UIFont boldSystemFontOfSize:20];
        
        //strcell0=cel.lblcell.text;
        
        [cel.btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    }
    else if (indexPath.row==1)
     {
       cel.imgcell.image=[UIImage imageNamed:@"tick..jpg"];
       cel.lblcell.text=@"Home";
    
       //strcell1=cel.lblcell.text;

     }
        
    } else if (indexPath.row==2)
    {
      cel.imgcell.image=[UIImage imageNamed:@"tick..jpg"];
      cel.lblcell.text=@"Contact Us";
      
      //strcell2=cel.lblcell.text;
    }
   else if (indexPath.row==3)
   {
       cel.imgcell.image=[UIImage imageNamed:@"tick..jpg"];
       cel.lblcell.text=@"About Us";
       
       //strcell3=cel.lblcell.text;
   }
   else if (indexPath.row==4)
   {
     [cel.btnnext setTitle:@"SEARCH" forState:UIControlStateNormal];  
   }


    cel.actiondelegate=self;

//cel.ca=self;
    

   
return cel;
}

-(void)push:(NSString*)rowtitle
{
    welcome *w=[[welcome alloc]init];
    w.titlevalue=rowtitle;
    [self.navigationController pushViewController:w animated:YES];
}


//-(void)next:(NSString *)strnextvalue
//{
//    GroupTable * gt=[[GroupTable alloc]init];
//    gt.strCellValue=strnextvalue;
//    [self.navigationController pushViewController:gt animated:YES];
//}

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    
//    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Custom Table" message:@"Button pressed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    [alert show];

    
    
    
    
//    GroupTable * gt=[[GroupTable alloc]init];
//    
//    if (indexPath.row==0)
//    {
//        gt.strCellValue=strcell0;
//    }
//    else if (indexPath.row==1)
//    {
//        gt.strCellValue=strcell1;
//    }
//    else if (indexPath.row==2)
//    {
//        gt.strCellValue=strcell2;
//    }
//    else if (indexPath.row==3)
//    {
//        gt.strCellValue=strcell3;
//    }
//    
//    else if (indexPath.row==4)
//    {
//        gt.strtxtValue=cel.txtcell.text;
//    }
//    
//    [self.navigationController pushViewController:gt animated:YES];
//}

//-(void)search:(NSString *)strsearchvalue
//{
//    GroupTable * gt=[[GroupTable alloc]init];
//    
//    gt.strtxtValue=strsearchvalue;
//    
//    [self.navigationController pushViewController:gt animated:NO];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
