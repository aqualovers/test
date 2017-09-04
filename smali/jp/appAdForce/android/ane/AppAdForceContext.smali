.class public Ljp/appAdForce/android/ane/AppAdForceContext;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;->a()V

    invoke-static {}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;->a()V

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sendConversion"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$a;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$a;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendConversionWithStartPage"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendConversionOnconsent"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$d;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SendConversionWithBuid"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$c;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$c;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendConversionForMobage"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$b;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$b;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendUserIdForMobage"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$f;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$f;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendReengagementConversion"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$e;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$e;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setServerUrl"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$j;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$j;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMode"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$h;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$h;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMessage"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$g;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$g;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setOptout"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$i;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$i;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateFrom2_10_4g"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$k;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AdManagerFunctions$k;-><init>(Ljp/appAdForce/android/ane/functions/AdManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendStartSession"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$d;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$d;-><init>(Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendEndSession"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$a;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$a;-><init>(Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendEvent"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$b;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$b;-><init>(Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendEventPurchase"

    new-instance v2, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$c;

    new-instance v3, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions$c;-><init>(Ljp/appAdForce/android/ane/functions/AnalyticsManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendLtv"

    new-instance v2, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$b;

    new-instance v3, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$b;-><init>(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendLtvWithAdid"

    new-instance v2, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$c;

    new-instance v3, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$c;-><init>(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addParameter"

    new-instance v2, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$a;

    new-instance v3, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;

    invoke-direct {v3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljp/appAdForce/android/ane/functions/LtvManagerFunctions$a;-><init>(Ljp/appAdForce/android/ane/functions/LtvManagerFunctions;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
