//
//  TableViewArray.h
//  UICatalog
//
//  Created by zocer on 8/18/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewArray : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UILabel * lbl;
    UIButton * btnnext;
}
@property(nonatomic,strong)UITableView * tableView;
@property (nonatomic,strong) NSArray * arrayItems;

@end
