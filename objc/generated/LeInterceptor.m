
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "InterceptingLeCharacteristicListener.h"
#include "InterceptingLeCharacteristicWriteListener.h"
#include "InterceptingLeDevice.h"
#include "InterceptingLeDeviceListener.h"
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeGattService.h"
#include "InterceptingLeRemoteDevice.h"
#include "InterceptingLeRemoteDeviceListener.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeDeviceState.h"
#include "LeFormat.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeGattStatus.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"
#include "LeScanRecord.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/System.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/UUID.h"

@implementation LeInterceptor

- (InterceptingLeRemoteDevice *)getInterceptingLeRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  InterceptingLeRemoteDevice *iRemoteDevice = [((id<JavaUtilMap>) nil_chk(iRemoteDevices_)) getWithId:leRemoteDevice];
  if (iRemoteDevice == nil) {
    iRemoteDevice = new_InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(leRemoteDevice, self);
    (void) [((id<JavaUtilMap>) nil_chk(iRemoteDevices_)) putWithId:leRemoteDevice withId:iRemoteDevice];
  }
  return iRemoteDevice;
}

- (InterceptingLeDevice *)getInterceptingLeDeviceWithLeDevice:(id<LeDevice>)leDevice {
  InterceptingLeDevice *device = [((id<JavaUtilMap>) nil_chk(iDevices_)) getWithId:leDevice];
  if (device == nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Warning: unknown LeDevice"];
  }
  return device;
}

- (InterceptingLeDeviceListener *)getInterceptingLeDeviceListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  InterceptingLeDeviceListener *iDeviceListener = [((id<JavaUtilMap>) nil_chk(iDeviceListeners_)) getWithId:listener];
  if (iDeviceListener == nil) {
    iDeviceListener = new_InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(listener, self);
    (void) [((id<JavaUtilMap>) nil_chk(iDeviceListeners_)) putWithId:listener withId:iDeviceListener];
  }
  return iDeviceListener;
}

- (InterceptingLeRemoteDeviceListener *)getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  InterceptingLeRemoteDeviceListener *iRemoteDeviceListener = [((id<JavaUtilMap>) nil_chk(iRemoteDeviceListeners_)) getWithId:listener];
  if (iRemoteDeviceListener == nil) {
    iRemoteDeviceListener = new_InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(listener, self);
    (void) [((id<JavaUtilMap>) nil_chk(iRemoteDeviceListeners_)) putWithId:listener withId:iRemoteDeviceListener];
  }
  return iRemoteDeviceListener;
}

- (InterceptingLeGattService *)getInterceptingLeGattServiceWithLeGattService:(id<LeGattService>)leGattService {
  InterceptingLeGattService *iLeGattService = [((id<JavaUtilMap>) nil_chk(iGattServices_)) getWithId:leGattService];
  if (iLeGattService == nil) {
    iLeGattService = new_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(leGattService, self);
    (void) [((id<JavaUtilMap>) nil_chk(iGattServices_)) putWithId:leGattService withId:iLeGattService];
  }
  return iLeGattService;
}

- (InterceptingLeGattCharacteristic *)serviceGotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)leGattCharacteristic {
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) getWithId:leGattCharacteristic];
  if (iLeGattCharacteristic == nil) {
    iLeGattCharacteristic = new_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(leGattCharacteristic, self);
    (void) [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) putWithId:leGattCharacteristic withId:iLeGattCharacteristic];
  }
  return iLeGattCharacteristic;
}

- (InterceptingLeCharacteristicListener *)getInterceptingCharacteristicsListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener {
  InterceptingLeCharacteristicListener *iLeCharacteristicListener = [((id<JavaUtilMap>) nil_chk(iCharacteristicListeners_)) getWithId:listener];
  if (iLeCharacteristicListener == nil) {
    iLeCharacteristicListener = new_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(listener, self);
    (void) [((id<JavaUtilMap>) nil_chk(iCharacteristicListeners_)) putWithId:listener withId:iLeCharacteristicListener];
  }
  return iLeCharacteristicListener;
}

