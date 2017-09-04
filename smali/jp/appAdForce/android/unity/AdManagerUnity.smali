.class public Ljp/appAdForce/android/unity/AdManagerUnity;
.super Ljp/appAdForce/android/AdManager;

# interfaces
.implements Ljp/co/dimage/android/e;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljp/appAdForce/android/AdManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    iput-object p0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->b:Ljp/appAdForce/android/AdManager;

    return-void
.end method

.method static synthetic a(Ljp/appAdForce/android/unity/AdManagerUnity;)Ljp/appAdForce/android/AdManager;
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->b:Ljp/appAdForce/android/AdManager;

    return-object v0
.end method


# virtual methods
.method public sendConversionForMobageUnity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$6;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$6;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendConversionForMobageUnity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$7;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/unity/AdManagerUnity$7;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendConversionUnity()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$1;

    invoke-direct {v1, p0}, Ljp/appAdForce/android/unity/AdManagerUnity$1;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendConversionUnity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$3;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$3;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendConversionUnity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$5;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/unity/AdManagerUnity$5;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendConversionWithBuidUnity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$4;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$4;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendReengagementConversion(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljp/appAdForce/android/unity/AdManagerUnity$10;

    invoke-direct {v0, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$10;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendReengagementConversion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$2;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$2;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendUserIdForMobageUnity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/AdManagerUnity$8;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$8;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUrlScheme(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljp/appAdForce/android/unity/AdManagerUnity$9;

    invoke-direct {v0, p0, p1}, Ljp/appAdForce/android/unity/AdManagerUnity$9;-><init>(Ljp/appAdForce/android/unity/AdManagerUnity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
