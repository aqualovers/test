.class public Ljp/appAdForce/android/corona/CoronaAdManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/appAdForce/android/corona/CoronaAdManager$SetServerUrl;,
        Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;,
        Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl;,
        Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobage;,
        Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithUrlScheme;,
        Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithBuid;,
        Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionWithStartPageUrl;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljp/appAdForce/android/corona/CoronaAdManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Ljp/appAdForce/android/corona/CoronaAdManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;
    .locals 3

    new-instance v0, Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, p0}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljp/appAdForce/android/corona/CoronaAdManager;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    sget-object v2, Ljp/appAdForce/android/corona/CoronaAdManager;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljp/appAdForce/android/corona/CoronaAdManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->setServerUrl(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "sendConversion"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Ljp/appAdForce/android/corona/CoronaAdManager$1;

    invoke-direct {v1, p0, v0}, Ljp/appAdForce/android/corona/CoronaAdManager$1;-><init>(Ljp/appAdForce/android/corona/CoronaAdManager;Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
