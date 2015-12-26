//
//  MainViewController.h
//  HTML5Canvas
//
//  Created by Stephanie Le on 12/21/15.
//  Copyright © 2015 Stephanie Le. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController<UIWebViewDelegate>

enum Pattern {
    A_Pattern = 0,
    B_Pattern
};

@property (weak, nonatomic) IBOutlet UIWebView *html5Canvas;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIButton *patternAButton;
@property (weak, nonatomic) IBOutlet UIButton *patternBButton;

- (IBAction)patternAButtonHit:(id)sender;
- (IBAction)patternBButtonHit:(id)sender;

@end

