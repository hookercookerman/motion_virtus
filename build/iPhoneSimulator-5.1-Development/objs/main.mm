#import <UIKit/UIKit.h>

extern "C" {
    void rb_define_const(void *, const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
    void RubyMotionInit(int argc, char **argv);
void MREP_F4DACB18A0204739A030B851641A3169(void *, void *);
void MREP_867B3941D50A43689A5C86E315FB16A6(void *, void *);
void MREP_831F344F32F04BE38F9C47BC3726177B(void *, void *);
void MREP_F64CED322EDC46DF99EB1718B4DD103A(void *, void *);
void MREP_0647E04606FB45499062ADCDC6ABBA56(void *, void *);
void MREP_53AE3B59CEF44B87A87766BEE764671C(void *, void *);
void MREP_91F31A0C7AD9484E863895B92E58F4EC(void *, void *);
void MREP_424F9B7B21DD48A7A03925E7C65927F4(void *, void *);
void MREP_89FFF157B98F4197A29A69BA16F915F3(void *, void *);
void MREP_88E2B436FAFC44CE8B1F803162E71D90(void *, void *);
void MREP_D01C7B23488E41A191B117236CB45836(void *, void *);
void MREP_E5BD31AAF8EF43B88A63632F1937BF8F(void *, void *);
void MREP_B9B9AFF37C8E4B38A92243237544B97D(void *, void *);
void MREP_B91778B952C3456F8CFF30E96F557B81(void *, void *);
void MREP_0AC0F699E9E8447AB395E535CC020194(void *, void *);
void MREP_4231C38A11CE4697A9C47A85091E599E(void *, void *);
void MREP_720FC388D6CC42A4ACAF98CE48298E6C(void *, void *);
void MREP_7010266F46114978B8E28F707B1E9999(void *, void *);
void MREP_8D9DB630E9724F13890D3902FFB918F5(void *, void *);
void MREP_8438B37D9F47464D8C9DA2471515FC1E(void *, void *);
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
MREP_F4DACB18A0204739A030B851641A3169(self, 0);
MREP_867B3941D50A43689A5C86E315FB16A6(self, 0);
MREP_831F344F32F04BE38F9C47BC3726177B(self, 0);
MREP_F64CED322EDC46DF99EB1718B4DD103A(self, 0);
MREP_0647E04606FB45499062ADCDC6ABBA56(self, 0);
MREP_53AE3B59CEF44B87A87766BEE764671C(self, 0);
MREP_91F31A0C7AD9484E863895B92E58F4EC(self, 0);
MREP_424F9B7B21DD48A7A03925E7C65927F4(self, 0);
MREP_89FFF157B98F4197A29A69BA16F915F3(self, 0);
MREP_88E2B436FAFC44CE8B1F803162E71D90(self, 0);
MREP_D01C7B23488E41A191B117236CB45836(self, 0);
MREP_E5BD31AAF8EF43B88A63632F1937BF8F(self, 0);
MREP_B9B9AFF37C8E4B38A92243237544B97D(self, 0);
MREP_B91778B952C3456F8CFF30E96F557B81(self, 0);
MREP_0AC0F699E9E8447AB395E535CC020194(self, 0);
MREP_4231C38A11CE4697A9C47A85091E599E(self, 0);
MREP_720FC388D6CC42A4ACAF98CE48298E6C(self, 0);
MREP_7010266F46114978B8E28F707B1E9999(self, 0);
MREP_8D9DB630E9724F13890D3902FFB918F5(self, 0);
MREP_8438B37D9F47464D8C9DA2471515FC1E(self, 0);
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
