.class public Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static addParam(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendLtvConversion(Landroid/content/Context;I)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendLtvConversion(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$2;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$2;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
