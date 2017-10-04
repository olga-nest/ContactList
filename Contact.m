//
//  Contact.m
//  ContactList
//
//  Created by Olga on 10/3/17.
//  Copyright © 2017 Olga. All rights reserved.
//

#import "Contact.h"

@implementation Contact

//@synthesize name, email;


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"no name";
        self.email = @"no email";
    }
    return self;
}
@end
