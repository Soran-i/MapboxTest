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
    
    NSURL *url = [NSURL URLWithString:@"mapbox://styles/mapbox/streets-v11"];
    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(40.74699, -73.98742)
                       zoomLevel:9
                        animated:NO];
    [self.view addSubview:mapView];

    mapView.styleURL = [MGLStyle satelliteStreetsStyleURL];
    

    
    // Add a point annotation
    MGLPointAnnotation *annotation = [[MGLPointAnnotation alloc] init];
    annotation.coordinate = CLLocationCoordinate2DMake(40.77014, -73.97480);
    annotation.title = @"Central Park";
    annotation.subtitle = @"The best park in New York City!";
    [mapView addAnnotation:annotation];
    
    // Display map location
    // Allow the map view to display the user's location
    mapView.showsUserLocation = YES;
    
    
}
@end
