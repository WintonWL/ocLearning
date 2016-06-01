//
//  main.m
//  ocLearning
//
//  Created by 翁乐 on 4/13/16.
//  Copyright © 2016 翁乐. All rights reserved.
//

#import <Foundation/Foundation.h>

FILE *fileReader(const char * filename)
{
    FILE *wordFile = fopen(filename, "r");
    char word[100];
    
    
    while (fgets(word,100,wordFile)) {
        word[strlen(word) - 1] = '\0';
        
        NSLog(@"%s is %lu characters long",word,strlen(word));
    }
    
    fclose(wordFile);
    
    return wordFile;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        if (argc == 1) {
            NSLog(@"you need to provide a file name");
            return 1;
        }
        
        
        NSLog(@"alibaba-inc, It's secret! Can you get it?");
        fileReader(argv[1]);
       
    }
    return 0;
}
