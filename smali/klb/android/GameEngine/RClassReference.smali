.class public Lklb/android/GameEngine/RClassReference;
.super Ljava/lang/Object;
.source "RClassReference.java"


# static fields
.field private static app_name:I

.field private static app_name_string:Ljava/lang/String;

.field private static ic_launcher:I

.field private static indicator:I

.field private static klb_extensions_name:I

.field private static klb_extensions_string:Ljava/lang/String;

.field private static smrtbeat_token_name:I

.field private static smrtbeat_token_string:Ljava/lang/String;

.field private static stringMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p2, "stringKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 96
    .local v1, "id":I
    sget-object v2, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    const/4 v2, 0x1

    .end local v1    # "id":I
    :goto_0
    return v2

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getAppName()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lklb/android/GameEngine/RClassReference;->app_name:I

    return v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 195
    sget v0, Lklb/android/GameEngine/RClassReference;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lklb/android/GameEngine/RClassReference;->app_name_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getICLauncher()I
    .locals 1

    .prologue
    .line 185
    sget v0, Lklb/android/GameEngine/RClassReference;->ic_launcher:I

    return v0
.end method

.method public static getIndicator()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lklb/android/GameEngine/RClassReference;->indicator:I

    return v0
.end method

.method public static getKlbExtensionsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lklb/android/GameEngine/RClassReference;->klb_extensions_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmrtBeatTokenString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lklb/android/GameEngine/RClassReference;->smrtbeat_token_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "stringKey"    # Ljava/lang/String;

    .prologue
    .line 166
    sget-object v1, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 11
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 45
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".R$string"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 46
    .local v6, "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "app_name"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 47
    .local v5, "stringAppName":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    sput v9, Lklb/android/GameEngine/RClassReference;->app_name:I

    .line 48
    sget v9, Lklb/android/GameEngine/RClassReference;->app_name:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lklb/android/GameEngine/RClassReference;->app_name_string:Ljava/lang/String;

    .line 49
    const/4 v9, 0x0

    sput-object v9, Lklb/android/GameEngine/RClassReference;->smrtbeat_token_string:Ljava/lang/String;

    .line 50
    const/4 v9, 0x0

    sput-object v9, Lklb/android/GameEngine/RClassReference;->klb_extensions_string:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    :try_start_1
    const-string v9, "smrtbeat_token"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 53
    .local v8, "stringSmrtBeatToken":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    sput v9, Lklb/android/GameEngine/RClassReference;->smrtbeat_token_name:I

    .line 54
    sget v9, Lklb/android/GameEngine/RClassReference;->smrtbeat_token_name:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lklb/android/GameEngine/RClassReference;->smrtbeat_token_string:Ljava/lang/String;

    .line 55
    const-string v9, "klb_extensions"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 56
    .local v7, "stringKlbExtensions":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    sput v9, Lklb/android/GameEngine/RClassReference;->klb_extensions_name:I

    .line 57
    sget v9, Lklb/android/GameEngine/RClassReference;->klb_extensions_name:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lklb/android/GameEngine/RClassReference;->klb_extensions_string:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    .end local v7    # "stringKlbExtensions":Ljava/lang/reflect/Field;
    .end local v8    # "stringSmrtBeatToken":Ljava/lang/reflect/Field;
    :goto_0
    :try_start_2
    const-string v9, "install_dialog_message"

    invoke-static {p0, v6, v9}, Lklb/android/GameEngine/RClassReference;->fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 66
    const-string v9, "install_dialog_title"

    invoke-static {p0, v6, v9}, Lklb/android/GameEngine/RClassReference;->fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 67
    const-string v9, "bootup_stopped"

    invoke-static {p0, v6, v9}, Lklb/android/GameEngine/RClassReference;->fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".R$layout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 71
    .local v3, "layoutClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "indicator"

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 72
    .local v4, "layoutIndicator":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    sput v9, Lklb/android/GameEngine/RClassReference;->indicator:I

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".R$drawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "drawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "ic_notification"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 77
    .local v1, "drawableICLauncher":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    sput v9, Lklb/android/GameEngine/RClassReference;->ic_launcher:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    return-void

    .line 79
    .end local v0    # "drawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "drawableICLauncher":Ljava/lang/reflect/Field;
    .end local v3    # "layoutClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "layoutIndicator":Ljava/lang/reflect/Field;
    .end local v5    # "stringAppName":Ljava/lang/reflect/Field;
    .end local v6    # "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 83
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 87
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 59
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "stringAppName":Ljava/lang/reflect/Field;
    .restart local v6    # "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v9

    goto :goto_0
.end method
