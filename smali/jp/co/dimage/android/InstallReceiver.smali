.class public Ljp/co/dimage/android/InstallReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/dimage/android/InstallReceiver$a;
    }
.end annotation


# instance fields
.field private a:Ljp/co/dimage/android/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/dimage/android/InstallReceiver;->a:Ljp/co/dimage/android/f;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADMAGE_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljp/co/dimage/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljp/co/dimage/android/c;

    invoke-direct {v1, p1}, Ljp/co/dimage/android/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljp/co/dimage/android/f;

    invoke-direct {v2, v1}, Ljp/co/dimage/android/f;-><init>(Ljp/co/dimage/android/c;)V

    iput-object v2, p0, Ljp/co/dimage/android/InstallReceiver;->a:Ljp/co/dimage/android/f;

    iget-object v2, p0, Ljp/co/dimage/android/InstallReceiver;->a:Ljp/co/dimage/android/f;

    invoke-direct {p0, v1, v2, v0}, Ljp/co/dimage/android/InstallReceiver;->a(Ljp/co/dimage/android/c;Ljp/co/dimage/android/f;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljp/co/dimage/android/c;Ljp/co/dimage/android/f;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljp/co/dimage/android/InstallReceiver$1;

    invoke-direct {v0, p0, p2, p3}, Ljp/co/dimage/android/InstallReceiver$1;-><init>(Ljp/co/dimage/android/InstallReceiver;Ljp/co/dimage/android/f;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Ljp/co/dimage/android/c;->a(Ljava/lang/String;Ljp/co/dimage/android/InstallReceiver$a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ADMAGE_DEBUG"

    const-string v1, "---------- enter ----------"

    invoke-static {v0, v1}, Ljp/co/dimage/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ADMAGE_DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/co/dimage/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljp/co/dimage/android/InstallReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
