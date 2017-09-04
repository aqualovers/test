.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoInspection;
.super Ljava/lang/Object;
.source "BsmoInspection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestInspection(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "strId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa0

    if-ge v2, v3, :cond_1

    .line 26
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 27
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    const-string v2, "functionKey"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    const-string v2, "rest/wapi_extension/inspection/"

    const-string v3, "result"

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseBoolean(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 43
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v2, -0x5

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_0
.end method
