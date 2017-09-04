.class Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaAnalyticsManager;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ansca/corona/CoronaActivity;

.field final synthetic c:Ljp/appAdForce/android/corona/CoronaAnalyticsManager;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaAnalyticsManager;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;->c:Ljp/appAdForce/android/corona/CoronaAnalyticsManager;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;->b:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;->a:Ljava/lang/String;

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaAnalyticsManager$1;->b:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0, v1}, Ljp/appAdForce/android/AnalyticsManager;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
