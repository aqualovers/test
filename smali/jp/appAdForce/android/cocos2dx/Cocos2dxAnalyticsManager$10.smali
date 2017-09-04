.class final Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:D

.field final synthetic i:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->c:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->d:Ljava/lang/String;

    iput-object p5, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->e:Ljava/lang/String;

    iput-object p6, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->f:Ljava/lang/String;

    iput-object p7, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->g:Ljava/lang/String;

    iput-wide p8, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->h:D

    iput p10, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->a:Landroid/content/Context;

    iget-object v2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->b:Ljava/lang/String;

    iget-object v3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->c:Ljava/lang/String;

    iget-object v4, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->d:Ljava/lang/String;

    iget-object v5, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->e:Ljava/lang/String;

    iget-object v6, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->f:Ljava/lang/String;

    iget-object v7, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->g:Ljava/lang/String;

    iget-wide v8, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->h:D

    iget v10, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;->i:I

    invoke-static/range {v1 .. v10}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    return-void
.end method
