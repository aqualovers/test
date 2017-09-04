.class public Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$a;,
        Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$c;,
        Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$b;
    }
.end annotation


# static fields
.field public static a:Ljp/appAdForce/android/LtvManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    sput-object v0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    return-void
.end method

.method private a(Lcom/adobe/fre/FREContext;)V
    .locals 2

    sget-object v0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    if-nez v0, :cond_0

    new-instance v0, Ljp/appAdForce/android/AdManager;

    check-cast p1, Ljp/appAdForce/android/ane/AppAdForceContext;

    invoke-virtual {p1}, Ljp/appAdForce/android/ane/AppAdForceContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    :cond_0
    sget-object v0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    if-nez v0, :cond_1

    new-instance v0, Ljp/appAdForce/android/LtvManager;

    sget-object v1, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a:Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, v1}, Ljp/appAdForce/android/LtvManager;-><init>(Ljp/appAdForce/android/AdManager;)V

    sput-object v0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    :cond_1
    return-void
.end method

.method private a(Lcom/adobe/fre/FREContext;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a(Lcom/adobe/fre/FREContext;)V

    if-nez p3, :cond_0

    sget-object v0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    invoke-virtual {v0, p2}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(I)V

    :goto_0
    sget-object v0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    invoke-virtual {v0}, Ljp/appAdForce/android/LtvManager;->clearParam()V

    return-void

    :cond_0
    sget-object v0, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a:Ljp/appAdForce/android/LtvManager;

    invoke-virtual {v0, p2, p3}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;Lcom/adobe/fre/FREContext;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a(Lcom/adobe/fre/FREContext;)V

    return-void
.end method

.method static synthetic a(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;Lcom/adobe/fre/FREContext;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a(Lcom/adobe/fre/FREContext;ILjava/lang/String;)V

    return-void
.end method
