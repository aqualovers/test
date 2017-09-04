.class Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;->c:Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljp/appAdForce/android/AdManager;

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljp/appAdForce/android/LtvManager;

    invoke-direct {v1, v0}, Ljp/appAdForce/android/LtvManager;-><init>(Ljp/appAdForce/android/AdManager;)V

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$LtvOpenBrowser$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljp/appAdForce/android/LtvManager;->ltvOpenBrowser(Ljava/lang/String;)V

    return-void
.end method
