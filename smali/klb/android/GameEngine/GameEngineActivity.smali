.class public Lklb/android/GameEngine/GameEngineActivity;
.super Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;,
        Lklb/android/GameEngine/GameEngineActivity$CInstall;
    }
.end annotation


# static fields
.field static final MSG_UNZIP_FINISH:I = 0x2

.field static final MSG_UNZIP_PROGRESS:I = 0x1

.field private static final REQUEST_ACCESS_FINE_LOCATION_PERMISSION:I = 0x1

.field private static final REQUEST_WAKE_LOCK_PERMISSION:I = 0x2

.field private static final USE_SD_CARD:Z

.field private static mAssetMgr:Landroid/content/res/AssetManager;


# instance fields
.field final DEFAULT_VOLUME:I

.field private final VERSION_KEY:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private activityCreatedAt:J

.field private c_path_base:Ljava/lang/String;

.field private c_path_external:Ljava/lang/String;

.field private c_path_install:Ljava/lang/String;

.field private c_verLine:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private headsetEquipped:Z

.field private headsetReceiver:Landroid/content/BroadcastReceiver;

.field private installThread:Ljava/lang/Thread;

.field isMannerModeOn:Z

.field isSystemUiDirty:Z

.field isWearingHeadset:Z

.field isWindowFocused:Z

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRegisterTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lklb/android/GameEngine/GameGLSurfaceView;

.field public m_IndicatorLayout:Landroid/widget/FrameLayout;

.field public m_MovieLayout:Landroid/widget/FrameLayout;

.field private m_UsePause:Z

.field private m_alertMessage:Ljava/lang/String;

.field private m_alertTitle:Ljava/lang/String;

.field private m_appliInfo:Landroid/content/pm/ApplicationInfo;

.field private m_initialized:Z

.field private m_installEnd:Z

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_mediaVolume:I

.field private m_prev_orientation:I

.field private m_progressDialog:Landroid/app/ProgressDialog;

.field resumeRequested:Z

.field private shouldGPSCallbackLua:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lklb/android/GameEngine/GameEngineActivity;->mAssetMgr:Landroid/content/res/AssetManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;-><init>()V

    .line 89
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    .line 90
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_initialized:Z

    .line 92
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    .line 93
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    .line 94
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    .line 95
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_appliInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    .line 97
    const-string v0, "[assets]version"

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->VERSION_KEY:Ljava/lang/String;

    .line 98
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_installEnd:Z

    .line 99
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 100
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    .line 101
    iput v3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    .line 102
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lklb/android/GameEngine/GameEngineActivity;->DEFAULT_VOLUME:I

    .line 110
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;

    .line 113
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->shouldGPSCallbackLua:Z

    .line 114
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 115
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 118
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->activity:Landroid/app/Activity;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isWindowFocused:Z

    .line 353
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    .line 364
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    .line 760
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->handler:Landroid/os/Handler;

    .line 766
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    .line 767
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    return-void
.end method

.method public static GetAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lklb/android/GameEngine/GameEngineActivity;->mAssetMgr:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic access$000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lklb/android/GameEngine/GameEngineActivity;)J
    .locals 2
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-wide v0, p0, Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J

    return-wide v0
.end method

.method static synthetic access$1000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1200(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lklb/android/GameEngine/GameEngineActivity;)I
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I

    return v0
.end method

.method static synthetic access$202(Lklb/android/GameEngine/GameEngineActivity;I)I
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I

    return p1
.end method

