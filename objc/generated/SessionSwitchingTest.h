
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SessionSwitchingTest")
#ifdef RESTRICT_SessionSwitchingTest
#define INCLUDE_ALL_SessionSwitchingTest 0
#else
#define INCLUDE_ALL_SessionSwitchingTest 1
#endif
#undef RESTRICT_SessionSwitchingTest

#if !defined (SessionSwitchingTest_) && (INCLUDE_ALL_SessionSwitchingTest || defined(INCLUDE_SessionSwitchingTest))
#define SessionSwitchingTest_

@class IOSObjectArray;
@class LeSessionController;
@class ListEventSinkSource;
@protocol LeDevice;
@protocol LeRemoteDevice;

@interface SessionSwitchingTest : NSObject

#pragma mark Public

- (instancetype)init;

- (ListEventSinkSource *)createSource1;

- (ListEventSinkSource *)createSource2;

- (id<LeDevice>)getDevice;

- (jint)getLE_CHARACTERISTIC;

- (jint)getLE_REMOTE_DEVICE;

- (jint)getLE_SERVICE;

- (id<LeRemoteDevice>)getRemoteDevice;

- (LeSessionController *)getSessionController;

- (void)setDeviceWithLeDevice:(id<LeDevice>)device;

- (void)setRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice;

- (void)setSessionControllerWithLeSessionController:(LeSessionController *)sessionController;

- (void)setUp;

- (void)testController;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest)

FOUNDATION_EXPORT void SessionSwitchingTest_init(SessionSwitchingTest *self);

FOUNDATION_EXPORT SessionSwitchingTest *new_SessionSwitchingTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SessionSwitchingTest *create_SessionSwitchingTest_init();

J2OBJC_TYPE_LITERAL_HEADER(SessionSwitchingTest)

@compatibility_alias HoutbeckeRsLeSessionSwitchingTest SessionSwitchingTest;

#endif

#pragma pop_macro("INCLUDE_ALL_SessionSwitchingTest")
