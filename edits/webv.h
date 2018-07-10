//
//  webv.h
//  asd
//
//  Created by iROID Technologies on 3/8/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webv : UIViewController
{
    UIButton * webbtnback;
    UIButton * webbtnreload;
    UIButton * webbtnclose;
    UIButton * webbtnforward;
}
@property (strong, nonatomic) IBOutlet UIButton *srch;
@property (strong, nonatomic) IBOutlet UIButton *go;
@property (strong, nonatomic) IBOutlet UITextField *srchbar;
@property(nonatomic,strong)UIWebView *myWebView;
@end
