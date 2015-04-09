//
//  SecondViewController.m
//  CustomNavigation
//
//  Created by Bharath Raj Venkatesh on 07/04/15.
//  Copyright (c) 2015 techolution. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

-(void) viewDidLoad{
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *swipeGestureRecognizerLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture:)];
    swipeGestureRecognizerLeft.numberOfTouchesRequired = 1;
    swipeGestureRecognizerLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeGestureRecognizerLeft.delegate = (id)self;
    [self.view addGestureRecognizer:swipeGestureRecognizerLeft];
    
    
        UISwipeGestureRecognizer  *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handlerightSwipe:)];
        swipeRight.numberOfTouchesRequired = 1;//give required num of touches here ..
        swipeRight.delegate = (id)self;
        swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
        [self.view addGestureRecognizer:swipeRight];
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithTitle:@"Right" style:UIBarButtonItemStylePlain target:self action:@selector(btnMethodRightClik)];
    self.navigationItem.rightBarButtonItem = rightBarButton;
}

-(void)didReceiveMemoryWarning{
    
}


-(void)btnMethodRightClik{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //UIViewController *sbvc = [UIViewController alloc]
    UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"third"];
    //[self.navigationController pushViewController:sbvc animated:YES];
    //[self presentViewController:sbvc animated:YES completion:nil];
    [self.navigationController pushViewController:sbvc animated:YES];
}
-(void)handleSwipeGesture:(UIGestureRecognizer *) sender{
    NSUInteger touches = sender.numberOfTouches;
    if(touches == 1){
        if(sender.state == UIGestureRecognizerStateEnded){
            
            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            //UIViewController *sbvc = [UIViewController alloc]
            UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"third"];
            //[self.navigationController pushViewController:sbvc animated:YES];
            //[self presentViewController:sbvc animated:YES completion:nil];
            [self.navigationController pushViewController:sbvc animated:YES];
        }
    }
}

-(void)handlerightSwipe:(UISwipeGestureRecognizer *)sender{
    //Do ur code for Push/pop..
    NSUInteger touches = sender.numberOfTouches;
    if(touches == 1){
        if(sender.state == UIGestureRecognizerStateEnded){
            [self.navigationController popToRootViewControllerAnimated:YES];
//            [self.navigationController popViewControllerAnimated:YES];
            //[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
            //[self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
            //[self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
            //[self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
//            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//            UIViewController *sbvc = [sb instantiateInitialViewController];
//            [self.navigationController pushViewController:sbvc animated:YES];
//            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"your storyboard" bundle:nil];
//            UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"Your Storyboard's identifier that you want to push"];
//            [[self navigationController] pushViewController:viewController animated:YES];
////            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
////            //UIViewController *sbvc = [UIViewController alloc]
////            UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"one"];
////            //[self.navigationController pushViewController:sbvc animated:YES];
////            //[self presentViewController:sbvc animated:YES completion:nil];
////            [self.navigationController pushViewController:sbvc animated:YES];
////            [self.navigationController removeFromParentViewController];
////            [self dismissViewControllerAnimated:YES completion:nil];
////            SecondViewController *sbvc = [[SecondViewController alloc] init];
////            [self presentViewController:sbvc animated:YES completion:nil];
        }
    }
}


@end
