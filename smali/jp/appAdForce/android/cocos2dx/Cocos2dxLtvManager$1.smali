.class final Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->sendLtvConversion(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;->a:Landroid/content/Context;

    iput p2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;->a:Landroid/content/Context;

    invoke-static {v0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    new-instance v2, Ljp/appAdForce/android/LtvManager;

    invoke-direct {v2, v0}, Ljp/appAdForce/android/LtvManager;-><init>(Ljp/appAdForce/android/AdManager;)V

    invoke-static {}, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljp/appAdForce/android/LtvManager;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager$1;->b:I

    invoke-virtual {v2, v0}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(I)V

    invoke-virtual {v2}, Ljp/appAdForce/android/LtvManager;->clearParam()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxLtvManager;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method
