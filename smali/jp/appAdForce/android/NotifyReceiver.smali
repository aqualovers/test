.class public Ljp/appAdForce/android/NotifyReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;

    invoke-direct {v0}, Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;-><init>()V

    iput-object v0, p0, Ljp/appAdForce/android/NotifyReceiver;->a:Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/NotifyReceiver;->a:Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/NotifyReceiver;->a:Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberz/fox/notify/BaseNotifyReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
