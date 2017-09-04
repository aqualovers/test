.class public Ljp/appAdForce/android/ane/functions/AdManagerFunctions;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$k;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$i;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$g;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$h;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$j;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$e;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$f;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$b;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$c;,
        Ljp/appAdForce/android/ane/functions/AdManagerFunctions$a;
    }
.end annotation


# static fields
.field public static a:Ljp/appAdForce/android/AdManager;


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
    return-void
.end method

.method static synthetic a(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;Lcom/adobe/fre/FREContext;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a(Lcom/adobe/fre/FREContext;)V

    return-void
.end method
