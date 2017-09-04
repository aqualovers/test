.class final Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AnalyticsManagerUnity;->sendEvent(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;->b:Ljava/lang/String;

    iput p3, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;->a:Landroid/app/Activity;

    iget-object v1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;->b:Ljava/lang/String;

    iget v2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$5;->c:I

    invoke-static {v0, v1, v2}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