.method static synthetic access$400(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lklb/android/GameEngine/GameEngineActivity;->unzipAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lklb/android/GameEngine/GameEngineActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lklb/android/GameEngine/GameEngineActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    return p1
.end method

.method static synthetic access$900(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;

    return-object v0
.end method

.method private cancelGCMNotification()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method private checkPlayServices(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 998
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 999
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1005
    const/4 v1, 0x0

    .line 1007
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private eraseFiles(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 513
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 519
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 523
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 525
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lklb/android/GameEngine/GameEngineActivity;->eraseFiles(Ljava/io/File;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 527
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private invalidateSystemUi()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    .line 367
    return-void
.end method

.method private isInappropriateEnvSuspected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 151
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "google_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isSuBinaryPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 153
    :cond_1
    return v0
.end method

.method private isSuBinaryPresent()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    const/16 v9, 0x9

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "/data/local"

    aput-object v9, v6, v8

    const-string v9, "/data/local/bin"

    aput-object v9, v6, v7

    const/4 v9, 0x2

    const-string v10, "/data/local/xbin"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "/sbin"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "/system/bin"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    const-string v10, "/system/sd/xbin"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "/system/xbin"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "/system/bin/failsafe"

    aput-object v10, v6, v9

    const/16 v9, 0x8

    const-string v10, "/vendor/bin"

    aput-object v10, v6, v9

    .line 127
    .local v6, "locationCandidates":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 128
    .local v2, "candidateDir":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/su"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "candidate":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    .end local v1    # "candidate":Ljava/lang/String;
    .end local v2    # "candidateDir":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_0
    :goto_1
    return v7

    .line 134
    .restart local v1    # "candidate":Ljava/lang/String;
    .restart local v2    # "candidateDir":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 127
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "candidate":Ljava/lang/String;
    .end local v2    # "candidateDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/app/Superuser.apk"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v3    # "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-nez v9, :cond_0

    .end local v3    # "f":Ljava/io/File;
    :goto_2
    move v7, v8

    .line 146
    goto :goto_1

    .line 143
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method private isVersionUpdated()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 488
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v8, "version"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 489
    .local v6, "verStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 490
    .local v4, "r":Ljava/io/Reader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 491
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    .line 493
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 494
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 495
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 498
    const-string v8, "GameEngineActivity"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 499
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v8, "[assets]version"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "ret":Ljava/lang/String;
    iget-object v8, p0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    .line 507
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    .end local v4    # "r":Ljava/io/Reader;
    .end local v5    # "ret":Ljava/lang/String;
    .end local v6    # "verStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v7

    .line 505
    :catch_0
    move-exception v2

    .line 507
    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method private registerHeadsetReceiver()V
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 874
    :cond_0
    return-void
.end method

.method private resumeView()V
    .locals 3

    .prologue
    .line 421
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isInappropriateEnvSuspected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const-string v1, "ENG_AND_APP_CANNOT_STARTUP"

    const-string v2, "\u4e0d\u6b63\u306a\u30a2\u30af\u30bb\u30b9\u3092\u691c\u51fa\u3057\u307e\u3057\u305f\u3002\u30a2\u30d7\u30ea\u3092\u8d77\u52d5\u51fa\u6765\u307e\u305b\u3093\u3002"

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 423
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->refreshSystemUi()V

    .line 427
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameGLSurfaceView;->onResume()V

    goto :goto_0
.end method

.method private startLocation()V
    .locals 9

    .prologue
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1066
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1067
    :cond_0
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 1068
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 1070
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v8, "FAILED to get LocationManager"

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1073
    :cond_1
    new-instance v1, Lklb/android/GameEngine/GameEngineActivity$6;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/GameEngineActivity$6;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    iput-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 1109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1110
    .local v0, "hdl":Landroid/os/Handler;
    new-instance v1, Lklb/android/GameEngine/GameEngineActivity$7;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/GameEngineActivity$7;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1059
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1060
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 1061
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 1062
    return-void
.end method

.method private unregisterHeadsetReceiver()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 882
    :cond_0
    return-void
.end method

.method private unzipAssets(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 36
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "externalPath"    # Ljava/lang/String;

    .prologue
    .line 548
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v17, "installDir":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->eraseFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 558
    :try_start_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    .local v12, "externaldir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 562
    :cond_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 567
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 573
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    :try_start_2
    const-string v34, "ziplist"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    .line 574
    .local v31, "zipStream":Ljava/io/InputStream;
    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 575
    .local v23, "r":Ljava/io/Reader;
    new-instance v6, Ljava/io/BufferedReader;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 578
    .local v6, "br":Ljava/io/BufferedReader;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v33, "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, "l":Ljava/lang/String;
    :goto_0
    if-eqz v18, :cond_2

    .line 580
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto :goto_0

    .line 551
    .end local v5    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "dir":Ljava/io/File;
    .end local v12    # "externaldir":Ljava/io/File;
    .end local v17    # "installDir":Ljava/io/File;
    .end local v18    # "l":Ljava/lang/String;
    .end local v23    # "r":Ljava/io/Reader;
    .end local v31    # "zipStream":Ljava/io/InputStream;
    .end local v33    # "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 553
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v34, "GameEngineActivity"

    const-string v35, "failed to eraseFiles"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 554
    const/16 v34, 0x0

    .line 652
    .end local v11    # "ex":Ljava/lang/Exception;
    :goto_1
    return v34

    .line 582
    .restart local v5    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "dir":Ljava/io/File;
    .restart local v12    # "externaldir":Ljava/io/File;
    .restart local v17    # "installDir":Ljava/io/File;
    .restart local v18    # "l":Ljava/lang/String;
    .restart local v23    # "r":Ljava/io/Reader;
    .restart local v31    # "zipStream":Ljava/io/InputStream;
    .restart local v33    # "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    .line 583
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 584
    invoke-virtual/range {v23 .. v23}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 598
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v18    # "l":Ljava/lang/String;
    .end local v23    # "r":Ljava/io/Reader;
    .end local v31    # "zipStream":Ljava/io/InputStream;
    :goto_2
    const/16 v4, 0x1000

    .line 601
    .local v4, "DEFAULT_BUFSIZ":I
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 602
    .local v32, "zipfile":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 603
    .local v16, "inputStream":Ljava/io/InputStream;
    const-wide/16 v28, 0x0

    .line 604
    .local v28, "unzipSize":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 605
    .local v24, "totalSize":J
    new-instance v30, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 606
    .local v30, "zipInputStream":Ljava/util/zip/ZipInputStream;
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v27

    .line 607
    .local v27, "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_4
    if-eqz v27, :cond_7

    .line 608
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 610
    .local v10, "entryName":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 612
    .local v21, "outpath":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v34

    if-eqz v34, :cond_4

    .line 613
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    .local v26, "underDir":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_3

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 615
    :cond_3
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 616
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v27

    .line 617
    goto :goto_4

    .line 585
    .end local v4    # "DEFAULT_BUFSIZ":I
    .end local v10    # "entryName":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "outpath":Ljava/lang/String;
    .end local v24    # "totalSize":J
    .end local v26    # "underDir":Ljava/io/File;
    .end local v27    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v28    # "unzipSize":J
    .end local v30    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v32    # "zipfile":Ljava/lang/String;
    .end local v33    # "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v11

    .line 586
    .local v11, "ex":Ljava/io/IOException;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .restart local v33    # "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v34, "AppAssets.zip"

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 651
    .end local v5    # "assetManager":Landroid/content/res/AssetManager;
    .end local v8    # "dir":Ljava/io/File;
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v12    # "externaldir":Ljava/io/File;
    .end local v17    # "installDir":Ljava/io/File;
    .end local v33    # "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    .line 652
    .restart local v11    # "ex":Ljava/io/IOException;
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 620
    .end local v11    # "ex":Ljava/io/IOException;
    .restart local v4    # "DEFAULT_BUFSIZ":I
    .restart local v5    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v8    # "dir":Ljava/io/File;
    .restart local v10    # "entryName":Ljava/lang/String;
    .restart local v12    # "externaldir":Ljava/io/File;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "installDir":Ljava/io/File;
    .restart local v21    # "outpath":Ljava/lang/String;
    .restart local v24    # "totalSize":J
    .restart local v27    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v28    # "unzipSize":J
    .restart local v30    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v32    # "zipfile":Ljava/lang/String;
    .restart local v33    # "zipfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    .line 622
    .restart local v26    # "underDir":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_5

    .line 623
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 626
    :cond_5
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 627
    .local v14, "fileOutputStream":Ljava/io/FileOutputStream;
    new-array v7, v4, [B

    .line 628
    .local v7, "buf":[B
    :goto_5
    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v7, v1, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v20

    .local v20, "n":I
    const/16 v34, -0x1

    move/from16 v0, v20

    move/from16 v1, v34

    if-le v0, v1, :cond_6

    .line 629
    const/16 v34, 0x0

    move/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v14, v7, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 631
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    add-long v28, v28, v34

    .line 632
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 633
    .local v19, "msg":Landroid/os/Message;
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 634
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x400

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 635
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x400

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->handler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 638
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 639
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v27

    .line 640
    goto/16 :goto_4

    .line 641
    .end local v7    # "buf":[B
    .end local v10    # "entryName":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v19    # "msg":Landroid/os/Message;
    .end local v20    # "n":I
    .end local v21    # "outpath":Ljava/lang/String;
    .end local v26    # "underDir":Ljava/io/File;
    :cond_7
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    goto/16 :goto_3

    .line 645
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v24    # "totalSize":J
    .end local v27    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v28    # "unzipSize":J
    .end local v30    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v32    # "zipfile":Ljava/lang/String;
    :cond_8
    const-string v34, "GameEngineActivity"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 646
    .local v22, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 647
    .local v9, "e":Landroid/content/SharedPreferences$Editor;
    const-string v34, "[assets]version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 650
    const/16 v34, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public IsInstallEnd()Z
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_installEnd:Z

    return v0
.end method

.method public IsUsePause()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    return v0
.end method

.method public SetUsePause(Z)V
    .locals 0
    .param p1, "bUsePause"    # Z

    .prologue
    .line 980
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 981
    return-void
.end method

.method public bakeDeviceToken()Ljava/lang/String;
    .locals 14

    .prologue
    .line 675
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "android_id":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 677
    .local v7, "serialNumber":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "deviceTokenRaw":Ljava/lang/String;
    invoke-static {v4}, Lklb/android/GameEngine/PFInterface;->sha512(Ljava/lang/String;)[B

    move-result-object v1

    .line 679
    .local v1, "bSHA512":[B
    new-instance v3, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 682
    .local v3, "deviceToken":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x58

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-direct {v12, v13, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "hex":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 684
    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "cnt":I
    :goto_0
    add-int/lit8 v9, v8, -0x2

    if-ge v2, v9, :cond_0

    .line 686
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {v6, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 684
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 689
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v8, -0x2

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 701
    .end local v2    # "cnt":I
    .end local v6    # "hex":Ljava/lang/String;
    .end local v8    # "size":I
    :goto_1
    return-object v3

    .line 691
    :catch_0
    move-exception v5

    .line 693
    .local v5, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_1
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .prologue
    .line 888
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 889
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 890
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v0, 0x400

    .line 891
    .local v0, "BUFFER_SIZE":I
    new-array v1, v0, [B

    .line 893
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 895
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 900
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "buf":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 901
    :goto_1
    return-void

    .line 897
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "buf":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 898
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 464
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 479
    :cond_0
    invoke-super {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 469
    :sswitch_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lklb/android/GameEngine/PFInterface;->inputDeviceKey(IC)V

    goto :goto_0

    .line 474
    :sswitch_1
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lklb/android/GameEngine/PFInterface;->inputDeviceKey(IC)V

    goto :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public forbidSleep(Z)V
    .locals 1
    .param p1, "isForbidden"    # Z

    .prologue
    .line 984
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$5;

    invoke-direct {v0, p0, p1}, Lklb/android/GameEngine/GameEngineActivity$5;-><init>(Lklb/android/GameEngine/GameEngineActivity;Z)V

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 995
    return-void
.end method

.method public getLocation()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    .line 1194
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1195
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 1197
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "Failed to get permission"

    move v3, v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    .line 1202
    .end local v0    # "permissionCheck":I
    :goto_0
    return-void

    .line 1201
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->startLocation()V

    goto :goto_0
.end method

.method public getPermissionStatus()I
    .locals 2

    .prologue
    .line 1123
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1124
    .local v0, "permissionCheck":I
    if-nez v0, :cond_0

    .line 1126
    const/4 v1, 0x1

    .line 1132
    :goto_0
    return v1

    .line 1128
    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1130
    const/4 v1, 0x2

    goto :goto_0

    .line 1132
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public instanciateEarphoneChecker()V
    .locals 1

    .prologue
    .line 855
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$3;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GameEngineActivity$3;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 866
    return-void
.end method

.method public isLowLatencyAudioOptimisationEnabled()Z
    .locals 2

    .prologue
    .line 1016
    const/16 v0, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 440
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    .line 442
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 443
    invoke-static {p0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lklb/android/GameEngine/billing/manager/BillingManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    invoke-super {p0, p1, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 450
    :cond_0
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 451
    return-void

    .line 446
    :cond_1
    const-string v1, "GameEngineActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handled IAB ActivityResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 181
    invoke-super {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 187
    const/16 v6, 0xb

    invoke-virtual {p0, v6}, Lklb/android/GameEngine/GameEngineActivity;->setRequestedOrientation(I)V

    .line 190
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v6

    invoke-virtual {v6, p0}, Lklb/android/GameEngine/PFInterface;->setContext(Lklb/android/GameEngine/GameEngineActivity;)V

    .line 191
    iput-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->activity:Landroid/app/Activity;

    .line 193
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->nanotime()J

    move-result-wide v6

    iput-wide v6, p0, Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J

    .line 194
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isInappropriateEnvSuspected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v6

    const-string v7, "bootup_stopped"

    const-string v8, "\u4e0d\u6b63\u306a\u30a2\u30af\u30bb\u30b9\u3092\u691c\u51fa\u3057\u307e\u3057\u305f\u3002\u30a2\u30d7\u30ea\u3092\u8d77\u52d5\u51fa\u6765\u307e\u305b\u3093\u3002"

    invoke-virtual {v6, v7, v8}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    .line 328
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {p0}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onCreate(Landroid/app/Activity;)V

    .line 203
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 206
    invoke-virtual {p0, v8}, Lklb/android/GameEngine/GameEngineActivity;->setVolumeControlStream(I)V

    .line 207
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->instanciateEarphoneChecker()V

    .line 216
    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_initialized:Z

    if-nez v6, :cond_5

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "install_sd":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "state":Ljava/lang/String;
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    sput-object v6, Lklb/android/GameEngine/GameEngineActivity;->mAssetMgr:Landroid/content/res/AssetManager;

    .line 243
    if-ne v1, v10, :cond_6

    .line 245
    invoke-virtual {p0, v12}, Lklb/android/GameEngine/GameEngineActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    .line 246
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 248
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    .line 257
    :cond_2
    :goto_1
    iput v11, p0, Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/install/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/external/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    .line 260
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v6

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lklb/android/GameEngine/PFInterface;->setLoadAppPath(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v6

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    iget-object v8, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lklb/android/GameEngine/PFInterface;->setBasePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "installdir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 270
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "externaldir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 276
    :cond_4
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    .line 277
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    .line 279
    new-instance v6, Lklb/android/GameEngine/GameGLSurfaceView;

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-direct {v6, p0, v7}, Lklb/android/GameEngine/GameGLSurfaceView;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    .line 280
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    .line 281
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lklb/android/GameEngine/GameEngineActivity;->setContentView(Landroid/view/View;)V

    .line 286
    new-instance v6, Lklb/android/GameEngine/GameEngineActivity$2;

    const/4 v7, 0x2

    invoke-direct {v6, p0, p0, v7}, Lklb/android/GameEngine/GameEngineActivity$2;-><init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;I)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 309
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v6}, Landroid/view/OrientationEventListener;->enable()V

    .line 310
    iput-boolean v10, p0, Lklb/android/GameEngine/GameEngineActivity;->m_initialized:Z

    .line 312
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isVersionUpdated()Z

    move-result v6

    if-nez v6, :cond_7

    .line 314
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    .line 315
    const-string v6, "install_dialog_title"

    invoke-static {v6}, Lklb/android/GameEngine/RClassReference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "title":Ljava/lang/String;
    const-string v6, "install_dialog_message"

    invoke-static {v6}, Lklb/android/GameEngine/RClassReference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "message":Ljava/lang/String;
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 320
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 321
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 322
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lklb/android/GameEngine/GameEngineActivity$CInstall;

    invoke-direct {v7, p0, v12}, Lklb/android/GameEngine/GameEngineActivity$CInstall;-><init>(Lklb/android/GameEngine/GameEngineActivity;Lklb/android/GameEngine/GameEngineActivity$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    .line 323
    iget-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 327
    .end local v0    # "externaldir":Ljava/io/File;
    .end local v1    # "install_sd":Z
    .end local v2    # "installdir":Ljava/io/File;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 253
    .restart local v1    # "install_sd":Z
    .restart local v4    # "state":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    goto/16 :goto_1

    .line 325
    .restart local v0    # "externaldir":Ljava/io/File;
    .restart local v2    # "installdir":Ljava/io/File;
    :cond_7
    invoke-virtual {p0, v10}, Lklb/android/GameEngine/GameEngineActivity;->setInstallStatus(Z)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onDestroy()V

    .line 434
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnDestroy()V

    .line 435
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->billingTerminate()V

    .line 436
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 382
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->setIntent(Landroid/content/Intent;)V

    .line 383
    invoke-static {p1}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onNewIntent(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onPause()V

    .line 342
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnPause()V

    .line 344
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->unregisterHeadsetReceiver()V

    .line 346
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameGLSurfaceView;->onPause()V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 348
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/PFInterface;->setActive(Z)V

    .line 349
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnPause()V

    .line 350
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1213
    packed-switch p1, :pswitch_data_0

    .line 1249
    :goto_0
    return-void

    .line 1217
    :pswitch_0
    iput-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->shouldGPSCallbackLua:Z

    .line 1218
    array-length v1, p3

    if-lez v1, :cond_0

    aget v1, p3, v3

    if-nez v1, :cond_0

    .line 1220
    const/4 v9, 0x2

    .line 1221
    .local v9, "CB_IDX_ON_PERMISSION_GRANTED":I
    const/4 v10, 0x0

    .line 1222
    .local v10, "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x2

    const-string v8, "permission gained"

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1226
    .end local v9    # "CB_IDX_ON_PERMISSION_GRANTED":I
    .end local v10    # "ERROR_ID":I
    :cond_0
    const/4 v0, 0x1

    .line 1227
    .local v0, "CB_IDX_ON_FAILED":I
    const/4 v10, 0x1

    .line 1228
    .restart local v10    # "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "Failed to get permission"

    move v3, v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1234
    .end local v0    # "CB_IDX_ON_FAILED":I
    .end local v10    # "ERROR_ID":I
    :pswitch_1
    array-length v1, p3

    if-lez v1, :cond_1

    aget v1, p3, v3

    if-nez v1, :cond_1

    .line 1236
    const/4 v9, 0x0

    .line 1237
    .restart local v9    # "CB_IDX_ON_PERMISSION_GRANTED":I
    const/4 v10, 0x0

    .line 1238
    .restart local v10    # "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "permission gained"

    move v2, v3

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1242
    .end local v9    # "CB_IDX_ON_PERMISSION_GRANTED":I
    .end local v10    # "ERROR_ID":I
    :cond_1
    const/4 v0, 0x1

    .line 1243
    .restart local v0    # "CB_IDX_ON_FAILED":I
    const/4 v10, 0x1

    .line 1244
    .restart local v10    # "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "Failed to get permission"

    move v3, v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onRestart()V

    .line 333
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnRestart()V

    .line 334
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameGLSurfaceView;->onRestart()V

    .line 335
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnRestart()V

    .line 336
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 393
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onResume()V

    .line 395
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnResume()V

    .line 398
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 399
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 401
    invoke-static {p0}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onResume(Landroid/app/Activity;)V

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 403
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/PFInterface;->setActive(Z)V

    .line 404
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->invalidateSystemUi()V

    .line 406
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->setMannerMode()V

    .line 408
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->registerHeadsetReceiver()V

    .line 410
    iget-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->isWindowFocused:Z

    if-nez v1, :cond_0

    .line 411
    iput-boolean v2, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    .line 417
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v1

    invoke-virtual {v1, p0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnResume(Landroid/app/Activity;)V

    .line 418
    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->resumeView()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 1021
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onStart()V

    .line 1022
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v7

    invoke-virtual {v7}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnStart()V

    .line 1023
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1024
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1027
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1028
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 1030
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "host":Ljava/lang/String;
    const-string v7, "auth"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1049
    .end local v2    # "host":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1035
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v4

    .line 1036
    .local v4, "port":I
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 1037
    .local v5, "query":Ljava/lang/String;
    const-string v7, "TEST_SCHEME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " port : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " query : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v1, 0x1

    .line 1039
    .local v1, "errorCode":I
    const-string v7, "error="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 1041
    const-string v7, "code="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 1043
    const/4 v1, 0x0

    .line 1046
    :cond_2
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lklb/android/GameEngine/PFInterface;->onKLabIdResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1053
    invoke-super {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onStop()V

    .line 1054
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnStop()V

    .line 1055
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 356
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->invalidateSystemUi()V

    .line 357
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->isWindowFocused:Z

    .line 358
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->resumeView()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    .line 362
    :cond_0
    return-void
.end method

.method public putControl(Landroid/view/View;IIII)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 657
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 660
    :goto_0
    return v1

    .line 658
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 659
    .local v0, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public refreshSystemUi()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 371
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    if-eqz v0, :cond_1

    .line 372
    const/16 v0, 0xe

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    .line 377
    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 670
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 671
    return-void
.end method

.method public replaceView(Landroid/view/View;IIII)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 665
    invoke-virtual/range {p0 .. p5}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public requireLocationPermission()V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v1, v6, :cond_1

    .line 1139
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 1140
    .local v10, "permissionCheck":I
    if-nez v10, :cond_0

    .line 1142
    const/4 v0, 0x2

    .line 1143
    .local v0, "CB_IDX_ON_PERMISSION_GRANTED":I
    const/4 v9, 0x0

    .line 1144
    .local v9, "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "permission gained"

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    .line 1159
    .end local v0    # "CB_IDX_ON_PERMISSION_GRANTED":I
    .end local v9    # "ERROR_ID":I
    .end local v10    # "permissionCheck":I
    :goto_0
    return-void

    .line 1149
    .restart local v10    # "permissionCheck":I
    :cond_0
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v3

    invoke-static {p0, v1, v7}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1150
    iput-boolean v7, p0, Lklb/android/GameEngine/GameEngineActivity;->shouldGPSCallbackLua:Z

    goto :goto_0

    .line 1155
    .end local v10    # "permissionCheck":I
    :cond_1
    const/4 v0, 0x2

    .line 1156
    .restart local v0    # "CB_IDX_ON_PERMISSION_GRANTED":I
    const/4 v9, 0x0

    .line 1157
    .restart local v9    # "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "permission gained"

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0
.end method

.method public requireNotificationPermission()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1163
    const/4 v0, 0x0

    .line 1164
    .local v0, "CB_IDX_ON_PERMISSION_GRANTED":I
    const/4 v1, 0x0

    .line 1165
    .local v1, "ERROR_ID":I
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    const-string v3, "permission gained"

    invoke-virtual {v2, v4, v4, v3}, Lklb/android/GameEngine/PFInterface;->OnNotificationCallback(IILjava/lang/String;)V

    .line 1188
    return-void
.end method

.method public setInstallStatus(Z)V
    .locals 0
    .param p1, "isFinished"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_installEnd:Z

    .line 728
    return-void
.end method

.method public setMannerMode()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 774
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 775
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 776
    .local v2, "mediaVolume":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 777
    .local v3, "mode":I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_1

    .line 779
    .local v1, "bManner":Z
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-ne v5, v1, :cond_2

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v5, v6, :cond_2

    .line 851
    :goto_1
    return-void

    .end local v1    # "bManner":Z
    :cond_1
    move v1, v4

    .line 777
    goto :goto_0

    .line 783
    .restart local v1    # "bManner":Z
    :cond_2
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-nez v5, :cond_9

    if-eqz v1, :cond_9

    .line 785
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v5, :cond_5

    .line 787
    iput v7, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    .line 846
    :cond_3
    :goto_2
    iget v5, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    if-eq v5, v2, :cond_4

    .line 847
    iget v5, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    invoke-virtual {v0, v8, v5, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 849
    :cond_4
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    .line 850
    iget-boolean v4, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    iput-boolean v4, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    goto :goto_1

    .line 789
    :cond_5
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v5, :cond_6

    .line 791
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 793
    :cond_6
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-nez v5, :cond_3

    .line 795
    :cond_8
    iput v4, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 798
    :cond_9
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-eqz v5, :cond_c

    if-nez v1, :cond_c

    .line 800
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v5, :cond_a

    .line 802
    iput v7, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 804
    :cond_a
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v5, v6, :cond_b

    .line 806
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 811
    :cond_b
    iput v4, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 815
    :cond_c
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-eqz v5, :cond_f

    .line 817
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v5, :cond_d

    .line 819
    iput v7, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 821
    :cond_d
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v5, v6, :cond_e

    .line 823
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 827
    :cond_e
    iput v4, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 830
    :cond_f
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-nez v5, :cond_3

    .line 832
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v5, :cond_10

    .line 834
    iput v7, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 836
    :cond_10
    iget-boolean v5, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v5, v6, :cond_11

    .line 838
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2

    .line 842
    :cond_11
    iput v4, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_2
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, "ctx":Landroid/content/Context;
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lklb/android/GameEngine/GameEngineActivity$1;

    invoke-direct {v2, p0, v0, p1}, Lklb/android/GameEngine/GameEngineActivity$1;-><init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method

.method public startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 938
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;

    .line 939
    iput-object p2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;

    .line 940
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$4;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GameEngineActivity$4;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 964
    return-void
.end method

.method public startBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 969
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 970
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 971
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V

    .line 972
    return-void
.end method

.method public startExternalApplicationMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 905
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    :try_start_0
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    invoke-super {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    const-string v3, "ENG_AND_ALERT_TITLE"

    const-string v4, "Alert"

    invoke-virtual {v2, v3, v4}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    const-string v4, "ENG_AND_PLEASE_ENABLE_MAILER"

    const-string v5, "\u30e1\u30fc\u30e9\u30fc\u3092\u6709\u52b9\u306b\u3057\u3066\u4e0b\u3055\u3044"

    invoke-virtual {v3, v4, v5}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lklb/android/GameEngine/GameEngineActivity;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopGetLocation()Z
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1208
    :goto_0
    return v0

    .line 1207
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->stopLocation()V

    .line 1208
    const/4 v0, 0x1

    goto :goto_0
.end method
