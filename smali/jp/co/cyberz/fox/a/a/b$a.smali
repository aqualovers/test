.class Ljp/co/cyberz/fox/a/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberz/fox/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljp/co/cyberz/fox/a/a/b;

.field private b:I


# direct methods
.method constructor <init>(Ljp/co/cyberz/fox/a/a/b;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/b$a;->a:Ljp/co/cyberz/fox/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljp/co/cyberz/fox/a/a/b$a;)I
    .locals 1

    iget v0, p0, Ljp/co/cyberz/fox/a/a/b$a;->b:I

    return v0
.end method

.method static synthetic a(Ljp/co/cyberz/fox/a/a/b$a;I)I
    .locals 0

    iput p1, p0, Ljp/co/cyberz/fox/a/a/b$a;->b:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljp/co/cyberz/fox/a/a/b$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Ljp/co/cyberz/fox/a/a/b$a;->b:I

    return-void
.end method
