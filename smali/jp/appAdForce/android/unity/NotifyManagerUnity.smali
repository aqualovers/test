.class public Ljp/appAdForce/android/unity/NotifyManagerUnity;
.super Ljp/appAdForce/android/NotifyManager;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljp/appAdForce/android/NotifyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljp/appAdForce/android/AdManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljp/appAdForce/android/NotifyManager;-><init>(Landroid/content/Context;Ljp/appAdForce/android/AdManager;)V

    iput-object p1, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity;->a:Landroid/app/Activity;

    iput-object p0, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity;->b:Ljp/appAdForce/android/NotifyManager;

    return-void
.end method

.method static synthetic a(Ljp/appAdForce/android/unity/NotifyManagerUnity;)Ljp/appAdForce/android/NotifyManager;
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity;->b:Ljp/appAdForce/android/NotifyManager;

    return-object v0
.end method


# virtual methods
.method public registerToGCMUnity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity;->a:Landroid/app/Activity;

    new-instance v1, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;

    invoke-direct {v1, p0, p1, p2}, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;-><init>(Ljp/appAdForce/android/unity/NotifyManagerUnity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
