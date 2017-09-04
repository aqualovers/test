.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;
.super Ljava/lang/Object;
.source "BsmoResponseListObject.java"


# instance fields
.field public entry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public itemsPerPage:I

.field public startIndex:I

.field public totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
