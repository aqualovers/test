.class Ljp/appAdForce/android/unity/AdManagerUnity$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AdManagerUnity;->sendReengagementConversion(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljp/appAdForce/android/unity/AdManagerUnity;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/unity/AdManagerUnity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AdManagerUnity$10;->b:Ljp/appAdForce/android/unity/AdManagerUnity;

    iput-object p2, p0, Ljp/appAdForce/android/unity/AdManagerUnity$10;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity$10;->b:Ljp/appAdForce/android/unity/AdManagerUnity;

    invoke-static {v0}, Ljp/appAdForce/android/unity/AdManagerUnity;->a(Ljp/appAdForce/android/unity/AdManagerUnity;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/unity/AdManagerUnity$10;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->sendReengagementConversion(Landroid/content/Intent;)V

    return-void
.end method
