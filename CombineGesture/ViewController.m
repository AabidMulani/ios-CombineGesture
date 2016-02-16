//
//  ViewController.m
//  CombineGesture
//
//  Created by Magneto on 8/27/13.
//  Copyright (c) 2013 Magneto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblTextChange;

-(IBAction)tapGesture:(UITapGestureRecognizer *)tapRecognizer
{
    lblTextChange.text=@"Tap Gesture Invoked";
}

-(IBAction)pinchGesture:(UIPinchGestureRecognizer *)pinchRecognizer
{

    pinchRecognizer.view.transform=CGAffineTransformScale(pinchRecognizer.view.transform, pinchRecognizer.scale, pinchRecognizer.scale);


    lblTextChange.text=@"Pinch Gesture Invoked";
}

-(IBAction)longPressGesture:(UILongPressGestureRecognizer *)longRecognizer
{
    lblTextChange.text=@"Long Press Gesture Invoked";
}

-(IBAction) rotateGesture: (UIRotationGestureRecognizer *) rotateRecognizer
{
    rotateRecognizer.view.transform=CGAffineTransformRotate(rotateRecognizer.view.transform, rotateRecognizer.rotation);
    rotateRecognizer.rotation=0;
    lblTextChange.text=@"Rotation Gesture Invoked";
}
-(IBAction) panGesture:(UIPanGestureRecognizer *) recognizer
{
    CGPoint translation=[recognizer translationInView:self.view];
    NSLog(@"%f %f",translation.x,translation.y);
    recognizer.view.center=CGPointMake(recognizer.view.center.x+translation.x, recognizer.view.center.y+translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    lblTextChange.text=@"Pan Gesture Invoked";
}
- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender {
    UIImageView *img=(UIImageView *)sender.view;
    img.image=[UIImage imageNamed:@"cat.png"];
    lblTextChange.text=@"Swipe Gesture Invoked";
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
