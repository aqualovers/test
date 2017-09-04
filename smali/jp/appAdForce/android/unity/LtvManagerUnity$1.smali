.class Ljp/appAdForce/android/unity/LtvManagerUnity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/LtvManagerUnity;->sendLtvConversionUnity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljp/appAdForce/android/unity/LtvManagerUnity;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/unity/LtvManagerUnity;I)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$1;->b:Ljp/appAdForce/android/unity/LtvManagerUnity;

    iput p2, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$1;->b:Ljp/appAdForce/android/unity/LtvManagerUnity;

    invoke-static {v0}, Ljp/appAdForce/android/unity/LtvManagerUnity;->a(Ljp/appAdForce/android/unity/LtvManagerUnity;)Ljp/appAdForce/android/LtvManager;

    move-result-object v0

    iget v1, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$1;->a:I

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(I)V

    return-void
.end method
