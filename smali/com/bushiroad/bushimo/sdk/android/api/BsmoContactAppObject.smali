.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;
.super Ljava/lang/Object;
.source "BsmoContactAppObject.java"


# instance fields
.field public gameUid:Ljava/lang/String;

.field public gameVersion:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public questionType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->questionType:Ljava/util/ArrayList;

    return-void
.end method
