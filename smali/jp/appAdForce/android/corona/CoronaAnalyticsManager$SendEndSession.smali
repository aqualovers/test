.class public Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendEndSession"
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

    const-string v0, "sendEndSession"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    new-instance v1, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession$1;

    invoke-direct {v1, p0, v0}, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession$1;-><init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
