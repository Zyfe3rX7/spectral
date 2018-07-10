//
//  tblvie.h
//  asd
//
//  Created by iROID Technologies on 3/14/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "ViewController.h"

@interface tblvie : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    
}
@property(nonatomic,strong)UITableView * tableView;
@property (nonatomic,strong) NSArray * arrayItems;

@end

