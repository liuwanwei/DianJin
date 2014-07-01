#import <Foundation/Foundation.h>


@interface NSMutableDictionary (SafeSetObject)

- (void)safeSetObject:(id)anObject forKey:(id < NSCopying >)aKey;
- (void)safeSetInteger:(NSInteger)anObject forKey:(id < NSCopying >)aKey;

@end
