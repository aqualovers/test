.class Ljp/appAdForce/android/unity/NotifyManagerUnity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/NotifyManagerUnity;->registerToGCMUnity(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljp/appAdForce/android/unity/NotifyManagerUnity;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/unity/NotifyManagerUnity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;->c:Ljp/appAdForce/android/unity/NotifyManagerUnity;

    iput-object p2, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;->c:Ljp/appAdForce/android/unity/NotifyManagerUnity;

    invoke-static {v0}, Ljp/appAdForce/android/unity/NotifyManagerUnity;->a(Ljp/appAdForce/android/unity/NotifyManagerUnity;)Ljp/appAdForce/android/NotifyManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Ljp/appAdForce/android/unity/NotifyManagerUnity$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljp/appAdForce/android/NotifyManager;->registerToGCM(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
