
#include "J2ObjC_source.h"
#include "LeScanRecord.h"

@interface LeScanRecord : NSObject

@end

@implementation LeScanRecord

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getRecords", NULL, "[Lhoutbecke.rs.le.LeRecord;", 0x401, NULL, NULL },
    { "getRecordsWithIntArray:", "getRecords", "[Lhoutbecke.rs.le.LeRecord;", 0x481, NULL, NULL },
    { "getServices", NULL, "[Ljava.util.UUID;", 0x401, NULL, NULL },
    { "hasServiceWithJavaUtilUUID:", "hasService", "Z", 0x401, NULL, NULL },
    { "getLocalName", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
    { "getRawData", NULL, "[B", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeScanRecord = { 2, "LeScanRecord", "houtbecke.rs.le", NULL, 0x609, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeScanRecord;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeScanRecord)
