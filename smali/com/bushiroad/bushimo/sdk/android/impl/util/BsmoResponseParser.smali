.class public abstract Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;
.super Ljava/lang/Object;
.source "BsmoResponseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRet(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v1, "entry"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "retcode":I
    if-eqz v0, :cond_0

    .line 97
    .end local v0    # "retcode":I
    :cond_0
    return-void
.end method

.method public static parseBodyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 108
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->checkRet(Lorg/json/JSONObject;)V

    .line 113
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 114
    .local v2, "ret":Ljava/lang/Boolean;
    const-string v3, "BushimoSDK parseBodyBoolean"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object v2

    .end local v2    # "ret":Ljava/lang/Boolean;
    :cond_0
    move v3, v4

    .line 113
    goto :goto_0

    .line 117
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 121
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;

    const/4 v5, -0x2

    const-string v6, "json error"

    invoke-direct {v3, v5, v4, v6, v0}, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static parseBodyItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    :cond_0
    invoke-static {v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->json2Item(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    .line 68
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "BushimoSDK parseBodyItem"

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object v1

    .line 71
    .end local v1    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;

    const/4 v4, -0x2

    const/4 v5, 0x0

    const-string v6, "json error"

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static parseBodyJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "BushimoSDK parseBodyItem"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v1

    .line 38
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;

    const/4 v3, -0x2

    const/4 v4, 0x0

    const-string v5, "json error"

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static parseBodyList(Ljava/lang/String;Ljava/lang/String;)Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;
    .locals 9
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "json":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->checkRet(Lorg/json/JSONObject;)V

    .line 140
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 143
    .local v1, "jlist":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->jsonArray2list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 145
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v5, "BushimoSDK parseBodyItem"

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;

    invoke-direct {v4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;-><init>()V

    .line 149
    .local v4, "ret":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;
    iput-object v3, v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;->entry:Ljava/util/ArrayList;

    .line 150
    const-string v5, "totalResults"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    const-string v5, "startIndex"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;->startIndex:I

    .line 152
    const-string v5, "totalResults"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;->totalResults:I

    .line 153
    const-string v5, "itemsPerPage"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;->itemsPerPage:I

    .line 159
    :goto_0
    return-object v4

    .line 157
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;->totalResults:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "jlist":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "ret":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 165
    new-instance v5, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const-string v8, "json error"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static parseBodyMapAndEntrylist(Ljava/lang/String;Ljava/lang/String;)Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;
    .locals 11
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    new-instance v6, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;

    invoke-direct {v6}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;-><init>()V

    .line 183
    .local v6, "ret":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "jsonMap":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->json2Item(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    .line 187
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;->setResultMap(Ljava/util/HashMap;)V

    .line 189
    const-string v7, "BushimoSDK parseBodyMapAndEntrylist"

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "jsonEntry":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->checkRet(Lorg/json/JSONObject;)V

    .line 195
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 197
    .local v2, "jlist":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    :cond_0
    invoke-static {v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->jsonArray2list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 204
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v7, "BushimoSDK parseBodyMapAndEntrylist"

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v6, v5}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;->setEntry(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-object v6

    .line 209
    .end local v1    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "jlist":Lorg/json/JSONArray;
    .end local v3    # "jsonEntry":Lorg/json/JSONObject;
    .end local v4    # "jsonMap":Lorg/json/JSONObject;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "ret":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 213
    new-instance v7, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;

    const/4 v8, -0x2

    const/4 v9, 0x0

    const-string v10, "json error"

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
