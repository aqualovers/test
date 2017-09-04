.class Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession$1;->b:Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEndSession$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Ljp/appAdForce/android/AnalyticsManager;->sendEndSession(Landroid/content/Context;)V

    return-void
.end method
