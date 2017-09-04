.class Lcom/smrtbeat/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/V;->a:Ljava/io/File;

    return-object p0
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x1388

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smrtbeat/B;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/smrtbeat/V;->a:Ljava/io/File;

    invoke-static {v2, v3, v6, v7}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/io/File;J)V

    invoke-static {}, Lcom/smrtbeat/aa;->l()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    if-eqz v2, :cond_0

    cmp-long v3, v6, v0

    if-lez v3, :cond_0

    sub-long v0, v6, v0

    invoke-static {v2, v0, v1}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/O;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smrtbeat/O;->a(Ljava/lang/String;)Lcom/smrtbeat/P;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/P;->a:Lcom/smrtbeat/P;

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method
