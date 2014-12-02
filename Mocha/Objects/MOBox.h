//
//  MOBox.h
//  Mocha
//
//  Created by Logan Collins on 5/12/12.
//  Copyright (c) 2012 Sunflower Softworks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>


@class MORuntime;


/*!
 * @class MOBox
 * @abstract A boxed Objective-C object
 */
@interface MOBox : NSObject

/*!
 * @property representedObject
 * @abstract The boxed Objective-C object
 * 
 * @result An object
 */
@property (weak) id representedObject;

/*!
 * @property JSObject
 * @abstract The JSObject representation of the box
 * 
 * @result A JSObjectRef value
 */
@property (assign) JSObjectRef JSObject;

/*!
 * @property runtime
 * @abstract The runtime for the object
 * 
 * @result An MORuntime object
 */
@property (unsafe_unretained) MORuntime *runtime;

@end
