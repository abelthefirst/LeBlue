
#include "IOSPrimitiveArray.h"
#include "InterceptingLeGattCharacteristic.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeFormat.h"
#include "LeGattCharacteristic.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/lang/Boolean.h"

@implementation InterceptingLeGattCharacteristic

- (instancetype)initWithLeGattCharacteristic:(id<LeGattCharacteristic>)leGattCharacteristic
                           withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(self, leGattCharacteristic, leInterceptor);
  return self;
}

- (IOSByteArray *)getValue {
  @synchronized(leInterceptor_) {
    IOSByteArray *value = [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) getValue];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotValueWithInterceptingLeGattCharacteristic:self withByteArray:value];
    return value;
  }
}

- (jint)getIntValueWithLeFormat:(LeFormat *)format
                        withInt:(jint)index {
  @synchronized(leInterceptor_) {
    jint value = [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) getIntValueWithLeFormat:format withInt:index];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotIntValueWithInterceptingLeGattCharacteristic:self withLeFormat:format withInt:value];
    return value;
  }
}

- (void)setValueWithByteArray:(IOSByteArray *)value {
  @synchronized(leInterceptor_) {
    [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) setValueWithByteArray:value];
    [((LeInterceptor *) nil_chk(leInterceptor_)) setValueWithInterceptingLeGattCharacteristic:self withByteArray:value];
  }
}

- (void)setValueWithByteArray:(IOSByteArray *)value
                  withBoolean:(jboolean)withResponse {
  @synchronized(leInterceptor_) {
    [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) setValueWithByteArray:value withBoolean:withResponse];
    [((LeInterceptor *) nil_chk(leInterceptor_)) setValueWithInterceptingLeGattCharacteristic:self withByteArray:value withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(withResponse)];
  }
}

- (void)read {
  @synchronized(leInterceptor_) {
    [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) read];
    [((LeInterceptor *) nil_chk(leInterceptor_)) readWithInterceptingLeGattCharacteristic:self];
  }
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeGattCharacteristic class]]) o = ((InterceptingLeGattCharacteristic *) nil_chk(((InterceptingLeGattCharacteristic *) cast_chk(o, [InterceptingLeGattCharacteristic class]))))->leGattCharacteristic_;
  return [LeCharacteristicListener_class_() isInstance:o] && [nil_chk(o) isEqual:leGattCharacteristic_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeGattCharacteristic:withLeInterceptor:", "InterceptingLeGattCharacteristic", NULL, 0x1, NULL, NULL },
    { "getValue", NULL, "[B", 0x1, NULL, NULL },
    { "getIntValueWithLeFormat:withInt:", "getIntValue", "I", 0x1, NULL, NULL },
    { "setValueWithByteArray:", "setValue", "V", 0x1, NULL, NULL },
    { "setValueWithByteArray:withBoolean:", "setValue", "V", 0x1, NULL, NULL },
    { "read", NULL, "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leGattCharacteristic_", NULL, 0x11, "Lhoutbecke.rs.le.LeGattCharacteristic;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeGattCharacteristic = { 2, "InterceptingLeGattCharacteristic", "houtbecke.rs.le.interceptor", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_InterceptingLeGattCharacteristic;
}

@end

void InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(InterceptingLeGattCharacteristic *self, id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  self->leGattCharacteristic_ = leGattCharacteristic;
}

InterceptingLeGattCharacteristic *new_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeGattCharacteristic, initWithLeGattCharacteristic_withLeInterceptor_, leGattCharacteristic, leInterceptor)
}

InterceptingLeGattCharacteristic *create_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeGattCharacteristic, initWithLeGattCharacteristic_withLeInterceptor_, leGattCharacteristic, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeGattCharacteristic)
