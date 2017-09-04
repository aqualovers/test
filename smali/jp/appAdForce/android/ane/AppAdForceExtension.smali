.class public Ljp/appAdForce/android/ane/AppAdForceExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    new-instance v0, Ljp/appAdForce/android/ane/AppAdForceContext;

    invoke-direct {v0}, Ljp/appAdForce/android/ane/AppAdForceContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
