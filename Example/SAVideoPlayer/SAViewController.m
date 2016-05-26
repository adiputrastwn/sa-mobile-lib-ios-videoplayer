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

@interface SAViewController () <SAVideoPlayerProtocol, NSURLConnectionDataDelegate>
@property (nonatomic, strong) SAVideoPlayer *player;
@property (nonatomic, strong) NSString *fpath;
@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _player = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 60, 220, 140)];
    _player.delegate = self;
    _player.shouldShowSmallClickButton = true;
    [self.view addSubview:_player];
    
    __block NSString *location = [[SAFileDownloader getInstance] getDiskLocation];
    [[SAFileDownloader getInstance] downloadFileFrom:@"https://s-static.innovid.com/assets/26156/32233/encoded/media-2.mp4"
                                                  to:location
                                         withSuccess:^{
                                             [_player playWithMediaFile:location];
                                         } orFailure:^{
    
                                         }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)play:(id)sender {
    [_player playWithMediaFile:_fpath];
}

- (IBAction)showHideAction:(id)sender {

}

- (IBAction)destroyAction:(id)sender {
    [_player destroy];
}
- (IBAction)resizeAction:(id)sender {
    [_player updateToFrame:CGRectMake(0, 60, 320, 220)];
}

- (void) didFindPlayerReady {
    NSLog(@"didFindPlayerReady");
}

- (void) didStartPlayer {
    NSLog(@"didStartPlayer");
}

- (void) didReachFirstQuartile {
    NSLog(@"didReachFirstQuartile");
}

- (void) didReachMidpoint {
    NSLog(@"didReachMidpoint");
}

- (void) didReachThirdQuartile {
    NSLog(@"didReachThirdQuartile");
}

- (void) didReachEnd{
    NSLog(@"didReachEnd");
}

- (void) didPlayWithError{
    NSLog(@"didPlayWithError");
}

- (void) didGoToURL {
    NSLog(@"didGoToURL");
}

@end
