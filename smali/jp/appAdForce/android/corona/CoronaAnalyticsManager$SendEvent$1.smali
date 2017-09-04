.class Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->f:Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->c:Ljava/lang/String;

    iput-object p5, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->d:Ljava/lang/String;

    iput p6, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->a:Lcom/ansca/corona/CoronaActivity;

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->b:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->c:Ljava/lang/String;

    iget-object v3, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->d:Ljava/lang/String;

    iget v4, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendEvent$1;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
