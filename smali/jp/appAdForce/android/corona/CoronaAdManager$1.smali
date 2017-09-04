.class Ljp/appAdForce/android/corona/CoronaAdManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAdManager;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljp/appAdForce/android/corona/CoronaAdManager;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAdManager;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAdManager$1;->b:Ljp/appAdForce/android/corona/CoronaAdManager;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAdManager$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAdManager$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Ljp/appAdForce/android/corona/CoronaAdManager;->a(Landroid/content/Context;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/appAdForce/android/AdManager;->sendConversion()V

    return-void
.end method
