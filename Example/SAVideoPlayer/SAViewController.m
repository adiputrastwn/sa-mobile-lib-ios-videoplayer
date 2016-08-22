//
//  SAViewController.m
//  SAVideoPlayer
//
//  Created by Gabriel Coman on 03/08/2016.
//  Copyright (c) 2016 Gabriel Coman. All rights reserved.
//

#import "SAViewController.h"
#import "SAVideoPlayer.h"
#import "SAFileDownloader.h"
#import "SAUtils.h"

@interface SAViewController () <NSURLConnectionDataDelegate>
@property (nonatomic, strong) SAVideoPlayer *player;
@property (nonatomic, strong) NSString *fpath;
@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _player = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 60, 220, 140)];
    [_player showSmallClickButton];
    [_player setClickHandler:^{
        NSLog(@"Player clicked");
    }];
    [_player setEventHandler:^(SAVideoPlayerEvent event) {
        switch (event) {
            case Video_Start: {
                NSLog(@"Video start");
                break;
            }
            case Video_1_4: {
                NSLog(@"Video 1/4");
                break;
            }
            case Video_1_2: {
                NSLog(@"Video 1/2");
                break;
            }
            case Video_3_4: {
                NSLog(@"Video 3/4");
                break;
            }
            case Video_End: {
                NSLog(@"Video End");
                break;
            }
            case Video_Error: {
                NSLog(@"Video Error");
                break;
            }
        }
    }];
    [self.view addSubview:_player];
    
    SAFileDownloader *downloader = [[SAFileDownloader alloc] init];
    __block NSString *source = @"https://s-static.innovid.com/assets/26156/32233/encoded/media-2.mp4";
    __block NSString *destination = [SAFileDownloader getDiskLocation];
    [downloader downloadFileFrom:source to:destination withResponse:^(BOOL success) {
        if (success) {
            NSString *fp = [SAUtils filePathInDocuments:destination];
            [_player playWithMediaFile:fp];
        } else {
            NSLog(@"Failure!");
        }
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)play:(id)sender {
//    [_player playWithMediaFile:_fpath];
}

- (IBAction)showHideAction:(id)sender {
    [_player pause];
}

- (IBAction)destroyAction:(id)sender {
    [_player resume];
}
- (IBAction)resizeAction:(id)sender {
    [_player updateToFrame:CGRectMake(0, 60, 320, 220)];
}

@end
