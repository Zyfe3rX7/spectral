//
//  LocationSearchTable.h
//  asd
//
//  Created by iROID Technologies on 3/6/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "mapv.h"

@interface LocationSearchTable : UITableViewController <UISearchResultsUpdating>
@property MKMapView *mapView;

@property id <HandleMapSearch> handleMapSearchDelegate;

@end

