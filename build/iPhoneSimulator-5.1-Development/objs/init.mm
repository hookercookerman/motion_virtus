#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_1679FAE1591946359B84C4B2DD318990(void *, void *);
void MREP_FA893E935C3B46D5B01EDD96B9319013(void *, void *);
void MREP_E2365A32999749C7A59273BB45C5DF47(void *, void *);
void MREP_5CA782C387894A88A299066D4D45E868(void *, void *);
void MREP_E8234BABBBAB431AA563492F1811D02B(void *, void *);
void MREP_EE681F1536A547539393A99E83B6A8C1(void *, void *);
void MREP_E6216A44DDF9428580BA11E29D67FC73(void *, void *);
void MREP_624A71FC42914EBB90904C876226F4BA(void *, void *);
void MREP_21AA9383183F4508816487BBB9F3B08A(void *, void *);
void MREP_64226CB24790413DA14175F26FE6B27F(void *, void *);
void MREP_228E7DE54AF84C468AC3D3C243873736(void *, void *);
void MREP_A9AC298784A9488F98A41F2E1953E5F5(void *, void *);
void MREP_81B66833DB1E4D6BA79E113087328A41(void *, void *);
void MREP_BAEE4446AEF347FBB6452B5A7AF5EEF1(void *, void *);
void MREP_4B254DC9F599497884703D297BAD82EE(void *, void *);
void MREP_E8B0CA912406490089186BBD802062D8(void *, void *);
void MREP_851C67DF17F74C8E841122211F90D00D(void *, void *);
void MREP_AA4FDB77B58240858AB03329A540170C(void *, void *);
void MREP_DE924E5B516547F798743D2A0BB23304(void *, void *);
void MREP_E0B3411F594F4DA3BD8C6095887EA44F(void *, void *);
void MREP_DD228CFCE44B4D5FB0BA0C66BE5937C9(void *, void *);
void MREP_6383A5E5115B42A99BED1FA61EA4E4E2(void *, void *);
void MREP_AA478278F5594CEC8B1B010A1B4E506E(void *, void *);
void MREP_A84B3C50550D4709AB781DFE0E90C16E(void *, void *);
void MREP_B7EF1C9834B846EB918BC8800B97C0CF(void *, void *);
void MREP_6E36C57FB03246F393181B60C2AC7540(void *, void *);
void MREP_B26EE711540F48E1B075C74350392955(void *, void *);
void MREP_AF837CC7C3094D5FA468D8B69341A106(void *, void *);
void MREP_7B24851E70A94C1083B7070E823FDA0A(void *, void *);
void MREP_315FCDA390AC45038086DE2EEB9C9920(void *, void *);
void MREP_9997352F70A34985A20F15468DEF0C4B(void *, void *);
void MREP_698AB13C9063486FAB087A9AA2FB01C2(void *, void *);
void MREP_D2ECE88BEB554B8691A51A387D70EC52(void *, void *);
void MREP_725C60A0BA2A4BB695E22908CCDFD9C9(void *, void *);
void MREP_E70B578131D745F98EAD5FEE24E0B0BA(void *, void *);
void MREP_D99434DC4BAA47F6A74BC3F31F7E009D(void *, void *);
void MREP_5B28C8A4988D4150BA2CABE06DF95736(void *, void *);
void MREP_2F4881C0C54E4AD6811BC3FF7B2425CC(void *, void *);
void MREP_CA742D26F6784DB0BABBA4374C7237D7(void *, void *);
void MREP_DF2DEDA1DDF246C79CA319C7D7597FB5(void *, void *);
void MREP_BFD22A995E704659899347F7BC5486AE(void *, void *);
void MREP_99F36C8858654ABEA0A3CB9C12781CD5(void *, void *);
void MREP_FFE26189CE7D40FF8DA131D268F7B280(void *, void *);
void MREP_2EAAD7FFE7094A38B214BD2B85AE58A2(void *, void *);
void MREP_5469DA5F736E496FB0BF035DF53DABF8(void *, void *);
void MREP_0A3017AEA0684E2492F6AD13FCB2827F(void *, void *);
void MREP_4FDCF58676984343841DC41CDD26DB12(void *, void *);
void MREP_599DA1F4B4CA4D2DBC13C16BD7B2B849(void *, void *);
void MREP_C6AD01B6842B496FB0B7D666EB2DFEAA(void *, void *);
void MREP_327C586931794788B547FC63AFD9A224(void *, void *);
void MREP_83CD9C65FD724E2284FB1EB879AC4944(void *, void *);
void MREP_DB72F60E99B3402CA4487366C31ADA92(void *, void *);
void MREP_EE6E5A0ACB5F425CA5620E55A4F28774(void *, void *);
void MREP_A493F25493DA477EABA4BDE00699E313(void *, void *);
void MREP_EEE2D01F356146BEB8516409F220B49B(void *, void *);
void MREP_A78661969C0D4C0CB336861A0940A827(void *, void *);
void MREP_43D914ABF9C24B0B9A7CEF484AE91A79(void *, void *);
void MREP_8F70BC7E28954BB0972B8B2CF631FB2A(void *, void *);
void MREP_B95AE25897AF40298F6B0E9FE48B388B(void *, void *);
void MREP_12902D2505AE46BCA78BCF17B9B5CCCF(void *, void *);
void MREP_61A7F4D75085458389EFC8438A8EFE7C(void *, void *);
void MREP_3BF0261097784095BDCC30AE652BB3D4(void *, void *);
void MREP_20BDC216DFB848CC8F7733C04F454EAC(void *, void *);
void MREP_35C1163D2BC647D58F2B5831AA92531D(void *, void *);
void MREP_B89DDFA2C0124F2A87A5828229D2F1F5(void *, void *);
void MREP_E727C84C18E745E497C2603C469BB904(void *, void *);
void MREP_A8D8F9628BF64F7B8D8DAE832379712C(void *, void *);
void MREP_E44BCDE66D7B4348A11141561AD86779(void *, void *);
void MREP_688B76C89D6A4C0AA345CDEE291A129F(void *, void *);
void MREP_EDEA4D67141646D4B15856EA625F8786(void *, void *);
void MREP_1C814931E2644445AA754CC6EC091A91(void *, void *);
void MREP_CF840C31A46F4950BD28FA43DAD444D9(void *, void *);
void MREP_E39F2F0C0C7044BDB16C773EF70D7DA2(void *, void *);
void MREP_672A75AC63D241C38C1A84EECD37364E(void *, void *);
void MREP_AB3199FA35CD48BEBE134844890BCB8D(void *, void *);
void MREP_EADEEC938B924E53BD6B18A5030E058C(void *, void *);
void MREP_6563FAEC94FB42C1A4FF496F80B2BCFB(void *, void *);
void MREP_063C908340094C2C87575A6701925DA7(void *, void *);
void MREP_8A482B6868F1431FA4BC1A69F06E147C(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_1679FAE1591946359B84C4B2DD318990(self, 0);
MREP_FA893E935C3B46D5B01EDD96B9319013(self, 0);
MREP_E2365A32999749C7A59273BB45C5DF47(self, 0);
MREP_5CA782C387894A88A299066D4D45E868(self, 0);
MREP_E8234BABBBAB431AA563492F1811D02B(self, 0);
MREP_EE681F1536A547539393A99E83B6A8C1(self, 0);
MREP_E6216A44DDF9428580BA11E29D67FC73(self, 0);
MREP_624A71FC42914EBB90904C876226F4BA(self, 0);
MREP_21AA9383183F4508816487BBB9F3B08A(self, 0);
MREP_64226CB24790413DA14175F26FE6B27F(self, 0);
MREP_228E7DE54AF84C468AC3D3C243873736(self, 0);
MREP_A9AC298784A9488F98A41F2E1953E5F5(self, 0);
MREP_81B66833DB1E4D6BA79E113087328A41(self, 0);
MREP_BAEE4446AEF347FBB6452B5A7AF5EEF1(self, 0);
MREP_4B254DC9F599497884703D297BAD82EE(self, 0);
MREP_E8B0CA912406490089186BBD802062D8(self, 0);
MREP_851C67DF17F74C8E841122211F90D00D(self, 0);
MREP_AA4FDB77B58240858AB03329A540170C(self, 0);
MREP_DE924E5B516547F798743D2A0BB23304(self, 0);
MREP_E0B3411F594F4DA3BD8C6095887EA44F(self, 0);
MREP_DD228CFCE44B4D5FB0BA0C66BE5937C9(self, 0);
MREP_6383A5E5115B42A99BED1FA61EA4E4E2(self, 0);
MREP_AA478278F5594CEC8B1B010A1B4E506E(self, 0);
MREP_A84B3C50550D4709AB781DFE0E90C16E(self, 0);
MREP_B7EF1C9834B846EB918BC8800B97C0CF(self, 0);
MREP_6E36C57FB03246F393181B60C2AC7540(self, 0);
MREP_B26EE711540F48E1B075C74350392955(self, 0);
MREP_AF837CC7C3094D5FA468D8B69341A106(self, 0);
MREP_7B24851E70A94C1083B7070E823FDA0A(self, 0);
MREP_315FCDA390AC45038086DE2EEB9C9920(self, 0);
MREP_9997352F70A34985A20F15468DEF0C4B(self, 0);
MREP_698AB13C9063486FAB087A9AA2FB01C2(self, 0);
MREP_D2ECE88BEB554B8691A51A387D70EC52(self, 0);
MREP_725C60A0BA2A4BB695E22908CCDFD9C9(self, 0);
MREP_E70B578131D745F98EAD5FEE24E0B0BA(self, 0);
MREP_D99434DC4BAA47F6A74BC3F31F7E009D(self, 0);
MREP_5B28C8A4988D4150BA2CABE06DF95736(self, 0);
MREP_2F4881C0C54E4AD6811BC3FF7B2425CC(self, 0);
MREP_CA742D26F6784DB0BABBA4374C7237D7(self, 0);
MREP_DF2DEDA1DDF246C79CA319C7D7597FB5(self, 0);
MREP_BFD22A995E704659899347F7BC5486AE(self, 0);
MREP_99F36C8858654ABEA0A3CB9C12781CD5(self, 0);
MREP_FFE26189CE7D40FF8DA131D268F7B280(self, 0);
MREP_2EAAD7FFE7094A38B214BD2B85AE58A2(self, 0);
MREP_5469DA5F736E496FB0BF035DF53DABF8(self, 0);
MREP_0A3017AEA0684E2492F6AD13FCB2827F(self, 0);
MREP_4FDCF58676984343841DC41CDD26DB12(self, 0);
MREP_599DA1F4B4CA4D2DBC13C16BD7B2B849(self, 0);
MREP_C6AD01B6842B496FB0B7D666EB2DFEAA(self, 0);
MREP_327C586931794788B547FC63AFD9A224(self, 0);
MREP_83CD9C65FD724E2284FB1EB879AC4944(self, 0);
MREP_DB72F60E99B3402CA4487366C31ADA92(self, 0);
MREP_EE6E5A0ACB5F425CA5620E55A4F28774(self, 0);
MREP_A493F25493DA477EABA4BDE00699E313(self, 0);
MREP_EEE2D01F356146BEB8516409F220B49B(self, 0);
MREP_A78661969C0D4C0CB336861A0940A827(self, 0);
MREP_43D914ABF9C24B0B9A7CEF484AE91A79(self, 0);
MREP_8F70BC7E28954BB0972B8B2CF631FB2A(self, 0);
MREP_B95AE25897AF40298F6B0E9FE48B388B(self, 0);
MREP_12902D2505AE46BCA78BCF17B9B5CCCF(self, 0);
MREP_61A7F4D75085458389EFC8438A8EFE7C(self, 0);
MREP_3BF0261097784095BDCC30AE652BB3D4(self, 0);
MREP_20BDC216DFB848CC8F7733C04F454EAC(self, 0);
MREP_35C1163D2BC647D58F2B5831AA92531D(self, 0);
MREP_B89DDFA2C0124F2A87A5828229D2F1F5(self, 0);
MREP_E727C84C18E745E497C2603C469BB904(self, 0);
MREP_A8D8F9628BF64F7B8D8DAE832379712C(self, 0);
MREP_E44BCDE66D7B4348A11141561AD86779(self, 0);
MREP_688B76C89D6A4C0AA345CDEE291A129F(self, 0);
MREP_EDEA4D67141646D4B15856EA625F8786(self, 0);
MREP_1C814931E2644445AA754CC6EC091A91(self, 0);
MREP_CF840C31A46F4950BD28FA43DAD444D9(self, 0);
MREP_E39F2F0C0C7044BDB16C773EF70D7DA2(self, 0);
MREP_672A75AC63D241C38C1A84EECD37364E(self, 0);
MREP_AB3199FA35CD48BEBE134844890BCB8D(self, 0);
MREP_EADEEC938B924E53BD6B18A5030E058C(self, 0);
MREP_6563FAEC94FB42C1A4FF496F80B2BCFB(self, 0);
MREP_063C908340094C2C87575A6701925DA7(self, 0);
MREP_8A482B6868F1431FA4BC1A69F06E147C(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
