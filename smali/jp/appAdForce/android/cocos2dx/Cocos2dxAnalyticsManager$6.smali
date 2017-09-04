.class final Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->c:Ljava/lang/String;

    iput p4, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->a:Landroid/content/Context;

    iget-object v1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->b:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->c:Ljava/lang/String;

    iget v3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;->d:I

    invoke-static {v0, v1, v2, v3}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
