#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)contact {
    [_contactList addObject:contact];
}

@end
