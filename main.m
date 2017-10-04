#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL appIsRunning = YES;
        
        InputCollector *inputCollector = [[InputCollector alloc]init];
        
        while (appIsRunning == YES) {
        
        
        NSString *parsedResult = [inputCollector inputForPrompt:@"..."];

            
            if ([parsedResult isEqual: @"quit"]) {
                NSLog(@"See you!");
                appIsRunning = NO;
                continue;
            } else {
                
       }
    
        
        }
        return 0;
    
}
}
