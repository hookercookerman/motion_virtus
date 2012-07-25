#import <UIKit/UIKit.h>

extern "C" {
    void rb_define_const(void *, const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
    void RubyMotionInit(int argc, char **argv);
void MREP_D4107F56A6E44D40AD14E43591524871(void *, void *);
void MREP_2230668B4BF5455DA9662079A1FF090E(void *, void *);
void MREP_67660E29F55540F28984046E92341856(void *, void *);
void MREP_E845B547055644D5A9B332B034065A32(void *, void *);
void MREP_C5EBA6A01BEE4BD798A61E20F88B0677(void *, void *);
void MREP_4EC0EF13E6D24491B5751D2ECA7E6DE2(void *, void *);
void MREP_0A6CE922E3D04B6490ED8D959749E8F6(void *, void *);
void MREP_C82F5BE1C3CB4E6A9BBBD58348805DE5(void *, void *);
void MREP_C39919BB21FB4A5BB37852883E8A70B2(void *, void *);
void MREP_EB42FC21D9C34D6C87C4355EBB914291(void *, void *);
void MREP_449A18A2AAE84FA485A81BBD37010FE3(void *, void *);
void MREP_977052094C534BA9AD68A4B52374EF1F(void *, void *);
void MREP_19AD8CFD94014AC2A16E3394268BDE68(void *, void *);
void MREP_B13F64CE26B445CC8C6D2956CC0DDAFE(void *, void *);
void MREP_195C80910E044579832F7F38C85F7528(void *, void *);
void MREP_D84A9B583AE24BA2822B5950FD9DB55A(void *, void *);
void MREP_5B80281F87864672940F0E43CF5B75C0(void *, void *);
void MREP_5E5AE56AB0C5478088550EE32E77B29A(void *, void *);
void MREP_D37EB70D78614085B72D4157D53F266B(void *, void *);
void MREP_47BAA8C853B2480688F8D76666A03EC7(void *, void *);
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
MREP_D4107F56A6E44D40AD14E43591524871(self, 0);
MREP_2230668B4BF5455DA9662079A1FF090E(self, 0);
MREP_67660E29F55540F28984046E92341856(self, 0);
MREP_E845B547055644D5A9B332B034065A32(self, 0);
MREP_C5EBA6A01BEE4BD798A61E20F88B0677(self, 0);
MREP_4EC0EF13E6D24491B5751D2ECA7E6DE2(self, 0);
MREP_0A6CE922E3D04B6490ED8D959749E8F6(self, 0);
MREP_C82F5BE1C3CB4E6A9BBBD58348805DE5(self, 0);
MREP_C39919BB21FB4A5BB37852883E8A70B2(self, 0);
MREP_EB42FC21D9C34D6C87C4355EBB914291(self, 0);
MREP_449A18A2AAE84FA485A81BBD37010FE3(self, 0);
MREP_977052094C534BA9AD68A4B52374EF1F(self, 0);
MREP_19AD8CFD94014AC2A16E3394268BDE68(self, 0);
MREP_B13F64CE26B445CC8C6D2956CC0DDAFE(self, 0);
MREP_195C80910E044579832F7F38C85F7528(self, 0);
MREP_D84A9B583AE24BA2822B5950FD9DB55A(self, 0);
MREP_5B80281F87864672940F0E43CF5B75C0(self, 0);
MREP_5E5AE56AB0C5478088550EE32E77B29A(self, 0);
MREP_D37EB70D78614085B72D4157D53F266B(self, 0);
MREP_47BAA8C853B2480688F8D76666A03EC7(self, 0);
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
