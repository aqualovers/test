.class Ljp/co/dimage/android/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/dimage/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljp/co/dimage/android/h;

.field private b:I


# direct methods
.method constructor <init>(Ljp/co/dimage/android/h;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/h$a;->a:Ljp/co/dimage/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljp/co/dimage/android/h$a;)I
    .locals 1

    iget v0, p0, Ljp/co/dimage/android/h$a;->b:I

    return v0
.end method

.method static synthetic a(Ljp/co/dimage/android/h$a;I)I
    .locals 0

    iput p1, p0, Ljp/co/dimage/android/h$a;->b:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljp/co/dimage/android/h$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Ljp/co/dimage/android/h$a;->b:I

    return-void
.end method
