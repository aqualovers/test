.class Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->d:Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Ljp/appAdForce/android/corona/CoronaAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->b:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendConversionForMobageWithStartPageUrl$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljp/appAdForce/android/AdManager;->sendConversionForMobage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
