//
//  MainViewController.m
//  HTML5Canvas
//
//  Created by Stephanie Le on 12/21/15.
//  Copyright © 2015 Stephanie Le. All rights reserved.
//

#import "MainViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
    NSString *htmlFilePath = [[NSBundle mainBundle] pathForResource:@"index.html" ofType:@""];
    NSString *html = [NSString stringWithContentsOfFile:htmlFilePath encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    self.html5Canvas.mediaPlaybackRequiresUserAction = YES;
    self.html5Canvas.scalesPageToFit = YES;

    [self.html5Canvas loadHTMLString:html baseURL:baseURL];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)patternAButtonHit:(id)sender {

    NSString * myStr = [[NSString alloc] initWithFormat:@"imageLoaded(%d)", A_Pattern];
    [self.html5Canvas stringByEvaluatingJavaScriptFromString:myStr];

}

- (IBAction)patternBButtonHit:(id)sender {
    NSString * myStr = [[NSString alloc] initWithFormat:@"imageLoaded(%d)", B_Pattern];
    [self.html5Canvas stringByEvaluatingJavaScriptFromString:myStr];

}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {

    return YES;
}
@end
