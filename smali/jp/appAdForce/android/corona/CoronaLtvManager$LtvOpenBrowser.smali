.class public Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/appAdForce/android/corona/CoronaLtvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LtvOpenBrowser"
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

    const-string v0, "ltvOpenBrowser"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;

    invoke-direct {v2, p0, v0, v1}, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;-><init>(Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
