.class Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->c:Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Ljp/appAdForce/android/corona/CoronaAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->sendConversionWithBuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
