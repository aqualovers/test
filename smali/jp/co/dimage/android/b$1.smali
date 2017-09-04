.class final Ljp/co/dimage/android/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimage/android/b;->a(Landroid/content/Context;Ljp/co/dimage/android/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljp/co/dimage/android/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljp/co/dimage/android/b$a;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp/co/dimage/android/b$1;->b:Ljp/co/dimage/android/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljp/co/dimage/android/b;->a(Z)Z

    iget-object v0, p0, Ljp/co/dimage/android/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Ljp/co/dimage/android/b;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljp/co/dimage/android/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/dimage/android/b;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljp/co/dimage/android/b;->b(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljp/co/dimage/android/b;->b(Z)Z

    :cond_1
    iget-object v0, p0, Ljp/co/dimage/android/b$1;->b:Ljp/co/dimage/android/b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/dimage/android/b$1;->b:Ljp/co/dimage/android/b$a;

    invoke-static {}, Ljp/co/dimage/android/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljp/co/dimage/android/b;->e()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Ljp/co/dimage/android/b$a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v3}, Ljp/co/dimage/android/b;->a(Z)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v3}, Ljp/co/dimage/android/b;->a(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Ljp/co/dimage/android/b;->a(Z)Z

    throw v0
.end method
