//
//  InputAccessoryHidingViewController.m
//  UIWebViewInputAccessoryHidingDemo
//
//  Created by dhf on 14-7-14.
//  Copyright (c) 2014年 dhf. All rights reserved.
//

#import "InputAccessoryHidingViewController.h"
#import "UIWebView+InputAccessoryHiding.h"

@interface InputAccessoryHidingViewController ()

@end

@implementation InputAccessoryHidingViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.webView.hackishlyHidesInputAccessoryView = YES;
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSURL *bundleURL = [bundle bundleURL];
    NSError *error = nil;
    NSString *htmlPath = [bundle pathForResource:@"index" ofType:@"html"];
    NSString *html = [[NSString alloc] initWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        [self.webView loadHTMLString:html baseURL:bundleURL];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
