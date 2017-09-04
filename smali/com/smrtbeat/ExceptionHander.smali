.class public Lcom/smrtbeat/ExceptionHander;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smrtbeat/ExceptionHander;->mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static logHandledException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_1

    sget-object v0, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v1, "Throwable should not be null when calling logHandledException()"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/smrtbeat/B;->a(Landroid/content/Context;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smrtbeat/x;

    invoke-direct {v2}, Lcom/smrtbeat/x;-><init>()V

    invoke-virtual {v2, v0}, Lcom/smrtbeat/x;->a(Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static logUnityLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/smrtbeat/B;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smrtbeat/y;

    invoke-direct {v2}, Lcom/smrtbeat/y;-><init>()V

    invoke-virtual {v2, v0}, Lcom/smrtbeat/y;->a(Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/smrtbeat/g;->Z:Z

    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p2, v1}, Lcom/smrtbeat/B;->a(Landroid/content/Context;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/smrtbeat/aa;->l()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/smrtbeat/w;

    invoke-direct {v3, p0, v0, v1}, Lcom/smrtbeat/w;-><init>(Lcom/smrtbeat/ExceptionHander;Lorg/json/JSONObject;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smrtbeat/ExceptionHander;->mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smrtbeat/ExceptionHander;->mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
