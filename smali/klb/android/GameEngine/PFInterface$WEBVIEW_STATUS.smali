.class public final enum Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
.super Ljava/lang/Enum;
.source "PFInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/PFInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WEBVIEW_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;


# instance fields
.field private m_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const-string v1, "E_DIDSTARTLOADWEB"

    invoke-direct {v0, v1, v2, v2}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 118
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const-string v1, "E_DIDLOADENDWEB"

    invoke-direct {v0, v1, v3, v3}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 119
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const-string v1, "E_FAILEDLOADWEB"

    invoke-direct {v0, v1, v4, v4}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 120
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const-string v1, "E_URLJUMP"

    invoke-direct {v0, v1, v5, v5}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->$VALUES:[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "_num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->m_num:I

    .line 125
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    return-object v0
.end method

.method public static values()[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->$VALUES:[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v0}, [Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    return-object v0
.end method


# virtual methods
.method public GetNum()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->m_num:I

    return v0
.end method
