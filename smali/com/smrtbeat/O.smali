.class Lcom/smrtbeat/O;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/smrtbeat/O;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/smrtbeat/O;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "filesSaved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "OK"

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/smrtbeat/P;
    .locals 2

    iget-object v0, p0, Lcom/smrtbeat/O;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/smrtbeat/O;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smrtbeat/P;->a:Lcom/smrtbeat/P;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/smrtbeat/O;->a:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/smrtbeat/O;->a:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/smrtbeat/P;->b:Lcom/smrtbeat/P;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/smrtbeat/P;->c:Lcom/smrtbeat/P;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Lcom/smrtbeat/P;
    .locals 2

    iget v0, p0, Lcom/smrtbeat/O;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/O;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/smrtbeat/O;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smrtbeat/P;->a:Lcom/smrtbeat/P;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/smrtbeat/O;->a:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/smrtbeat/O;->a:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/smrtbeat/P;->b:Lcom/smrtbeat/P;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/smrtbeat/P;->c:Lcom/smrtbeat/P;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"code\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/smrtbeat/O;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"data\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smrtbeat/O;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
