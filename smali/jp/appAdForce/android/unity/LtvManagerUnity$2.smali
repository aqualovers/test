.class Ljp/appAdForce/android/unity/LtvManagerUnity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/LtvManagerUnity;->sendLtvConversionUnity(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljp/appAdForce/android/unity/LtvManagerUnity;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/unity/LtvManagerUnity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$2;->c:Ljp/appAdForce/android/unity/LtvManagerUnity;

    iput p2, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$2;->a:I

    iput-object p3, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$2;->c:Ljp/appAdForce/android/unity/LtvManagerUnity;

    invoke-static {v0}, Ljp/appAdForce/android/unity/LtvManagerUnity;->a(Ljp/appAdForce/android/unity/LtvManagerUnity;)Ljp/appAdForce/android/LtvManager;

    move-result-object v0

    iget v1, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$2;->a:I

    iget-object v2, p0, Ljp/appAdForce/android/unity/LtvManagerUnity$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(ILjava/lang/String;)V

    return-void
.end method
