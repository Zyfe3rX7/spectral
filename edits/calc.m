//
//  calc.m
//  asd
//
//  Created by iROID Technologies on 22/2/18.
//  Copyright (c) 2018 iROID Technologies. All rights reserved.
//

#import "calc.h"

@interface calc ()

@end

@implementation calc
@synthesize display;

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)onkeyaction:(id)sender
{
    

self.display.text=@"";
    
    
}



- (IBAction)clearaction:(id)sender {
    
    
    self.display.text=@"";
}


- (IBAction)oneact:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@1",self.display.text];
}

- (IBAction)twoact:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@2",self.display.text];
  
}
- (IBAction)threeactions:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@3",self.display.text];
 
}


- (IBAction)fouract:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@4",self.display.text];
    
}
- (IBAction)fiveact:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@5",self.display.text];
    
}
- (IBAction)sixact:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@6",self.display.text];
    
}
- (IBAction)sevact:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@7",self.display.text];
    
}
- (IBAction)eightact:(id)sender {
    
    self.display.text=[NSString stringWithFormat:@"%@8",self.display.text];
    
}
- (IBAction)nineact:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@9",self.display.text];
    
}
- (IBAction)deciaction:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@.",self.display.text];
    
}
- (IBAction)zeroaction:(id)sender {
    self.display.text=[NSString stringWithFormat:@"%@0",self.display.text];
    
}
- (IBAction)eqlaction:(id)sender {
    NSString *value=self.display.text;
    switch (operations) {
        case plus:
            self.display.text=[NSString stringWithFormat:@"%f",[value floatValue]+[storage floatValue] ];
            break;
        case division:
            self.display.text=[NSString stringWithFormat:@"%f",[storage floatValue] /[value floatValue] ];
            break;
        case multiply:
            self.display.text=[NSString stringWithFormat:@"%f",[storage floatValue]*[value floatValue] ];
            break;
        case minus:
            self.display.text=[NSString stringWithFormat:@"%f",[storage floatValue]-[value floatValue] ];
            break;
        default:
            break;
    }
}
- (IBAction)delaction:(id)sender {
    if(![display.text isEqualToString:@""])
    {
    display.text=[display.text substringToIndex:(display.text.length-1) ];
    }
}
- (IBAction)divaction:(id)sender {
    operations=division;
    storage=self.display.text;
    self.display.text=@"";
    
    }
- (IBAction)mulaction:(id)sender {
    operations=multiply;
    storage=self.display.text;
    self.display.text=@"";
}
- (IBAction)addaction:(id)sender {
    operations=plus;
    storage=self.display.text;
    self.display.text=@"";
    
    }
- (IBAction)subaction:(id)sender {
    operations=minus;
    storage=self.display.text;
    self.display.text=@"";
}
@end
