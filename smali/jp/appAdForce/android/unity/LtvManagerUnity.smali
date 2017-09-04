.class public Ljp/appAdForce/android/unity/LtvManagerUnity;
.super Ljp/appAdForce/android/LtvManager;

# interfaces
.implements Ljp/co/dimage/android/e;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljp/appAdForce/android/LtvManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljp/appAdForce/android/AdManager;)V
    .locals 0

    invoke-direct {p0, p2}, Ljp/appAdForce/android/LtvManager;-><init>(Ljp/appAdForce/android/AdManager;)V

    iput-object p1, p0, Ljp/appAdForce/android/unity/LtvManagerUnity;->a:Landroid/app/Activity;

    iput-object p0, p0, Ljp/appAdForce/android/unity/LtvManagerUnity;->b:Ljp/appAdForce/android/LtvManager;

    return-void
.end method

.method static synthetic a(Ljp/appAdForce/android/unity/LtvManagerUnity;)Ljp/appAdForce/android/LtvManager;
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/unity/LtvManagerUnity;->b:Ljp/appAdForce/android/LtvManager;

    return-object v0
.end method


# virtual methods
.method public sendLtvConversionUnity(I)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/LtvManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/LtvManagerUnity$1;

    invoke-direct {v1, p0, p1}, Ljp/appAdForce/android/unity/LtvManagerUnity$1;-><init>(Ljp/appAdForce/android/unity/LtvManagerUnity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLtvConversionUnity(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/LtvManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/LtvManagerUnity$2;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/unity/LtvManagerUnity$2;-><init>(Ljp/appAdForce/android/unity/LtvManagerUnity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
