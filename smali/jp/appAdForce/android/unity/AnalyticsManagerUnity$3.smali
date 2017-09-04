.class final Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/unity/AnalyticsManagerUnity;->sendEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
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

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:D

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->c:Ljava/lang/String;

    iput-object p4, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->d:Ljava/lang/String;

    iput-object p5, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->e:Ljava/lang/String;

    iput-object p6, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->f:Ljava/lang/String;

    iput-object p7, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->g:Ljava/lang/String;

    iput-wide p8, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->h:D

    iput p10, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->i:I

    iput-object p11, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v1, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->b:Ljava/lang/String;

    iget-object v3, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->c:Ljava/lang/String;

    iget-object v4, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->d:Ljava/lang/String;

    iget-object v5, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->e:Ljava/lang/String;

    iget-object v6, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->f:Ljava/lang/String;

    iget-object v7, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->g:Ljava/lang/String;

    iget-wide v8, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->h:D

    iget v10, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->i:I

    iget-object v11, p0, Ljp/appAdForce/android/unity/AnalyticsManagerUnity$3;->j:Ljava/lang/String;

    invoke-static/range {v1 .. v11}, Ljp/appAdForce/android/AnalyticsManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    return-void
.end method
