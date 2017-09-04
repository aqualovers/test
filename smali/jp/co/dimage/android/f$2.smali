.class Ljp/co/dimage/android/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimage/android/f;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljp/co/dimage/android/f;


# direct methods
.method constructor <init>(Ljp/co/dimage/android/f;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/f$2;->a:Ljp/co/dimage/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljp/co/dimage/android/f$2;->a:Ljp/co/dimage/android/f;

    sget-object v1, Ljp/co/dimage/android/i$a;->a:Ljp/co/dimage/android/i$a;

    invoke-static {p1, v1}, Ljp/co/dimage/android/i;->a(Ljava/lang/String;Ljp/co/dimage/android/i$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f$2;->a:Ljp/co/dimage/android/f;

    invoke-static {v0}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f;)Ljp/co/dimage/android/c;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/co/dimage/android/f$2;->a:Ljp/co/dimage/android/f;

    invoke-static {v0}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f;)Ljp/co/dimage/android/c;

    move-result-object v0

    invoke-static {p1}, Ljp/co/dimage/android/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljp/co/dimage/android/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/dimage/android/f$2;->a:Ljp/co/dimage/android/f;

    invoke-static {v0}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f;)Ljp/co/dimage/android/c;

    move-result-object v0

    sget-object v1, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/c;->a(Ljp/co/dimage/android/c$a;)V

    :cond_1
    iget-object v1, p0, Ljp/co/dimage/android/f$2;->a:Ljp/co/dimage/android/f;

    if-eqz p2, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-static {v1, v0}, Ljp/co/dimage/android/f;->b(Ljp/co/dimage/android/f;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v0, "1"
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
