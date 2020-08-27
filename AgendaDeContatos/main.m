//
//  main.m
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 27/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
