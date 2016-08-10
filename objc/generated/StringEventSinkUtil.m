
#include "Event.h"
#include "EventSink.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "StringEventSinkUtil.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"

@implementation StringEventSinkUtil

- (NSString *)writeWithEventSink:(id<EventSink>)eventSink {
  JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
  {
    IOSObjectArray *a__ = [((id<EventSink>) nil_chk(eventSink)) getEvents];
    Event * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    Event * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      Event *e = *b__++;
      (void) [sb appendWithNSString:[((Event *) nil_chk(e)) description]];
      (void) [sb appendWithNSString:JavaLangSystem_getPropertyWithNSString_(@"line.separator")];
    }
  }
  return [sb description];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  StringEventSinkUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeWithEventSink:", "write", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "StringEventSinkUtil", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _StringEventSinkUtil = { 2, "StringEventSinkUtil", "houtbecke.rs.le.interceptor", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_StringEventSinkUtil;
}

@end

void StringEventSinkUtil_init(StringEventSinkUtil *self) {
  NSObject_init(self);
}

StringEventSinkUtil *new_StringEventSinkUtil_init() {
  J2OBJC_NEW_IMPL(StringEventSinkUtil, init)
}

StringEventSinkUtil *create_StringEventSinkUtil_init() {
  J2OBJC_CREATE_IMPL(StringEventSinkUtil, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(StringEventSinkUtil)
