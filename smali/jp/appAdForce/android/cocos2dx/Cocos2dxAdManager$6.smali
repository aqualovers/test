.class final Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->sendConversionWithUrlScheme(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;->a:Landroid/content/Context;

    invoke-static {v0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager$6;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->setUrlScheme(Landroid/content/Intent;)V

    return-void
.end method
