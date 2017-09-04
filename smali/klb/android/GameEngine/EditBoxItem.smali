.class Lklb/android/GameEngine/EditBoxItem;
.super Ljava/lang/Object;
.source "EditBoxItem.java"


# instance fields
.field public m_Paint:Landroid/graphics/Paint;

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field private m_edit:Landroid/widget/EditText;

.field public m_enabled:Z

.field private m_gravity:I

.field private m_height:I

.field private m_hint:Ljava/lang/String;

.field private m_layout:Landroid/widget/LinearLayout;

.field private m_maxlen:I

.field private m_params:Landroid/widget/LinearLayout$LayoutParams;

.field private m_passwdmode:Z

.field public m_remove:Z

.field private m_text:Ljava/lang/String;

.field public m_update:Z

.field public m_visible:Z

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V
    .locals 3
    .param p1, "context"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "passwdmode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_passwdmode:Z

    .line 24
    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    .line 32
    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 36
    iput-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_visible:Z

    .line 37
    iput-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_enabled:Z

    .line 38
    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    .line 48
    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    .line 49
    iput-boolean p7, p0, Lklb/android/GameEngine/EditBoxItem;->m_passwdmode:Z

    .line 51
    iput-object p2, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    .line 52
    iput p3, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    .line 53
    iput p4, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    .line 54
    iput p5, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    .line 55
    iput p6, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    .line 56
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 57
    iput v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_maxlen:I

    .line 58
    iput-boolean v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    .line 59
    iput-boolean v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 60
    iput-boolean v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_remove:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lklb/android/GameEngine/EditBoxItem;)Lklb/android/GameEngine/GameEngineActivity;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/EditBoxItem;

    .prologue
    .line 21
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    return-object v0
.end method

.method private setStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_visible:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-boolean v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public create()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 134
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    .line 138
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 139
    .local v6, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 140
    const/4 v0, 0x4

    const/16 v1, 0xff

    const/16 v2, 0x61

    const/16 v3, 0x9c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 141
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 144
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_1
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 151
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 152
    iget v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_maxlen:I

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/EditBoxItem;->setMaxlen(I)V

    .line 153
    iget v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    if-eq v0, v4, :cond_1

    .line 154
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 156
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    :cond_2
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v8, v5, v8, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 161
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    new-instance v1, Lklb/android/GameEngine/EditBoxItem$1;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/EditBoxItem$1;-><init>(Lklb/android/GameEngine/EditBoxItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 172
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 173
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    new-instance v1, Lklb/android/GameEngine/EditBoxItem$2;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/EditBoxItem$2;-><init>(Lklb/android/GameEngine/EditBoxItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_passwdmode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    :cond_3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    .line 193
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lklb/android/GameEngine/EditBoxItem;->setStatus()V

    .line 196
    iput-boolean v7, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    goto :goto_0
.end method

.method public move(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 67
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    .line 68
    iput p2, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    .line 69
    iput p3, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    .line 70
    iput p4, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 72
    return-void
.end method

.method public remove()Z
    .locals 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    .line 228
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 238
    iput-boolean p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_enabled:Z

    .line 239
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 114
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    .line 115
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_hint:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setMaxlen(I)V
    .locals 4
    .param p1, "maxlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 123
    if-lez p1, :cond_1

    .line 124
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    :cond_0
    :goto_0
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_maxlen:I

    .line 130
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 102
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    .line 103
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 89
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 233
    iput-boolean p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_visible:Z

    .line 234
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 206
    .local v0, "textSize":F
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 207
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 208
    .local v1, "tmpHeight":I
    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    if-ge v2, v1, :cond_2

    .line 210
    iput v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    .line 214
    .end local v0    # "textSize":F
    .end local v1    # "tmpHeight":I
    :cond_2
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 215
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 216
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    iget v4, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestLayout()V

    .line 220
    invoke-direct {p0}, Lklb/android/GameEngine/EditBoxItem;->setStatus()V

    .line 221
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    .line 222
    iput-boolean v5, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    goto :goto_0
.end method
