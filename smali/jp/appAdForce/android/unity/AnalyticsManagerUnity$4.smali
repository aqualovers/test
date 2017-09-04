.class final Ljp/appAdForce/android/unity/AnalyticsManagerUnity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AnalyticsManagerUnity;->sendEndSession(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$4;->a:Landroid/app/Activity;

    invoke-static {v0}, Ljp/appAdForce/android/AnalyticsManager;->sendEndSession(Landroid/content/Context;)V

    return-void
.end method
