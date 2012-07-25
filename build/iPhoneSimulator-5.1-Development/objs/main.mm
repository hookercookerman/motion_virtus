#import <UIKit/UIKit.h>

extern "C" {
    void rb_define_const(void *, const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
    void RubyMotionInit(int argc, char **argv);
void MREP_A6436443575B4722AD427A37C8EEB13A(void *, void *);
void MREP_ADE42972B00144FCAF3CD2738C866A08(void *, void *);
void MREP_D9AA47DB6984409FBF07478AD04E8120(void *, void *);
void MREP_272E048A035F484CACD46332E62E8792(void *, void *);
void MREP_027D2411657340DC96150D16B3DD8693(void *, void *);
void MREP_32AF2F32C1784D19B2241CAAC75B55C6(void *, void *);
void MREP_74F69030A65F482DBDF1AFBD54B78906(void *, void *);
void MREP_9EDF752209854320B2EA56F58486BFBA(void *, void *);
void MREP_AF6AAE89F15542689768B59B83ADC943(void *, void *);
void MREP_31FEAA0565C24D548A55BFA0211FB0A9(void *, void *);
void MREP_798EF9167E834E51A869FF8A9C65EBD1(void *, void *);
void MREP_5B439611979B42EA99479630817326C3(void *, void *);
void MREP_613836E95F2C44629E54AADAE40F923C(void *, void *);
void MREP_40D8AA5C41E8418D834B1002F8C85658(void *, void *);
void MREP_68EA6AB408044860A0A3593814FF49AA(void *, void *);
void MREP_E08DD5655AE04786B9667F76592748B1(void *, void *);
void MREP_23A3D76CD37345868E67D59AA36AC351(void *, void *);
void MREP_56C2B03655D546C2B1229B7FD03C43E8(void *, void *);
void MREP_48006B85F6164D6DA896058B5E4E2E82(void *, void *);
void MREP_0C7D4D1A1B9F4263BE0E1BA2A7401CA4(void *, void *);
}
@interface SpecLauncher : NSObject
@end

#include <dlfcn.h>

@implementation SpecLauncher

+ (id)launcher
{
    [UIApplication sharedApplication];

    // Enable simulator accessibility.
    // Thanks http://www.stewgleadow.com/blog/2011/10/14/enabling-accessibility-for-ios-applications/
    NSString *simulatorRoot = [[[NSProcessInfo processInfo] environment] objectForKey:@"IPHONE_SIMULATOR_ROOT"];
    if (simulatorRoot != nil) {
        void *appSupportLibrary = dlopen([[simulatorRoot stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport"] fileSystemRepresentation], RTLD_LAZY);
        CFStringRef (*copySharedResourcesPreferencesDomainForDomain)(CFStringRef domain) = (CFStringRef (*)(CFStringRef)) dlsym(appSupportLibrary, "CPCopySharedResourcesPreferencesDomainForDomain");

        if (copySharedResourcesPreferencesDomainForDomain != NULL) {
            CFStringRef accessibilityDomain = copySharedResourcesPreferencesDomainForDomain(CFSTR("com.apple.Accessibility"));

            if (accessibilityDomain != NULL) {
                CFPreferencesSetValue(CFSTR("ApplicationAccessibilityEnabled"), kCFBooleanTrue, accessibilityDomain, kCFPreferencesAnyUser, kCFPreferencesAnyHost);
                CFRelease(accessibilityDomain);
            }
        }
    }

    SpecLauncher *launcher = [[self alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:launcher selector:@selector(appLaunched:) name:UIApplicationDidBecomeActiveNotification object:nil];
    return launcher; 
}

- (void)appLaunched:(id)notification
{
    // Give a bit of time for the simulator to attach...
    [self performSelector:@selector(runSpecs) withObject:nil afterDelay:0.1];
}

- (void)runSpecs
{
MREP_A6436443575B4722AD427A37C8EEB13A(self, 0);
MREP_ADE42972B00144FCAF3CD2738C866A08(self, 0);
MREP_D9AA47DB6984409FBF07478AD04E8120(self, 0);
MREP_272E048A035F484CACD46332E62E8792(self, 0);
MREP_027D2411657340DC96150D16B3DD8693(self, 0);
MREP_32AF2F32C1784D19B2241CAAC75B55C6(self, 0);
MREP_74F69030A65F482DBDF1AFBD54B78906(self, 0);
MREP_9EDF752209854320B2EA56F58486BFBA(self, 0);
MREP_AF6AAE89F15542689768B59B83ADC943(self, 0);
MREP_31FEAA0565C24D548A55BFA0211FB0A9(self, 0);
MREP_798EF9167E834E51A869FF8A9C65EBD1(self, 0);
MREP_5B439611979B42EA99479630817326C3(self, 0);
MREP_613836E95F2C44629E54AADAE40F923C(self, 0);
MREP_40D8AA5C41E8418D834B1002F8C85658(self, 0);
MREP_68EA6AB408044860A0A3593814FF49AA(self, 0);
MREP_E08DD5655AE04786B9667F76592748B1(self, 0);
MREP_23A3D76CD37345868E67D59AA36AC351(self, 0);
MREP_56C2B03655D546C2B1229B7FD03C43E8(self, 0);
MREP_48006B85F6164D6DA896058B5E4E2E82(self, 0);
MREP_0C7D4D1A1B9F4263BE0E1BA2A7401CA4(self, 0);
[NSClassFromString(@"Bacon") performSelector:@selector(run)];
}

@end
int
main(int argc, char **argv)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retval = 0;
    try {
[SpecLauncher launcher];
        RubyMotionInit(argc, argv);
rb_define_const([NSObject class], "RUBYMOTION_ENV", @"test");
        retval = UIApplicationMain(argc, argv, nil, @"TestSuiteDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
