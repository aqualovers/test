.class public Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/ane/functions/AdManagerFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Ljp/appAdForce/android/ane/functions/AdManagerFunctions;


# direct methods
.method public constructor <init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;->a:Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    :try_start_0
    iget-object v0, p0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;->a:Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-static {v0, p1}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;Lcom/adobe/fre/FREContext;)V

    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    const-string v0, "F.O.X"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method not found sendConversionWithStartPage args[]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    invoke-virtual {v1, v0}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    invoke-virtual {v2, v0, v1}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
