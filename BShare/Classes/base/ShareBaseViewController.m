//
//  AppBaseViewController.m
//  iShow
//
//  Created by baboy on 13-5-5.
//  Copyright (c) 2013年 baboy. All rights reserved.
//

#import "ShareBaseViewController.h"


@interface ShareBaseViewController ()

@end

@implementation ShareBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (void)shareWithTitle:(NSString *)title withContent:(NSString *)content withUrl:(NSString *)url withImagePath:(NSString *)imagePath{
    SharePlatformView *sharePlatformView = [SharePlatformView sharePlatformView];
    [sharePlatformView setAutoShare:YES];
    [sharePlatformView setShareContent:content];
    [sharePlatformView setShareImagePath:imagePath];
    [sharePlatformView setShareUrl:url];
    [sharePlatformView setShareTitle:title];
    [sharePlatformView show];

}
- (void)shareWithContent:(NSString *)content withUrl:(NSString *)url withImagePath:(NSString *)imagePath{
    [self shareWithTitle:nil withContent:content withUrl:url withImagePath:imagePath];
}
- (void)shareWithContent:(NSString *)content withImagePath:(NSString *)imagePath{
    [self shareWithTitle:nil withContent:content withUrl:nil withImagePath:imagePath];
}

- (void)commentWithPlaceholders:(NSString *)placeholders {
    ShareView *shareView = [ShareView shareView];
    [shareView setTitle:NSLocalizedString(@"写评论", nil)];
    [shareView setDelegate:self];
    [shareView setShowCountLabel:YES];
    [shareView setMaxTextLength:MaxCommentTextLength];
    [shareView setShareViewType:ShareViewTypeComment];
    [shareView show];
}
@end
