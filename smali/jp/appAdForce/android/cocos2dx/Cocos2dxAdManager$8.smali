.class final Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->sendConversionForMobage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;->a:Landroid/content/Context;

    invoke-static {v0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;->b:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljp/appAdForce/android/AdManager;->sendConversionForMobage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
