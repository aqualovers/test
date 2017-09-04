.class final Ljp/appAdForce/android/unity/AnalyticsManagerUnity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AnalyticsManagerUnity;->sendStartSession(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$1;->a:Ljava/lang/String;

    iput-object p2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$1;->a:Ljava/lang/String;

    iget-object v1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$1;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Ljp/appAdForce/android/AnalyticsManager;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
