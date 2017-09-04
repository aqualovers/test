.class public Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;


# direct methods
.method public constructor <init>(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$a;->a:Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    :try_start_0
    iget-object v0, p0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$a;->a:Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;

    invoke-static {v0, p1}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;Lcom/adobe/fre/FREContext;)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    invoke-virtual {v2, v0, v1}, Ljp/appAdForce/android/LtvManager;->addParam(Ljava/lang/String;Ljava/lang/String;)V
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
