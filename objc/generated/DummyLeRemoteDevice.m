
#include "DummyLeRemoteDevice.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeRemoteDeviceListener.h"

@implementation HoutbeckeRsLeDummyDummyLeRemoteDevice

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
}

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
}

- (NSString *)getAddress {
  return nil;
}

- (void)connect {
}

- (void)disconnect {
}

- (void)close {
}

- (void)startServicesDiscovery {
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (NSString *)getName {
  return nil;
}

- (void)readRssi {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HoutbeckeRsLeDummyDummyLeRemoteDevice_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addListenerWithLeRemoteDeviceListener:", "addListener", "V", 0x1, NULL, NULL },
    { "removeListenerWithLeRemoteDeviceListener:", "removeListener", "V", 0x1, NULL, NULL },
    { "getAddress", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "connect", NULL, "V", 0x1, NULL, NULL },
    { "disconnect", NULL, "V", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "startServicesDiscovery", NULL, "V", 0x1, NULL, NULL },
    { "startServicesDiscoveryWithJavaUtilUUIDArray:", "startServicesDiscovery", "V", 0x81, NULL, NULL },
    { "setCharacteristicWriteListenerWithLeCharacteristicWriteListener:withJavaUtilUUIDArray:", "setCharacteristicWriteListener", "V", 0x81, NULL, NULL },
    { "setCharacteristicListenerWithLeCharacteristicListener:withJavaUtilUUIDArray:", "setCharacteristicListener", "V", 0x81, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "readRssi", NULL, "V", 0x1, NULL, NULL },
    { "init", "DummyLeRemoteDevice", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _HoutbeckeRsLeDummyDummyLeRemoteDevice = { 2, "DummyLeRemoteDevice", "houtbecke.rs.le.dummy", NULL, 0x1, 13, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_HoutbeckeRsLeDummyDummyLeRemoteDevice;
}

@end

void HoutbeckeRsLeDummyDummyLeRemoteDevice_init(HoutbeckeRsLeDummyDummyLeRemoteDevice *self) {
  NSObject_init(self);
}

HoutbeckeRsLeDummyDummyLeRemoteDevice *new_HoutbeckeRsLeDummyDummyLeRemoteDevice_init() {
  J2OBJC_NEW_IMPL(HoutbeckeRsLeDummyDummyLeRemoteDevice, init)
}

HoutbeckeRsLeDummyDummyLeRemoteDevice *create_HoutbeckeRsLeDummyDummyLeRemoteDevice_init() {
  J2OBJC_CREATE_IMPL(HoutbeckeRsLeDummyDummyLeRemoteDevice, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HoutbeckeRsLeDummyDummyLeRemoteDevice)
