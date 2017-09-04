.class public Lklb/android/GameEngine/KLBExtensionRuntime;
.super Ljava/lang/Object;
.source "KLBExtensionRuntime.java"


# static fields
.field static ins:Lklb/android/GameEngine/KLBExtensionRuntime;

.field static isApplicationCreated:Z

.field static isNeedInstallReferrer:Z


# instance fields
.field context_:Landroid/content/Context;

.field intent_:Landroid/content/Intent;

.field m_methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field m_signatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lklb/android/GameEngine/KLBExtensionRuntime;

    invoke-direct {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;-><init>()V

    sput-object v0, Lklb/android/GameEngine/KLBExtensionRuntime;->ins:Lklb/android/GameEngine/KLBExtensionRuntime;

    .line 27
    sput-boolean v1, Lklb/android/GameEngine/KLBExtensionRuntime;->isApplicationCreated:Z

    .line 28
    sput-boolean v1, Lklb/android/GameEngine/KLBExtensionRuntime;->isNeedInstallReferrer:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->context_:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->intent_:Landroid/content/Intent;

    .line 64
    iput-object v0, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    .line 36
    invoke-direct {p0}, Lklb/android/GameEngine/KLBExtensionRuntime;->resolveExtensionsAndMethods()V

    .line 37
    return-void
.end method

.method public static getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lklb/android/GameEngine/KLBExtensionRuntime;->ins:Lklb/android/GameEngine/KLBExtensionRuntime;

    return-object v0
.end method

.method private invokeInstallReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "onReceiveInstallReferrer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 45
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0

    .line 50
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 48
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private resolveExtensionsAndMethods()V
    .locals 15

    .prologue
    .line 67
    invoke-static {}, Lklb/android/GameEngine/RClassReference;->getKlbExtensionsString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "extensions":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 119
    :cond_0
    return-void

    .line 72
    :cond_1
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    if-nez v10, :cond_2

    .line 74
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    .line 75
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnApplicationCreate"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/app/Application;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnCreate"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/app/Activity;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/os/Bundle;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "beforeOnRestart"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "onReceiveInstallReferrer"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/content/Intent;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnRestart"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnStart"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnStop"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "beforeOnPause"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnPause"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "beforeOnResume"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnResume"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/app/Activity;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterGlesVerDetermined"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "beforeOnActivityResult"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/app/Activity;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-class v14, Landroid/content/Intent;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "afterOnActivityResult"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/app/Activity;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-class v14, Landroid/content/Intent;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "onPayment"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Lklb/android/GameEngine/billing/util/Purchase;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "onSuccessQueryInventory"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Lklb/android/GameEngine/billing/util/Inventory;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "beforeOnDestroy"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    const-string v11, "onExtensionEventRequest"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    if-nez v10, :cond_3

    .line 95
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    .line 96
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 97
    .local v7, "key":Ljava/lang/String;
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "candidateClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 108
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 109
    .local v9, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 111
    .local v8, "m":Ljava/lang/reflect/Method;
    :try_start_1
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_signatures:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 114
    :goto_3
    if-eqz v8, :cond_5

    .line 115
    iget-object v10, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 112
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "m":Ljava/lang/reflect/Method;
    .restart local v9    # "methodName":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_3
.end method


# virtual methods
.method public afterGlesVerDetermined(I)V
    .locals 6
    .param p1, "glver"    # I

    .prologue
    .line 234
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterGlesVerDetermined"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 236
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v2

    goto :goto_0

    .line 241
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 238
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    iget-object v3, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v6, "afterOnActivityResult"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 262
    .local v1, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_0

    .line 263
    const/4 v3, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 264
    .local v2, "res":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 272
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "res":Ljava/lang/Boolean;
    :goto_1
    return v3

    :cond_1
    move v3, v5

    goto :goto_1

    .line 269
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 268
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public afterOnApplicationCreate(Landroid/app/Application;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 122
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnApplicationCreate"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 124
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/4 v2, 0x1

    sput-boolean v2, Lklb/android/GameEngine/KLBExtensionRuntime;->isApplicationCreated:Z

    .line 126
    sget-boolean v2, Lklb/android/GameEngine/KLBExtensionRuntime;->isNeedInstallReferrer:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->context_:Landroid/content/Context;

    iget-object v3, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->intent_:Landroid/content/Intent;

    invoke-direct {p0, v2, v3}, Lklb/android/GameEngine/KLBExtensionRuntime;->invokeInstallReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    goto :goto_0

    .line 131
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_1
    return-void

    .line 128
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnCreate"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 136
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    goto :goto_0

    .line 141
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 138
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnPause()V
    .locals 4

    .prologue
    .line 194
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnPause"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 196
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    goto :goto_0

    .line 201
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 198
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnRestart()V
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnRestart"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 156
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    goto :goto_0

    .line 161
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 158
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnResume(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnResume"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 216
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    goto :goto_0

    .line 221
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 218
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnStart()V
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnStart"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 166
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    goto :goto_0

    .line 171
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 168
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public afterOnStop()V
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "afterOnStop"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 176
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    goto :goto_0

    .line 181
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 178
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public beforeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 244
    iget-object v3, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v6, "beforeOnActivityResult"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 246
    .local v1, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_0

    .line 247
    const/4 v3, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 248
    .local v2, "res":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 256
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "res":Ljava/lang/Boolean;
    :goto_1
    return v3

    :cond_1
    move v3, v5

    goto :goto_1

    .line 253
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 252
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public beforeOnDestroy()V
    .locals 4

    .prologue
    .line 224
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "beforeOnDestroy"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 226
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    goto :goto_0

    .line 231
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 228
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public beforeOnPause()V
    .locals 4

    .prologue
    .line 184
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "beforeOnPause"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 186
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0

    .line 191
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 188
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public beforeOnRestart()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "beforeOnRestart"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 146
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    goto :goto_0

    .line 151
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 148
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public beforeOnResume()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "beforeOnResume"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 206
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    goto :goto_0

    .line 211
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 208
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "onExtensionEventRequest"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 301
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    goto :goto_0

    .line 306
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 304
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 5
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 276
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "onPayment"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 278
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    goto :goto_0

    .line 283
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 280
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    sget-boolean v0, Lklb/android/GameEngine/KLBExtensionRuntime;->isApplicationCreated:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lklb/android/GameEngine/KLBExtensionRuntime;->isNeedInstallReferrer:Z

    .line 57
    iput-object p1, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->context_:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->intent_:Landroid/content/Intent;

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p1, p2}, Lklb/android/GameEngine/KLBExtensionRuntime;->invokeInstallReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 5
    .param p1, "inventory"    # Lklb/android/GameEngine/billing/util/Inventory;

    .prologue
    .line 286
    iget-object v2, p0, Lklb/android/GameEngine/KLBExtensionRuntime;->m_methods:Ljava/util/Map;

    const-string v3, "onSuccessQueryInventory"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 288
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    goto :goto_0

    .line 293
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 290
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
