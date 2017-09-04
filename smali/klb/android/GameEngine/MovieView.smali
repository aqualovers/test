.class Lklb/android/GameEngine/MovieView;
.super Landroid/view/SurfaceView;
.source "MovieView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private finished:Z

.field private mPath:Ljava/lang/String;

.field private m_bWaitPlayerCreated:Z

.field private m_current:I

.field private m_index:I

.field private mp:Landroid/media/MediaPlayer;

.field private pause:Z

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    .line 15
    iput-object v2, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 17
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    .line 18
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    .line 19
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    .line 20
    iput v1, p0, Lklb/android/GameEngine/MovieView;->m_current:I

    .line 24
    iput p2, p0, Lklb/android/GameEngine/MovieView;->m_index:I

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lklb/android/GameEngine/MovieView;->setZOrderOnTop(Z)V

    .line 26
    invoke-virtual {p0}, Lklb/android/GameEngine/MovieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 27
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 28
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public isFinish()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 146
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 147
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    .line 151
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    sget v1, Lklb/android/GameEngine/PFInterface;->MOVIE_FINISHED:I

    iget v2, p0, Lklb/android/GameEngine/MovieView;->m_index:I

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/PFInterface;->toNativeSignal(II)V

    .line 152
    return-void
.end method

.method public pause()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    iget-boolean v1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 94
    :cond_0
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    .line 97
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    if-ne v2, v0, :cond_0

    .line 103
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 104
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    .line 107
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMoviePath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 38
    :try_start_0
    iget-object v3, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 41
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    if-eqz v1, :cond_0

    .line 43
    iget-object v3, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 44
    iget-object v3, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 48
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_0
    iput-object p1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    const/4 v2, 0x1

    .line 55
    :goto_0
    return v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 60
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 63
    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    iget v3, p0, Lklb/android/GameEngine/MovieView;->m_current:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 66
    :cond_0
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 67
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 68
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_1
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    if-ne v2, v0, :cond_0

    .line 82
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 83
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 84
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    .line 87
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 34
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    .line 116
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 117
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lklb/android/GameEngine/MovieView;->setMoviePath(Ljava/lang/String;)Z

    .line 121
    :cond_0
    iget-boolean v1, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p0}, Lklb/android/GameEngine/MovieView;->start()Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    .line 126
    iget-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lklb/android/GameEngine/MovieView;->start()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 156
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lklb/android/GameEngine/MovieView;->m_current:I

    .line 158
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    .line 161
    :cond_0
    return-void
.end method
