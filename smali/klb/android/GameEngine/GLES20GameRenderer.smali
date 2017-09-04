.class public Lklb/android/GameEngine/GLES20GameRenderer;
.super Ljava/lang/Object;
.source "GLES20GameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static FILE_PATH:Ljava/lang/String;

.field private static mBInitialize:Z


# instance fields
.field private mContext:Lklb/android/GameEngine/GameEngineActivity;

.field private mPreTime:J

.field private m_Height:I

.field private m_Width:I

.field runCtrl:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lklb/android/GameEngine/GLES20GameRenderer;->FILE_PATH:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    .line 35
    iput-object v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->runCtrl:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    .line 26
    sput-object p2, Lklb/android/GameEngine/GLES20GameRenderer;->FILE_PATH:Ljava/lang/String;

    .line 27
    new-instance v0, Lklb/android/GameEngine/GLES20GameRenderer$1;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GLES20GameRenderer$1;-><init>(Lklb/android/GameEngine/GLES20GameRenderer;)V

    iput-object v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->runCtrl:Ljava/lang/Runnable;

    .line 33
    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 41
    .local v2, "nowTime":J
    iget-wide v6, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    sub-long v6, v2, v6

    long-to-int v0, v6

    .line 42
    .local v0, "deltaT":I
    :goto_0
    iput-wide v2, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    .line 43
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 44
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    const/16 v5, 0x1b58

    if-le v0, v5, :cond_0

    .line 45
    const-string v5, "Cpp"

    const-string v6, "long time frame!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v5, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v5}, Lklb/android/GameEngine/GameEngineActivity;->IsInstallEnd()Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    :goto_1
    return-void

    .end local v0    # "deltaT":I
    .end local v1    # "pfif":Lklb/android/GameEngine/PFInterface;
    :cond_1
    move v0, v4

    .line 41
    goto :goto_0

    .line 56
    .restart local v0    # "deltaT":I
    .restart local v1    # "pfif":Lklb/android/GameEngine/PFInterface;
    :cond_2
    sget-boolean v5, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    if-nez v5, :cond_3

    .line 57
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v5

    iget v6, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Width:I

    iget v7, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Height:I

    sget-object v8, Lklb/android/GameEngine/GLES20GameRenderer;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lklb/android/GameEngine/PFInterface;->callInit(IILjava/lang/String;)Z

    .line 58
    sput-boolean v4, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    .line 61
    :cond_3
    iget-object v5, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v5}, Lklb/android/GameEngine/GameEngineActivity;->IsUsePause()Z

    move-result v5

    if-ne v5, v4, :cond_4

    .line 63
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v4

    invoke-virtual {v4}, Lklb/android/GameEngine/PFInterface;->clientResumeGame()V

    .line 64
    iget-object v4, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lklb/android/GameEngine/GameEngineActivity;->SetUsePause(Z)V

    .line 67
    :cond_4
    invoke-virtual {v1, v0}, Lklb/android/GameEngine/PFInterface;->frameFlip(I)V

    .line 70
    iget-object v4, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v5, p0, Lklb/android/GameEngine/GLES20GameRenderer;->runCtrl:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    .line 109
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 87
    if-le p2, p3, :cond_0

    move v0, p2

    :goto_0
    iput v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Width:I

    .line 88
    if-ge p3, p2, :cond_1

    .end local p3    # "height":I
    :goto_1
    iput p3, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Height:I

    .line 96
    return-void

    .restart local p3    # "height":I
    :cond_0
    move v0, p3

    .line 87
    goto :goto_0

    :cond_1
    move p3, p2

    .line 88
    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 100
    return-void
.end method

.method public resetPreTime()V
    .locals 2

    .prologue
    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    .line 104
    return-void
.end method
