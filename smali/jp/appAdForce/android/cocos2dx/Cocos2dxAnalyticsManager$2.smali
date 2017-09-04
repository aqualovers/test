.class final Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
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

.field final synthetic g:D

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->c:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->d:Ljava/lang/String;

    iput-object p5, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->e:Ljava/lang/String;

    iput-object p6, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->f:Ljava/lang/String;

    iput-wide p7, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->g:D

    iput p9, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->h:I

    iput-object p10, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->a:Landroid/content/Context;

    iget-object v1, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->b:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->c:Ljava/lang/String;

    iget-object v3, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->d:Ljava/lang/String;

    iget-object v4, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->e:Ljava/lang/String;

    iget-object v5, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->f:Ljava/lang/String;

    iget-wide v6, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->g:D

    iget v8, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->h:I

    iget-object v9, p0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;->i:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    return-void
.end method
