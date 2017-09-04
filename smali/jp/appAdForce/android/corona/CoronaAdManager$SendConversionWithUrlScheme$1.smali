.class Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->d:Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Ljp/appAdForce/android/corona/CoronaAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->c:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->setUrlScheme(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;)V

    goto :goto_0
.end method
