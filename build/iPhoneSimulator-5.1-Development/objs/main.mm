#import <UIKit/UIKit.h>

extern "C" {
    void rb_define_const(void *, const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
    void RubyMotionInit(int argc, char **argv);
void MREP_4A182A264C2648B98B5A71DF7D17AB6C(void *, void *);
void MREP_45A717221D9B497E898ABF041D92DA92(void *, void *);
void MREP_4AB058874E104AE88E5006867C55CA13(void *, void *);
void MREP_38E1635C7D094CFD95930564AC7439DF(void *, void *);
void MREP_4B57252831054359BC2AB52E2A5A5BAA(void *, void *);
void MREP_BB772DBFD8BA4A47B2FC106A5FF497E0(void *, void *);
void MREP_63302EFD70D345B1B50BA19A3EF724EC(void *, void *);
void MREP_44663CD79AAC4E25BBD5E6AC8631EAF6(void *, void *);
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
MREP_4A182A264C2648B98B5A71DF7D17AB6C(self, 0);
MREP_45A717221D9B497E898ABF041D92DA92(self, 0);
MREP_4AB058874E104AE88E5006867C55CA13(self, 0);
MREP_38E1635C7D094CFD95930564AC7439DF(self, 0);
MREP_4B57252831054359BC2AB52E2A5A5BAA(self, 0);
MREP_BB772DBFD8BA4A47B2FC106A5FF497E0(self, 0);
MREP_63302EFD70D345B1B50BA19A3EF724EC(self, 0);
MREP_44663CD79AAC4E25BBD5E6AC8631EAF6(self, 0);
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
