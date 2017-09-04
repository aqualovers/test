.class public Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendEvent"
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

    const-string v0, "sendEvent"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v6

    new-instance v0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;-><init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
