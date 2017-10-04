
#import <Foundation/Foundation.h>

@class Contact;

@interface ContactList : NSObject

@property NSMutableArray *contactList;

-(void)addContact:(Contact *)contact;

@end
