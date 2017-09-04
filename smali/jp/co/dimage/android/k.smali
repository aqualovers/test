.class public Ljp/co/dimage/android/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/dimage/android/k$c;,
        Ljp/co/dimage/android/k$b;,
        Ljp/co/dimage/android/k$a;
    }
.end annotation


# instance fields
.field private a:Ljp/co/dimage/android/f;

.field private b:Ljp/co/dimage/android/f$a;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljp/co/dimage/android/k;-><init>(Landroid/content/Context;Ljp/co/dimage/android/f;Ljp/co/dimage/android/f$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljp/co/dimage/android/f;Ljp/co/dimage/android/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp/co/dimage/android/k;->c:Landroid/content/Context;

    iput-object p2, p0, Ljp/co/dimage/android/k;->a:Ljp/co/dimage/android/f;

    iput-object p3, p0, Ljp/co/dimage/android/k;->b:Ljp/co/dimage/android/f$a;

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/k;->c:Landroid/content/Context;

    invoke-static {v0}, Ljp/co/dimage/android/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ljp/co/dimage/android/k;)Z
    .locals 1

    invoke-direct {p0}, Ljp/co/dimage/android/k;->a()Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/k;->a:Ljp/co/dimage/android/f;

    invoke-virtual {v0}, Ljp/co/dimage/android/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Ljp/co/dimage/android/k;)Z
    .locals 1

    invoke-direct {p0}, Ljp/co/dimage/android/k;->b()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    invoke-static {}, Ljp/co/dimage/android/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Ljp/co/dimage/android/k;)Z
    .locals 1

    invoke-direct {p0}, Ljp/co/dimage/android/k;->c()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/k;->c:Landroid/content/Context;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Ljp/co/dimage/android/k;)Z
    .locals 1

    invoke-direct {p0}, Ljp/co/dimage/android/k;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Ljp/co/dimage/android/k;)Ljp/co/dimage/android/f$a;
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/k;->b:Ljp/co/dimage/android/f$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljp/co/dimage/android/k$b;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    new-instance v0, Ljp/co/dimage/android/k$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljp/co/dimage/android/k$a;-><init>(Ljp/co/dimage/android/k;I)V

    invoke-virtual {v0, p2}, Ljp/co/dimage/android/k$a;->a(Ljp/co/dimage/android/k$b;)V

    iget-object v1, p0, Ljp/co/dimage/android/k;->a:Ljp/co/dimage/android/f;

    invoke-virtual {v1}, Ljp/co/dimage/android/f;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->a(Z)V

    :cond_1
    iget-object v1, p0, Ljp/co/dimage/android/k;->a:Ljp/co/dimage/android/f;

    invoke-virtual {v1}, Ljp/co/dimage/android/f;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->b(Z)V

    :cond_2
    iget-object v1, p0, Ljp/co/dimage/android/k;->a:Ljp/co/dimage/android/f;

    invoke-virtual {v1}, Ljp/co/dimage/android/f;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->c(Z)V

    :cond_3
    iget-object v1, p0, Ljp/co/dimage/android/k;->a:Ljp/co/dimage/android/f;

    invoke-virtual {v1}, Ljp/co/dimage/android/f;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->d(Z)V

    :cond_4
    new-instance v1, Ljp/co/cyberz/fox/a/a/c;

    invoke-direct {v1}, Ljp/co/cyberz/fox/a/a/c;-><init>()V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Ljp/co/cyberz/fox/a/a/c;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;ZZZZLjp/co/dimage/android/k$c;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    new-instance v0, Ljp/co/dimage/android/k$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljp/co/dimage/android/k$a;-><init>(Ljp/co/dimage/android/k;I)V

    invoke-virtual {v0, p6}, Ljp/co/dimage/android/k$a;->a(Ljp/co/dimage/android/k$c;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->a(Z)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->b(Z)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->c(Z)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v0, v2}, Ljp/co/dimage/android/k$a;->d(Z)V

    :cond_4
    new-instance v1, Ljp/co/cyberz/fox/a/a/c;

    invoke-direct {v1}, Ljp/co/cyberz/fox/a/a/c;-><init>()V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Ljp/co/cyberz/fox/a/a/c;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method
