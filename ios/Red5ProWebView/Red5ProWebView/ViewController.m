//
//  ViewController.m
//  Red5ProWebView
//
//  Created by Todd Anderson on 11/21/17.
//  Copyright © 2017 Red5Pro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {

    WKWebView *_webView;

}
@end

@implementation ViewController

- (void)setupWebView {
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    WKWebViewConfiguration *configuration = [WKWebViewConfiguration new];
    
    _webView = [[WKWebView alloc] initWithFrame:frame configuration:configuration];
    [_webView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_webView];
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setupWebView];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // load subscriber from local resource.
    NSURL *subindex = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index-subscriber" ofType:@"html"]];
    [_webView loadRequest:[NSURLRequest requestWithURL:subindex]];
    
    // OR //
    
    // load publisher form local resource.
//    NSURL *pubindex = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index-publisher" ofType:@"html"]];
//    [_webView loadRequest:[NSURLRequest requestWithURL:pubindex]];

    // OR //
    
    // load subscriber from remote location.
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://webrtc.red5.org/live/ios-index-subscriber.html"]]];
    
    // OR //
    
    // load publisher from remote location.
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://webrtc.red5.org/live/ios-index-publisher.html"]]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
