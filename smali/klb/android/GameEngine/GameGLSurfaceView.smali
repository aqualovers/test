.class public Lklb/android/GameEngine/GameGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GameGLSurfaceView.java"


# static fields
.field static final TOUCH_MAX:I = 0xa


# instance fields
.field private context:Lklb/android/GameEngine/GameEngineActivity;

.field mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

.field private touch_alloc_cursor:I

.field private touch_id:[I

.field private touch_x:[I

.field private touch_y:[I


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    .line 16
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 9
    new-array v3, v5, [I

    iput-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    .line 10
    new-array v3, v5, [I

    iput-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    .line 11
    new-array v3, v5, [I

    iput-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    .line 12
    const/4 v3, 0x0

    iput v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    .line 17
    iput-object p1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->context:Lklb/android/GameEngine/GameEngineActivity;

    .line 18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    .line 20
    .local v2, "pfif":Lklb/android/GameEngine/PFInterface;
    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface;->getGLVersion()I

    move-result v0

    .line 21
    .local v0, "glver":I
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 22
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v3

    invoke-virtual {v3, v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterGlesVerDetermined(I)V

    .line 25
    new-instance v3, Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-direct {v3, p1, p2}, Lklb/android/GameEngine/GLES20GameRenderer;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V

    iput-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    .line 26
    iget-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {p0, v3}, Lklb/android/GameEngine/GameGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 27
    return-void
.end method

.method private TouchClear()V
    .locals 5

    .prologue
    .line 211
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 212
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 214
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 215
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    iget-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    aput v4, v2, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lklb/android/GameEngine/GameGLSurfaceView;->TouchClear()V

    .line 40
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 41
    .local v0, "pfif":Lklb/android/GameEngine/PFInterface;
    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->onActivityPause()V

    .line 43
    iget-object v1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v1}, Lklb/android/GameEngine/GLES20GameRenderer;->resetPreTime()V

    .line 44
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lklb/android/GameEngine/GameGLSurfaceView;->TouchClear()V

    .line 33
    iget-object v0, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v0}, Lklb/android/GameEngine/GLES20GameRenderer;->resetPreTime()V

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lklb/android/GameEngine/GameGLSurfaceView;->TouchClear()V

    .line 50
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 51
    .local v0, "pfif":Lklb/android/GameEngine/PFInterface;
    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->onActivityResume()V

    .line 53
    iget-object v1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v1}, Lklb/android/GameEngine/GLES20GameRenderer;->resetPreTime()V

    .line 54
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v10}, Lklb/android/GameEngine/GLES20GameRenderer;->isInitialized()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    .line 206
    :goto_0
    return v10

    .line 59
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v7

    .line 70
    .local v7, "pfif":Lklb/android/GameEngine/PFInterface;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 205
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v10}, Lklb/android/GameEngine/GameEngineActivity;->refreshSystemUi()V

    .line 206
    const/4 v10, 0x1

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 79
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 80
    const/4 v3, -0x1

    .line 81
    .local v3, "id":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    const/16 v10, 0xa

    if-ge v5, v10, :cond_2

    .line 82
    iget v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    add-int/2addr v10, v5

    rem-int/lit8 v1, v10, 0xa

    .line 83
    .local v1, "cursor":I
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v1

    if-gez v10, :cond_3

    .line 84
    move v3, v1

    .line 85
    add-int/lit8 v10, v1, 0x1

    rem-int/lit8 v10, v10, 0xa

    iput v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    .line 89
    .end local v1    # "cursor":I
    :cond_2
    if-ltz v3, :cond_1

    .line 90
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    aput v11, v10, v3

    .line 91
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 92
    .local v8, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 93
    .local v9, "y":F
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    float-to-int v11, v8

    aput v11, v10, v3

    .line 94
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    float-to-int v11, v9

    aput v11, v10, v3

    .line 95
    const/4 v10, 0x0

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v7, v3, v10, v11, v12}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    .end local v8    # "x":F
    .end local v9    # "y":F
    .restart local v1    # "cursor":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 102
    .end local v0    # "count":I
    .end local v1    # "cursor":I
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "j":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 103
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 104
    .local v6, "jid":I
    const/4 v3, -0x1

    .line 105
    .restart local v3    # "id":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4
    const/16 v10, 0xa

    if-ge v5, v10, :cond_4

    .line 106
    iget v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    add-int/2addr v10, v5

    rem-int/lit8 v1, v10, 0xa

    .line 107
    .restart local v1    # "cursor":I
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v1

    if-gez v10, :cond_5

    .line 108
    move v3, v1

    .line 109
    add-int/lit8 v10, v1, 0x1

    rem-int/lit8 v10, v10, 0xa

    iput v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    .line 113
    .end local v1    # "cursor":I
    :cond_4
    if-ltz v3, :cond_1

    .line 114
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aput v6, v10, v3

    .line 115
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 116
    .restart local v8    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 117
    .restart local v9    # "y":F
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    float-to-int v11, v8

    aput v11, v10, v3

    .line 118
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    float-to-int v11, v9

    aput v11, v10, v3

    .line 119
    const/4 v10, 0x0

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v7, v3, v10, v11, v12}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    goto/16 :goto_1

    .line 105
    .end local v8    # "x":F
    .end local v9    # "y":F
    .restart local v1    # "cursor":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 125
    .end local v1    # "cursor":I
    .end local v3    # "id":I
    .end local v4    # "index":I
    .end local v5    # "j":I
    .end local v6    # "jid":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 126
    .restart local v0    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_1

    .line 127
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 128
    .restart local v6    # "jid":I
    const/4 v3, -0x1

    .line 129
    .restart local v3    # "id":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    const/16 v10, 0xa

    if-ge v5, v10, :cond_6

    .line 130
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v5

    if-ne v6, v10, :cond_9

    .line 131
    move v3, v5

    .line 135
    :cond_6
    if-ltz v3, :cond_1

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 137
    .restart local v8    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 138
    .restart local v9    # "y":F
    float-to-int v10, v8

    iget-object v11, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    aget v11, v11, v3

    if-ne v10, v11, :cond_7

    float-to-int v10, v9

    iget-object v11, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    aget v11, v11, v3

    if-eq v10, v11, :cond_8

    .line 140
    :cond_7
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    float-to-int v11, v8

    aput v11, v10, v3

    .line 141
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    float-to-int v11, v9

    aput v11, v10, v3

    .line 142
    const/4 v10, 0x1

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v7, v3, v10, v11, v12}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    .line 126
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 129
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 149
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "j":I
    .end local v6    # "jid":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 150
    .restart local v4    # "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 151
    .restart local v6    # "jid":I
    const/4 v3, -0x1

    .line 152
    .restart local v3    # "id":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    const/16 v10, 0xa

    if-ge v5, v10, :cond_a

    .line 153
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v5

    if-ne v6, v10, :cond_b

    .line 154
    move v3, v5

    .line 158
    :cond_a
    if-ltz v3, :cond_1

    .line 159
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 160
    .restart local v8    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 161
    .restart local v9    # "y":F
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    const/4 v11, -0x1

    aput v11, v10, v3

    .line 162
    const/4 v10, 0x2

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v7, v3, v10, v11, v12}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    goto/16 :goto_1

    .line 152
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 167
    .end local v3    # "id":I
    .end local v4    # "index":I
    .end local v5    # "j":I
    .end local v6    # "jid":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 168
    .restart local v0    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    if-ge v2, v0, :cond_1

    .line 169
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 170
    .restart local v6    # "jid":I
    const/4 v3, -0x1

    .line 171
    .restart local v3    # "id":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    const/16 v10, 0xa

    if-ge v5, v10, :cond_c

    .line 172
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v5

    if-ne v6, v10, :cond_d

    .line 173
    move v3, v5

    .line 177
    :cond_c
    if-ltz v3, :cond_1

    .line 178
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 179
    .restart local v8    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 180
    .restart local v9    # "y":F
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    const/4 v11, -0x1

    aput v11, v10, v3

    .line 181
    const/4 v10, 0x2

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v7, v3, v10, v11, v12}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 171
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 187
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "j":I
    .end local v6    # "jid":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 188
    .restart local v0    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    if-ge v2, v0, :cond_1

    .line 189
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 190
    .restart local v6    # "jid":I
    const/4 v3, -0x1

    .line 191
    .restart local v3    # "id":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_b
    const/16 v10, 0xa

    if-ge v5, v10, :cond_e

    .line 192
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v5

    if-ne v6, v10, :cond_f

    .line 193
    move v3, v5

    .line 197
    :cond_e
    if-ltz v3, :cond_1

    .line 198
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 199
    .restart local v8    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 200
    .restart local v9    # "y":F
    const/4 v10, 0x2

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v7, v3, v10, v11, v12}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 191
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
