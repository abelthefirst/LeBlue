
#include "J2ObjC_source.h"
#include "LeGattDescriptor.h"

@interface LeGattDescriptor : NSObject

@end

@implementation LeGattDescriptor

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setValue", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeGattDescriptor = { 2, "LeGattDescriptor", "houtbecke.rs.le", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeGattDescriptor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattDescriptor)
