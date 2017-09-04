.class public Ljp/appAdForce/android/ane/functions/AdManagerFunctions$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/ane/functions/AdManagerFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljp/appAdForce/android/ane/functions/AdManagerFunctions;


# direct methods
.method public constructor <init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$a;->a:Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$a;->a:Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-static {v0, p1}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;Lcom/adobe/fre/FREContext;)V

    sget-object v0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    invoke-virtual {v0}, Ljp/appAdForce/android/AdManager;->sendConversion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
