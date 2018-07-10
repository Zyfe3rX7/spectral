//
//  grouptable.h
//  asd
//
//  Created by iROID Technologies on 3/14/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "ViewController.h"

@interface 1grouptable : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    
    UITableView *tableView;
}

@property(nonatomic,strong)NSString * strCellValue;
@property(nonatomic,strong)NSString * strtxtValue;

@end

