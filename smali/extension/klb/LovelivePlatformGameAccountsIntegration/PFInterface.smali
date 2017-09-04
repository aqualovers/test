.class public Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field static final CMD_CONNECTED:I = 0x0

.field static final CMD_CONNECT_FAILED:I = 0x1

.field private static final RC_SIGN_IN:I = 0x270f

.field static final RETRY_MAX:I = 0x3

.field private static currentUser:Lcom/google/android/gms/plus/model/people/Person;

.field private static isEnableGoogleLoginCallback:Z

.field private static isEnableGoogleLoginIntent:Z

.field static mActivity:Landroid/app/Activity;

.field private static mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field private static mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static mIntentInProgress:Z

.field static me:Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;

.field static retryCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x3

    sput v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->retryCnt:I

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginCallback:Z

    .line 62
    new-instance v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;

    invoke-direct {v0}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;-><init>()V

    sput-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->me:Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    sput-object p0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mActivity:Landroid/app/Activity;

    .line 69
    invoke-static {}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->buildGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 70
    return-void
.end method

.method public static afterOnStart()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginCallback:Z

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 77
    :cond_0
    return-void
.end method

.method public static beforeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 81
    const/16 v1, 0x270f

    if-ne p1, v1, :cond_1

    .line 82
    sput-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mIntentInProgress:Z

    .line 85
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 86
    sput-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    .line 87
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 93
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 95
    :cond_1
    return v0

    .line 88
    :cond_2
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method private static buildGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->me:Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->me:Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/plus/Plus$PlusOptions;->builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->build()Lcom/google/android/gms/plus/Plus$PlusOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public static connectPfGameService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    .line 184
    sput-boolean v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginCallback:Z

    .line 188
    const/4 v0, 0x3

    sput v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->retryCnt:I

    .line 190
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, ""

    invoke-static {v1, v0}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->pfExtensionCallback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static disconnectPfGameService()Z
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 220
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 221
    invoke-static {}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->buildGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPlayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->currentUser:Lcom/google/android/gms/plus/model/people/Person;

    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnectedPfGameService()Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native pfExtensionCallback(ILjava/lang/String;)V
.end method

.method private resolveSignInError()V
    .locals 4

    .prologue
    .line 116
    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mIntentInProgress:Z

    .line 120
    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    sget-object v2, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x270f

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const/4 v1, 0x0

    sput-boolean v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mIntentInProgress:Z

    goto :goto_0
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 151
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    sget v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->retryCnt:I

    if-lez v0, :cond_1

    .line 155
    sget v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->retryCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->retryCnt:I

    .line 156
    sget-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->pfExtensionCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    sget-object v1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    sput-object v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->currentUser:Lcom/google/android/gms/plus/model/people/Person;

    .line 164
    sget-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, ""

    invoke-static {v2, v0}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->pfExtensionCallback(ILjava/lang/String;)V

    .line 169
    sput-boolean v2, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 131
    sget-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mIntentInProgress:Z

    if-nez v0, :cond_0

    .line 132
    sput-object p1, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 134
    sget-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginIntent:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->resolveSignInError()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-boolean v0, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->isEnableGoogleLoginCallback:Z

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lextension/klb/LovelivePlatformGameAccountsIntegration/PFInterface;->pfExtensionCallback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 175
    return-void
.end method
