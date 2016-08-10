
#include "CharacteristicsMockerObject.h"
#include "DeviceMockerObject.h"
#include "EventSinkFiller.h"
#include "EventSource.h"
#include "GattServiceMockerObject.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "ListEventSinkSource.h"
#include "Mocker.h"
#include "MockerObject.h"
#include "RemoteDeviceMockerObject.h"
#include "SessionObject.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/UUID.h"

@implementation SessionObject

+ (SessionObject *)newSession {
  return SessionObject_newSession();
}

- (MockerObject *)withObjectMockerWithInt:(jint)source {
  return MockerObject_newMockerWithSessionObject_withInt_(self, source);
}

- (SessionObject *)setDefaultDelayWithInt:(jint)defaultDelay {
  self->defaultDelay_ = defaultDelay;
  return self;
}

- (jint)getDefaultDelay {
  return defaultDelay_;
}

- (SessionObject *)setDefaultSourceWithEventSource:(id<EventSource>)defaultSource {
  self->defaultSource_ = defaultSource;
  return self;
}

- (DeviceMockerObject *)withFakeDeviceWithIntArray:(IOSIntArray *)remoteDevices {
  return [((DeviceMockerObject *) nil_chk([((DeviceMockerObject *) nil_chk([self withDeviceMocker])) hasRemoteDevicesWithInt:0 withByteArray:[IOSByteArray newArrayWithBytes:(jbyte[]){ 0 } count:1] withIntArray:remoteDevices])) withFakeDeviceListeners];
}

- (DeviceMockerObject *)withFakeDevicesWithIntArray:(IOSIntArray *)remoteDevices
                                     withByteArray2:(IOSObjectArray *)scanRecords {
  if (((IOSIntArray *) nil_chk(remoteDevices))->size_ != ((IOSObjectArray *) nil_chk(scanRecords))->size_) @throw new_JavaLangRuntimeException_initWithNSString_(@"scanRecords and remoteDevices differ in number");
  DeviceMockerObject *ret = [((DeviceMockerObject *) nil_chk([self withDeviceMocker])) withFakeDeviceListeners];
  for (jint k = 0; k < remoteDevices->size_; k++) (void) [((DeviceMockerObject *) nil_chk(ret)) hasRemoteDeviceWithByteArray:IOSObjectArray_Get(scanRecords, k) withInt:IOSIntArray_Get(remoteDevices, k)];
  return ret;
}

- (DeviceMockerObject *)withDeviceMocker {
  return [self withDeviceMockerWithInt:EventSinkFiller_DEFAULT_DEVICE_ID];
}

- (DeviceMockerObject *)withDeviceMockerWithInt:(jint)id_ {
  DeviceMockerObject *ret = new_DeviceMockerObject_initWithSessionObject_withInt_(self, id_);
  (void) [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:ret];
  return ret;
}

- (SessionObject *)withDeviceMockerWithInt:(jint)id_
                                withMocker:(id<Mocker>)device {
  (void) [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:device];
  return self;
}

- (SessionObject *)withDeviceMockerWithMocker:(id<Mocker>)device {
  (void) [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(EventSinkFiller_DEFAULT_DEVICE_ID) withId:device];
  return self;
}

- (RemoteDeviceMockerObject *)withFakeRemoteDeviceWithInt:(jint)id_
                                             withNSString:(NSString *)address
                                             withNSString:(NSString *)name
                                              withBoolean:(jboolean)connects
                                             withIntArray:(IOSIntArray *)services {
  return [((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([self withRemoteDeviceMockerWithInt:id_])) withFakeCharacteristicsListeners])) withFakeRemoteDeviceListeners])) mocksRemoteDeviceWithNSString:address withNSString:name withBoolean:connects])) hasServicesWithIntArray:services];
}

