.class Lklb/android/GameEngine/MovieViewItem;
.super Ljava/lang/Object;
.source "MovieViewItem.java"


# instance fields
.field private cmd_count:I

.field private cmdqueue:[I

.field public m_background:Z

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field public m_enabled:Z

.field private m_height:I

.field private m_index:I

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_params:Landroid/widget/FrameLayout$LayoutParams;

.field public m_reload:Z

.field public m_remove:Z

.field public m_update:Z

.field private m_url:Ljava/lang/String;

.field private m_video:Lklb/android/GameEngine/MovieView;

.field public m_visible:Z

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method public constructor <init>(ILklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "context"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "background"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    .line 14
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    .line 22
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 27
    iput-boolean v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_visible:Z

    .line 28
    iput-boolean v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_enabled:Z

    .line 29
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    .line 30
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmdqueue:[I

    .line 31
    iput v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    .line 37
    iput p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_index:I

    .line 38
    iput-object p3, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    .line 39
    iput p4, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    .line 40
    iput p5, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    .line 41
    iput p6, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    .line 42
    iput p7, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    .line 43
    iput-object p2, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 44
    iput-boolean p8, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    .line 45
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_created:Z

    .line 46
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 47
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_remove:Z

    .line 48
    iput-boolean v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    .line 49
    return-void
.end method

.method private setStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_visible:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_enabled:Z

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/MovieView;->setVisibility(I)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/MovieView;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cmd(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmdqueue:[I

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    aput p1, v0, v1

    .line 140
    return-void
.end method

.method public cmdProc(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 150
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->stop()Z

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->start()Z

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->pause()Z

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->resume()Z

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cmdQueue()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v1, :cond_0

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    if-ge v0, v1, :cond_2

    .line 144
    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmdqueue:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lklb/android/GameEngine/MovieViewItem;->cmdProc(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    goto :goto_0
.end method

.method public create()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 81
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_created:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lklb/android/GameEngine/MovieView;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_index:I

    invoke-direct {v0, v1, v2}, Lklb/android/GameEngine/MovieView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    .line 84
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :goto_1
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setMoviePath(Ljava/lang/String;)Z

    .line 97
    invoke-direct {p0}, Lklb/android/GameEngine/MovieViewItem;->setStatus()V

    .line 98
    iput-boolean v7, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_created:Z

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    iget v4, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v5, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    add-int/2addr v4, v5

    iget v5, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    iget v6, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    add-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->isFinish()Z

    move-result v0

    goto :goto_0
.end method

.method public move(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 53
    iput p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    .line 54
    iput p2, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    .line 55
    iput p3, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    .line 56
    iput p4, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 58
    return-void
.end method

.method public remove()Z
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_1

    .line 128
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 135
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 179
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_enabled:Z

    .line 180
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    .line 68
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 174
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_visible:Z

    .line 175
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 103
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_1

    .line 104
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 107
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 108
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    iget v4, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v5, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    add-int/2addr v4, v5

    iget v5, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    iget v6, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    add-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lklb/android/GameEngine/GameEngineActivity;->replaceView(Landroid/view/View;IIII)Z

    .line 112
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/MovieViewItem;->setStatus()V

    .line 113
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setMoviePath(Ljava/lang/String;)Z

    .line 116
    iput-boolean v7, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    .line 120
    :cond_1
    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lklb/android/GameEngine/MovieViewItem;->cmdQueue()V

    .line 121
    :cond_2
    iput-boolean v7, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 122
    return-void
.end method
