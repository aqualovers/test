.class Ljp/appAdForce/android/unity/AdManagerUnity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AdManagerUnity;->sendConversionUnity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljp/appAdForce/android/unity/AdManagerUnity;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/unity/AdManagerUnity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AdManagerUnity$1;->a:Ljp/appAdForce/android/unity/AdManagerUnity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity$1;->a:Ljp/appAdForce/android/unity/AdManagerUnity;

    invoke-static {v0}, Ljp/appAdForce/android/unity/AdManagerUnity;->a(Ljp/appAdForce/android/unity/AdManagerUnity;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/appAdForce/android/AdManager;->sendConversion()V

    return-void
.end method
