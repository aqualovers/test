.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;
.super Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;
.source "BsmoWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;
    }
.end annotation


# static fields
.field public static final ACTION_AVATAR:Ljava/lang/String; = "avatar"

.field public static final ACTION_FAQ:Ljava/lang/String; = "faq"

.field public static final ACTION_GAME:Ljava/lang/String; = "game"

.field public static final ACTION_INFO:Ljava/lang/String; = "info"

.field public static final ACTION_MYPAGE:Ljava/lang/String; = "mypage"

.field public static final ACTION_SETTING:Ljava/lang/String; = "setting"

.field public static final ACTION_STORE:Ljava/lang/String; = "store"


# instance fields
.field public layout:I

.field public mAction:Ljava/lang/String;

.field public mCantClose:Z

.field public mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

.field mDashboardClosed:Z

.field private mImageUri:Landroid/net/Uri;

.field mIsButtonDisable:Z

.field public mUrl:Ljava/lang/String;

.field mUserAgentDefault:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    .line 95
    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    .line 98
    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mDashboardClosed:Z

    .line 101
    iput-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUserAgentDefault:Ljava/lang/String;

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->saveURLParams(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method private createBillingHttpHeader()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSupportedBilling()Ljava/lang/Boolean;

    move-result-object v2

    .line 248
    .local v2, "supportedBilling":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "1"

    .line 250
    .local v1, "supported":Ljava/lang/String;
    :goto_0
    const-string v3, "bsmobilling"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v3, "BushimoSDK"

    const-string v4, "**Android Billing=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v1    # "supported":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 249
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 254
    :cond_1
    const-string v3, "BushimoSDK"

    const-string v4, "**Android Billing= 1/0"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createContactAppHttpHeader()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v12, 0x7f060034

    .line 307
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v9

    const-string v10, "string"

    const-string v11, "bsmo_app_id"

    invoke-virtual {v9, v12, v10, v11}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 312
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v9

    const-string v10, "string"

    const-string v11, "bsmo_app_id"

    invoke-virtual {v9, v12, v10, v11}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "gameId":Ljava/lang/String;
    const-string v8, "bsmogameid"

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v1    # "gameId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->gameUid:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 319
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->gameUid:Ljava/lang/String;

    invoke-static {v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "gameUid":Ljava/lang/String;
    const-string v8, "bsmogameuid"

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v2    # "gameUid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->nickname:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 326
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->nickname:Ljava/lang/String;

    invoke-static {v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "nickname":Ljava/lang/String;
    const-string v8, "bsmonickname"

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v5    # "nickname":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->questionType:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->questionType:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_3

    .line 332
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->questionType:Ljava/util/ArrayList;

    const-string v9, ","

    invoke-static {v8, v9}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->changeArrayToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "questionType":Ljava/lang/String;
    invoke-static {v7}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    const-string v8, "bsmoquestiontypes"

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v7    # "questionType":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->gameVersion:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 343
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v8

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    iget-object v8, v8, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->gameVersion:Ljava/lang/String;

    invoke-static {v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "gameVersion":Ljava/lang/String;
    const-string v8, "bsmogameversion"

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v3    # "gameVersion":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getOSVersion()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 350
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getOSVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "osVersion":Ljava/lang/String;
    const-string v8, "osversion"

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v6    # "osVersion":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 357
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "deviceName":Ljava/lang/String;
    const-string v8, "devicename"

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_6
    return-object v4
.end method

.method private createDashBoardHttpHeader()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 273
    const-string v3, "accesstoken"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    const-string v3, "bsmodashboard"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v3, "consumerkey"

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getConsumerKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 283
    .local v1, "model":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 284
    const-string v3, "bsmodeviceinfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1
    const-string v3, "sdkversion"

    const-string v4, "3.2.3"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v3, "enablesnslogin"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v3, "enablesnsloginfacebook"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-object v0
.end method

.method private disableButton()V
    .locals 7

    .prologue
    .line 230
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    const v3, 0x7f0c006e

    const-string v4, "id"

    const-string v5, "btnTbMypage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 231
    .local v1, "mypage":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f02005c

    const-string v5, "drawable"

    const-string v6, "bsmo_tb_btn_mypage_disable"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    const v3, 0x7f0c006f

    const-string v4, "id"

    const-string v5, "btnTbGame"

    invoke-virtual {v2, v3, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 235
    .local v0, "game":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f02005a

    const-string v5, "drawable"

    const-string v6, "bsmo_tb_btn_game_disable"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-void
.end method

.method private makeBitmap(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 1042
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1043
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1044
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1045
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1046
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_0

    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-le v2, v3, :cond_2

    .line 1050
    :cond_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1051
    .local v15, "options2":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1054
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1055
    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1057
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1059
    .local v1, "img":Landroid/graphics/Bitmap;
    const-string v2, "BushimoSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "img width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static/range {p1 .. p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getRotateDegree(Ljava/lang/String;)I

    move-result v8

    .line 1063
    .local v8, "degree":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1064
    .local v6, "mat":Landroid/graphics/Matrix;
    int-to-float v2, v8

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1065
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1069
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x320

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    const/16 v3, 0x320

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1075
    :goto_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getResizeImgCacheFilePath()Ljava/lang/String;

    move-result-object v10

    .line 1077
    .local v10, "dirPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1080
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 1082
    :cond_1
    const/4 v13, 0x0

    .line 1084
    .local v13, "fullPath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tmp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1085
    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1086
    .local v12, "fos":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1087
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    const/4 v1, 0x0

    move-object/from16 p1, v13

    .line 1097
    .end local v1    # "img":Landroid/graphics/Bitmap;
    .end local v6    # "mat":Landroid/graphics/Matrix;
    .end local v8    # "degree":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "fullPath":Ljava/lang/String;
    .end local v15    # "options2":Landroid/graphics/BitmapFactory$Options;
    .end local p1    # "imgPath":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 1071
    .restart local v1    # "img":Landroid/graphics/Bitmap;
    .restart local v6    # "mat":Landroid/graphics/Matrix;
    .restart local v8    # "degree":I
    .restart local v15    # "options2":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "imgPath":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x320

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0x320

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 1088
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v10    # "dirPath":Ljava/lang/String;
    .restart local v13    # "fullPath":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1089
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "BsmoWebActivity::makeBitmap"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v1, 0x0

    .line 1091
    const/16 p1, 0x0

    goto :goto_1
.end method

.method private overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v11, "BushimoSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "webview load = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "mailto:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 428
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 430
    const/4 v11, 0x1

    .line 719
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return v11

    .line 432
    :cond_0
    const-string v11, "tel:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 434
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.DIAL"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 435
    const/4 v11, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const-string v11, "market://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 440
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 441
    .local v8, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 442
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 444
    const/4 v11, 0x1

    goto :goto_0

    .line 447
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v11, "file://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 450
    const-string v11, "file:///m/dashboard/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createBillingHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createDashBoardHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 457
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 458
    .local v7, "sb":Ljava/lang/StringBuffer;
    const-string v11, "https://"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    const-string v11, "www.bushimo.jp"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    const-string v11, "file://"

    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "replaceUrl":Ljava/lang/String;
    const-string v11, "BushimoSDK replaced url"

    invoke-static {v11, v6}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 468
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 498
    .end local v6    # "replaceUrl":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 471
    :cond_4
    const-string v11, "file:///m/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 474
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    const-string v11, "http://"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v11, "www.bushimo.jp"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v11, "file://"

    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 480
    .restart local v6    # "replaceUrl":Ljava/lang/String;
    const-string v11, "BushimoSDK replaced url"

    invoke-static {v11, v6}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_5

    .line 484
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 485
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 491
    .end local v6    # "replaceUrl":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_7

    .line 492
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 494
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 501
    :cond_8
    const-string v11, "app://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 504
    const-string v11, "app://image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->showImageUploadDialog(Ljava/lang/String;)V

    .line 518
    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 514
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->shouldOverrideUrlLoadingApp(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 521
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v12

    const v13, 0x7f060036

    const-string v14, "string"

    const-string v15, "bsmo_callback_scheme"

    invoke-virtual {v12, v13, v14, v15}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 524
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v12

    const v13, 0x7f060036

    const-string v14, "string"

    const-string v15, "bsmo_callback_scheme"

    invoke-virtual {v12, v13, v14, v15}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, "uriPrefix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "callback"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 530
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v11, v12, v0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->oauthCallback(Landroid/net/Uri;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V

    .line 562
    :cond_b
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 533
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?done="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createBillingHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createDashBoardHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 540
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 541
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    const-string v11, "https://"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const-string v11, "www.bushimo.jp"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?done="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v11, "BushimoSDK replaced url"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_d

    .line 548
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 549
    :cond_d
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 554
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_e
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 556
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mDashboardClosed:Z

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->finish()V

    goto/16 :goto_3

    .line 564
    .end local v9    # "uriPrefix":Ljava/lang/String;
    :cond_f
    const-string v11, "/m/dashboard/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_12

    .line 567
    const-string v11, "/m/dashboard/invalid.htm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_10

    .line 571
    const/4 v11, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v12

    const v13, 0x7f060041

    const-string v14, "string"

    const-string v15, "bsmo_error_invalid_accesstoken"

    invoke-virtual {v12, v13, v14, v15}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->logout()V

    .line 577
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->disableButton()V

    .line 581
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "login"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 597
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 587
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createBillingHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createDashBoardHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_11

    .line 592
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 593
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 602
    :cond_12
    invoke-static/range {p2 .. p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isBushimoSite(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 606
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v11

    const v12, 0x7f0c0069

    const-string v13, "id"

    const-string v14, "webview"

    invoke-virtual {v11, v12, v13, v14}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    .line 607
    .local v10, "webview":Landroid/webkit/WebView;
    invoke-static/range {p2 .. p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isFacebookUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 609
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUserAgentDefault:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 610
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mUserAgentDefault = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUserAgentDefault:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 611
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "webview.getSettings().getUserAgentString() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 616
    :goto_5
    const-string v11, "/m/login/logout.htm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_15

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isAuthorized()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 620
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->logout()V

    .line 623
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->disableButton()V

    .line 627
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_13

    .line 628
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 629
    :cond_13
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 709
    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 613
    :cond_14
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const-string v12, "Bushimo Dashboard Android"

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_5

    .line 632
    :cond_15
    const-string v11, "/m/login/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "/m/login/index.htm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 636
    :cond_16
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->logout()V

    .line 639
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->disableButton()V

    .line 643
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "login"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_6

    .line 645
    :cond_17
    const-string v11, "/m/withdrawal/complete.htm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 649
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->logout()V

    .line 652
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->disableButton()V

    .line 655
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_18

    .line 656
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 657
    :cond_18
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6

    .line 659
    :cond_19
    const-string v11, "/m/myprofile/complete.htm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 663
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->updateProfile()V

    .line 665
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_1a

    .line 666
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 667
    :cond_1a
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 670
    :cond_1b
    const-string v11, "/m/login/index2.htm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1c

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createBillingHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createDashBoardHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 674
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 677
    :cond_1c
    const-string v11, "/m/contact_app/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1d

    .line 678
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createDashBoardHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->createContactAppHttpHeader()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 682
    const-string v11, "contact_app"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "contact_app.header="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 688
    :cond_1d
    invoke-static/range {p2 .. p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->parseUrlParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 689
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "newwindow"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 692
    .local v4, "isExistParam":Z
    if-eqz v4, :cond_1e

    .line 693
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 694
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 697
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_20

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "alert_access_token"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 700
    const/4 v11, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v12

    const v13, 0x7f060041

    const-string v14, "string"

    const-string v15, "bsmo_error_invalid_accesstoken"

    invoke-virtual {v12, v13, v14, v15}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_1f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v11, v11, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 705
    :cond_20
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 714
    .end local v4    # "isExistParam":Z
    .end local v5    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "webview":Landroid/webkit/WebView;
    :cond_21
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 715
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 719
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private saveURLParams(Ljava/lang/String;)V
    .locals 5
    .param p1, "aRequestUrl"    # Ljava/lang/String;

    .prologue
    .line 979
    const-string v4, "app://image"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 980
    .local v3, "startidx":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, "query":Ljava/lang/String;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 983
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 984
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "bsmo_img_upload_params"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 985
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 987
    return-void
.end method

.method private updateProfile()V
    .locals 9

    .prologue
    .line 1147
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1148
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "access_token"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1153
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "accessToken"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v3, "consumerKey"

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v5

    const v6, 0x7f06003d

    const-string v7, "string"

    const-string v8, "bsmo_consumer_key"

    invoke-virtual {v5, v6, v7, v8}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    const-string v4, "rest/wapi/person/@me/@self/"

    const-string v5, "entry"

    new-instance v6, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$4;

    invoke-direct {v6, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$4;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)V

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseItem(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 1180
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public go(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    const v2, 0x7f0c0069

    const-string v3, "id"

    const-string v4, "webview"

    invoke-virtual {v1, v2, v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 814
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->updateButtons()V

    .line 816
    invoke-direct {p0, v0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 817
    return-void
.end method

.method public goAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1105
    invoke-virtual {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->setAction(Ljava/lang/String;)V

    .line 1107
    invoke-static {p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->action2Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    .line 1108
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f060040

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 840
    invoke-super {p0, p1, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 842
    const-string v3, "BushimoSDK Event"

    const-string v4, "onActivityResult"

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v3, "BushimoSDK DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/16 v3, 0xb

    if-ne p1, v3, :cond_3

    .line 849
    if-ne p2, v7, :cond_1

    .line 853
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v3, v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 854
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v3, v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 856
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 857
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 858
    const-string v3, "BushimoSDK DEBUG"

    const-string v4, "imgPath is null..."

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "bsmo_error_img_upload"

    invoke-virtual {v3, v9, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 862
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->uploadImg(Landroid/net/Uri;)V

    goto :goto_0

    .line 866
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    const/16 v3, 0x16

    if-ne p1, v3, :cond_1

    .line 869
    if-ne p2, v7, :cond_1

    .line 873
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v3, v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_4

    .line 874
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v3, v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 876
    :cond_4
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 878
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 879
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "camera_uri"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "cameraUri":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 882
    const-string v3, "BushimoSDK DEBUG"

    const-string v4, "imgPath is null..."

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "bsmo_error_img_upload"

    invoke-virtual {v3, v9, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    .line 890
    .end local v0    # "cameraUri":Ljava/lang/String;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_6
    const-string v3, "BushimoSDK selected image"

    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->uploadImg(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onClickBack(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isDisableButton"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->finish()V

    .line 738
    :goto_0
    return-void

    .line 734
    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    const v2, 0x7f0c0069

    const-string v3, "id"

    const-string v4, "webview"

    invoke-virtual {v1, v2, v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 735
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public onClickContactApp(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 800
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    const v2, 0x7f0c0069

    const-string v3, "id"

    const-string v4, "webview"

    invoke-virtual {v1, v2, v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 801
    .local v0, "webview":Landroid/webkit/WebView;
    const-string v1, "https://www.bushimo.jp/m/contact_app/input.htm"

    invoke-direct {p0, v0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 802
    return-void
.end method

.method public onClickGame(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 786
    :cond_0
    const-string v0, "game"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->action2Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->go(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClickMyPage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    if-eqz v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 767
    :cond_0
    const-string v0, "mypage"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->action2Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->go(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClickReload(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 745
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    const v2, 0x7f0c0069

    const-string v3, "id"

    const-string v4, "webview"

    invoke-virtual {v1, v2, v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 746
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 747
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 750
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v1, v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v1, v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 753
    :cond_0
    return-void
.end method

.method public onClickResume(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mDashboardClosed:Z

    .line 827
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->finish()V

    .line 828
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 109
    invoke-virtual {p0, v7}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-super {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f03001c

    const-string v5, "layout"

    const-string v6, "bsmo_webview"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->layout:I

    .line 120
    :goto_0
    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->layout:I

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->setContentView(I)V

    .line 123
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f0c0069

    const-string v5, "id"

    const-string v6, "webview"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 124
    .local v2, "webview":Landroid/webkit/WebView;
    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 125
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUserAgentDefault:Ljava/lang/String;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserAgentDefault = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUserAgentDefault:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webview.getSettings().getUserAgentString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "Bushimo Dashboard Android"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 129
    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 133
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 136
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    if-nez v3, :cond_0

    .line 137
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$1;

    invoke-direct {v3, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)V

    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v5, 0x7f0c0064

    const-string v6, "id"

    const-string v7, "progressbar"

    invoke-virtual {v3, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v4, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    .line 148
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "BSMO_CALLBACK_SNS_LOGIN_KEY"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    .local v1, "sns":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 156
    const-string v3, "sns_login"

    invoke-static {v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->action2Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    .line 159
    :cond_2
    const-string v3, "requiredLogin"

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getLoginType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    iput-boolean v8, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mCantClose:Z

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->updateButtons()V

    .line 166
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 182
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f0c006a

    const-string v5, "id"

    const-string v6, "maskForWebview"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "maskView":Landroid/view/View;
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$2;

    invoke-direct {v3, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$2;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    return-void

    .line 117
    .end local v0    # "maskView":Landroid/view/View;
    .end local v1    # "sns":Ljava/lang/Integer;
    .end local v2    # "webview":Landroid/webkit/WebView;
    :cond_4
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f03001a

    const-string v5, "layout"

    const-string v6, "bsmo_pf_webview"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->layout:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1184
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onDestroy()V

    .line 1185
    iget-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mDashboardClosed:Z

    if-eqz v0, :cond_0

    .line 1186
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v0

    const-string v1, "dashboardClosed"

    invoke-virtual {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 1188
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1114
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 1116
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    const v3, 0x7f0c0069

    const-string v4, "id"

    const-string v5, "webview"

    invoke-virtual {v2, v3, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1117
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->onClickBack(Landroid/view/View;)V

    .line 1126
    .end local v0    # "webview":Landroid/webkit/WebView;
    :goto_0
    return v1

    .line 1120
    .restart local v0    # "webview":Landroid/webkit/WebView;
    :cond_0
    iput-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mDashboardClosed:Z

    .line 1121
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->finish()V

    goto :goto_0

    .line 1126
    .end local v0    # "webview":Landroid/webkit/WebView;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1138
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onPause()V

    .line 1139
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1140
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 1132
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onRestart()V

    .line 1133
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1134
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mAction:Ljava/lang/String;

    .line 1102
    return-void
.end method

.method protected shouldOverrideUrlLoadingApp(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 836
    return-void
.end method

.method protected showImageUploadDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "aRequestUrl"    # Ljava/lang/String;

    .prologue
    .line 904
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 905
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f06003c

    const-string v5, "string"

    const-string v6, "bsmo_confirm_title_image_upload"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 906
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f06003a

    const-string v6, "string"

    const-string v7, "bsmo_confirm_btn_take_picture"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f060039

    const-string v6, "string"

    const-string v7, "bsmo_confirm_btn_select_gallery"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f060037

    const-string v6, "string"

    const-string v7, "bsmo_confirm_btn_cancel"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 911
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 968
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 969
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 971
    return-void
.end method

.method protected updateButtons()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 199
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-boolean v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mCantClose:Z

    if-eqz v3, :cond_6

    move v0, v1

    .line 204
    .local v0, "v":I
    :goto_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f0c0068

    const-string v5, "id"

    const-string v6, "bsmo_btn_close"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .end local v0    # "v":I
    :cond_0
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isSetCloseButton"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f0c0066

    const-string v5, "id"

    const-string v6, "bsmoBtnClose"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isCloseToolBar"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    const v4, 0x7f0c006b

    const-string v5, "id"

    const-string v6, "toolBar"

    invoke-virtual {v3, v4, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "isDisableButton"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isAuthorized()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    .line 218
    iget-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mIsButtonDisable:Z

    if-eqz v1, :cond_5

    .line 219
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->disableButton()V

    .line 221
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 202
    goto :goto_0
.end method

.method protected uploadImg(Landroid/net/Uri;)V
    .locals 14
    .param p1, "aImgPath"    # Landroid/net/Uri;

    .prologue
    const v13, 0x7f060040

    const/4 v12, 0x4

    const/4 v3, 0x0

    .line 995
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 996
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "userId"

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 999
    .local v9, "memberId":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez v9, :cond_2

    .line 1000
    :cond_0
    const-string v0, "BushimoSDK DEBUG"

    const-string v1, "uploadImg failed. Required parameter was gone!"

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    const-string v1, "string"

    const-string v4, "bsmo_error_img_upload"

    invoke-virtual {v0, v13, v1, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1032
    :cond_1
    :goto_0
    return-void

    .line 1007
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1008
    invoke-virtual/range {v0 .. v5}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1009
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 1010
    const-string v0, "BushimoSDK DEBUG"

    const-string v1, "Image cursor is null..."

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    const-string v1, "string"

    const-string v4, "bsmo_error_img_upload"

    invoke-virtual {v0, v13, v1, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1016
    :cond_3
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1017
    .local v6, "colIdx":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1018
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1020
    .local v8, "imgPath":Ljava/lang/String;
    const-string v0, "BushimoSDK TL uploadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imgPath="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0, v8}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->makeBitmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1024
    .local v11, "upImgPath":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 1025
    const-string v0, "BushimoSDK DEBUG"

    const-string v1, "uploadImg failed. makeBitmap() was failed."

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    const-string v1, "string"

    const-string v4, "bsmo_error_img_upload"

    invoke-virtual {v0, v13, v1, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method