- (InterceptingLeCharacteristicWriteListener *)getInterceptingCharacteristicsWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener {
  InterceptingLeCharacteristicWriteListener *iLeCharacteristicWriteListener = [((id<JavaUtilMap>) nil_chk(iCharacteristicWriteListeners_)) getWithId:listener];
  if (iLeCharacteristicWriteListener == nil) {
    iLeCharacteristicWriteListener = new_InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(listener, self);
    (void) [((id<JavaUtilMap>) nil_chk(iCharacteristicWriteListeners_)) putWithId:listener withId:iLeCharacteristicWriteListener];
  }
  return iLeCharacteristicWriteListener;
}

- (InterceptingLeGattCharacteristic *)getInterceptingLeGattCharacteristicWithLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic {
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) getWithId:characteristic];
  if (iLeGattCharacteristic == nil) {
    iLeGattCharacteristic = new_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(characteristic, self);
    (void) [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) putWithId:characteristic withId:iLeGattCharacteristic];
  }
  return iLeGattCharacteristic;
}

- (void)listenerAddedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
             withInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iListener {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)deviceFoundWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                     withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)ileRemoteDevice
                                            withInt:(jint)rssi
                                   withLeScanRecord:(id<LeScanRecord>)scanrecord {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)deviceStateWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withLeDeviceState:(LeDeviceState *)deviceState {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)connectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                               withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                         withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)disconnectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                  withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)closedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                            withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                      withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotUUIDWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                            withJavaUtilUUID:(JavaUtilUUID *)uuid {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)enabledCharacteristicNotificationWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                      withJavaUtilUUID:(JavaUtilUUID *)characteristic
                                                           withBoolean:(jboolean)enabled {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)servicesDiscoveredWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                        withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                                withLeGattStatus:(LeGattStatus *)status
                              withInterceptingLeGattServiceArray:(IOSObjectArray *)iLeGattServices {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)listenerRemovedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)checkedBleHardwareAvailableWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                                withBoolean:(jboolean)bleHardwareEnabled {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)wasBtEnabledWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                 withBoolean:(jboolean)btEnabled {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)stoppedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotIntValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                           withLeFormat:(LeFormat *)format
                                                withInt:(jint)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)remoteListenerAddedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                   withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)remoteListenerRemovedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                     withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotAddressWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                    withNSString:(NSString *)address {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)connectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)disconnectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)closingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotRemoteDeviceNameWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                     withJavaUtilUUID:(JavaUtilUUID *)uuid
                                       withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                 withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicNotificationChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                                 withJavaUtilUUID:(JavaUtilUUID *)uuid
                                                   withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                              withJavaLangBoolean:(JavaLangBoolean *)success {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicWrittenWithInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iLeCharacteristicWriteListener
                                                          withJavaUtilUUID:(JavaUtilUUID *)uuid
                                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                      withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                       withJavaLangBoolean:(JavaLangBoolean *)success {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iCharacteristicsListener
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicWriteListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iCharacteristicsWriteListener
                                               withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value
                                 withJavaLangBoolean:(JavaLangBoolean *)withResponse {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                  withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)rssiReadWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                              withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                        withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                               withInt:(jint)rssi {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)readRssiWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)readWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeInterceptor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInterceptingLeRemoteDeviceWithLeRemoteDevice:", "getInterceptingLeRemoteDevice", "Lhoutbecke.rs.le.interceptor.InterceptingLeRemoteDevice;", 0x1, NULL, NULL },
    { "getInterceptingLeDeviceWithLeDevice:", "getInterceptingLeDevice", "Lhoutbecke.rs.le.interceptor.InterceptingLeDevice;", 0x1, NULL, NULL },
    { "getInterceptingLeDeviceListenerWithLeDeviceListener:", "getInterceptingLeDeviceListener", "Lhoutbecke.rs.le.interceptor.InterceptingLeDeviceListener;", 0x1, NULL, NULL },
    { "getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:", "getInterceptingLeRemoteDeviceListener", "Lhoutbecke.rs.le.interceptor.InterceptingLeRemoteDeviceListener;", 0x1, NULL, NULL },
    { "getInterceptingLeGattServiceWithLeGattService:", "getInterceptingLeGattService", "Lhoutbecke.rs.le.interceptor.InterceptingLeGattService;", 0x1, NULL, NULL },
    { "serviceGotCharacteristicWithInterceptingLeGattService:withLeGattCharacteristic:", "serviceGotCharacteristic", "Lhoutbecke.rs.le.interceptor.InterceptingLeGattCharacteristic;", 0x1, NULL, NULL },
    { "getInterceptingCharacteristicsListenerWithLeCharacteristicListener:", "getInterceptingCharacteristicsListener", "Lhoutbecke.rs.le.interceptor.InterceptingLeCharacteristicListener;", 0x1, NULL, NULL },
    { "getInterceptingCharacteristicsWriteListenerWithLeCharacteristicWriteListener:", "getInterceptingCharacteristicsWriteListener", "Lhoutbecke.rs.le.interceptor.InterceptingLeCharacteristicWriteListener;", 0x1, NULL, NULL },
    { "getInterceptingLeGattCharacteristicWithLeGattCharacteristic:", "getInterceptingLeGattCharacteristic", "Lhoutbecke.rs.le.interceptor.InterceptingLeGattCharacteristic;", 0x1, NULL, NULL },
    { "listenerAddedWithInterceptingLeDevice:withInterceptingLeDeviceListener:", "listenerAdded", "V", 0x401, NULL, NULL },
    { "deviceFoundWithInterceptingLeDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:withLeScanRecord:", "deviceFound", "V", 0x401, NULL, NULL },
    { "deviceStateWithInterceptingLeDeviceListener:withInterceptingLeDevice:withLeDeviceState:", "deviceState", "V", 0x401, NULL, NULL },
    { "connectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:", "connected", "V", 0x401, NULL, NULL },
    { "disconnectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:", "disconnected", "V", 0x401, NULL, NULL },
    { "closedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:", "closed", "V", 0x401, NULL, NULL },
    { "gotUUIDWithInterceptingLeGattService:withJavaUtilUUID:", "gotUUID", "V", 0x401, NULL, NULL },
    { "enabledCharacteristicNotificationWithInterceptingLeGattService:withJavaUtilUUID:withBoolean:", "enabledCharacteristicNotification", "V", 0x401, NULL, NULL },
    { "servicesDiscoveredWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withLeGattStatus:withInterceptingLeGattServiceArray:", "servicesDiscovered", "V", 0x401, NULL, NULL },
    { "listenerRemovedWithInterceptingLeDevice:", "listenerRemoved", "V", 0x401, NULL, NULL },
    { "checkedBleHardwareAvailableWithInterceptingLeDevice:withBoolean:", "checkedBleHardwareAvailable", "V", 0x401, NULL, NULL },
    { "wasBtEnabledWithInterceptingLeDevice:withBoolean:", "wasBtEnabled", "V", 0x401, NULL, NULL },
    { "startedScanningWithInterceptingLeDevice:", "startedScanning", "V", 0x401, NULL, NULL },
    { "startedScanningWithInterceptingLeDevice:withJavaUtilUUIDArray:", "startedScanning", "V", 0x401, NULL, NULL },
    { "stoppedScanningWithInterceptingLeDevice:", "stoppedScanning", "V", 0x401, NULL, NULL },
    { "gotValueWithInterceptingLeGattCharacteristic:withByteArray:", "gotValue", "V", 0x401, NULL, NULL },
    { "gotIntValueWithInterceptingLeGattCharacteristic:withLeFormat:withInt:", "gotIntValue", "V", 0x401, NULL, NULL },
    { "remoteListenerAddedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:", "remoteListenerAdded", "V", 0x401, NULL, NULL },
    { "remoteListenerRemovedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:", "remoteListenerRemoved", "V", 0x401, NULL, NULL },
    { "gotAddressWithInterceptingLeRemoteDevice:withNSString:", "gotAddress", "V", 0x401, NULL, NULL },
    { "connectingWithInterceptingLeRemoteDevice:", "connecting", "V", 0x401, NULL, NULL },
    { "disconnectingWithInterceptingLeRemoteDevice:", "disconnecting", "V", 0x401, NULL, NULL },
    { "closingWithInterceptingLeRemoteDevice:", "closing", "V", 0x401, NULL, NULL },
    { "serviceDiscoveryStartedWithInterceptingLeRemoteDevice:", "serviceDiscoveryStarted", "V", 0x401, NULL, NULL },
    { "serviceDiscoveryStartedWithInterceptingLeRemoteDevice:withJavaUtilUUIDArray:", "serviceDiscoveryStarted", "V", 0x401, NULL, NULL },
    { "gotRemoteDeviceNameWithInterceptingLeRemoteDevice:withNSString:", "gotRemoteDeviceName", "V", 0x401, NULL, NULL },
    { "characteristicChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:", "characteristicChanged", "V", 0x401, NULL, NULL },
    { "characteristicNotificationChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:", "characteristicNotificationChanged", "V", 0x401, NULL, NULL },
    { "characteristicWrittenWithInterceptingLeCharacteristicWriteListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:", "characteristicWritten", "V", 0x401, NULL, NULL },
    { "characteristicListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicListener:withJavaUtilUUIDArray:", "characteristicListenerSet", "V", 0x401, NULL, NULL },
    { "characteristicWriteListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicWriteListener:withJavaUtilUUIDArray:", "characteristicWriteListenerSet", "V", 0x401, NULL, NULL },
    { "setValueWithInterceptingLeGattCharacteristic:withByteArray:", "setValue", "V", 0x401, NULL, NULL },
    { "setValueWithInterceptingLeGattCharacteristic:withByteArray:withJavaLangBoolean:", "setValue", "V", 0x401, NULL, NULL },
    { "gotCharacteristicWithInterceptingLeGattService:withInterceptingLeGattCharacteristic:", "gotCharacteristic", "V", 0x401, NULL, NULL },
    { "rssiReadWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:", "rssiRead", "V", 0x401, NULL, NULL },
    { "readRssiWithInterceptingLeRemoteDevice:", "readRssi", "V", 0x401, NULL, NULL },
    { "readWithInterceptingLeGattCharacteristic:", "read", "V", 0x401, NULL, NULL },
    { "init", "LeInterceptor", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "iDevices_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeDevice;Lhoutbecke/rs/le/interceptor/InterceptingLeDevice;>;", .constantValue.asLong = 0 },
    { "iDeviceListeners_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeDeviceListener;Lhoutbecke/rs/le/interceptor/InterceptingLeDeviceListener;>;", .constantValue.asLong = 0 },
    { "iRemoteDevices_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeRemoteDevice;Lhoutbecke/rs/le/interceptor/InterceptingLeRemoteDevice;>;", .constantValue.asLong = 0 },
    { "iRemoteDeviceListeners_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeRemoteDeviceListener;Lhoutbecke/rs/le/interceptor/InterceptingLeRemoteDeviceListener;>;", .constantValue.asLong = 0 },
    { "iGattServices_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeGattService;Lhoutbecke/rs/le/interceptor/InterceptingLeGattService;>;", .constantValue.asLong = 0 },
    { "iGattCharacteristics_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeGattCharacteristic;Lhoutbecke/rs/le/interceptor/InterceptingLeGattCharacteristic;>;", .constantValue.asLong = 0 },
    { "iCharacteristicListeners_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeCharacteristicListener;Lhoutbecke/rs/le/interceptor/InterceptingLeCharacteristicListener;>;", .constantValue.asLong = 0 },
    { "iCharacteristicWriteListeners_", NULL, 0x1, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeCharacteristicWriteListener;Lhoutbecke/rs/le/interceptor/InterceptingLeCharacteristicWriteListener;>;", .constantValue.asLong = 0 },
    { "counter_", NULL, 0x41, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeInterceptor = { 2, "LeInterceptor", "houtbecke.rs.le.interceptor", NULL, 0x401, 47, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeInterceptor;
}

@end

void LeInterceptor_init(LeInterceptor *self) {
  NSObject_init(self);
  self->iDevices_ = new_JavaUtilHashMap_init();
  self->iDeviceListeners_ = new_JavaUtilHashMap_init();
  self->iRemoteDevices_ = new_JavaUtilHashMap_init();
  self->iRemoteDeviceListeners_ = new_JavaUtilHashMap_init();
  self->iGattServices_ = new_JavaUtilHashMap_init();
  self->iGattCharacteristics_ = new_JavaUtilHashMap_init();
  self->iCharacteristicListeners_ = new_JavaUtilHashMap_init();
  self->iCharacteristicWriteListeners_ = new_JavaUtilHashMap_init();
  JreAssignVolatileInt(&self->counter_, 0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeInterceptor)
