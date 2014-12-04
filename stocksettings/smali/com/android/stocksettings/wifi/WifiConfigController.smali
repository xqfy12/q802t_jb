.class public Lcom/android/stocksettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mCerPathString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCert_Cnt:I

.field private mCert_Set:Z

.field private mCertificateAs:Ljava/lang/String;

.field private mCertificateAsPath:Ljava/lang/String;

.field private mCertificateSpinner:Landroid/widget/Spinner;

.field private mCertificateText:Landroid/widget/TextView;

.field private mCertificateUser:Ljava/lang/String;

.field private mCertificateUserPath:Ljava/lang/String;

.field private final mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/TextView;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWapiKeyTypeSpinner:Landroid/widget/Spinner;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/stocksettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/stocksettings/wifi/AccessPoint;Z)V
    .locals 19
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Set:Z

    .line 101
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Cnt:I

    .line 114
    const-string v14, "unspecified"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 175
    sget-object v14, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 176
    sget-object v14, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 177
    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    .line 187
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/stocksettings/wifi/WifiConfigUiForSetupWizardXL;

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 189
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 190
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 191
    if-nez p3, :cond_2

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 193
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    .line 195
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v14}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 197
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 199
    .local v10, resources:Landroid/content/res/Resources;
    new-instance v14, Landroid/widget/ArrayAdapter;

    const v15, 0x1090008

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07002b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v5, v15, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const v15, 0x1090009

    invoke-virtual {v14, v15}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 204
    new-instance v14, Landroid/widget/ArrayAdapter;

    const v15, 0x1090008

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07002c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v5, v15, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    const v15, 0x1090009

    invoke-virtual {v14, v15}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 209
    const v14, 0x7f0b022b

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801e2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801db

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-nez v14, :cond_4

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01f8

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801c3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    new-instance v17, Lcom/android/stocksettings/wifi/Utf8ByteLengthFilter;

    const/16 v18, 0x20

    invoke-direct/range {v17 .. v18}, Lcom/android/stocksettings/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801c4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 231
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v14, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801ca

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801d0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 236
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v14, 0x7f0400a3

    const v15, 0x1020014

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07001c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v5, v14, v15, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 239
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 244
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showProxyFields()V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b024e

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b0250

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v14}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 340
    :cond_1
    return-void

    .line 191
    .end local v5           #context:Landroid/content/Context;
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    goto/16 :goto_0

    .line 241
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #resources:Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f08019c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v15, v15, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801c2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 255
    .local v6, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    .line 256
    .local v13, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v13, :cond_5

    .line 257
    const v14, 0x7f0b021c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/stocksettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/stocksettings/wifi/AccessPoint;->getLevel()I

    move-result v9

    .line 261
    .local v9, level:I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_6

    .line 262
    const v14, 0x7f070022

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 263
    .local v12, signal:[Ljava/lang/String;
    const v14, 0x7f0b021b

    aget-object v15, v12, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 266
    .end local v12           #signal:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/stocksettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 267
    .local v8, info:Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 268
    const v14, 0x7f0b021d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Mbps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 271
    :cond_7
    const v14, 0x7f0b021a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/stocksettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 273
    const/4 v11, 0x0

    .line 274
    .local v11, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 276
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v15, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v14, v15, :cond_8

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 278
    const/4 v11, 0x1

    .line 283
    :goto_3
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 284
    .local v2, a:Ljava/net/InetAddress;
    const v14, 0x7f0b021e

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 280
    .end local v2           #a:Ljava/net/InetAddress;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 288
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v15, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v14, v15, :cond_e

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 290
    const/4 v11, 0x1

    .line 296
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_c

    .line 297
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showProxyFields()V

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    if-eqz v11, :cond_c

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f5

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_c
    const-string v14, "CMCC-AUTO"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v15, v15, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_d

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_d

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801f3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b024e

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 292
    .restart local v4       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 317
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_f
    if-nez v13, :cond_10

    const/4 v14, -0x1

    if-eq v9, v14, :cond_10

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b024a

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 322
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 323
    const-string v14, "persist.env.settings.wifiprior"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 324
    invoke-static/range {p3 .. p3}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b024c

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 320
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0801e1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 329
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b024c

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, row:Landroid/view/View;
    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 345
    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method private handleCertificateChange(I)V
    .locals 3
    .parameter

    .prologue
    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateUserPath:Ljava/lang/String;

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/as.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/as.cer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateAsPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 520
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 521
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 525
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 526
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/stocksettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 527
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 555
    .end local v6           #result:I
    :goto_1
    return v7

    .line 521
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 532
    :cond_1
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 536
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 537
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 541
    .local v3, port:I
    const/4 v6, 0x0

    .line 543
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 544
    invoke-static {v2, v4, v1}, Lcom/android/stocksettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 548
    :goto_3
    if-nez v6, :cond_4

    .line 549
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 555
    goto :goto_1

    .line 532
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 545
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0b00ad

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 552
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 984
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 986
    .local v3, context:Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 988
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 996
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 998
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 999
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1000
    return-void

    .line 990
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 991
    .local v1, array:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 992
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 875
    return-void
.end method

.method private setCertificateSpinnerAdapter()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1017
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1019
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    .line 1022
    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Set:Z

    .line 1023
    iput v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1025
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wapi_certificate"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1028
    const-string v0, "WifiConfigController"

    const-string v1, " WifiConfigController.java->setCertificateSpinnerAdapter(), No Install Directory Present !! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1033
    array-length v4, v3

    iput v4, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1034
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1035
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1036
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/as.cer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user.cer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1039
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Set:Z

    .line 1045
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1048
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1052
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 888
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 891
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 870
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1003
    if-eqz p2, :cond_0

    .line 1005
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1006
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1007
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1013
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1006
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 880
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0801ee

    const v4, 0x7f0801ed

    const v3, 0x7f0801ea

    const/4 v2, 0x0

    .line 812
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    .line 822
    packed-switch p1, :pswitch_data_0

    .line 865
    :goto_0
    return-void

    .line 824
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 825
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 826
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 827
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 830
    :pswitch_1
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 831
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 832
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 833
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_0

    .line 837
    :pswitch_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 839
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 843
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 847
    :pswitch_3
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 849
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 853
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 857
    :pswitch_4
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 858
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 859
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 860
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 861
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 862
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 5

    .prologue
    const v4, 0x7f0801e3

    const/4 v3, 0x0

    .line 894
    const/4 v0, 0x0

    .line 896
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 899
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 902
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 903
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 906
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 907
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 908
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 909
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 911
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 912
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 913
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 914
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 915
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 917
    :cond_0
    if-eqz v1, :cond_5

    .line 918
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 919
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 920
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 922
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 928
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 929
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 935
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 936
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 939
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_5
    :goto_1
    return-void

    .line 943
    :cond_6
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0801dd

    const v5, 0x7f0801dc

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 948
    const/4 v0, 0x0

    .line 950
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 953
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 956
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 957
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 961
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 962
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 963
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 964
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 965
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 967
    :cond_0
    if-eqz v1, :cond_1

    .line 968
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 969
    if-eqz v0, :cond_1

    .line 970
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :cond_1
    :goto_1
    return-void

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v7, 0x7f0801f2

    const v6, 0x7f0801f1

    const v3, 0x7f0801f0

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 633
    iget-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 661
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 663
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 664
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    .line 669
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 670
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v1, 0x7f0b022a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 680
    :cond_3
    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 681
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 719
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 687
    :cond_5
    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 692
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateText:Landroid/widget/TextView;

    .line 698
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    .line 701
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 702
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setCertificateSpinnerAdapter()V

    .line 703
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 705
    :cond_6
    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 708
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 722
    :cond_7
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_9

    .line 725
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 726
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 727
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 728
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 729
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 730
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 731
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 733
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 738
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 739
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 740
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 741
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 742
    invoke-direct {p0, v1}, Lcom/android/stocksettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 743
    packed-switch v1, :pswitch_data_0

    .line 761
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 764
    :goto_2
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/stocksettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/stocksettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :goto_3
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    const-string v0, "CMCC-AUTO"

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 781
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 782
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 783
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 784
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_0

    .line 745
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 756
    :pswitch_1
    const-string v1, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 747
    :pswitch_2
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 750
    :pswitch_3
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 753
    :pswitch_4
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 771
    :cond_8
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 772
    invoke-direct {p0, v4}, Lcom/android/stocksettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_3

    .line 775
    :cond_9
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_3

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 745
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updatePasswordVisibility(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1151
    .local v0, pos:I
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1155
    if-ltz v0, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1158
    :cond_0
    return-void

    .line 1151
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13
    .parameter "linkProperties"

    .prologue
    .line 559
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 629
    :goto_0
    return v10

    .line 561
    :cond_0
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, ipAddr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0b0277

    goto :goto_0

    .line 564
    :cond_1
    const/4 v6, 0x0

    .line 566
    .local v6, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 571
    const/4 v9, -0x1

    .line 573
    .local v9, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 574
    if-ltz v9, :cond_2

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    .line 575
    :cond_2
    const v10, 0x7f0b027a

    goto :goto_0

    .line 567
    .end local v9           #networkPrefixLength:I
    :catch_0
    move-exception v3

    .line 568
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0b0277

    goto :goto_0

    .line 577
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 584
    :goto_1
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, gateway:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 588
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 589
    .local v8, netPart:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 590
    .local v0, addr:[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 591
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 605
    .end local v0           #addr:[B
    .end local v8           #netPart:Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, dns:Ljava/lang/String;
    const/4 v2, 0x0

    .line 608
    .local v2, dnsAddr:Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 610
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b027c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :goto_3
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 621
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 627
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 629
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 578
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v4           #gateway:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 580
    .local v3, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0282

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 596
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #gateway:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 598
    .local v5, gatewayAddr:Ljava/net/InetAddress;
    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 602
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 599
    :catch_2
    move-exception v3

    .line 600
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0b0278

    goto/16 :goto_0

    .line 613
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #gatewayAddr:Ljava/net/InetAddress;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsAddr:Ljava/net/InetAddress;
    :cond_6
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 617
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 614
    :catch_3
    move-exception v3

    .line 615
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0b0279

    goto/16 :goto_0

    .line 624
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 625
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0b0279

    goto/16 :goto_0

    .line 593
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto :goto_2

    .line 592
    :catch_6
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/stocksettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/wifi/WifiConfigController$1;-><init>(Lcom/android/stocksettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1069
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1074
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 351
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/stocksettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/stocksettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 352
    .local v2, submit:Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 355
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 357
    .local v1, passwordInvalid:Z
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 360
    :cond_2
    const/4 v1, 0x1

    .line 363
    :cond_3
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 366
    :cond_6
    const/4 v0, 0x0

    .line 374
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 368
    :cond_7
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 369
    const/4 v0, 0x1

    goto :goto_1

    .line 371
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/16 v10, 0x22

    const/4 v9, 0x0

    .line 378
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-eq v7, v11, :cond_0

    iget-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 379
    const/4 v2, 0x0

    .line 516
    :goto_0
    return-object v2

    .line 382
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 384
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 385
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/stocksettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 388
    iput-boolean v8, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 396
    :goto_1
    iget v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 506
    const/4 v2, 0x0

    goto :goto_0

    .line 389
    :cond_1
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-ne v7, v11, :cond_2

    .line 390
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/stocksettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 393
    :cond_2
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 398
    :pswitch_0
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 509
    :cond_3
    :goto_2
    const-string v7, "WifiConfigController"

    const-string v8, "==========> Setting IP fields"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 513
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 514
    new-instance v7, Landroid/net/LinkProperties;

    iget-object v8, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v8}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 403
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 404
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 405
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 406
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 407
    .local v4, length:I
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, password:Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_4

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_5

    :cond_4
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 411
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v9

    goto :goto_2

    .line 413
    :cond_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    goto :goto_2

    .line 419
    .end local v4           #length:I
    .end local v5           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 420
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 421
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    .restart local v5       #password:Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 423
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 425
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 431
    .end local v5           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 432
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 433
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .restart local v5       #password:Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 435
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 439
    :goto_3
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 437
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 445
    .end local v5           #password:Ljava/lang/String;
    :pswitch_4
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 446
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 447
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 453
    :pswitch_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 454
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 455
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 456
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 457
    .local v3, eapMethod:I
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 458
    .local v6, phase2Method:I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 459
    packed-switch v3, :pswitch_data_1

    .line 481
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 484
    :goto_4
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, caCert:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v0, ""

    .line 486
    :cond_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 487
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 488
    .local v1, clientCert:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v1, ""

    .line 489
    :cond_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 490
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 491
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 494
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 497
    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 498
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 464
    .end local v0           #caCert:Ljava/lang/String;
    .end local v1           #clientCert:Ljava/lang/String;
    :pswitch_6
    packed-switch v6, :pswitch_data_2

    .line 475
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown phase2 method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 466
    :pswitch_7
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 469
    :pswitch_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 472
    :pswitch_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 502
    .restart local v0       #caCert:Ljava/lang/String;
    .restart local v1       #clientCert:Ljava/lang/String;
    :cond_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 459
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    .line 464
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const v2, 0x7f0801f5

    .line 1083
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801c6

    if-ne v0, v1, :cond_1

    .line 1084
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiConfigController;->updatePasswordVisibility(Z)V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1085
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801f4

    if-ne v0, v1, :cond_0

    .line 1086
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1097
    iput p3, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1098
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_1

    .line 1116
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1117
    :cond_1
    return-void

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1100
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1101
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 1102
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1105
    :cond_4
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1106
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1107
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ############# WifiConfigController.java->onItemSelected() Cert_selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/stocksettings/wifi/WifiConfigController;->mCert_Cnt:I

    if-ge v0, v1, :cond_0

    .line 1109
    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiConfigController;->handleCertificateChange(I)V

    goto :goto_0

    .line 1112
    :cond_5
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1079
    return-void
.end method
