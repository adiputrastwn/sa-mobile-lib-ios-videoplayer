//
//  SASpinner.m
//  Pods
//
//  Created by Gabriel Coman on 06/03/2016.
//
//

#import "SASpinner.h"
#import "SAVideoPlayer.h"

@implementation SASpinner

- (id) init {
    
    // get bundle
    NSString *bundlePath = [[NSBundle bundleForClass:[SAVideoPlayer class]] pathForResource:@"SAVideoPlayer" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSData *gifdata = [NSData dataWithContentsOfFile:[bundle pathForResource:@"spinner" ofType:@"gif"]];
    FLAnimatedImage *gifimg = [FLAnimatedImage animatedImageWithGIFData:gifdata];
    
    if (self = [super init]){
        self.animatedImage = gifimg;
    }
    
    return self;
}

- (void) didMoveToSuperview {
    self.alpha = 0.75f;
    self.frame = CGRectMake(0, 0, 20, 20);
    self.center = self.superview.center;
}

@end
