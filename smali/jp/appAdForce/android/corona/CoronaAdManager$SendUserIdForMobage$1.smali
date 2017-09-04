.class Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;->c:Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Ljp/appAdForce/android/corona/CoronaAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$SendUserIdForMobage$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->sendUserIdForMobage(Ljava/lang/String;)V

    return-void
.end method
