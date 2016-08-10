
#include "CharacteristicsMockerObject.h"
#include "DeviceMockerObject.h"
#include "EventSinkFiller.h"
#include "GattServiceMockerObject.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeDeviceState.h"
#include "LeEventType.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeGattStatus.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"
#include "LeScanRecord.h"
#include "LeSessionController.h"
#include "ListEventSinkSource.h"
#include "MockerTest.h"
#include "RemoteDeviceMockerObject.h"
#include "SessionObject.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@interface MockerTest () {
 @public
  LeSessionController *sessionController_;
  id<LeDevice> device_;
  id<LeRemoteDevice> remoteDevice_;
}

@end

J2OBJC_FIELD_SETTER(MockerTest, sessionController_, LeSessionController *)
J2OBJC_FIELD_SETTER(MockerTest, device_, id<LeDevice>)
J2OBJC_FIELD_SETTER(MockerTest, remoteDevice_, id<LeRemoteDevice>)

inline jint MockerTest_get_LE_REMOTE_DEVICE();
#define MockerTest_LE_REMOTE_DEVICE 11
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_REMOTE_DEVICE, jint)

inline jint MockerTest_get_LE_REMOTE_DEVICE_2();
#define MockerTest_LE_REMOTE_DEVICE_2 12
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_REMOTE_DEVICE_2, jint)

inline jint MockerTest_get_LE_REMOTE_DEVICE_3();
#define MockerTest_LE_REMOTE_DEVICE_3 13
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_REMOTE_DEVICE_3, jint)

inline jint MockerTest_get_LE_SERVICE_1_1();
#define MockerTest_LE_SERVICE_1_1 101
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_SERVICE_1_1, jint)

inline jint MockerTest_get_LE_SERVICE_1_2();
#define MockerTest_LE_SERVICE_1_2 102
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_SERVICE_1_2, jint)

inline jint MockerTest_get_LE_SERVICE_2_1();
#define MockerTest_LE_SERVICE_2_1 201
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_SERVICE_2_1, jint)

inline jint MockerTest_get_LE_CHARACTERISTIC_1_1();
#define MockerTest_LE_CHARACTERISTIC_1_1 1001
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_CHARACTERISTIC_1_1, jint)

inline jint MockerTest_get_LE_CHARACTERISTIC_1_2();
#define MockerTest_LE_CHARACTERISTIC_1_2 1002
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_CHARACTERISTIC_1_2, jint)

inline jint MockerTest_get_LE_CHARACTERISTIC_2_1();
#define MockerTest_LE_CHARACTERISTIC_2_1 2001
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_CHARACTERISTIC_2_1, jint)

