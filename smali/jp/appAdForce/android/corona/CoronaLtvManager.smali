.class public Ljp/appAdForce/android/corona/CoronaLtvManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;,
        Ljp/appAdForce/android/corona/CoronaLtvManager$AddLtvParam;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljp/appAdForce/android/corona/CoronaLtvManager;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    sput-object p0, Ljp/appAdForce/android/corona/CoronaLtvManager;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "sendLtvConversion"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Ljp/appAdForce/android/corona/CoronaLtvManager$1;

    invoke-direct {v3, p0, v0, v2, v1}, Ljp/appAdForce/android/corona/CoronaLtvManager$1;-><init>(Ljp/appAdForce/android/corona/CoronaLtvManager;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
