//
//  SharePlatformView.h
//  iShow
//
//  Created by baboy on 13-7-2.
//  Copyright (c) 2013年 baboy. All rights reserved.
//

#import "ShareUtils.h"
#import "ShareView.h"
#define SHARE_ICON_WIDTH    48
@class SharePlatformView;
@protocol SharePlatformViewDelegate <NSObject>
@optional
- (void)sharePlatformView:(SharePlatformView*)shareView willSelectSharePlatform:(SharePlatform *)platform;
- (void)sharePlatformView:(SharePlatformView*)shareView didSelectedSharePlatform:(SharePlatform *)platform;
@end

@interface SharePlatformView : XUIView
@property (nonatomic, weak) id<SharePlatformViewDelegate> delegate;
@property (nonatomic, assign) BOOL autoShare;
@property (nonatomic, strong) NSString *shareContent;
@property (nonatomic, strong) NSString *shareImagePath;
@property (nonatomic, strong) NSString *shareTitle;
@property (nonatomic, strong) NSString *shareUrl;

+ (id)sharePlatformView;
- (void)show;
@end
