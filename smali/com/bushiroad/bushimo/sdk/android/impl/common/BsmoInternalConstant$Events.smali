.class public abstract Lcom/bushiroad/bushimo/sdk/android/impl/common/BsmoInternalConstant$Events;
.super Ljava/lang/Object;
.source "BsmoInternalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bushiroad/bushimo/sdk/android/impl/common/BsmoInternalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Events"
.end annotation


# static fields
.field public static final EVENT_AUTH_ERROR:Ljava/lang/String; = "authError"

.field public static final EVENT_COMPLETE_AUTH:Ljava/lang/String; = "completeAuth"

.field public static final EVENT_DASHBOARD_CLOSED:Ljava/lang/String; = "dashboardClosed"

.field public static final EVENT_PF_VERSION_ERROR:Ljava/lang/String; = "PFversionError"

.field public static final EVENT_USER_CHANGED:Ljava/lang/String; = "userChanged"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
