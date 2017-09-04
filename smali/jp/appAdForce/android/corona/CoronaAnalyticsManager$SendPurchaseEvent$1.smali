.class Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;->invoke(Lcom/naef/jnlua/LuaState;)I
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

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:D

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->k:Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->c:Ljava/lang/String;

    iput-object p5, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->d:Ljava/lang/String;

    iput-object p6, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->e:Ljava/lang/String;

    iput-object p7, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->f:Ljava/lang/String;

    iput-object p8, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->g:Ljava/lang/String;

    iput-wide p9, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->h:D

    iput p11, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->i:I

    iput-object p12, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->a:Lcom/ansca/corona/CoronaActivity;

    iget-object v2, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->b:Ljava/lang/String;

    iget-object v3, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->c:Ljava/lang/String;

    iget-object v4, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->d:Ljava/lang/String;

    iget-object v5, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->e:Ljava/lang/String;

    iget-object v6, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->f:Ljava/lang/String;

    iget-object v7, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->g:Ljava/lang/String;

    iget-wide v8, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->h:D

    iget v10, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->i:I

    iget-object v11, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$SendPurchaseEvent$1;->j:Ljava/lang/String;

    invoke-static/range {v1 .. v11}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    return-void
.end method
