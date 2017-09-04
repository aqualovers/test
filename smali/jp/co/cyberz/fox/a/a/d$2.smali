.class Ljp/co/cyberz/fox/a/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberz/fox/a/a/d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljp/co/cyberz/fox/a/a/d;


# direct methods
.method constructor <init>(Ljp/co/cyberz/fox/a/a/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/d$2;->b:Ljp/co/cyberz/fox/a/a/d;

    iput-object p2, p0, Ljp/co/cyberz/fox/a/a/d$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljp/co/cyberz/fox/a/a/b;

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d$2;->a:Ljava/util/List;

    iget-object v2, p0, Ljp/co/cyberz/fox/a/a/d$2;->b:Ljp/co/cyberz/fox/a/a/d;

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/d$2;->a:Ljava/util/List;

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Ljp/co/cyberz/fox/a/a/d;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljp/co/cyberz/fox/a/a/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
