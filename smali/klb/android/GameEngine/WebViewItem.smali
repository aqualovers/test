.class Lklb/android/GameEngine/WebViewItem;
.super Ljava/lang/Object;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/WebViewItem$JsObject;
    }
.end annotation


# static fields
.field private static final NATIVE_PROTOCOL:Ljava/lang/String; = "native://"

.field private static m_nonceSeed:I


# instance fields
.field public m_alpha:I

.field public m_bZoom:Z

.field public m_color:I

.field private m_consumerKey:Ljava/lang/String;

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field public m_enabled:Z

.field private m_extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_height:I

.field private m_javascript:Ljava/lang/String;

.field private m_layout:Landroid/widget/LinearLayout;

.field private m_nojump:Z

.field private m_params:Landroid/widget/LinearLayout$LayoutParams;

.field public m_reload:Z

.field public m_remove:Z

.field private m_tmpUrl:Ljava/lang/String;

.field private m_token:Ljava/lang/String;

.field public m_update:Z

.field private m_url:Ljava/lang/String;

.field public m_visible:Z

.field private m_web:Lklb/android/GameEngine/HelpWebView;

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lklb/android/GameEngine/WebViewItem;->m_nonceSeed:I

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Lklb/android/GameEngine/GameEngineActivity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "region"    # Ljava/lang/String;
    .param p9, "bundleVersion"    # Ljava/lang/String;
    .param p10, "clientVersion"    # Ljava/lang/String;
    .param p11, "consumerKey"    # Ljava/lang/String;
    .param p12, "applicationId"    # Ljava/lang/String;
    .param p13, "userId"    # Ljava/lang/String;
    .param p14, "tzone"    # Ljava/lang/String;
    .param p15, "version"    # Ljava/lang/String;
    .param p16, "nojump"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_consumerKey:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_token:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_visible:Z

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_enabled:Z

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    .line 52
    const v1, 0xffffff

    iput v1, p0, Lklb/android/GameEngine/WebViewItem;->m_color:I

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    .line 90
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "API-Model"

    const-string v3, "straightforward"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-eqz p9, :cond_0

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Bundle-Version"

    invoke-interface {v1, v2, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    if-eqz p10, :cond_1

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Client-Version"

    invoke-interface {v1, v2, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    if-eqz p8, :cond_2

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Region"

    invoke-interface {v1, v2, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    if-eqz p12, :cond_3

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Application-ID"

    move-object/from16 v0, p12

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3
    if-eqz p13, :cond_4

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "User-ID"

    move-object/from16 v0, p13

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "OS"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Time-Zone"

    move-object/from16 v0, p14

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "OS-Version"

    move-object/from16 v0, p15

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iput-object p11, p0, Lklb/android/GameEngine/WebViewItem;->m_consumerKey:Ljava/lang/String;

    .line 103
    iput-object p7, p0, Lklb/android/GameEngine/WebViewItem;->m_token:Ljava/lang/String;

    .line 105
    move/from16 v0, p16

    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_nojump:Z

    .line 107
    iput-object p2, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    .line 108
    iput p3, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    .line 109
    iput p4, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    .line 110
    iput p5, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    .line 111
    iput p6, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    .line 112
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_created:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    .line 118
    return-void
.end method

.method static synthetic access$002(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_tmpUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;

    .prologue
    .line 27
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    return-object v0
.end method

.method static synthetic access$200(Lklb/android/GameEngine/WebViewItem;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;

    .prologue
    .line 27
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;

    .prologue
    .line 27
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->setStatus()V

    return-void
.end method

.method static synthetic access$400(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;

    .prologue
    .line 27
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->authHeader()V

    return-void
.end method

.method static synthetic access$500(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;

    .prologue
    .line 27
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;

    .prologue
    .line 27
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/WebViewItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    return-object p1
.end method

.method private authHeader()V
    .locals 8

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 149
    .local v2, "unixtime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumerKey="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lklb/android/GameEngine/WebViewItem;->m_consumerKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lklb/android/GameEngine/WebViewItem;->m_token:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&version=1.1&timeStamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&nonce=WV"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lklb/android/GameEngine/WebViewItem;->m_nonceSeed:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "auth":Ljava/lang/String;
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v4, "authorize"

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v4, "authorize"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private setStatus()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$1;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$1;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method


# virtual methods
.method public create()V
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 174
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_created:Z

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Lklb/android/GameEngine/HelpWebView;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Lklb/android/GameEngine/HelpWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    .line 180
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$2;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$2;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0, v7}, Lklb/android/GameEngine/HelpWebView;->setLongClickable(Z)V

    .line 188
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    .line 189
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 193
    iget v0, p0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_color:I

    invoke-virtual {p0, v0, v1}, Lklb/android/GameEngine/WebViewItem;->setColor(II)V

    .line 196
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/WebViewItem;->setZoom(Z)V

    .line 199
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    const v1, 0x1ffffff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 202
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    .line 205
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->authHeader()V

    .line 207
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$3;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$3;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$4;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$4;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 280
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 281
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 282
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 283
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 284
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0, v8}, Lklb/android/GameEngine/HelpWebView;->setInitialScale(I)V

    .line 286
    new-instance v6, Lklb/android/GameEngine/WebViewItem$JsObject;

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v6, p0, v0}, Lklb/android/GameEngine/WebViewItem$JsObject;-><init>(Lklb/android/GameEngine/WebViewItem;Landroid/content/Context;)V

    .line 287
    .local v6, "jsObj":Lklb/android/GameEngine/WebViewItem$JsObject;
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    const-string v1, "eng"

    invoke-virtual {v0, v6, v1}, Lklb/android/GameEngine/HelpWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/HelpWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->setStatus()V

    .line 291
    iput-boolean v7, p0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    .line 292
    iput-boolean v8, p0, Lklb/android/GameEngine/WebViewItem;->m_created:Z

    goto/16 :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTmpText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_tmpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEqual(Landroid/webkit/WebView;)Z
    .locals 1
    .param p1, "_webView"    # Landroid/webkit/WebView;

    .prologue
    .line 384
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-ne v0, p1, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 122
    iput p1, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    .line 123
    iput p2, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    .line 124
    iput p3, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    .line 125
    iput p4, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 127
    return-void
.end method

.method public remove()Z
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    .line 339
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    .line 340
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColor(II)V
    .locals 2
    .param p1, "_alpha"    # I
    .param p2, "_color"    # I

    .prologue
    .line 369
    iput p1, p0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    .line 370
    iput p2, p0, Lklb/android/GameEngine/WebViewItem;->m_color:I

    .line 371
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$7;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$7;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 350
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_enabled:Z

    .line 351
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    .line 141
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 345
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_visible:Z

    .line 346
    return-void
.end method

.method public setZoom(Z)V
    .locals 2
    .param p1, "_flg"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    .line 356
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$6;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$6;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 300
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 301
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 303
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$5;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$5;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
