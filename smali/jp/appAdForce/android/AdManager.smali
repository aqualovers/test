.class public Ljp/appAdForce/android/AdManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljp/co/dimage/android/c;

.field private b:Ljp/co/dimage/android/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/appAdForce/android/AdManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    iput-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    new-instance v0, Ljp/co/dimage/android/c;

    invoke-direct {v0, p1}, Ljp/co/dimage/android/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    new-instance v0, Ljp/co/dimage/android/f;

    iget-object v1, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-direct {v0, v1}, Ljp/co/dimage/android/f;-><init>(Ljp/co/dimage/android/c;)V

    iput-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    return-void
.end method

.method public static updateFrom2_10_4g()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljp/co/dimage/android/c;->c(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljp/co/dimage/android/c;
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isAppConversionCompleted()Z
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->y()Z

    move-result v0

    return v0
.end method

.method public isConversionCompleted()Z
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebConversionCompleted()Z
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->x()Z

    move-result v0

    return v0
.end method

.method public openConversionPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public sendConversion()V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;)V

    return-void
.end method

.method public sendConversion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/c;->b(Z)V

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public sendConversion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/c;->b(Z)V

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1, p2}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendConversionForMobage(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Ljp/appAdForce/android/AdManager;->c:Ljava/lang/String;

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    const-string v1, "mbga"

    invoke-virtual {v0, p1, v1}, Ljp/co/dimage/android/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendConversionForMobage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p2, Ljp/appAdForce/android/AdManager;->c:Ljava/lang/String;

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    const-string v1, "mbga"

    invoke-virtual {v0, p1, p2, v1}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendConversionWithBuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendReengagementConversion(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/f;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public sendReengagementConversion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public sendUserIdForMobage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    sget-object v1, Ljp/appAdForce/android/AdManager;->c:Ljava/lang/String;

    const-string v2, "mbga"

    invoke-virtual {v0, v1, v2, p1}, Ljp/co/dimage/android/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/c;->d(Z)V

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->P()V

    return-void
.end method

.method public setOptout(Z)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->a:Ljp/co/dimage/android/c;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/c;->a(Z)V

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/f;->k(Z)V

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/AdManager;->b:Ljp/co/dimage/android/f;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setUrlScheme(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljp/appAdForce/android/AdManager;->sendReengagementConversion(Landroid/content/Intent;)V

    return-void
.end method
