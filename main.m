#import <Foundation/Foundation.h>
#import <QuartzCore/CAAction.h>

@interface MyAction <CAAction> : NSObject
- (void)runActionForKey:(NSString *)key object:(id)anObject arguments:(NSDictionary *)dict;
@end
@implementation MyAction
- (void)runActionForKey:(NSString *)key object:(id)anObject arguments:(NSDictionary *)dict {
    NSLog(@"Hello, world!");
}
@end

// @interface FakeAction : NSObject
// @end
// @implementation FakeAction
// @end

// @interface FakeAction(RealAction) <CAAction>
// - (void)runActionForKey:(NSString *)key object:(id)anObject arguments:(NSDictionary *)dict;
// @end
// @implementation FakeAction(RealAction)
// - (void)runActionForKey:(NSString *)key object:(id)anObject arguments:(NSDictionary *)dict {
//     NSLog(@"Hello, world!");
// }
// @end

int main() {
    MyAction* myAction = [[MyAction alloc] init];
    [myAction runActionForKey:@"helloworld" object:@"helloworld" arguments:@{@"hello": @"world"}];
    RELEASE(myAction);
    // FakeAction* fakeAction = [[FakeAction alloc] init];
    // [fakeAction runActionForKey:@"helloworld" object:@"helloworld" arguments:@{@"hello": @"world"}];
    // RELEASE(fakeAction);
    return 0;
}