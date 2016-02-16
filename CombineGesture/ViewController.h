//
//  ViewController.h
//  CombineGesture
//
//  Created by Magneto on 8/27/13.
//  Copyright (c) 2013 Magneto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblTextChange;


-(IBAction) tapGesture: (UITapGestureRecognizer *) tapRecognizer;
-(IBAction) pinchGesture: (UIPinchGestureRecognizer *) pinchRecognizer;
-(IBAction) longPressGesture: (UILongPressGestureRecognizer *) longRecognizer;
-(IBAction) rotateGesture: (UIRotationGestureRecognizer *) rotateRecognizer;
-(IBAction) panGesture:(UIPanGestureRecognizer *) recognizer;
@end
