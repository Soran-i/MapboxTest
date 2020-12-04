//
//  ViewController.m
//  MapBoxTest
//
//  Created by Soran Ismail on 2020-10-28.
//

#import "ViewController.h"

@import Mapbox;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(40.74699, -73.98742)
                       zoomLevel:9
                        animated:NO];
    [self.view addSubview:mapView];

    mapView.styleURL = [MGLStyle satelliteStreetsStyleURL];
    
    
}
@end
