#import "ViewController.h"

@implementation ViewController

@synthesize tableView;
@synthesize addButton, textData;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableDataList = [[TableDataList alloc] init];
    tableView.delegate = tableDataList;
    tableView.dataSource = tableDataList;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)addData:(id)sender {
    NSLog(@"add data %@",[textData stringValue]);
    [tableDataList addData:[textData stringValue]];
    [tableView reloadData];
}

- (IBAction)onCellClick:(id)sender {
    NSButton *btn = (NSButton*)sender;
    if ( [btn image] == [NSImage imageNamed:@"green.png"] )
        [btn setImage:[NSImage imageNamed:@"red.png"]];
    else
        [btn setImage:[NSImage imageNamed:@"green.png"]];
    
    NSTableRowView *rowView = ( NSTableRowView *)btn.superview;
    NSInteger clickIndex = [tableView  rowForView:rowView];
    NSString* name = [tableDataList getData:clickIndex];
    NSAlert *alert = [[NSAlert alloc] init];
    
    alert.messageText = @"Hello";
    [alert setShowsHelp:NO];
    alert.informativeText = name;
    alert.alertStyle = NSAlertStyleWarning;
    [alert addButtonWithTitle:@"Ok"];
    
    [alert runModal];
}
@end
