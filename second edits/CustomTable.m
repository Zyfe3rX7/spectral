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

    Cell * cel;
}
@end

@implementation CustomTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
     
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
        
    tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500) style:UITableViewStylePlain];
    tab.rowHeight=50;
    tab.delegate = self;
    tab.dataSource = self;

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
        cel.lblcell.text=@"C.T";
        cel.lblcell.textColor=[UIColor grayColor];
        cel.lblcell.font=[UIFont boldSystemFontOfSize:20];

        
        [cel.btnnext setTitle:@"NeXt" forState:UIControlStateNormal];
    }
    else if (indexPath.row==1)
     {
       cel.imgcell.image=[UIImage imageNamed:@"2"];
       cel.lblcell.text=@"H.M";
    


     }
        
    else if (indexPath.row==2)
    {
      cel.imgcell.image=[UIImage imageNamed:@"2"];
      cel.lblcell.text=@"C.U";

    }
   else if (indexPath.row==3)
   {
       cel.imgcell.image=[UIImage imageNamed:@"1"];
       cel.lblcell.text=@"A.U";
       

   }
   else if (indexPath.row==4)
   {
     [cel.btnnext setTitle:@"SRCH" forState:UIControlStateNormal];  
   }


    cel.actiondelegate=self;

   
    }
return cel;
}


-(void)push:(NSString*)rowtitle
{
    welcome *w=[[welcome alloc]init];
    w.titlevalue=rowtitle;
    [self.navigationController pushViewController:w animated:YES];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:@"You've selected a row" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];


    [messageAlert show];
    NSLog(@"selected tableview row is %ld",(long)indexPath.row);

    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    tab.hidden=true;
    
    
}

- (IBAction)lftact:(id)sender {
    tab.hidden=false;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
