.class Lcom/smrtbeat/B;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "ping"

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userId"

    sget-object v3, Lcom/smrtbeat/g;->I:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "occuredAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "environment"

    invoke-static {}, Lcom/smrtbeat/B;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "sdk"

    invoke-static {}, Lcom/smrtbeat/B;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static a(J)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "breakpad-exception-report"

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userId"

    sget-object v2, Lcom/smrtbeat/g;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "requestId"

    sget-object v2, Lcom/smrtbeat/g;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "occuredAt"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(JZ)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    sget-object v2, Lcom/smrtbeat/g;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v1, "requestId"

    sget-object v2, Lcom/smrtbeat/g;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "occuredAt"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "requestId"

    invoke-static {}, Lcom/smrtbeat/aa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/smrtbeat/B;->a(J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "request"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/smrtbeat/B;->a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "exception"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/B;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "performance"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v2, v3}, Lcom/smrtbeat/B;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "environment"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/B;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 3

    invoke-static {}, Lcom/smrtbeat/B;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "mobileNet"

    invoke-static {p0}, Lcom/smrtbeat/aa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wifi"

    invoke-static {p0}, Lcom/smrtbeat/aa;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screenRotation"

    invoke-static {p0}, Lcom/smrtbeat/aa;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "screenDpi"

    sget v2, Lcom/smrtbeat/g;->u:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screenWidth"

    sget v2, Lcom/smrtbeat/g;->v:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screenHeight"

    sget v2, Lcom/smrtbeat/g;->w:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "board"

    invoke-static {}, Lcom/smrtbeat/aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "boardPlatform"

    invoke-static {}, Lcom/smrtbeat/aa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpuAbi"

    invoke-static {}, Lcom/smrtbeat/aa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "buildType"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;J)V

    invoke-static {v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/smrtbeat/B;->a(JZ)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "type"

    const-string v5, "unity-exception-report"

    invoke-static {v1, v4, v5}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "requestId"

    invoke-static {v1, v4, p3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "occuredAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "request"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, p2}, Lcom/smrtbeat/B;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "exception"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/B;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "performance"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v2, v3}, Lcom/smrtbeat/B;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "environment"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/B;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lcom/smrtbeat/B;->a(JZ)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "type"

    const-string v5, "exception-report"

    invoke-static {v1, v4, v5}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "request"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, p2}, Lcom/smrtbeat/B;->a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "exception"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/B;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "performance"

    invoke-static {v0, v4, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v2, v3}, Lcom/smrtbeat/B;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "environment"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/B;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stackTrace"

    invoke-static {v0, v1, p1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/B;->b(Lorg/json/JSONObject;)V

    const-string v1, "handled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lcom/smrtbeat/B;->b(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lcom/smrtbeat/B;->c(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lcom/smrtbeat/B;->d(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v0}, Lcom/smrtbeat/B;->b(Lorg/json/JSONObject;)V

    const-string v1, "handled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 4

    sget-object v0, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "customMeta"

    invoke-static {p0, v0, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;J)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-boolean v1, Lcom/smrtbeat/g;->G:Z

    if-eqz v1, :cond_0

    const-string v1, "log"

    invoke-static {}, Lcom/smrtbeat/aa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "hacked"

    sget-boolean v2, Lcom/smrtbeat/g;->t:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msFromStart"

    sget-wide v2, Lcom/smrtbeat/g;->x:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "log"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v3, "sysAvail"

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sysLow"

    iget-boolean v4, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sysThreshold"

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    const-string v2, "appPss"

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "appAvail"

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appMax"

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appTotal"

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "memory"

    invoke-static {p0, v0, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const-string v0, "sysAvail"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sysLow"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sysThreshold"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appPss"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "message"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static b()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "remote"

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userId"

    sget-object v3, Lcom/smrtbeat/g;->I:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "occuredAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "environment"

    invoke-static {}, Lcom/smrtbeat/B;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "sdk"

    invoke-static {}, Lcom/smrtbeat/B;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, ""

    sget-object v1, Lcom/smrtbeat/g;->D:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smrtbeat/g;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/smrtbeat/g;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "breadcrumbs"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "\\|"

    const-string v4, "_"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cause"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uid"

    sget-object v2, Lcom/smrtbeat/g;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "idv2"

    sget-object v2, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "model"

    sget-object v2, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "brand"

    sget-object v2, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appVer"

    sget-object v2, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appVerCode"

    sget-object v2, Lcom/smrtbeat/g;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appName"

    sget-object v2, Lcom/smrtbeat/g;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appIdentifier"

    sget-object v2, Lcom/smrtbeat/g;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osVer"

    sget-object v2, Lcom/smrtbeat/g;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "locale"

    invoke-static {}, Lcom/smrtbeat/aa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "optOutCrashLog"

    sget-boolean v2, Lcom/smrtbeat/g;->aa:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    const-string v2, "file"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "line"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "class"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "method"

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "location"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    const-string v2, "SmartBeat-Android"

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "1.14"

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v1, "stackTrace"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/B;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
