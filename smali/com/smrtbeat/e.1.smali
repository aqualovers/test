.class Lcom/smrtbeat/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final g:I = 0x3

.field private static final h:J = 0x3e8L


# instance fields
.field a:Landroid/graphics/Canvas;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/os/Handler;

.field private d:Landroid/view/Window;

.field private e:Landroid/content/Context;

.field private f:I

.field private i:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    iput-object v0, p0, Lcom/smrtbeat/e;->e:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/smrtbeat/e;->f:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/e;->i:Ljava/lang/Object;

    return-void
.end method

.method private a()Z
    .locals 3

    iget-object v1, p0, Lcom/smrtbeat/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/e;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/e;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/smrtbeat/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smrtbeat/e;->f:I

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    iget-object v2, p0, Lcom/smrtbeat/e;->e:Landroid/content/Context;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/smrtbeat/e;->c:Landroid/os/Handler;

    invoke-static {v0, v2, p0, v1}, Lcom/smrtbeat/R;->a(Landroid/view/Window;Landroid/content/Context;Lcom/smrtbeat/e;Landroid/os/Handler;)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 3

    iget-object v1, p0, Lcom/smrtbeat/e;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/smrtbeat/e;->f:I

    sget-boolean v0, Lcom/smrtbeat/g;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/e;->e:Landroid/content/Context;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/e;->e:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smrtbeat/e;->c:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Landroid/app/Activity;)V
    .locals 3

    iget-object v1, p0, Lcom/smrtbeat/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/e;->d:Landroid/view/Window;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/e;->e:Landroid/content/Context;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    :goto_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/smrtbeat/aa;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/smrtbeat/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lcom/smrtbeat/e;->f:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/smrtbeat/e;->a()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
