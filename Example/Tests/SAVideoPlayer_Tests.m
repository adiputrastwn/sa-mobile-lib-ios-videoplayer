//
//  SAVideoPlayer_Tests.m
//  SAVideoPlayer
//
//  Created by Gabriel Coman on 20/10/2016.
//  Copyright © 2016 Gabriel Coman. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SAViewController.h"
#import "SAVideoPlayer.h"
#import "SAFileDownloader.h"

@interface SAVideoPlayer_Tests : XCTestCase
@property (nonatomic, strong) SAViewController *vc;
@end

@implementation SAVideoPlayer_Tests

- (void)setUp {
    [super setUp];
    _vc = (SAViewController*)[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MainVC"];
}

- (void)tearDown {
    [super tearDown];
}

- (void) testVideo1 {
    
//    // when
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"preroll" ofType:@"mp4"];
//    __block BOOL reachedStart = false;
//    __block BOOL reached14 = false;
//    __block BOOL reached12 = false;
//    __block BOOL reached34 = false;
//    __block BOOL reachedEnd = false;
//    __block BOOL reachedError = false;
//    __block int stage = 0;
//    
//    // then
//    XCTAssertNotNil(_vc);
//    XCTAssertNotNil(_vc.view);
//    
//    SAVideoPlayer *video = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
//    
//    XCTAssertNotNil(video);
//    
//    [_vc.view addSubview:video];
//    
//    __block XCTestExpectation *expectation = [self expectationWithDescription:@"High Expectations"];
//    
//    [video setEventHandler:^(SAVideoPlayerEvent event) {
//        switch (event) {
//            case Video_Start: {
//                reachedStart = true;
//                stage++;
//                break;
//            }
//            case Video_1_4: {
//                reached14 = true;
//                stage++;
//                break;
//            }
//            case Video_1_2: {
//                reached12 = true;
//                stage++;
//                break;
//            }
//            case Video_3_4: {
//                reached34 = true;
//                stage++;
//                break;
//            }
//            case Video_End: {
//                reachedEnd = true;
//                stage++;
//                [expectation fulfill];
//                break;
//            }
//            case Video_Error: {
//                reachedError = true;
//                [expectation fulfill];
//                break;
//            }
//        }
//    }];
//    
//    // finally play!
//    [video playWithMediaFile:path];
//    
//    [self waitForExpectationsWithTimeout:300.0 handler:^(NSError *error) {
//        if (error) {
//            NSLog(@"Timeout Error: %@", error);
//        } else {
//            XCTAssertTrue(reachedStart);
//            XCTAssertTrue(reached14);
//            XCTAssertTrue(reached12);
//            XCTAssertTrue(reached34);
//            XCTAssertTrue(reachedEnd);
//            XCTAssertFalse(reachedError);
//            XCTAssertEqual(stage, 5);
//        }
//    }];
}

- (void) testVideo2 {
    
    // when
    NSString *path = nil;
    __block BOOL reachedError = false;
    
    // then
    XCTAssertNotNil(_vc);
    XCTAssertNotNil(_vc.view);
    
    SAVideoPlayer *video = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    
    XCTAssertNotNil(video);
    
    [_vc.view addSubview:video];
    
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"High Expectations"];
    
    [video setEventHandler:^(SAVideoPlayerEvent event) {
        switch (event) {
            case Video_Start:break;
            case Video_1_4:break;
            case Video_1_2:break;
            case Video_3_4:break;
            case Video_End: {
                [expectation fulfill];
                break;
            }
            case Video_Error: {
                reachedError = true;
                [expectation fulfill];
                break;
            }
        }
    }];
    
    // finally play!
    [video playWithMediaFile:path];
    
    [self waitForExpectationsWithTimeout:300.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        } else {
            XCTAssertTrue(reachedError);
        }
    }];
    
}

- (void) testVideo3 {
    
    // when
    NSString *path = (NSString*)[NSNull null];
    __block BOOL reachedError = false;
    
    // then
    XCTAssertNotNil(_vc);
    XCTAssertNotNil(_vc.view);
    
    SAVideoPlayer *video = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    
    XCTAssertNotNil(video);
    
    [_vc.view addSubview:video];
    
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"High Expectations"];
    
    [video setEventHandler:^(SAVideoPlayerEvent event) {
        switch (event) {
            case Video_Start:break;
            case Video_1_4:break;
            case Video_1_2:break;
            case Video_3_4:break;
            case Video_End: {
                [expectation fulfill];
                break;
            }
            case Video_Error: {
                reachedError = true;
                [expectation fulfill];
                break;
            }
        }
    }];
    
    // finally play!
    [video playWithMediaFile:path];
    
    [self waitForExpectationsWithTimeout:300.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        } else {
            XCTAssertTrue(reachedError);
        }
    }];
    
}

- (void) testVideo4 {
    
    // when
    NSString *path = @"";
    __block BOOL reachedError = false;
    
    // then
    XCTAssertNotNil(_vc);
    XCTAssertNotNil(_vc.view);
    
    SAVideoPlayer *video = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    
    XCTAssertNotNil(video);
    
    [_vc.view addSubview:video];
    
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"High Expectations"];
    
    [video setEventHandler:^(SAVideoPlayerEvent event) {
        switch (event) {
            case Video_Start:break;
            case Video_1_4:break;
            case Video_1_2:break;
            case Video_3_4:break;
            case Video_End: {
                [expectation fulfill];
                break;
            }
            case Video_Error: {
                reachedError = true;
                [expectation fulfill];
                break;
            }
        }
    }];
    
    // finally play!
    [video playWithMediaFile:path];
    
    [self waitForExpectationsWithTimeout:300.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        } else {
            XCTAssertTrue(reachedError);
        }
    }];
    
}

- (void) testVideo5 {
    
    // when
    NSString *path = @"jksakas///sajsaj";
    __block BOOL reachedError = false;
    
    // then
    XCTAssertNotNil(_vc);
    XCTAssertNotNil(_vc.view);
    
    SAVideoPlayer *video = [[SAVideoPlayer alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    
    XCTAssertNotNil(video);
    
    [_vc.view addSubview:video];
    
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"High Expectations"];
    
    [video setEventHandler:^(SAVideoPlayerEvent event) {
        switch (event) {
            case Video_Start:break;
            case Video_1_4:break;
            case Video_1_2:break;
            case Video_3_4:break;
            case Video_End: {
                [expectation fulfill];
                break;
            }
            case Video_Error: {
                reachedError = true;
                [expectation fulfill];
                break;
            }
        }
    }];
    
    // finally play!
    [video playWithMediaFile:path];
    
    [self waitForExpectationsWithTimeout:300.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        } else {
            XCTAssertTrue(reachedError);
        }
    }];
    
}


@end
