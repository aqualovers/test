.class Ljp/co/dimage/android/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimage/android/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljp/co/dimage/android/a/a;


# direct methods
.method constructor <init>(Ljp/co/dimage/android/a/a;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljp/co/dimage/android/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    invoke-static {v3}, Ljp/co/dimage/android/a/a;->a(Ljp/co/dimage/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&_adid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljp/co/dimage/android/i$a;->a:Ljp/co/dimage/android/i$a;

    invoke-static {v0, v3}, Ljp/co/dimage/android/i;->a(Ljava/lang/String;Ljp/co/dimage/android/i$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljp/co/dimage/android/a/a;->a(Ljp/co/dimage/android/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    invoke-static {v2}, Ljp/co/dimage/android/a/a;->a(Ljp/co/dimage/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&_adte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljp/co/dimage/android/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/co/dimage/android/a/a;->a(Ljp/co/dimage/android/a/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljp/co/dimage/android/g;

    iget-object v1, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    invoke-static {v1}, Ljp/co/dimage/android/a/a;->b(Ljp/co/dimage/android/a/a;)Ljp/co/dimage/android/c;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/co/dimage/android/g;-><init>(Ljp/co/dimage/android/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/co/dimage/android/a/a$1;->a:Ljp/co/dimage/android/a/a;

    invoke-static {v3}, Ljp/co/dimage/android/a/a;->a(Ljp/co/dimage/android/a/a;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
