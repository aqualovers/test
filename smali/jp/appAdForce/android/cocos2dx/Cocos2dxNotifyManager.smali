.class public Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;
    .locals 1

    invoke-static {p0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager;->b(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;
    .locals 3

    new-instance v0, Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, p0}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    sget-object v2, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->setServerUrl(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static notifyManager(Landroid/content/Context;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager$1;

    invoke-direct {v1, p0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static registerToGCM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager$2;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/cocos2dx/Cocos2dxNotifyManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
