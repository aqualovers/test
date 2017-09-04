.class public Lklb/android/GameEngine/billing/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mOrderId:Ljava/lang/String;

    .line 57
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mPackageName:Ljava/lang/String;

    .line 58
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mSku:Ljava/lang/String;

    .line 59
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lklb/android/GameEngine/billing/util/Purchase;->mPurchaseTime:J

    .line 60
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mPurchaseState:I

    .line 61
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 62
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lklb/android/GameEngine/billing/util/Purchase;->mToken:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lklb/android/GameEngine/billing/util/Purchase;->mSignature:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static fromReceiptString(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/Purchase;
    .locals 7
    .param p0, "receiptString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "o":Lorg/json/JSONObject;
    const-string v4, "signature"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "signature":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lklb/android/GameEngine/billing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 43
    .local v1, "jsonPurchaseInfo":Ljava/lang/String;
    new-instance v4, Lklb/android/GameEngine/billing/util/Purchase;

    invoke-direct {v4, v1, v3}, Lklb/android/GameEngine/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lklb/android/GameEngine/billing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .end local v1    # "jsonPurchaseInfo":Ljava/lang/String;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "signature":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lklb/android/GameEngine/billing/util/Base64DecoderException;
    const-string v4, "Purchase"

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/Base64DecoderException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 46
    goto :goto_0

    .line 47
    .end local v0    # "e":Lklb/android/GameEngine/billing/util/Base64DecoderException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Purchase"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 49
    goto :goto_0
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public toReceiptString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "signature"

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/Purchase;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "data"

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lklb/android/GameEngine/billing/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Purchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not generate receiptString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
