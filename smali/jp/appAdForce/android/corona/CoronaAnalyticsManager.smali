.class public Ljp/appAdForce/android/corona/CoronaAnalyticsManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;,
        Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;,
        Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;
    }
.end annotation


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "sendStartSession"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;

    invoke-direct {v2, p0, v1, v0}, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;-><init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
