
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeGattService.h"
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/util/UUID.h"

@implementation InterceptingLeGattService

- (instancetype)initWithLeGattService:(id<LeGattService>)leGattService
                    withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(self, leGattService, leInterceptor);
  return self;
}

- (JavaUtilUUID *)getUuid {
  @synchronized(leInterceptor_) {
    JavaUtilUUID *uuid = [((id<LeGattService>) nil_chk(leGattService_)) getUuid];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotUUIDWithInterceptingLeGattService:self withJavaUtilUUID:uuid];
    return uuid;
  }
}

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  @synchronized(leInterceptor_) {
    id<LeGattCharacteristic> leGattCharacteristic = [((id<LeGattService>) nil_chk(leGattService_)) getCharacteristicWithJavaUtilUUID:uuid];
    if (leGattCharacteristic == nil) return nil;
    InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((LeInterceptor *) nil_chk(leInterceptor_)) serviceGotCharacteristicWithInterceptingLeGattService:self withLeGattCharacteristic:leGattCharacteristic];
    [leInterceptor_ gotCharacteristicWithInterceptingLeGattService:self withInterceptingLeGattCharacteristic:iLeGattCharacteristic];
    return iLeGattCharacteristic;
  }
}

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic {
  @synchronized(leInterceptor_) {
    jboolean enabled = [((id<LeGattService>) nil_chk(leGattService_)) enableCharacteristicNotificationWithJavaUtilUUID:characteristic];
    [((LeInterceptor *) nil_chk(leInterceptor_)) enabledCharacteristicNotificationWithInterceptingLeGattService:self withJavaUtilUUID:characteristic withBoolean:enabled];
    return enabled;
  }
}

- (jboolean)isEqual:(id)o {
  if (o == nil) return false;
  if (o == self) return true;
  while ([o isKindOfClass:[InterceptingLeGattService class]]) o = ((InterceptingLeGattService *) nil_chk(((InterceptingLeGattService *) cast_chk(o, [InterceptingLeGattService class]))))->leGattService_;
  return ([LeGattService_class_() isInstance:o]) && [nil_chk(o) isEqual:leGattService_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeGattService>) nil_chk(leGattService_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeGattService:withLeInterceptor:", "InterceptingLeGattService", NULL, 0x1, NULL, NULL },
    { "getUuid", NULL, "Ljava.util.UUID;", 0x1, NULL, NULL },
    { "getCharacteristicWithJavaUtilUUID:", "getCharacteristic", "Lhoutbecke.rs.le.LeGattCharacteristic;", 0x1, NULL, NULL },
    { "enableCharacteristicNotificationWithJavaUtilUUID:", "enableCharacteristicNotification", "Z", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leGattService_", NULL, 0x11, "Lhoutbecke.rs.le.LeGattService;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeGattService = { 2, "InterceptingLeGattService", "houtbecke.rs.le.interceptor", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_InterceptingLeGattService;
}

@end

void InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(InterceptingLeGattService *self, id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  self->leGattService_ = leGattService;
}

InterceptingLeGattService *new_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeGattService, initWithLeGattService_withLeInterceptor_, leGattService, leInterceptor)
}

InterceptingLeGattService *create_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeGattService, initWithLeGattService_withLeInterceptor_, leGattService, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeGattService)
