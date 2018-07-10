//
//  mapv.h
//  asd
//
//  Created by iROID Technologies on 3/6/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@protocol HandleMapSearch <NSObject>
- (void)dropPinZoomIn:(MKPlacemark *)placemark;
@end


@interface mapv : UIViewController <CLLocationManagerDelegate, HandleMapSearch, MKMapViewDelegate>
{
    
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@end








