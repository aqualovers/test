.class public Lextension/klb/AppsFlyer/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"


# static fields
.field private static appsFlyerInstallReceiver:Lcom/appsflyer/SingleInstallBroadcastReceiver;

.field private static devKey:Ljava/lang/String;

.field private static m_inventory:Lklb/android/GameEngine/billing/util/Inventory;

.field private static refActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    .line 22
    sput-object v0, Lextension/klb/AppsFlyer/PFInterface;->appsFlyerInstallReceiver:Lcom/appsflyer/SingleInstallBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    sput-object p0, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    .line 30
    :try_start_0
    sget-object v1, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "appsFlyer_dev_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lextension/klb/AppsFlyer/PFInterface;->devKey:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    sget-object v2, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Lextension/klb/AppsFlyer/PFInterface;->devKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 63
    const/4 v7, 0x2

    :try_start_0
    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "af_content_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "af_param_1"

    aput-object v8, v4, v7

    .line 68
    .local v4, "keys":[Ljava/lang/String;
    const/4 v0, 0x2

    .line 69
    .local v0, "KEY_MAX":I
    const-string v7, ","

    const/4 v8, 0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "values":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v2    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v3, "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "cnt":I
    :try_start_1
    array-length v5, v6

    .local v5, "size":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 73
    aget-object v7, v4, v1

    aget-object v8, v6, v1

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 77
    .end local v0    # "KEY_MAX":I
    .end local v1    # "cnt":I
    .end local v3    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "size":I
    .end local v6    # "values":[Ljava/lang/String;
    .restart local v2    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    sget-object v8, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8, p0, v2}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v2    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "KEY_MAX":I
    .restart local v1    # "cnt":I
    .restart local v3    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "keys":[Ljava/lang/String;
    .restart local v6    # "values":[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public static onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 8
    .param p0, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 84
    const-string v5, "LOVELIVE_ID"

    const-string v6, "user_id"

    invoke-static {v5, v6}, Lklb/android/GameEngine/PFInterface;->getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "userID":Ljava/lang/String;
    sget-object v5, Lextension/klb/AppsFlyer/PFInterface;->m_inventory:Lklb/android/GameEngine/billing/util/Inventory;

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lklb/android/GameEngine/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/SkuDetails;

    move-result-object v3

    .line 86
    .local v3, "skuDetails":Lklb/android/GameEngine/billing/util/SkuDetails;
    invoke-virtual {v3}, Lklb/android/GameEngine/billing/util/SkuDetails;->getPriceAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v1, v5

    .line 87
    .local v1, "price":I
    invoke-virtual {v3}, Lklb/android/GameEngine/billing/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "productID":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "af_revenue"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "af_content_type"

    const-string v6, "NORMAL"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v5, "af_content_id"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v5, "af_currency"

    const-string v6, "JPY"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    sget-object v6, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    const-string v7, "af_purchase"

    invoke-virtual {v5, v6, v7, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "eventValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static onReceiveInstallReferrer(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    new-instance v0, Lcom/appsflyer/SingleInstallBroadcastReceiver;

    invoke-direct {v0}, Lcom/appsflyer/SingleInstallBroadcastReceiver;-><init>()V

    sput-object v0, Lextension/klb/AppsFlyer/PFInterface;->appsFlyerInstallReceiver:Lcom/appsflyer/SingleInstallBroadcastReceiver;

    .line 45
    :try_start_0
    sget-object v0, Lextension/klb/AppsFlyer/PFInterface;->appsFlyerInstallReceiver:Lcom/appsflyer/SingleInstallBroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/SingleInstallBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lextension/klb/AppsFlyer/PFInterface;->refActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lextension/klb/AppsFlyer/PFInterface;->devKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 0
    .param p0, "inventory"    # Lklb/android/GameEngine/billing/util/Inventory;

    .prologue
    .line 105
    sput-object p0, Lextension/klb/AppsFlyer/PFInterface;->m_inventory:Lklb/android/GameEngine/billing/util/Inventory;

    .line 106
    return-void
.end method
