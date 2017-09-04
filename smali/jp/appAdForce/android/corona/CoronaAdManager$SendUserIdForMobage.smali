.class public Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/corona/CoronaAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendUserIdForMobage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "sendUserIdForMobage"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;

    invoke-direct {v2, p0, v0, v1}, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;-><init>(Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
