#import "NSMutableDictionary+SafeSetObject.h"

@implementation NSMutableDictionary ( SafeSetObject )

- (void)safeSetObject:(id)anObject forKey:(id < NSCopying >)aKey{
    if (anObject != nil){        
        [self setObject:anObject forKey:aKey];
    }
}

- (void)safeSetIntObject:(NSInteger)anObject forKey:(id < NSCopying >)aKey{
    if (anObject != 0){
        [self setObject:[NSNumber numberWithInteger:anObject] forKey:aKey];
    }
}


@end
