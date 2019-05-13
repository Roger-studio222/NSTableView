
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableDataList : NSObject<NSTableViewDataSource, NSTableViewDelegate>
{
    @private
    NSMutableArray  *tableDatas;
}

- (id) init;
- (void) addData:(NSString*) name;
- (void) removeData:(NSString*) name;
- (NSString*) getData:(NSInteger)index;

@end


NS_ASSUME_NONNULL_END
