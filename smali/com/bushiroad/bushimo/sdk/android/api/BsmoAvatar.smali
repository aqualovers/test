.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoAvatar;
.super Ljava/lang/Object;
.source "BsmoAvatar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "optional"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p6, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;>;"
    const-string v2, "BushimoSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 65
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 68
    const-string v2, "userId"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 72
    const-string v2, "type"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 76
    const-string v2, "size"

    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_2
    if-eqz p5, :cond_3

    .line 80
    const-string v2, "optional"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    const-string v2, "entry"

    invoke-virtual {v1, p1, v0, v2, p6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseList(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getAvatar(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;>;"
    const/4 v3, 0x0

    .line 22
    const-string v1, "rest/wapi/avatar/@get/"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAvatar;->getAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 23
    return-void
.end method

.method public getAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;>;"
    const-string v1, "rest/wapi/avatar/@get/"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAvatar;->getAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 34
    return-void
.end method

.method public getAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # Ljava/lang/String;
    .param p4, "optional"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p5, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;>;"
    const-string v1, "rest/wapi/avatar/@get/"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAvatar;->getAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 47
    return-void
.end method
