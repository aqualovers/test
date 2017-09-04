.class Lcom/smrtbeat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    sget-boolean v2, Lcom/smrtbeat/g;->ab:Z

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/smrtbeat/aa;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    :try_start_0
    const-string v5, "https://control.smbeat.jp/api/remote"

    invoke-static {}, Lcom/smrtbeat/B;->b()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/smrtbeat/i;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/smrtbeat/O;

    move-result-object v5

    iget-object v6, v5, Lcom/smrtbeat/O;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/smrtbeat/i;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, v5, Lcom/smrtbeat/O;->b:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "suppressSdk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "suppressSdk"

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences$Editor;Z)V

    :cond_0
    const-string v5, "suppressCap"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "suppressCap"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v4, v1}, Lcom/smrtbeat/aa;->b(Landroid/content/SharedPreferences$Editor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v4}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences$Editor;)V

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_3

    invoke-static {v4}, Lcom/smrtbeat/aa;->c(Landroid/content/SharedPreferences$Editor;)V

    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    sput-object v7, Lcom/smrtbeat/g;->ad:Ljava/lang/Thread;

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v4}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    sput-object v7, Lcom/smrtbeat/g;->ad:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v4}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    sput-object v7, Lcom/smrtbeat/g;->ad:Ljava/lang/Thread;

    throw v0

    :cond_3
    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/smrtbeat/aa;->e(Landroid/content/SharedPreferences;)V

    goto :goto_1

    :cond_4
    sput-object v7, Lcom/smrtbeat/g;->ad:Ljava/lang/Thread;

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_0
.end method
