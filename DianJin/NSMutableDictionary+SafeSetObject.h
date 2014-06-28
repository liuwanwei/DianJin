#import <Foundation/Foundation.h>


@interface NSMutableDictionary (SafeSetObject)

- (void)safeSetObject:(id)anObject forKey:(id < NSCopying >)aKey;
- (void)safeSetIntObject:(NSInteger)anObject forKey:(id < NSCopying >)aKey;

@end
