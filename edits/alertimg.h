//
//  alertimg.h
//  asd
//
//  Created by iROID Technologies on 3/6/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface alertimg : UIViewController <UIActionSheetDelegate>
{
    IBOutlet UILabel *lblResult;
    IBOutlet UIButton *btnOpenSheet;
    
}
- (IBAction)btnOpenSheet:(id)sender;


@end
