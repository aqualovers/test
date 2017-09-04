.class public Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendPurchaseEvent"
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

    const-string v0, "sendPurchaseEvent"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 14

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide v10

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v12

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v13}, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;-><init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
