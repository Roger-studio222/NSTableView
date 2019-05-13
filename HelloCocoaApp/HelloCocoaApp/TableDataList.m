#import "TableDataList.h"

@implementation TableDataList

- (id)init {
    self = [super init];
    if (self) {
        tableDatas = [[NSMutableArray alloc] initWithCapacity:1];
    }
    return self;
}

- (void) addData:(NSString*) name {
    [tableDatas addObject:name];
}

- (void) removeData:(NSString*) name {
    [tableDatas removeObject:name];
}

- (NSString*) getData:(NSInteger)inx {
    return [tableDatas objectAtIndex:inx];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return tableDatas.count;
}

- (NSView* )tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row {
    
    NSTableCellView *cell = nil;
    if (tableColumn == tableView.tableColumns[0]) {
        cell = [tableView makeViewWithIdentifier:@"nameCellID" owner:nil];
        cell.textField.stringValue = [tableDatas objectAtIndex:row];
        cell.imageView.image = [NSImage imageNamed:@"other.png"];
    }else if (tableColumn == tableView.tableColumns[1]) {
        cell = [tableView makeViewWithIdentifier:@"cameraCellID" owner:nil];
    }else if(tableColumn == tableView.tableColumns[2]) {
        cell = [tableView makeViewWithIdentifier:@"microphoneCellID" owner:nil];
    }
    
    return cell;
    
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 30;
}


@end
