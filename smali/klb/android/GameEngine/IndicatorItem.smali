.class Lklb/android/GameEngine/IndicatorItem;
.super Ljava/lang/Object;
.source "IndicaterItem.java"


# instance fields
.field private cmd_count:I

.field private cmdqueue:[I

.field private m_IndicatorView:Landroid/view/View;

.field public m_background:Z

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field public m_enabled:Z

.field private m_height:I

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_params:Landroid/widget/FrameLayout$LayoutParams;

.field public m_reload:Z

.field public m_remove:Z

.field public m_update:Z

.field public m_visible:Z

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;IIIIZ)V
    .locals 4
    .param p1, "context"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "background"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    .line 11
    iput-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iput-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 21
    iput-boolean v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_visible:Z

    .line 22
    iput-boolean v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_enabled:Z

    .line 23
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    .line 24
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmdqueue:[I

    .line 25
    iput v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    .line 27
    iput-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    .line 32
    iput p2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    .line 33
    iput p3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    .line 34
    iput p4, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    .line 35
    iput p5, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    .line 36
    iput-object p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 37
    iput-boolean p6, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    .line 38
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_created:Z

    .line 39
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 40
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_remove:Z

    .line 41
    iput-boolean v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_reload:Z

    .line 48
    const/16 v0, 0x50

    iput v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    iput v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    .line 49
    return-void
.end method

.method private setStatus()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 65
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_visible:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cmd(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmdqueue:[I

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    aput p1, v0, v1

    .line 144
    return-void
.end method

.method public cmdProc(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 167
    :pswitch_0
    return-void

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cmdQueue()V
    .locals 2

    .prologue
    .line 147
    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmdqueue:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lklb/android/GameEngine/IndicatorItem;->cmdProc(I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    goto :goto_0
.end method

.method public create()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_created:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/RClassReference;->getIndicator()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    .line 78
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    add-int/2addr v3, v4

    iget v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :goto_1
    invoke-virtual {p0, v8}, Lklb/android/GameEngine/IndicatorItem;->setVisible(Z)V

    .line 96
    invoke-direct {p0}, Lklb/android/GameEngine/IndicatorItem;->setStatus()V

    .line 97
    iput-boolean v7, p0, Lklb/android/GameEngine/IndicatorItem;->m_reload:Z

    .line 98
    iput-boolean v8, p0, Lklb/android/GameEngine/IndicatorItem;->m_created:Z

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    .line 88
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    add-int/2addr v4, v5

    iget v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v6, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    add-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    goto :goto_1
.end method

.method public move(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 53
    iput p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    .line 54
    iput p2, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    .line 55
    iput p3, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    .line 56
    iput p4, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 58
    return-void
.end method

.method public remove()Z
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 131
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 138
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 185
    iput-boolean p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_enabled:Z

    .line 186
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 179
    iput-boolean p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_visible:Z

    .line 180
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 103
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 106
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    if-eqz v0, :cond_3

    .line 108
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 114
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    add-int/2addr v4, v5

    iget v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v6, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    add-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lklb/android/GameEngine/GameEngineActivity;->replaceView(Landroid/view/View;IIII)Z

    .line 120
    :cond_2
    invoke-direct {p0}, Lklb/android/GameEngine/IndicatorItem;->setStatus()V

    .line 122
    :cond_3
    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lklb/android/GameEngine/IndicatorItem;->cmdQueue()V

    .line 123
    :cond_4
    iput-boolean v7, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    goto :goto_0
.end method
