.class final Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AnalyticsManagerUnity;->sendEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:D

.field final synthetic h:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 1

    iput-object p1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->c:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->d:Ljava/lang/String;

    iput-object p5, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->e:Ljava/lang/String;

    iput-object p6, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->f:Ljava/lang/String;

    iput-wide p7, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->g:D

    iput p9, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->a:Landroid/app/Activity;

    iget-object v1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->b:Ljava/lang/String;

    iget-object v2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->c:Ljava/lang/String;

    iget-object v3, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->d:Ljava/lang/String;

    iget-object v4, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->e:Ljava/lang/String;

    iget-object v5, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->f:Ljava/lang/String;

    iget-wide v6, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->g:D

    iget v8, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$9;->h:I

    invoke-static/range {v0 .. v8}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    return-void
.end method
