//
//  ViewController.m
//  FbSDKSample
//
//  Created by Jiyeon Seo on 4/11/18.
//  Copyright © 2018 Jiyeon Seo. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // add "add to cart" button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Add To Cart" forState:UIControlStateNormal];
    [button sizeToFit];
    button.center = CGPointMake(320/2, 60);
    [button addTarget:self action:@selector(buttonPressed:)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)buttonPressed:(UIButton *)button {
    NSLog(@"button pressed");
    [FBSDKAppEvents logEvent:FBSDKAppEventNameAddedToCart
                  valueToSum:54.23
                  parameters:@{ FBSDKAppEventParameterNameCurrency    : @"USD",
                                FBSDKAppEventParameterNameContentType : @"product",
                                FBSDKAppEventParameterNameContent     : @"[{\"id\": \"1234\", \"quantity\": 2, \"item_price\": 5.99}, {\"id\": \"5678\", \"quantity\": 1, \"item_price\": 9.99}]" } ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


