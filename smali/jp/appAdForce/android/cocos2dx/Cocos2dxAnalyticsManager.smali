.class public final Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEndSession(Landroid/content/Context;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$4;

    invoke-direct {v1, p0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$5;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$5;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    new-instance v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 11

    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    new-instance v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 11

    move-object v10, p0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$11;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 12

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$9;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 12

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 13

    move-object v11, p0

    check-cast v11, Landroid/app/Activity;

    new-instance v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$10;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    invoke-virtual {v11, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 13

    move-object v12, p0

    check-cast v12, Landroid/app/Activity;

    new-instance v0, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendStartSession(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$1;

    invoke-direct {v2, v1, p0}, Ljp/appAdForce/android/cocos2dx/Cocos2dxAnalyticsManager$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
