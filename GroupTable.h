//
//  GroupTable.h
//  UICatalog
//
//  Created by zocer on 8/22/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupTable : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    
    UILabel * lblname;
    UIWebView * myWebView;
    UILabel * lbl;
    UIButton * btnnext;
    UILabel * lblnulltxtvalue;
    UITableView *tableView;
}

@property(nonatomic,strong)NSString * strCellValue;
@property(nonatomic,strong)NSString * strtxtValue;

@end
