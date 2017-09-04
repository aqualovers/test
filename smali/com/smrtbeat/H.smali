.class Lcom/smrtbeat/H;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    new-instance v0, Lcom/smrtbeat/I;

    invoke-direct {v0}, Lcom/smrtbeat/I;-><init>()V

    return-object v0
.end method

.method static a(Landroid/app/Application;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smrtbeat/H;->a()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v1, "Failed to register activity lifecycle callback"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_0
.end method
