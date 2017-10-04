#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL appIsRunning = YES;
        
        ContactList *contactList = [[ContactList alloc]init];
        
        while (appIsRunning == YES) {
        
        InputCollector *inputCollector = [[InputCollector alloc]init];
        
            NSString *parsedResult = [inputCollector inputForPrompt:@"What would you like do next? \n new - Create a new contact \n list - List all contacts \n quit - Exit Application > _"];

            
            if ([parsedResult isEqual: @"quit"]) {
                NSLog(@"See you!");
                appIsRunning = NO;
                continue;
            } else if ([parsedResult isEqual: @"new"]) {
                Contact *newContact = [[Contact alloc]init];
                NSString *emailInput = [inputCollector inputForPrompt:@"Enter email"];
                [newContact setEmail:emailInput];
                NSString *nameInput = [inputCollector inputForPrompt:@"Enter name"];
                newContact.name = nameInput;
                
                [contactList addContact:newContact];
       }
            else if ([parsedResult isEqual: @"list"]) {
                for (int i = 0; i < [contactList.contactList count]; i++) {
                    Contact *c = [contactList.contactList objectAtIndex:i];
                    NSLog(@"%d. %@", i, c.name);
                }
        }
        
        }
        return 0;
    
}
}
