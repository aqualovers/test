.class public final Ljp/appAdForce/android/AnalyticsManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# static fields
.field private static a:Ljp/co/cyberz/fox/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, p0}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/d;->a(Ljp/appAdForce/android/AdManager;)Ljp/co/cyberz/fox/a/a/d;

    move-result-object v0

    sput-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Ljp/co/cyberz/fox/a/a/d;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    invoke-virtual {v0, p0, p1}, Ljp/co/cyberz/fox/a/a/d;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getUserInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    invoke-virtual {v0}, Ljp/co/cyberz/fox/a/a/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static sendEndSession(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Ljp/co/cyberz/fox/a/a/d;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    invoke-virtual {v0, p0}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    invoke-virtual {v0, p0, p1, p2}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 7

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 9

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 11

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 12

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v1, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 12

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v1, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 11

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 13

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    const/4 v12, 0x0

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

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 13

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

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

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static sendStartSession(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static setUserInfo(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->a(Landroid/content/Context;)V

    sget-object v0, Ljp/appAdForce/android/AnalyticsManager;->a:Ljp/co/cyberz/fox/a/a/d;

    invoke-virtual {v0, p1}, Ljp/co/cyberz/fox/a/a/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method
