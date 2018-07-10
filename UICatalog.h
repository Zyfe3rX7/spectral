//
//  UICatalog.h
//  UICatalog
//
//  Created by appzoc on 09/02/15.
//  Copyright (c) 2015 appzoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICatalog : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UIButton * btnnext;
}
@property(nonatomic,strong)UITableView * tableView;
@property (nonatomic,strong) NSArray * arrayItems;

@end
