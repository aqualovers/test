.class Lcom/smrtbeat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/SharedPreferences;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/j;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Z)V

    invoke-static {}, Lcom/smrtbeat/B;->a()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/ad;->c:Lcom/smrtbeat/ad;

    const-string v2, "SendPingData"

    invoke-static {v1, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;)Lcom/smrtbeat/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smrtbeat/O;->a()Lcom/smrtbeat/P;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/P;->a:Lcom/smrtbeat/P;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/aa;->b(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v0}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Z)V

    return-void
.end method
