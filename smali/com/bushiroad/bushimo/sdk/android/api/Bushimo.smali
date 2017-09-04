.class public Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
.super Ljava/lang/Object;
.source "Bushimo.java"


# static fields
.field private static mBushimo:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;


# instance fields
.field public contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

.field private mAccessToken:Ljava/lang/String;

.field private mConsumerkey:Ljava/lang/String;

.field private mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

.field private mIsSDK:Z

.field private mLoginType:Ljava/lang/String;

.field private mRequests:Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

.field private mSupportedBilling:Ljava/lang/Boolean;

.field public needDashboardAppTop:Z

.field public needDashboardLogin:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mRequests:Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mIsSDK:Z

    .line 132
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v0

    const-string v1, "authError"

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->addObserver(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 154
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v0

    const-string v1, "PFversionError"

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$2;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$2;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->addObserver(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 171
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v0

    const-string v1, "userChanged"

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$3;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$3;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->addObserver(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 188
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v0

    const-string v1, "dashboardClosed"

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$4;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$4;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->addObserver(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 205
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v0

    const-string v1, "completeAuth"

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$5;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$5;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->addObserver(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method static synthetic access$002(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;)Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    .param p1, "x1"    # Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    return-object p1
.end method

.method static synthetic access$200(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/Integer;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->startCallBackActivity(Landroid/app/Activity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    .locals 4

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "alloc":Z
    sget-object v1, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mBushimo:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    if-nez v1, :cond_1

    .line 235
    const-class v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    monitor-enter v2

    .line 236
    :try_start_0
    sget-object v1, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mBushimo:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;-><init>()V

    sput-object v1, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mBushimo:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    .line 238
    const/4 v0, 0x1

    .line 240
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_1
    if-eqz v0, :cond_2

    .line 246
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->authorization(Landroid/app/Activity;Ljava/lang/String;)V

    .line 249
    :cond_2
    sget-object v1, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mBushimo:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    return-object v1

    .line 240
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initializeImpl(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->restore(Landroid/os/Bundle;)V

    .line 291
    return-void
.end method

.method private startCallBackActivity(Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbackNotifyId"    # Ljava/lang/Integer;

    .prologue
    const v10, 0x7f060035

    const/4 v9, 0x0

    .line 560
    const/4 v3, 0x0

    .line 562
    .local v3, "mainActivityClass":Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f060035

    const-string v6, "string"

    const-string v7, "bsmo_callback_activity"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 569
    :goto_0
    if-nez v3, :cond_1

    .line 597
    :cond_0
    :goto_1
    return-void

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "busihmoSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "bsmo_callback_activity"

    invoke-virtual {v6, v10, v7, v8}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 576
    .local v0, "currentA":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 578
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 580
    const-string v4, "BSMO_CALLBACK_SNS_LOGIN_KEY"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 586
    :cond_2
    :goto_2
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 589
    iput-boolean v9, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardAppTop:Z

    .line 590
    iput-boolean v9, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardLogin:Z

    .line 592
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 594
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 582
    :cond_3
    const-string v4, "BSMO_CALLBACK_EVENT_NOTIFY_KEY"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method public authorization(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 348
    const-string v0, "requiredLogin"

    invoke-virtual {p0, p1, v0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->authorization(Landroid/app/Activity;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public authorization(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 301
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 302
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "access_token"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mAccessToken:Ljava/lang/String;

    .line 303
    const-string v4, "loginType"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mLoginType:Ljava/lang/String;

    .line 306
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mLoginType:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 307
    const-string v4, "login"

    iput-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mLoginType:Ljava/lang/String;

    .line 311
    :cond_0
    if-nez p2, :cond_1

    .line 312
    iget-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mLoginType:Ljava/lang/String;

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isAuthorized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    const-string v4, "userId"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "userId":Ljava/lang/String;
    const-string v4, "nickname"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "nickname":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v0, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "id"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v4, "nickname"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    invoke-direct {v4, v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;-><init>(Ljava/util/HashMap;)V

    iput-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    .line 338
    .end local v0    # "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "nickname":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 329
    :cond_3
    const-string v4, "optionalLogin"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "requiredLogin"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    :cond_4
    const-string v4, "login"

    invoke-static {p1, v4}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mConsumerkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUser()Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    return-object v0
.end method

.method public getInstallKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 695
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 696
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "PREF_INSTALL_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLoginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mLoginType:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "resourceType"    # Ljava/lang/String;
    .param p3, "resourceString"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResourceId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "resourceType"    # Ljava/lang/String;
    .param p4, "resourceString"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isUseNativeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "getResourceId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 735
    .end local p2    # "resourceId":I
    :cond_0
    return p2
.end method

.method public initialize(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->setCurrentActivity(Landroid/app/Activity;)V

    .line 272
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.bushiroad.bushimo.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mIsSDK:Z

    .line 274
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mConsumerkey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    const v1, 0x7f06003d

    const-string v2, "string"

    const-string v3, "bsmo_consumer_key"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mConsumerkey:Ljava/lang/String;

    .line 278
    :cond_0
    if-eqz p2, :cond_1

    .line 279
    invoke-direct {p0, p2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->initializeImpl(Landroid/os/Bundle;)V

    .line 281
    :cond_1
    return-void

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSDK()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mIsSDK:Z

    return v0
.end method

.method public isSupportedBilling()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mSupportedBilling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isUseNativeActivity()Z
    .locals 1

    .prologue
    .line 704
    sget-boolean v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    return v0
.end method

.method public oauthAuthorization(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const v7, 0x7f06003d

    .line 359
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isAuthorized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v2, "https://www.bushimo.jp/m/login/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "consumer_key"

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "callback_url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060036

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "enable_sns_login"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "enable_sns_login_facebook"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "dbg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumerKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "bsmo_consumer_key"

    invoke-virtual {v4, v7, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public oauthCallback(Landroid/net/Uri;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V
    .locals 9
    .param p1, "intentUri"    # Landroid/net/Uri;
    .param p2, "activity"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    .prologue
    .line 421
    const-string v3, "BushimoSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oauthCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "token":Ljava/lang/String;
    const-string v3, "sns"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "sns":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "accessToken"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
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

    .line 430
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mRequests:Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    const-string v4, "rest/wapi/person/@me/@self/"

    const-string v5, "entry"

    new-instance v6, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;

    invoke-direct {v6, p0, v2, v1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseItem(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 529
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 527
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->startCallBackActivity(Landroid/app/Activity;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public removeCookie()V
    .locals 2

    .prologue
    .line 626
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 627
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 628
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 630
    return-void
.end method

.method public removeUserInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 604
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 605
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 606
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "access_token"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 607
    const-string v2, "userId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 608
    const-string v2, "nickname"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 610
    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mAccessToken:Ljava/lang/String;

    .line 612
    iput-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    .line 615
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->removeCookie()V

    .line 617
    const-string v2, "BushimoSDK"

    const-string v3, "removeUserInfo"

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 410
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 396
    return-void
.end method

.method public setAppUseOption(Ljava/lang/String;)Z
    .locals 3
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 748
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 749
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 750
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PREF_APPLI_OPTION_KEY"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 753
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setContactAppParam(Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;)V
    .locals 0
    .param p1, "object"    # Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->contactAppParam:Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    .line 763
    return-void
.end method

.method public setCurrentUser(Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;)V
    .locals 0
    .param p1, "user"    # Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    .line 689
    return-void
.end method

.method public setSupportedBilling(Z)V
    .locals 1
    .param p1, "billing"    # Z

    .prologue
    .line 673
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mSupportedBilling:Ljava/lang/Boolean;

    .line 674
    return-void
.end method

.method public twitterCallback(Landroid/net/Uri;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V
    .locals 5
    .param p1, "intentUri"    # Landroid/net/Uri;
    .param p2, "activity"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    .prologue
    const/4 v4, 0x0

    .line 538
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 540
    .local v0, "currentA":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    const-string v2, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iput-boolean v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardAppTop:Z

    .line 548
    iput-boolean v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardLogin:Z

    .line 550
    invoke-virtual {p2, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 552
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 555
    :cond_0
    return-void
.end method
