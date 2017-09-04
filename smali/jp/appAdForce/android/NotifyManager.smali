.class public Ljp/appAdForce/android/NotifyManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljp/co/cyberz/fox/notify/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljp/appAdForce/android/AdManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljp/co/cyberz/fox/notify/a;

    invoke-direct {v0, p1, p2}, Ljp/co/cyberz/fox/notify/a;-><init>(Landroid/content/Context;Ljp/appAdForce/android/AdManager;)V

    iput-object v0, p0, Ljp/appAdForce/android/NotifyManager;->a:Ljp/co/cyberz/fox/notify/a;

    return-void
.end method


# virtual methods
.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/NotifyManager;->a:Ljp/co/cyberz/fox/notify/a;

    invoke-virtual {v0}, Ljp/co/cyberz/fox/notify/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerToGCM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/NotifyManager;->a:Ljp/co/cyberz/fox/notify/a;

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberz/fox/notify/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
