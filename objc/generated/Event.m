
#include "BaseIntercepting.h"
#include "Event.h"
#include "EventType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"

@implementation Event

- (instancetype)initWithEventType:(id<EventType>)type
             withBaseIntercepting:(BaseIntercepting *)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withBaseIntercepting_withNSStringArray_(self, type, source, values);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)delay
             withBaseIntercepting:(BaseIntercepting *)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(self, type, delay, source, values);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)source
                      withBoolean:(jboolean)value {
  Event_initWithEventType_withInt_withBoolean_(self, type, source, value);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)delay
                          withInt:(jint)source
                      withBoolean:(jboolean)value {
  Event_initWithEventType_withInt_withInt_withBoolean_(self, type, delay, source, value);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withInt_withNSStringArray_(self, type, source, values);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)delay
                          withInt:(jint)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, delay, source, values);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@$I$$$I$JC", @"Event{type=", type_, @", source=", source_, @", values=", JavaUtilArrays_toStringWithNSObjectArray_(values_), @", delay=", delay_, @", timeStamp=", timeStamp_, '}');
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self getClass] != (id) [o getClass]) return false;
  Event *event = (Event *) cast_chk(o, [Event class]);
  if (source_ != event->source_) return false;
  if (type_ != event->type_) return false;
  if (!JavaUtilArrays_deepEqualsWithNSObjectArray_withNSObjectArray_(values_, event->values_)) return false;
  return true;
}

- (NSUInteger)hash {
  jint result = ((jint) [((id<EventType>) nil_chk(type_)) hash]);
  result = 31 * result + source_;
  result = 31 * result + JavaUtilArrays_hashCodeWithNSObjectArray_(values_);
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithEventType:withBaseIntercepting:withNSStringArray:", "Event", NULL, 0x81, NULL, NULL },
    { "initWithEventType:withInt:withBaseIntercepting:withNSStringArray:", "Event", NULL, 0x81, NULL, NULL },
    { "initWithEventType:withInt:withBoolean:", "Event", NULL, 0x1, NULL, NULL },
    { "initWithEventType:withInt:withInt:withBoolean:", "Event", NULL, 0x1, NULL, NULL },
    { "initWithEventType:withInt:withNSStringArray:", "Event", NULL, 0x81, NULL, NULL },
    { "initWithEventType:withInt:withInt:withNSStringArray:", "Event", NULL, 0x81, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "type_", NULL, 0x1, "Lhoutbecke.rs.le.session.EventType;", NULL, NULL, .constantValue.asLong = 0 },
    { "source_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "delay_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "timeStamp_", NULL, 0x1, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "values_", NULL, 0x1, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _Event = { 2, "Event", "houtbecke.rs.le.session", NULL, 0x1, 9, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_Event;
}

@end

void Event_initWithEventType_withBaseIntercepting_withNSStringArray_(Event *self, id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, 0, ((BaseIntercepting *) nil_chk(source))->id__, values);
}

Event *new_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withBaseIntercepting_withNSStringArray_, type, source, values)
}

Event *create_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withBaseIntercepting_withNSStringArray_, type, source, values)
}

void Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(Event *self, id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, delay, ((BaseIntercepting *) nil_chk(source))->id__, values);
}

Event *new_Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withBaseIntercepting_withNSStringArray_, type, delay, source, values)
}

Event *create_Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withBaseIntercepting_withNSStringArray_, type, delay, source, values)
}

void Event_initWithEventType_withInt_withBoolean_(Event *self, id<EventType> type, jint source, jboolean value) {
  Event_initWithEventType_withInt_withInt_withBoolean_(self, type, 0, source, value);
}

Event *new_Event_initWithEventType_withInt_withBoolean_(id<EventType> type, jint source, jboolean value) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withBoolean_, type, source, value)
}

Event *create_Event_initWithEventType_withInt_withBoolean_(id<EventType> type, jint source, jboolean value) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withBoolean_, type, source, value)
}

void Event_initWithEventType_withInt_withInt_withBoolean_(Event *self, id<EventType> type, jint delay, jint source, jboolean value) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, delay, source, [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangBoolean_toStringWithBoolean_(value) } count:1 type:NSString_class_()]);
}

Event *new_Event_initWithEventType_withInt_withInt_withBoolean_(id<EventType> type, jint delay, jint source, jboolean value) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withInt_withBoolean_, type, delay, source, value)
}

Event *create_Event_initWithEventType_withInt_withInt_withBoolean_(id<EventType> type, jint delay, jint source, jboolean value) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withInt_withBoolean_, type, delay, source, value)
}

void Event_initWithEventType_withInt_withNSStringArray_(Event *self, id<EventType> type, jint source, IOSObjectArray *values) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, 0, source, values);
}

Event *new_Event_initWithEventType_withInt_withNSStringArray_(id<EventType> type, jint source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withNSStringArray_, type, source, values)
}

Event *create_Event_initWithEventType_withInt_withNSStringArray_(id<EventType> type, jint source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withNSStringArray_, type, source, values)
}

void Event_initWithEventType_withInt_withInt_withNSStringArray_(Event *self, id<EventType> type, jint delay, jint source, IOSObjectArray *values) {
  NSObject_init(self);
  self->type_ = type;
  self->source_ = source;
  self->values_ = values;
  self->delay_ = delay;
  self->timeStamp_ = JavaLangSystem_currentTimeMillis();
}

Event *new_Event_initWithEventType_withInt_withInt_withNSStringArray_(id<EventType> type, jint delay, jint source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withInt_withNSStringArray_, type, delay, source, values)
}

Event *create_Event_initWithEventType_withInt_withInt_withNSStringArray_(id<EventType> type, jint delay, jint source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withInt_withNSStringArray_, type, delay, source, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Event)