@interface MockerTest_$1 : NSObject < LeDeviceListener > {
 @public
  MockerTest *this$0_;
  IOSIntArray *val$foundRemoteDevices_;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

- (instancetype)initWithMockerTest:(MockerTest *)outer$
                      withIntArray:(IOSIntArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_$1)

J2OBJC_FIELD_SETTER(MockerTest_$1, this$0_, MockerTest *)
J2OBJC_FIELD_SETTER(MockerTest_$1, val$foundRemoteDevices_, IOSIntArray *)

__attribute__((unused)) static void MockerTest_$1_initWithMockerTest_withIntArray_(MockerTest_$1 *self, MockerTest *outer$, IOSIntArray *capture$0);

__attribute__((unused)) static MockerTest_$1 *new_MockerTest_$1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_$1 *create_MockerTest_$1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(MockerTest_$1)

@interface MockerTest_$2 : NSObject < LeDeviceListener > {
 @public
  IOSObjectArray *val$foundRemoteDevice2_;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_$2)

J2OBJC_FIELD_SETTER(MockerTest_$2, val$foundRemoteDevice2_, IOSObjectArray *)

__attribute__((unused)) static void MockerTest_$2_initWithJavaLangBooleanArray_(MockerTest_$2 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static MockerTest_$2 *new_MockerTest_$2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_$2 *create_MockerTest_$2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(MockerTest_$2)

@interface MockerTest_$3 : NSObject < LeRemoteDeviceListener > {
 @public
  MockerTest *this$0_;
  IOSObjectArray *val$connected_;
  IOSObjectArray *val$discovered_;
  IOSObjectArray *val$service_;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts;

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi;

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withJavaLangBooleanArray:(IOSObjectArray *)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
            withLeGattServiceArray:(IOSObjectArray *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_$3)

J2OBJC_FIELD_SETTER(MockerTest_$3, this$0_, MockerTest *)
J2OBJC_FIELD_SETTER(MockerTest_$3, val$connected_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(MockerTest_$3, val$discovered_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(MockerTest_$3, val$service_, IOSObjectArray *)

__attribute__((unused)) static void MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest_$3 *self, MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

__attribute__((unused)) static MockerTest_$3 *new_MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_$3 *create_MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(MockerTest_$3)

@interface MockerTest_$4 : NSObject < LeCharacteristicListener > {
 @public
  MockerTest *this$0_;
  id<LeGattCharacteristic> val$characteristic_;
  IOSObjectArray *val$changed_;
  IOSObjectArray *val$changedNotification_;
}

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic;

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success;

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
          withJavaLangBooleanArray:(IOSObjectArray *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_$4)

J2OBJC_FIELD_SETTER(MockerTest_$4, this$0_, MockerTest *)
J2OBJC_FIELD_SETTER(MockerTest_$4, val$characteristic_, id<LeGattCharacteristic>)
J2OBJC_FIELD_SETTER(MockerTest_$4, val$changed_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(MockerTest_$4, val$changedNotification_, IOSObjectArray *)

__attribute__((unused)) static void MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest_$4 *self, MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

__attribute__((unused)) static MockerTest_$4 *new_MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_$4 *create_MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(MockerTest_$4)

@interface MockerTest_$5 : NSObject < LeRemoteDeviceListener > {
 @public
  IOSObjectArray *val$service_;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDevice
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts;

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi;

- (instancetype)initWithLeGattServiceArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_$5)

J2OBJC_FIELD_SETTER(MockerTest_$5, val$service_, IOSObjectArray *)

__attribute__((unused)) static void MockerTest_$5_initWithLeGattServiceArray_(MockerTest_$5 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static MockerTest_$5 *new_MockerTest_$5_initWithLeGattServiceArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_$5 *create_MockerTest_$5_initWithLeGattServiceArray_(IOSObjectArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(MockerTest_$5)

@implementation MockerTest

- (void)setUp {
  (void) JavaLangSystem_setPropertyWithNSString_withNSString_(@"doNotLog", @"true");
}

- (ListEventSinkSource *)createSource {
  ListEventSinkSource *source = new_ListEventSinkSource_init();
  EventSinkFiller *filler = new_EventSinkFiller_initWithListEventSinkSource_(source);
  (void) [filler waitForPointWithNSString:@"ready"];
  (void) [filler addEventWithLeEventType:JreLoadEnum(LeEventType, mockCharacteristicChanged) withInt:MockerTest_LE_REMOTE_DEVICE withInt:MockerTest_LE_CHARACTERISTIC_1_2 withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  (void) [filler addDeviceEventWithLeEventType:JreLoadEnum(LeEventType, mockRemoteDeviceFound) withInt:MockerTest_LE_REMOTE_DEVICE_2 withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"123", @"" } count:2 type:NSString_class_()]];
  (void) [filler pointReachedWithNSString:@"secondDevice"];
  (void) [filler waitForPointWithNSString:@"done"];
  return source;
}

- (void)testController {
  ListEventSinkSource *events = [self createSource];
  sessionController_ = new_LeSessionController_initWithSession_([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((SessionObject *) nil_chk(((DeviceMockerObject *) nil_chk([((DeviceMockerObject *) nil_chk([((DeviceMockerObject *) nil_chk([((SessionObject *) nil_chk([((SessionObject *) nil_chk(SessionObject_newSession())) setDefaultSourceWithEventSource:events])) withDeviceMocker])) withFakeDeviceListeners])) hasRemoteDevicesWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ MockerTest_LE_REMOTE_DEVICE_3, MockerTest_LE_REMOTE_DEVICE } count:2]]))->and__)) withRemoteDeviceMockerWithInt:MockerTest_LE_REMOTE_DEVICE])) mocksRemoteDeviceWithNSString:@"0001:0002:0003:0004" withNSString:@"d1234" withBoolean:true])) withFakeRemoteDeviceListeners])) withFakeCharacteristicsListeners])) hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:[IOSIntArray newArrayWithInts:(jint[]){ MockerTest_LE_SERVICE_1_1, MockerTest_LE_SERVICE_1_2 } count:2]]))->and__ withRemoteDeviceMockerWithInt:MockerTest_LE_REMOTE_DEVICE_2])) mocksRemoteDeviceWithNSString:@"0005:0006:0007:0008" withNSString:@"d5678" withBoolean:true])) withFakeRemoteDeviceListeners])) withFakeCharacteristicsListeners])) hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:[IOSIntArray newArrayWithInts:(jint[]){ MockerTest_LE_SERVICE_2_1 } count:1]]))->and__ withGattServiceMockerWithInt:MockerTest_LE_SERVICE_1_1])) mocksServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")])) canNotifyWithInt:MockerTest_LE_CHARACTERISTIC_1_2 withJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc") withInt:MockerTest_LE_REMOTE_DEVICE withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(true)])) hasCharacteristicWithInt:MockerTest_LE_CHARACTERISTIC_1_1 withJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")]))->and__ withGattCharacteristicsMockerWithInt:MockerTest_LE_CHARACTERISTIC_1_1])) mocksCharacteristic])) hasFixedValueWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ 0, 1, 2 } count:3]]))->and__ withGattCharacteristicsMockerWithInt:MockerTest_LE_CHARACTERISTIC_1_2])) mocksCharacteristicWithNSString:@"12345678-1234-1234-1234-123456789bbcc"])) hasFixedValueWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ 0, 1, 2 } count:3]]))->and__ withGattCharacteristicsMockerWithInt:MockerTest_LE_CHARACTERISTIC_2_1])) mocksCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789eeee")])) hasValueWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ 0, 1, 2 } count:3]])) hasValueWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ 3, 4, 5 } count:3]])) hasFixedValueWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ 6, 7, 8 } count:3]]))->and__ withGattServiceMockerWithInt:MockerTest_LE_SERVICE_2_1])) mocksServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789dddd")])) hasCharacteristicWithInt:MockerTest_LE_CHARACTERISTIC_2_1])) end]);
  device_ = new_LeDeviceMock_initWithInt_withLeMockController_(EventSinkFiller_DEFAULT_DEVICE_ID, sessionController_);
  [((LeSessionController *) nil_chk(sessionController_)) startDefaultSession];
  OrgJunitAssert_assertTrueWithBoolean_([((LeSessionController *) nil_chk(sessionController_)) waitTillSessionStarted]);
  IOSIntArray *foundRemoteDevices = [IOSIntArray newArrayWithLength:1];
  *IOSIntArray_GetRef(foundRemoteDevices, 0) = 0;
  IOSObjectArray *foundRemoteDevice2 = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(foundRemoteDevice2, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeDevice>) nil_chk(device_)) addListenerWithLeDeviceListener:new_MockerTest_$1_initWithMockerTest_withIntArray_(self, foundRemoteDevices)];
  [((id<LeDevice>) nil_chk((device_))) addListenerWithLeDeviceListener:new_MockerTest_$2_initWithJavaLangBooleanArray_(foundRemoteDevice2)];
  [((id<LeDevice>) nil_chk(device_)) startScanning];
  @synchronized(self) {
    while (IOSIntArray_Get(foundRemoteDevices, 0) < 2) [self wait];
  }
  OrgJunitAssert_assertTrueWithNSString_withBoolean_(@"check both listeners are notified", IOSIntArray_Get(foundRemoteDevices, 0) == 2 && [((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(foundRemoteDevice2, 0))) booleanValue]);
  JavaLangThread_sleepWithLong_(100);
  OrgJunitAssert_assertEqualsWithId_withId_([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getAddress], @"0001:0002:0003:0004");
  OrgJunitAssert_assertEqualsWithId_withId_([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getName], @"d1234");
  IOSObjectArray *connected = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(connected, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSObjectArray *discovered = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(discovered, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSObjectArray *service = [IOSObjectArray newArrayWithLength:1 type:LeGattService_class_()];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:new_MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(self, connected, discovered, service)];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) connect];
  while (![((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(connected, 0))) booleanValue]) @synchronized(self) {
    [self wait];
  }
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(connected, 0))) booleanValue]);
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(discovered, 0))) booleanValue]);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaUtilUUID *) nil_chk([((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getUuid])) isEqual:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")]);
  id<LeGattCharacteristic> characteristic = [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")];
  JreAssert((characteristic != nil), (@"houtbecke/rs/le/MockerTest.java:186 condition failed: assert characteristic != null;"));
  IOSByteArray *byteArray1 = [((id<LeGattCharacteristic>) nil_chk(characteristic)) getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray1), 0), 0);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 1), 1);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 2), 2);
  byteArray1 = [characteristic getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray1), 0), 0);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 1), 1);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 2), 2);
  IOSObjectArray *changed = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(changed, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSObjectArray *changedNotification = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(changedNotification, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) setCharacteristicListenerWithLeCharacteristicListener:new_MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(self, characteristic, changed, changedNotification) withJavaUtilUUIDArray:[IOSObjectArray newArrayWithObjects:(id[]){ JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc") } count:1 type:JavaUtilUUID_class_()]];
  [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) enableCharacteristicNotificationWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc")];
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"ready"];
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(changedNotification, 0))) booleanValue]);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(changed, 0))) booleanValue]);
  [characteristic setValueWithByteArray:[IOSByteArray newArrayWithBytes:(jbyte[]){ 3, 4, 5 } count:3]];
  [((LeSessionController *) nil_chk(sessionController_)) waitForPointWithNSString:@"secondDevice"];
  OrgJunitAssert_assertEqualsWithId_withId_([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getAddress], @"0005:0006:0007:0008");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:new_MockerTest_$5_initWithLeGattServiceArray_(service)];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(100);
  id<LeGattCharacteristic> char21 = [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789eeee")];
  (void) IOSObjectArray_Set(changed, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSByteArray *byteArray2 = [((id<LeGattCharacteristic>) nil_chk(char21)) getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 0);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 1);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 2);
  byteArray2 = [char21 getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 3);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 4);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 5);
  byteArray2 = [char21 getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 6);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 7);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 8);
  byteArray2 = [char21 getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 6);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 7);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 8);
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"done"];
  [((LeSessionController *) nil_chk(sessionController_)) waitForFinishedSession];
  OrgJunitAssert_assertFalseWithBoolean_([((ListEventSinkSource *) nil_chk(events)) hasMoreEvent]);
  OrgJunitAssert_assertNullWithId_([((LeSessionController *) nil_chk(sessionController_)) getSessionException]);
}

