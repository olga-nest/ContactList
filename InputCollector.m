//
//  InputCollector.m
//  ContactList
//
//  Created by Olga on 10/3/17.
//  Copyright © 2017 Olga. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"What would you like do next? \n - Create a new contact list \n - List all contacts quit \n - Exit Application >> \n");
    
    char answerCString;
    
    fgets(&answerCString, 255, stdin);
    
    NSString *result = [NSString stringWithCString:&answerCString
                                          encoding:NSUTF8StringEncoding];
    
    //removes new line and white spaces
 //   NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return parsedResult;

    
}

@end
