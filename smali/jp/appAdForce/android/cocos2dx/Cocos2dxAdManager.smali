.class public Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# static fields
.field public static serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;
    .locals 3

    new-instance v0, Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, p0}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->serverUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    sget-object v2, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->setServerUrl(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static sendConversion(Landroid/content/Context;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$1;

    invoke-direct {v1, p0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendConversion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$2;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendConversion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$3;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendConversionForMobage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$7;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendConversionForMobage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendConversionWithBuid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$4;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendConversionWithUrlScheme(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$5;

    invoke-direct {v1, p0, v0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$5;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendConversionWithUrlScheme(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;

    invoke-direct {v1, p0, v0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendUserIdForMobage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$9;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOptout(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/appAdForce/android/AdManager;->setOptout(Z)V

    return-void
.end method

.method public static setServerUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public static updateFrom2_10_4g()V
    .locals 0

    invoke-static {}, Ljp/appAdForce/android/AdManager;->updateFrom2_10_4g()V

    return-void
.end method
