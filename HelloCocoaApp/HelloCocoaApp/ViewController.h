#import <Cocoa/Cocoa.h>
#import "TableDataList.h"

@interface ViewController : NSViewController
{
    @private
    TableDataList* tableDataList;
}
@property (weak) IBOutlet NSButton *addButton;
@property (weak) IBOutlet NSTextField *textData;
@property (weak) IBOutlet NSTableView *tableView;
- (IBAction)addData:(id)sender;
- (IBAction)onCellClick:(id)sender;

@end

