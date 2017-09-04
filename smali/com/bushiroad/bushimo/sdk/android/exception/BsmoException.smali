.class public Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
.super Ljava/lang/Exception;
.source "BsmoException.java"


# static fields
.field private static final serialVersionUID:J = -0x60f16913887dfc8dL


# instance fields
.field public code1:I

.field public code2:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "acode1"    # I
    .param p2, "acode2"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iput p1, p0, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;->code1:I

    .line 17
    iput p2, p0, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;->code2:I

    .line 18
    return-void
.end method
