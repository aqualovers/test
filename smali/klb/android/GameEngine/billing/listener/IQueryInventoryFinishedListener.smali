.class public Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;
.super Ljava/lang/Object;
.source "IQueryInventoryFinishedListener.java"

# interfaces
.implements Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;


# static fields
.field private static final kClassName:Ljava/lang/String;


# instance fields
.field private skuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "_skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->skuList:Ljava/util/List;

    .line 33
    sget-object v0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "IQueryInventoryFinishedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->skuList:Ljava/util/List;

    .line 36
    return-void
.end method

.method private onQueryInventoryError()V
    .locals 5

    .prologue
    .line 40
    sget-object v0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "onQueryInventoryError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private onQueryInventorySuccess(Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 11
    .param p1, "inventory"    # Lklb/android/GameEngine/billing/util/Inventory;

    .prologue
    .line 45
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 48
    .local v4, "resultArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_1

    .line 49
    iget-object v7, p0, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->skuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    .local v6, "sku":Ljava/lang/String;
    invoke-virtual {p1, v6}, Lklb/android/GameEngine/billing/util/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    invoke-virtual {p1, v6}, Lklb/android/GameEngine/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/SkuDetails;

    move-result-object v0

    .line 54
    .local v0, "detail":Lklb/android/GameEngine/billing/util/SkuDetails;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "id"

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v7, "price"

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v7, "description"

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v7, "title"

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\([^)]*\\)"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    sget-object v7, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v0    # "detail":Lklb/android/GameEngine/billing/util/SkuDetails;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    sget-object v7, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid SKU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "resultStr":Ljava/lang/String;
    sget-object v7, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SKU Json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v7, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_1
    sget-object v7, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byte length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v5, v10}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_1
    return-void

    .line 88
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onQueryInventoryFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 7
    .param p1, "result"    # Lklb/android/GameEngine/billing/util/IabResult;
    .param p2, "inventory"    # Lklb/android/GameEngine/billing/util/Inventory;

    .prologue
    .line 95
    sget-object v4, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    const-string v5, "onQueryInventoryFinished"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez p2, :cond_0

    .line 101
    sget-object v4, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    const-string v5, "Item not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->onQueryInventoryError()V

    .line 130
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->isFailure()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    sget-object v4, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    const-string v5, "Failure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->onQueryInventoryError()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p2}, Lklb/android/GameEngine/billing/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "ownedItem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, "sku":Ljava/lang/String;
    sget-object v4, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pending(Owned) sku: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2, v3}, Lklb/android/GameEngine/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/Purchase;

    move-result-object v2

    .line 126
    .local v2, "pendingPurchase":Lklb/android/GameEngine/billing/util/Purchase;
    invoke-static {v3, v2}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sendMessagePurchased(Ljava/lang/String;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_1

    .line 129
    .end local v2    # "pendingPurchase":Lklb/android/GameEngine/billing/util/Purchase;
    .end local v3    # "sku":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;->onQueryInventorySuccess(Lklb/android/GameEngine/billing/util/Inventory;)V

    goto :goto_0
.end method
