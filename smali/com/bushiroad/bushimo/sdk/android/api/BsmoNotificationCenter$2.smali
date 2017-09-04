.class Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;
.super Ljava/lang/Object;
.source "BsmoNotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotificationOnUIThread(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$param:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;->val$param:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;->val$param:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-void
.end method