- (RemoteDeviceMockerObject *)withRemoteDeviceMockerWithInt:(jint)id_ {
  RemoteDeviceMockerObject *remoteDeviceMocker = new_RemoteDeviceMockerObject_initWithSessionObject_withInt_(self, id_);
  (void) [((id<JavaUtilMap>) nil_chk(remoteDevices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:remoteDeviceMocker];
  return remoteDeviceMocker;
}

- (SessionObject *)withRemoteDeviceMockerWithInt:(jint)id_
                                      withMocker:(id<Mocker>)remoteDevice {
  (void) [((id<JavaUtilMap>) nil_chk(remoteDevices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:remoteDevice];
  return self;
}

- (GattServiceMockerObject *)withFakeServiceWithInt:(jint)id_
                                   withJavaUtilUUID:(JavaUtilUUID *)uuid {
  return [((GattServiceMockerObject *) nil_chk([self withGattServiceMockerWithInt:id_])) mocksServiceWithJavaUtilUUID:uuid];
}

- (GattServiceMockerObject *)withGattServiceMockerWithInt:(jint)id_ {
  GattServiceMockerObject *service = new_GattServiceMockerObject_initWithSessionObject_withInt_(self, id_);
  (void) [((id<JavaUtilMap>) nil_chk(gattServices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:service];
  return service;
}

- (SessionObject *)withGattServiceMockerWithInt:(jint)id_
                                     withMocker:(id<Mocker>)service {
  (void) [((id<JavaUtilMap>) nil_chk(gattServices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:service];
  return self;
}

- (CharacteristicsMockerObject *)withGattCharacteristicsMockerWithInt:(jint)id_ {
  CharacteristicsMockerObject *ret = new_CharacteristicsMockerObject_initWithSessionObject_withInt_(self, id_);
  (void) [((id<JavaUtilMap>) nil_chk(gattCharacteristics_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:ret];
  return ret;
}

- (SessionObject *)withGattCharacteristicsMockerWithInt:(jint)id_
                                             withMocker:(id<Mocker>)characteristic {
  (void) [((id<JavaUtilMap>) nil_chk(gattCharacteristics_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:characteristic];
  return self;
}

- (SessionObject *)withNamedEventSourceWithNSString:(NSString *)name
                                    withEventSource:(id<EventSource>)eventSource {
  (void) [((id<JavaUtilMap>) nil_chk(eventSources_)) putWithId:name withId:eventSource];
  return self;
}

- (EventSinkFiller *)withNamedEventSourceFillerWithNSString:(NSString *)name {
  ListEventSinkSource *source = new_ListEventSinkSource_init();
  EventSinkFiller *filler = new_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(source, self);
  (void) [((id<JavaUtilMap>) nil_chk(eventSources_)) putWithId:name withId:source];
  return filler;
}

- (SessionObject *)withDefaultEventSourceWithEventSource:(id<EventSource>)defaultSource {
  self->defaultSource_ = defaultSource;
  return self;
}

- (EventSinkFiller *)withDefaultEventSourceFiller {
  ListEventSinkSource *source = new_ListEventSinkSource_init();
  EventSinkFiller *filler = new_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(source, self);
  defaultSource_ = source;
  return filler;
}

- (SessionObject *)withEndEvent {
  ListEventSinkSource *source = new_ListEventSinkSource_init();
  EventSinkFiller *filler = new_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(source, self);
  defaultSource_ = source;
  return ((EventSinkFiller *) nil_chk([filler waitForPointWithNSString:@"end"]))->and__;
}

- (id<Mocker>)getGattCharacteristicMockerWithInt:(jint)id_ {
  return [((id<JavaUtilMap>) nil_chk(gattCharacteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(id_)];
}

- (id<Mocker>)getGattServiceMockerWithInt:(jint)id_ {
  return [((id<JavaUtilMap>) nil_chk(gattServices_)) getWithId:JavaLangInteger_valueOfWithInt_(id_)];
}

- (id<Mocker>)getDeviceMockerWithInt:(jint)id_ {
  return [((id<JavaUtilMap>) nil_chk(devices_)) getWithId:JavaLangInteger_valueOfWithInt_(id_)];
}

- (id<Mocker>)getRemoteDeviceMockerWithInt:(jint)device {
  return [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(device)];
}

- (id<EventSource>)getDefaultSource {
  return defaultSource_;
}

- (id<EventSource>)getNamedEventSourceWithNSString:(NSString *)source {
  return [((id<JavaUtilMap>) nil_chk(eventSources_)) getWithId:source];
}

- (IOSObjectArray *)getEventSourceNames {
  id<JavaUtilSet> strings = [((id<JavaUtilMap>) nil_chk(eventSources_)) keySet];
  return [((id<JavaUtilSet>) nil_chk(strings)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[strings size] type:NSString_class_()]];
}

- (NSString *)getSourceIdentificationWithInt:(jint)source {
  NSString *ret = [((id<JavaUtilMap>) nil_chk(sourceIdentifications_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
  if (ret == nil) @throw new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$", @"Trying to reference a mocked source by only it's id (", source, @"),  and it's identification string has not yet been specified"));
  return ret;
}

- (void)setSourceIdentificationWithInt:(jint)source
                          withNSString:(NSString *)identification {
  (void) [((id<JavaUtilMap>) nil_chk(sourceIdentifications_)) putWithId:JavaLangInteger_valueOfWithInt_(source) withId:identification];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  SessionObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "newSession", NULL, "Lhoutbecke.rs.le.session.SessionObject;", 0x9, NULL, NULL },
    { "withObjectMockerWithInt:", "withObjectMocker", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "setDefaultDelayWithInt:", "setDefaultDelay", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "getDefaultDelay", NULL, "I", 0x1, NULL, NULL },
    { "setDefaultSourceWithEventSource:", "setDefaultSource", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withFakeDeviceWithIntArray:", "withFakeDevice", "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x81, NULL, NULL },
    { "withFakeDevicesWithIntArray:withByteArray2:", "withFakeDevices", "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x81, NULL, NULL },
    { "withDeviceMocker", NULL, "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x1, NULL, NULL },
    { "withDeviceMockerWithInt:", "withDeviceMocker", "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x1, NULL, NULL },
    { "withDeviceMockerWithInt:withMocker:", "withDeviceMocker", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withDeviceMockerWithMocker:", "withDeviceMocker", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withFakeRemoteDeviceWithInt:withNSString:withNSString:withBoolean:withIntArray:", "withFakeRemoteDevice", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x81, NULL, NULL },
    { "withRemoteDeviceMockerWithInt:", "withRemoteDeviceMocker", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x1, NULL, NULL },
    { "withRemoteDeviceMockerWithInt:withMocker:", "withRemoteDeviceMocker", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withFakeServiceWithInt:withJavaUtilUUID:", "withFakeService", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "withGattServiceMockerWithInt:", "withGattServiceMocker", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "withGattServiceMockerWithInt:withMocker:", "withGattServiceMocker", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withGattCharacteristicsMockerWithInt:", "withGattCharacteristicsMocker", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x1, NULL, NULL },
    { "withGattCharacteristicsMockerWithInt:withMocker:", "withGattCharacteristicsMocker", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withNamedEventSourceWithNSString:withEventSource:", "withNamedEventSource", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withNamedEventSourceFillerWithNSString:", "withNamedEventSourceFiller", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "withDefaultEventSourceWithEventSource:", "withDefaultEventSource", "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "withDefaultEventSourceFiller", NULL, "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "withEndEvent", NULL, "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "getGattCharacteristicMockerWithInt:", "getGattCharacteristicMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x1, NULL, NULL },
    { "getGattServiceMockerWithInt:", "getGattServiceMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x1, NULL, NULL },
    { "getDeviceMockerWithInt:", "getDeviceMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x1, NULL, NULL },
    { "getRemoteDeviceMockerWithInt:", "getRemoteDeviceMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x1, NULL, NULL },
    { "getDefaultSource", NULL, "Lhoutbecke.rs.le.session.EventSource;", 0x1, NULL, NULL },
    { "getNamedEventSourceWithNSString:", "getNamedEventSource", "Lhoutbecke.rs.le.session.EventSource;", 0x1, NULL, NULL },
    { "getEventSourceNames", NULL, "[Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSourceIdentificationWithInt:", "getSourceIdentification", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setSourceIdentificationWithInt:withNSString:", "setSourceIdentification", "V", 0x1, NULL, NULL },
    { "init", "SessionObject", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "defaultDelay_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "devices_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/session/Mocker;>;", .constantValue.asLong = 0 },
    { "remoteDevices_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/session/Mocker;>;", .constantValue.asLong = 0 },
    { "gattServices_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/session/Mocker;>;", .constantValue.asLong = 0 },
    { "gattCharacteristics_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/session/Mocker;>;", .constantValue.asLong = 0 },
    { "defaultSource_", NULL, 0x0, "Lhoutbecke.rs.le.session.EventSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "eventSources_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lhoutbecke/rs/le/session/EventSource;>;", .constantValue.asLong = 0 },
    { "sourceIdentifications_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _SessionObject = { 2, "SessionObject", "houtbecke.rs.le.session", NULL, 0x1, 34, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_SessionObject;
}

@end

SessionObject *SessionObject_newSession() {
  SessionObject_initialize();
  return new_SessionObject_init();
}

void SessionObject_init(SessionObject *self) {
  NSObject_init(self);
  self->defaultDelay_ = 0;
  self->devices_ = new_JavaUtilHashMap_init();
  self->remoteDevices_ = new_JavaUtilHashMap_init();
  self->gattServices_ = new_JavaUtilHashMap_init();
  self->gattCharacteristics_ = new_JavaUtilHashMap_init();
  self->eventSources_ = new_JavaUtilHashMap_initWithInt_(0);
  self->sourceIdentifications_ = new_JavaUtilHashMap_init();
}

SessionObject *new_SessionObject_init() {
  J2OBJC_NEW_IMPL(SessionObject, init)
}

SessionObject *create_SessionObject_init() {
  J2OBJC_CREATE_IMPL(SessionObject, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionObject)
