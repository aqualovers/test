.class Ljp/appAdForce/android/unity/AdManagerUnity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AdManagerUnity;->sendConversionWithBuidUnity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljp/appAdForce/android/unity/AdManagerUnity;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/unity/AdManagerUnity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AdManagerUnity$4;->b:Ljp/appAdForce/android/unity/AdManagerUnity;

    iput-object p2, p0, Ljp/appAdForce/android/unity/AdManagerUnity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AdManagerUnity$4;->b:Ljp/appAdForce/android/unity/AdManagerUnity;

    invoke-static {v0}, Ljp/appAdForce/android/unity/AdManagerUnity;->a(Ljp/appAdForce/android/unity/AdManagerUnity;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/unity/AdManagerUnity$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->sendConversionWithBuid(Ljava/lang/String;)V

    return-void
.end method
