.class public Lklb/android/GameEngine/Typefaces;
.super Ljava/lang/Object;
.source "Typefaces.java"


# static fields
.field private static final cache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lklb/android/GameEngine/Typefaces;->cache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-object v2, Lklb/android/GameEngine/Typefaces;->cache:Ljava/util/Hashtable;

    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v1, Lklb/android/GameEngine/Typefaces;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 16
    .local v0, "t":Landroid/graphics/Typeface;
    sget-object v1, Lklb/android/GameEngine/Typefaces;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v0    # "t":Landroid/graphics/Typeface;
    :cond_0
    sget-object v1, Lklb/android/GameEngine/Typefaces;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    monitor-exit v2

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
