//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/travis/build/thoutbeckers/LeBlue/LeBlue-java/src/main/java/houtbecke/rs/le/LeDeviceState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeDeviceState")
#ifdef RESTRICT_LeDeviceState
#define INCLUDE_ALL_LeDeviceState 0
#else
#define INCLUDE_ALL_LeDeviceState 1
#endif
#undef RESTRICT_LeDeviceState

#if !defined (LeDeviceState_) && (INCLUDE_ALL_LeDeviceState || defined(INCLUDE_LeDeviceState))
#define LeDeviceState_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, LeDeviceState_Enum) {
  LeDeviceState_Enum_OFF = 0,
  LeDeviceState_Enum_ON = 1,
};

@interface LeDeviceState : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (LeDeviceState *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(LeDeviceState)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeDeviceState *LeDeviceState_values_[];

inline LeDeviceState *LeDeviceState_get_OFF();
J2OBJC_ENUM_CONSTANT(LeDeviceState, OFF)

inline LeDeviceState *LeDeviceState_get_ON();
J2OBJC_ENUM_CONSTANT(LeDeviceState, ON)

FOUNDATION_EXPORT IOSObjectArray *LeDeviceState_values();

FOUNDATION_EXPORT LeDeviceState *LeDeviceState_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeDeviceState *LeDeviceState_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeDeviceState)

@compatibility_alias HoutbeckeRsLeLeDeviceState LeDeviceState;

#endif

#pragma pop_macro("INCLUDE_ALL_LeDeviceState")