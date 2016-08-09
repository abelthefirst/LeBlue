//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/travis/build/thoutbeckers/LeBlue/LeBlue-java/src/main/java/houtbecke/rs/le/session/ListEventSinkSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ListEventSinkSource")
#ifdef RESTRICT_ListEventSinkSource
#define INCLUDE_ALL_ListEventSinkSource 0
#else
#define INCLUDE_ALL_ListEventSinkSource 1
#endif
#undef RESTRICT_ListEventSinkSource

#if !defined (ListEventSinkSource_) && (INCLUDE_ALL_ListEventSinkSource || defined(INCLUDE_ListEventSinkSource))
#define ListEventSinkSource_

#define RESTRICT_EventSink 1
#define INCLUDE_EventSink 1
#include "EventSink.h"

#define RESTRICT_EventSource 1
#define INCLUDE_EventSource 1
#include "EventSource.h"

@class Event;
@class IOSObjectArray;
@class JavaUtilLinkedList;
@protocol JavaUtilIterator;

@interface ListEventSinkSource : NSObject < EventSink, EventSource > {
 @public
  JavaUtilLinkedList *events_;
  id<JavaUtilIterator> iterator_;
  jint limit_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)limit;

- (void)addEventWithEvent:(Event *)event;

- (IOSObjectArray *)getEvents;

- (jboolean)hasMoreEvent;

- (Event *)lastEvent;

- (Event *)nextEvent;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(ListEventSinkSource)

J2OBJC_FIELD_SETTER(ListEventSinkSource, events_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(ListEventSinkSource, iterator_, id<JavaUtilIterator>)

FOUNDATION_EXPORT void ListEventSinkSource_init(ListEventSinkSource *self);

FOUNDATION_EXPORT ListEventSinkSource *new_ListEventSinkSource_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ListEventSinkSource *create_ListEventSinkSource_init();

FOUNDATION_EXPORT void ListEventSinkSource_initWithInt_(ListEventSinkSource *self, jint limit);

FOUNDATION_EXPORT ListEventSinkSource *new_ListEventSinkSource_initWithInt_(jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ListEventSinkSource *create_ListEventSinkSource_initWithInt_(jint limit);

J2OBJC_TYPE_LITERAL_HEADER(ListEventSinkSource)

@compatibility_alias HoutbeckeRsLeSessionListEventSinkSource ListEventSinkSource;

#endif

#pragma pop_macro("INCLUDE_ALL_ListEventSinkSource")