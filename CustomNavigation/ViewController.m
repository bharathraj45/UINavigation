//
//  ViewController.m
//  CustomNavigation
//
//  Created by Bharath Raj Venkatesh on 07/04/15.
//  Copyright (c) 2015 techolution. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.navigationItem.title = [NSString stringWithFormat:@"Hello"];
    //self.navigationController.title = [NSString stringWithFormat:@"data fsdf fsdf fsdf"];
    UISwipeGestureRecognizer *swipeGestureRecognizerLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture:)];
    swipeGestureRecognizerLeft.numberOfTouchesRequired = 1;
    swipeGestureRecognizerLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeGestureRecognizerLeft.delegate = (id)self;
    [self.view addGestureRecognizer:swipeGestureRecognizerLeft];
    
//    UISwipeGestureRecognizer  *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleleftSwipe:)];
//    swipeLeft.numberOfTouchesRequired = 1;//give required num of touches here ..
//    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
//    swipeLeft.delegate = (id)self;
//    [self. view addGestureRecognizer:swipeLeft];
    
//    UISwipeGestureRecognizer  *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handlerightSwipe:)];
//    swipeRight.numberOfTouchesRequired = 1;//give required num of touches here ..
//    swipeRight.delegate = (id)self;
//    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
//    [self.view addGestureRecognizer:swipeRight];
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithTitle:@"Right Button" style:UIBarButtonItemStylePlain target:self action:@selector(btnMethodRightClik)];
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
    
}

-(void)btnMethodRightClik{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //UIViewController *sbvc = [UIViewController alloc]
    UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"second"];
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
            UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"second"];
            //[self.navigationController pushViewController:sbvc animated:YES];
            //[self presentViewController:sbvc animated:YES completion:nil];
            [self.navigationController pushViewController:sbvc animated:YES];
            [self.navigationController popToViewController:sbvc animated:YES];
        }
    }
}
//-(void)handleleftSwipe:(UISwipeGestureRecognizer *)sender{
//    //Do ur code for Push/pop..
//    NSUInteger touches = sender.numberOfTouches;
//    if(touches == 2){
//        if(rsender.state == UIGestureRecognizerStateEnded){
//            SecondViewController *sbvc = [[SecondViewController alloc] init];
//            [self presentViewController:sbvc animated:YES completion:nil];
//        }
//    }
//}

//-(void)handlerightSwipe:(UISwipeGestureRecognizer *)sender{
//    //Do ur code for Push/pop..
//    NSUInteger touches = sender.numberOfTouches;
//    if(touches == 1){
//        if(sender.state == UIGestureRecognizerStateEnded){
//            SecondViewController *sbvc = [[SecondViewController alloc] init];
//            [self presentViewController:sbvc animated:YES completion:nil];
//        }
//    }
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