- (id<LeDevice>)getDevice {
  return device_;
}

- (id<LeRemoteDevice>)getRemoteDevice {
  return remoteDevice_;
}

- (void)setRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice {
  self->remoteDevice_ = remoteDevice;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  MockerTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_setUp {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_testController {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setUp", NULL, "V", 0x1, "Ljava.lang.Exception;", NULL },
    { "createSource", NULL, "Lhoutbecke.rs.le.session.ListEventSinkSource;", 0x1, NULL, NULL },
    { "testController", NULL, "V", 0x1, "Ljava.lang.InterruptedException;", NULL },
    { "getDevice", NULL, "Lhoutbecke.rs.le.LeDevice;", 0x1, NULL, NULL },
    { "getRemoteDevice", NULL, "Lhoutbecke.rs.le.LeRemoteDevice;", 0x1, NULL, NULL },
    { "setRemoteDeviceWithLeRemoteDevice:", "setRemoteDevice", "V", 0x1, NULL, NULL },
    { "init", "MockerTest", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sessionController_", NULL, 0x2, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "device_", NULL, 0x2, "Lhoutbecke.rs.le.LeDevice;", NULL, NULL, .constantValue.asLong = 0 },
    { "LE_REMOTE_DEVICE", "LE_REMOTE_DEVICE", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_REMOTE_DEVICE },
    { "LE_REMOTE_DEVICE_2", "LE_REMOTE_DEVICE_2", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_REMOTE_DEVICE_2 },
    { "LE_REMOTE_DEVICE_3", "LE_REMOTE_DEVICE_3", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_REMOTE_DEVICE_3 },
    { "LE_SERVICE_1_1", "LE_SERVICE_1_1", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_SERVICE_1_1 },
    { "LE_SERVICE_1_2", "LE_SERVICE_1_2", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_SERVICE_1_2 },
    { "LE_SERVICE_2_1", "LE_SERVICE_2_1", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_SERVICE_2_1 },
    { "LE_CHARACTERISTIC_1_1", "LE_CHARACTERISTIC_1_1", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_CHARACTERISTIC_1_1 },
    { "LE_CHARACTERISTIC_1_2", "LE_CHARACTERISTIC_1_2", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_CHARACTERISTIC_1_2 },
    { "LE_CHARACTERISTIC_2_1", "LE_CHARACTERISTIC_2_1", 0x12, "I", NULL, NULL, .constantValue.asInt = MockerTest_LE_CHARACTERISTIC_2_1 },
    { "remoteDevice_", NULL, 0x2, "Lhoutbecke.rs.le.LeRemoteDevice;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _MockerTest = { 2, "MockerTest", "houtbecke.rs.le", NULL, 0x1, 7, methods, 12, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_MockerTest;
}

@end

void MockerTest_init(MockerTest *self) {
  NSObject_init(self);
}

MockerTest *new_MockerTest_init() {
  J2OBJC_NEW_IMPL(MockerTest, init)
}

MockerTest *create_MockerTest_init() {
  J2OBJC_CREATE_IMPL(MockerTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest)

@implementation MockerTest_$1

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  @synchronized(self) {
    @synchronized(this$0_) {
      OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getDevice], leDeviceFound);
      OrgJunitAssert_assertNotNullWithId_(leFoundRemoteDevice);
      OrgJunitAssert_assertEqualsWithLong_withLong_(rssi, 123);
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:[((id<LeRemoteDevice>) nil_chk(leFoundRemoteDevice)) getAddress]];
      if ([((NSString *) nil_chk([leFoundRemoteDevice getAddress])) isEqual:@"0001:0002:0003:0004"] || [((NSString *) nil_chk([leFoundRemoteDevice getAddress])) isEqual:@"0005:0006:0007:0008"]) [this$0_ setRemoteDeviceWithLeRemoteDevice:leFoundRemoteDevice];
      (*IOSIntArray_GetRef(nil_chk(val$foundRemoteDevices_), 0))++;
      [this$0_ notify];
    }
  }
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
}

- (instancetype)initWithMockerTest:(MockerTest *)outer$
                      withIntArray:(IOSIntArray *)capture$0 {
  MockerTest_$1_initWithMockerTest_withIntArray_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:", "leDeviceFound", "V", 0x21, NULL, NULL },
    { "leDeviceStateWithLeDevice:withLeDeviceState:", "leDeviceState", "V", 0x1, NULL, NULL },
    { "initWithMockerTest:withIntArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.MockerTest;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$foundRemoteDevices_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "MockerTest", "testController" };
  static const J2ObjcClassInfo _MockerTest_$1 = { 2, "", "houtbecke.rs.le", "MockerTest", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_MockerTest_$1;
}

@end

void MockerTest_$1_initWithMockerTest_withIntArray_(MockerTest_$1 *self, MockerTest *outer$, IOSIntArray *capture$0) {
  self->this$0_ = outer$;
  self->val$foundRemoteDevices_ = capture$0;
  NSObject_init(self);
}

MockerTest_$1 *new_MockerTest_$1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0) {
  J2OBJC_NEW_IMPL(MockerTest_$1, initWithMockerTest_withIntArray_, outer$, capture$0)
}

MockerTest_$1 *create_MockerTest_$1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockerTest_$1, initWithMockerTest_withIntArray_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest_$1)

@implementation MockerTest_$2

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  (void) IOSObjectArray_Set(nil_chk(val$foundRemoteDevice2_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
}

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  MockerTest_$2_initWithJavaLangBooleanArray_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:", "leDeviceFound", "V", 0x1, NULL, NULL },
    { "leDeviceStateWithLeDevice:withLeDeviceState:", "leDeviceState", "V", 0x1, NULL, NULL },
    { "initWithJavaLangBooleanArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$foundRemoteDevice2_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "MockerTest", "testController" };
  static const J2ObjcClassInfo _MockerTest_$2 = { 2, "", "houtbecke.rs.le", "MockerTest", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_MockerTest_$2;
}

@end

void MockerTest_$2_initWithJavaLangBooleanArray_(MockerTest_$2 *self, IOSObjectArray *capture$0) {
  self->val$foundRemoteDevice2_ = capture$0;
  NSObject_init(self);
}

MockerTest_$2 *new_MockerTest_$2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(MockerTest_$2, initWithJavaLangBooleanArray_, capture$0)
}

MockerTest_$2 *create_MockerTest_$2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockerTest_$2, initWithJavaLangBooleanArray_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest_$2)

@implementation MockerTest_$3

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getDevice], leDeviceFoundOn);
  OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getRemoteDevice], leRemoteDevice);
  @synchronized(this$0_) {
    (void) IOSObjectArray_Set(nil_chk(val$connected_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
    [this$0_ notifyAll];
  }
}

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts {
  (void) IOSObjectArray_Set(nil_chk(val$discovered_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
  OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getDevice], leDevice);
  OrgJunitAssert_assertEqualsWithId_withId_(leRemoteDevice, [this$0_ getRemoteDevice]);
  OrgJunitAssert_assertEqualsWithId_withId_(JreLoadEnum(LeGattStatus, SUCCESS), status);
  OrgJunitAssert_assertEqualsWithLong_withLong_(((IOSObjectArray *) nil_chk(gatts))->size_, 2);
  (void) IOSObjectArray_Set(nil_chk(val$service_), 0, (IOSObjectArray_Get(gatts, 0)));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
}

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withJavaLangBooleanArray:(IOSObjectArray *)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
            withLeGattServiceArray:(IOSObjectArray *)capture$2 {
  MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDevicesConnectedWithLeDevice:withLeRemoteDevice:", "leDevicesConnected", "V", 0x1, NULL, NULL },
    { "leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:", "leDevicesDisconnected", "V", 0x1, NULL, NULL },
    { "leDevicesClosedWithLeDevice:withLeRemoteDevice:", "leDevicesClosed", "V", 0x1, NULL, NULL },
    { "serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:", "serviceDiscovered", "V", 0x1, NULL, NULL },
    { "rssiReadWithLeDevice:withLeRemoteDevice:withInt:", "rssiRead", "V", 0x1, NULL, NULL },
    { "initWithMockerTest:withJavaLangBooleanArray:withJavaLangBooleanArray:withLeGattServiceArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.MockerTest;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$connected_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$discovered_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$service_", NULL, 0x1012, "[Lhoutbecke.rs.le.LeGattService;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "MockerTest", "testController" };
  static const J2ObjcClassInfo _MockerTest_$3 = { 2, "", "houtbecke.rs.le", "MockerTest", 0x8008, 6, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_MockerTest_$3;
}

@end

void MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest_$3 *self, MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  self->this$0_ = outer$;
  self->val$connected_ = capture$0;
  self->val$discovered_ = capture$1;
  self->val$service_ = capture$2;
  NSObject_init(self);
}

MockerTest_$3 *new_MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_NEW_IMPL(MockerTest_$3, initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_, outer$, capture$0, capture$1, capture$2)
}

MockerTest_$3 *create_MockerTest_$3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_CREATE_IMPL(MockerTest_$3, initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_, outer$, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest_$3)

@implementation MockerTest_$4

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic {
  OrgJunitAssert_assertEqualsWithId_withId_(uuid, JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc"));
  OrgJunitAssert_assertEqualsWithId_withId_(this$0_->remoteDevice_, leRemoteDevice);
  OrgJunitAssert_assertNotEqualsWithNSString_withId_withId_(@"make sure this is a different characteristic", leCharacteristic, val$characteristic_);
  (void) IOSObjectArray_Set(nil_chk(val$changed_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success {
  (void) IOSObjectArray_Set(nil_chk(val$changedNotification_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
          withJavaLangBooleanArray:(IOSObjectArray *)capture$2 {
  MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:", "leCharacteristicChanged", "V", 0x1, NULL, NULL },
    { "leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:", "leCharacteristicNotificationChanged", "V", 0x1, NULL, NULL },
    { "initWithMockerTest:withLeGattCharacteristic:withJavaLangBooleanArray:withJavaLangBooleanArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.MockerTest;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$characteristic_", NULL, 0x1012, "Lhoutbecke.rs.le.LeGattCharacteristic;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$changed_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$changedNotification_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "MockerTest", "testController" };
  static const J2ObjcClassInfo _MockerTest_$4 = { 2, "", "houtbecke.rs.le", "MockerTest", 0x8008, 3, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_MockerTest_$4;
}

@end

void MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest_$4 *self, MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  self->this$0_ = outer$;
  self->val$characteristic_ = capture$0;
  self->val$changed_ = capture$1;
  self->val$changedNotification_ = capture$2;
  NSObject_init(self);
}

MockerTest_$4 *new_MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_NEW_IMPL(MockerTest_$4, initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_, outer$, capture$0, capture$1, capture$2)
}

MockerTest_$4 *create_MockerTest_$4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_CREATE_IMPL(MockerTest_$4, initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_, outer$, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest_$4)

@implementation MockerTest_$5

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDevice
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts {
  (void) IOSObjectArray_Set(nil_chk(val$service_), 0, IOSObjectArray_Get(nil_chk(gatts), 0));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
}

- (instancetype)initWithLeGattServiceArray:(IOSObjectArray *)capture$0 {
  MockerTest_$5_initWithLeGattServiceArray_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDevicesConnectedWithLeDevice:withLeRemoteDevice:", "leDevicesConnected", "V", 0x1, NULL, NULL },
    { "leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:", "leDevicesDisconnected", "V", 0x1, NULL, NULL },
    { "leDevicesClosedWithLeDevice:withLeRemoteDevice:", "leDevicesClosed", "V", 0x1, NULL, NULL },
    { "serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:", "serviceDiscovered", "V", 0x1, NULL, NULL },
    { "rssiReadWithLeDevice:withLeRemoteDevice:withInt:", "rssiRead", "V", 0x1, NULL, NULL },
    { "initWithLeGattServiceArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$service_", NULL, 0x1012, "[Lhoutbecke.rs.le.LeGattService;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "MockerTest", "testController" };
  static const J2ObjcClassInfo _MockerTest_$5 = { 2, "", "houtbecke.rs.le", "MockerTest", 0x8008, 6, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_MockerTest_$5;
}

@end

void MockerTest_$5_initWithLeGattServiceArray_(MockerTest_$5 *self, IOSObjectArray *capture$0) {
  self->val$service_ = capture$0;
  NSObject_init(self);
}

MockerTest_$5 *new_MockerTest_$5_initWithLeGattServiceArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(MockerTest_$5, initWithLeGattServiceArray_, capture$0)
}

MockerTest_$5 *create_MockerTest_$5_initWithLeGattServiceArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockerTest_$5, initWithLeGattServiceArray_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest_$5)
