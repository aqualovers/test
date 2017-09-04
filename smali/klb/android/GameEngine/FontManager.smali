.class public Lklb/android/GameEngine/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static instance:Lklb/android/GameEngine/FontManager;

.field static lastFont:Ljava/lang/String;

.field static mgrAsset:Landroid/content/res/AssetManager;

.field static renderTarget:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    new-instance v0, Lklb/android/GameEngine/FontManager;

    invoke-direct {v0}, Lklb/android/GameEngine/FontManager;-><init>()V

    sput-object v0, Lklb/android/GameEngine/FontManager;->instance:Lklb/android/GameEngine/FontManager;

    .line 25
    sput-object v1, Lklb/android/GameEngine/FontManager;->renderTarget:Landroid/graphics/Paint;

    .line 26
    sput-object v1, Lklb/android/GameEngine/FontManager;->mgrAsset:Landroid/content/res/AssetManager;

    .line 27
    sput-object v1, Lklb/android/GameEngine/FontManager;->lastFont:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatePaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 5
    .param p0, "_fntName"    # Ljava/lang/String;

    .prologue
    .line 31
    move-object v1, p0

    .line 33
    .local v1, "fntName":Ljava/lang/String;
    sget-object v3, Lklb/android/GameEngine/FontManager;->renderTarget:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lklb/android/GameEngine/FontManager;->renderTarget:Landroid/graphics/Paint;

    .line 36
    :cond_0
    if-nez v1, :cond_1

    sget-object v3, Lklb/android/GameEngine/FontManager;->renderTarget:Landroid/graphics/Paint;

    .line 66
    :goto_0
    return-object v3

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    .local v2, "refresh":Z
    sget-object v3, Lklb/android/GameEngine/FontManager;->lastFont:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 40
    sput-object v1, Lklb/android/GameEngine/FontManager;->lastFont:Ljava/lang/String;

    .line 41
    const/4 v2, 0x1

    .line 49
    :cond_2
    :goto_1
    sget-object v3, Lklb/android/GameEngine/FontManager;->mgrAsset:Landroid/content/res/AssetManager;

    if-nez v3, :cond_3

    .line 50
    invoke-static {}, Lklb/android/GameEngine/GameEngineActivity;->GetAssetManager()Landroid/content/res/AssetManager;

    move-result-object v3

    sput-object v3, Lklb/android/GameEngine/FontManager;->mgrAsset:Landroid/content/res/AssetManager;

    .line 51
    const/4 v2, 0x1

    .line 54
    :cond_3
    if-eqz v2, :cond_4

    .line 57
    :try_start_0
    sget-object v3, Lklb/android/GameEngine/FontManager;->mgrAsset:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 60
    sget-object v3, Lklb/android/GameEngine/FontManager;->renderTarget:Landroid/graphics/Paint;

    sget-object v4, Lklb/android/GameEngine/FontManager;->mgrAsset:Landroid/content/res/AssetManager;

    invoke-static {v4, v1}, Lklb/android/GameEngine/Typefaces;->get(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_4
    :goto_2
    sget-object v3, Lklb/android/GameEngine/FontManager;->renderTarget:Landroid/graphics/Paint;

    goto :goto_0

    .line 43
    :cond_5
    sget-object v3, Lklb/android/GameEngine/FontManager;->lastFont:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 44
    sput-object v1, Lklb/android/GameEngine/FontManager;->lastFont:Ljava/lang/String;

    .line 45
    const/4 v2, 0x1

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getFontMetrics(Landroid/graphics/Paint;)Landroid/graphics/Paint$FontMetrics;
    .locals 1
    .param p0, "_paint"    # Landroid/graphics/Paint;

    .prologue
    .line 90
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lklb/android/GameEngine/FontManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lklb/android/GameEngine/FontManager;->instance:Lklb/android/GameEngine/FontManager;

    return-object v0
.end method

.method public static measureText(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 1
    .param p0, "_paint"    # Landroid/graphics/Paint;
    .param p1, "_str"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public static setAntiAlias(Landroid/graphics/Paint;Z)V
    .locals 0
    .param p0, "_paint"    # Landroid/graphics/Paint;
    .param p1, "_bAlias"    # Z

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0
.end method

.method public static setTextSize(Landroid/graphics/Paint;F)V
    .locals 2
    .param p0, "_paint"    # Landroid/graphics/Paint;
    .param p1, "_size"    # F

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float p1, v0, v1

    .line 73
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method
