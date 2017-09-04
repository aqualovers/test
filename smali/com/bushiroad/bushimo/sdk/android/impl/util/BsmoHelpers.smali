.class public abstract Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;
.super Ljava/lang/Object;
.source "BsmoHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$InvokeDelayRun;,
        Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;,
        Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;
    }
.end annotation


# static fields
.field public static applicationContext:Landroid/content/Context;

.field private static currentActivity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

.field private static currentNativeActivity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

.field public static isUseNativeActivity:Z

.field public static progressDialog:Landroid/app/ProgressDialog;

.field private static scaledDensity:F

.field public static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    return-void
.end method

.method public static alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$1;

    invoke-direct {v1, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public static alert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 221
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public static changeArrayToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1437
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 1439
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1440
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1443
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1447
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1439
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1451
    :cond_2
    return-object v1
.end method

.method public static checkExt(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "exts"    # [Ljava/lang/String;

    .prologue
    .line 916
    invoke-static {p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "ext":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 918
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 919
    const/4 v5, 0x1

    .line 923
    .end local v3    # "item":Ljava/lang/String;
    :goto_1
    return v5

    .line 917
    .restart local v3    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "action"    # Ljava/lang/reflect/Method;
    .param p4, "cancelAction"    # Ljava/lang/reflect/Method;
    .param p5, "param"    # Ljava/lang/Object;

    .prologue
    .line 270
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;-><init>(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$1;)V

    .line 271
    .local v0, "listener":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;
    iput-object p2, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mTarget:Ljava/lang/Object;

    .line 272
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mAction:Ljava/lang/reflect/Method;

    .line 273
    iput-object p4, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mCancelAction:Ljava/lang/reflect/Method;

    .line 274
    iput-object p5, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mParam:Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public static confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exec"    # Ljava/lang/Runnable;

    .prologue
    .line 298
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 858
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 859
    .local v1, "channelSource":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 860
    .local v6, "channelTarget":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 862
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 863
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 865
    const/4 v2, 0x1

    .line 872
    .end local v1    # "channelSource":Ljava/nio/channels/FileChannel;
    .end local v6    # "channelTarget":Ljava/nio/channels/FileChannel;
    :goto_0
    return v2

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 872
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 868
    :catch_1
    move-exception v0

    .line 869
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createCipher(Ljava/lang/String;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "algorithmProviderPadding"    # Ljava/lang/String;
    .param p1, "sk"    # Ljavax/crypto/SecretKey;
    .param p2, "mode"    # I

    .prologue
    .line 835
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 836
    .local v0, "ch":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 845
    .end local v0    # "ch":Ljavax/crypto/Cipher;
    :goto_0
    return-object v0

    .line 838
    :catch_0
    move-exception v1

    .line 839
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 845
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 840
    :catch_1
    move-exception v1

    .line 841
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 842
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 843
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createCryptKeyNoSeed(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 816
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 817
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 818
    .local v2, "random":Ljava/security/SecureRandom;
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 819
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 826
    .end local v1    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v2    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 826
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static dateAddDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "days"    # I

    .prologue
    .line 784
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 785
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 786
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 787
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static dateSetWithDate(Ljava/util/Date;III)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "hh"    # I
    .param p2, "mm"    # I
    .param p3, "ss"    # I

    .prologue
    .line 641
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 642
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 643
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 644
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 645
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 646
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static dateWithDateHeader(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "serverDate"    # Ljava/lang/String;

    .prologue
    .line 617
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 620
    .local v1, "fmt":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 621
    .local v2, "ret":Ljava/util/Date;
    const-string v3, "BushimoSDK"

    const-string v4, "%s,,,%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v2    # "ret":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 628
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static dateWithYear(IIIIII)Ljava/util/Date;
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "h"    # I
    .param p4, "m"    # I
    .param p5, "s"    # I

    .prologue
    .line 802
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 803
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 804
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static dismissProgressDialog()V
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$6;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 882
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-object v0

    .line 883
    :catch_0
    move-exception v0

    .line 886
    const-string v0, "1.0.0"

    goto :goto_0
.end method

.method public static getConnectionStatus()Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;
    .locals 4

    .prologue
    .line 504
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 507
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 510
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 514
    sget-object v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;->WIFI:Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;

    .line 517
    :goto_0
    return-object v2

    .line 515
    :cond_0
    sget-object v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;->CARRIER:Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;

    goto :goto_0

    .line 517
    :cond_1
    sget-object v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;->NO_CONNECTION:Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$NetworkStatus;

    goto :goto_0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->currentNativeActivity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->currentActivity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    goto :goto_0
.end method

.method public static getDataPackageDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1399
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1401
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 675
    const/4 v0, 0x0

    .line 680
    .local v0, "aid":Ljava/lang/String;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 681
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 683
    const-string v3, "BushimoSDK"

    const-string v4, "getDeviceId=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-eqz v0, :cond_0

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEL_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 708
    :goto_0
    return-object v3

    .line 690
    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    const-string v3, "BushimoSDK"

    const-string v4, "aid=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz v0, :cond_1

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 699
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 700
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_2

    .line 701
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 702
    const-string v3, "BushimoSDK"

    const-string v4, "getMacAddress=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz v0, :cond_2

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 708
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 896
    if-nez p0, :cond_1

    .line 897
    const/4 v0, 0x0

    .line 906
    :cond_0
    :goto_0
    return-object v0

    .line 900
    :cond_1
    const/4 v0, 0x0

    .line 901
    .local v0, "extension":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 902
    .local v1, "posS":I
    if-ltz v1, :cond_0

    .line 903
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 1146
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1153
    :goto_0
    return-object v1

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1151
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getResizeImgCacheFilePath()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/Caches/chat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1360
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 1362
    .local v3, "orientation":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 1363
    const/16 v0, 0x5a

    .line 1369
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1370
    const-string v4, "Orientation"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :cond_1
    :goto_1
    return v0

    .line 1364
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1365
    const/16 v0, 0xb4

    goto :goto_0

    .line 1366
    :cond_3
    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1367
    const/16 v0, 0x10e

    goto :goto_0

    .line 1373
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 1374
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, -0x1

    .line 1375
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getScaledDensity()F
    .locals 3

    .prologue
    .line 1124
    sget v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->scaledDensity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1125
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1126
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1127
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->scaledDensity:F

    .line 1129
    :cond_0
    sget v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->scaledDensity:F

    return v1
.end method

.method public static getScreenSize()[I
    .locals 5

    .prologue
    .line 1164
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1165
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1166
    .local v0, "d":Landroid/view/Display;
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    aput v4, v2, v3

    return-object v2
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1348
    const-string v0, "3.2.3"

    return-object v0
.end method

.method public static getSharedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->applicationContext:Landroid/content/Context;

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSharedPreferencesPrivate()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 733
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bsmo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 585
    :goto_0
    return v1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move v1, v2

    .line 585
    goto :goto_0

    .line 580
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static invokeDelay(Ljava/lang/Object;Ljava/lang/reflect/Method;D)V
    .locals 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "delay"    # D

    .prologue
    .line 565
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$InvokeDelayRun;

    invoke-direct {v0, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$InvokeDelayRun;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 567
    .local v0, "robj":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$InvokeDelayRun;
    sget-object v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, p2

    double-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    return-void
.end method

.method public static isBushimoSite(Ljava/lang/String;)Z
    .locals 6
    .param p0, "aUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1252
    const-string v4, "http://daemons.bushimo.jp/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return v2

    .line 1254
    :cond_1
    const-string v4, "http://renaireplay.bushimo.jp/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1259
    const-string v4, "https://api.twitter.com/oauth/authorize"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1260
    goto :goto_0

    .line 1261
    :cond_2
    const-string v4, "https://twitter.com/intent/sessions"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1262
    goto :goto_0

    .line 1263
    :cond_3
    const-string v4, "https://twitter.com/login/error"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 1264
    goto :goto_0

    .line 1265
    :cond_4
    const-string v4, "https://twitter.com/sessions"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 1266
    goto :goto_0

    .line 1267
    :cond_5
    const-string v4, "https://twitter.com/oauth/authorize"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    .line 1268
    goto :goto_0

    .line 1269
    :cond_6
    const-string v4, "https://api.twitter.com/intent/sessions"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    .line 1270
    goto :goto_0

    .line 1271
    :cond_7
    const-string v4, "https://api.twitter.com/login/error"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    .line 1272
    goto :goto_0

    .line 1273
    :cond_8
    const-string v4, "https://api.twitter.com/sessions"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v3

    .line 1274
    goto :goto_0

    .line 1277
    :cond_9
    const-string v4, "https://accounts.google.com/o/oauth2"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v3

    .line 1278
    goto :goto_0

    .line 1279
    :cond_a
    const-string v4, "https://accounts.google.com/ServiceLogin"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v3

    .line 1280
    goto :goto_0

    .line 1281
    :cond_b
    const-string v4, "https://accounts.google.co.jp/accounts"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v2, v3

    .line 1282
    goto :goto_0

    .line 1285
    :cond_c
    invoke-static {p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isFacebookUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v3

    .line 1286
    goto :goto_0

    .line 1290
    :cond_d
    const-string v4, "^https?://[^/&=]*bushimo.jp.*$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1291
    .local v1, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1292
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, v3

    .line 1293
    goto/16 :goto_0

    .line 1306
    :cond_e
    const-string v3, "BushimoSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a Bushimo site. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isDebuggable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1051
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1055
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    return v1

    .line 1053
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 1054
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 665
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFacebookUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 1316
    const-string v0, "https://www.facebook.com/dialog/oauth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.facebook.com/v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://m.facebook.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInstalledExternalStorage()Z
    .locals 2

    .prologue
    .line 655
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMountedSD()Z
    .locals 2

    .prologue
    .line 1386
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    const/4 v1, 0x1

    .line 1390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1176
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1177
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1178
    .local v0, "d":Landroid/view/Display;
    const-string v5, "BushimoSDK"

    const-string v6, "wWH=%d,%d,sca=%f"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getScaledDensity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getScaledDensity()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 1191
    .local v1, "siz":I
    const/16 v5, 0x384

    if-lt v1, v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static json2Item(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4
    .param p0, "jitem"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 446
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    .local v2, "n":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 450
    .end local v2    # "n":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static jsonArray2list(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v4, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 425
    .local v0, "cnt":I
    const-string v5, "BushimoSDK"

    const-string v6, "cnt=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 429
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 430
    .local v3, "jitem":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->json2Item(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    .line 431
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v2    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "jitem":Lorg/json/JSONObject;
    :cond_0
    return-object v4
.end method

.method public static list2json(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 461
    .local v6, "ja":Lorg/json/JSONObject;
    const/4 v3, -0x1

    .line 462
    .local v3, "idx":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 463
    .local v4, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    .line 465
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 466
    .local v7, "jitem":Lorg/json/JSONObject;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 467
    .local v8, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 468
    .local v5, "item2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 472
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "item2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "jitem":Lorg/json/JSONObject;
    .end local v8    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 474
    const/4 v6, 0x0

    .line 477
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ja":Lorg/json/JSONObject;
    :cond_0
    return-object v6

    .line 470
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "ja":Lorg/json/JSONObject;
    .restart local v7    # "jitem":Lorg/json/JSONObject;
    .restart local v8    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    :try_start_1
    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static loadImageWithResize(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 936
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 939
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 942
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 947
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 952
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    int-to-float v5, p0

    div-float v3, v4, v5

    .line 953
    .local v3, "scaleW":F
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float v2, v4, v5

    .line 956
    .local v2, "scaleH":F
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 958
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 962
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 963
    .local v1, "scale":I
    if-ge v1, v6, :cond_0

    .line 966
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 969
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 972
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 989
    :goto_0
    return-object v4

    .line 977
    :cond_0
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 980
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 983
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 985
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 989
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public static logout()V
    .locals 5

    .prologue
    .line 1327
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isAuthorized()Z

    move-result v1

    .line 1330
    .local v1, "isAuth":Z
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->removeUserInfo()V

    .line 1332
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1333
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1334
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "PREF_APPLI_OPTION_KEY"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1337
    if-eqz v1, :cond_0

    .line 1339
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v3

    const-string v4, "userChanged"

    invoke-virtual {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 1341
    :cond_0
    return-void
.end method

.method public static myListItem2json(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .local v2, "ja":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 490
    .local v3, "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 493
    const/4 v2, 0x0

    .line 496
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "ja":Lorg/json/JSONObject;
    .end local v3    # "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method public static parseUrlParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .param p0, "aUrlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1214
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 1215
    :cond_0
    const/4 v8, 0x0

    .line 1240
    :cond_1
    return-object v8

    .line 1218
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1221
    .local v8, "retMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1222
    .local v2, "idx":I
    const-string v9, "?"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v2, v9

    .line 1223
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1226
    .local v7, "paramStr":Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1227
    .local v6, "paramSplit":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 1229
    .local v5, "paramItem":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1230
    .local v3, "item":[Ljava/lang/String;
    array-length v9, v3

    if-nez v9, :cond_4

    .line 1227
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    :cond_4
    array-length v9, v3

    if-ne v9, v12, :cond_5

    .line 1233
    aget-object v9, v3, v11

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1234
    :cond_5
    array-length v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 1235
    aget-object v9, v3, v11

    aget-object v10, v3, v12

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static resizeImage(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1002
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1005
    invoke-static/range {p0 .. p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->loadImageWithResize(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1006
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 1007
    const/4 v12, 0x0

    .line 1041
    :goto_0
    return-object v12

    .line 1010
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v11, v5, v6

    .line 1011
    .local v11, "imgScale":F
    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p0

    int-to-float v6, v0

    div-float v16, v5, v6

    .line 1014
    .local v16, "screenScale":F
    move/from16 v0, p0

    int-to-float v5, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v15, v5, v6

    .line 1015
    .local v15, "scaleW":F
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v14, v5, v6

    .line 1020
    .local v14, "scaleH":F
    cmpl-float v5, v11, v16

    if-lez v5, :cond_1

    .line 1022
    move v13, v15

    .line 1023
    .local v13, "scale":F
    const/16 v17, 0x0

    .line 1024
    .local v17, "x":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-int/lit8 v6, p1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v18, v0

    .line 1034
    .local v18, "y":I
    :goto_1
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 1035
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1038
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-static {v5, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1041
    .local v12, "retImage":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1028
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "retImage":Landroid/graphics/Bitmap;
    .end local v13    # "scale":F
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_1
    move v13, v14

    .line 1029
    .restart local v13    # "scale":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-int/lit8 v6, p0, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v17, v0

    .line 1030
    .restart local v17    # "x":I
    const/16 v18, 0x0

    .restart local v18    # "y":I
    goto :goto_1
.end method

.method public static saveFilePrivate(Ljava/lang/String;[B)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 595
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 596
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    const/4 v2, 0x1

    .line 603
    .end local v1    # "fo":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 602
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1068
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v3, "saveFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1071
    .local v1, "os":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    .end local v1    # "os":Ljava/io/BufferedOutputStream;
    .local v2, "os":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1073
    const/4 v4, 0x1

    .line 1079
    if-eqz v2, :cond_0

    .line 1081
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 1083
    .end local v2    # "os":Ljava/io/BufferedOutputStream;
    .restart local v1    # "os":Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_1
    return v4

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1079
    if-eqz v1, :cond_1

    .line 1081
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1082
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1079
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 1081
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1083
    :cond_2
    :goto_4
    throw v4

    .line 1082
    .end local v1    # "os":Ljava/io/BufferedOutputStream;
    .restart local v2    # "os":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2    # "os":Ljava/io/BufferedOutputStream;
    .restart local v1    # "os":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 1079
    .end local v1    # "os":Ljava/io/BufferedOutputStream;
    .restart local v2    # "os":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/BufferedOutputStream;
    .restart local v1    # "os":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 1074
    .end local v1    # "os":Ljava/io/BufferedOutputStream;
    .restart local v2    # "os":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/BufferedOutputStream;
    .restart local v1    # "os":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method public static savePreference(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "intValue"    # I

    .prologue
    .line 743
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 744
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "strValue"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 758
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 110
    sget-boolean v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

    .end local p0    # "aActivity":Landroid/app/Activity;
    sput-object p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->currentNativeActivity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

    .line 117
    :goto_0
    return-void

    .line 113
    .restart local p0    # "aActivity":Landroid/app/Activity;
    :cond_0
    check-cast p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    .end local p0    # "aActivity":Landroid/app/Activity;
    sput-object p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->currentActivity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    goto :goto_0
.end method

.method public static setStatusbarVisible(Z)V
    .locals 2
    .param p0, "visible"    # Z

    .prologue
    const/16 v1, 0x400

    .line 1200
    if-eqz p0, :cond_0

    .line 1201
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1206
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static setWifiEnabled(Z)V
    .locals 3
    .param p0, "status"    # Z

    .prologue
    .line 526
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 529
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 530
    return-void
.end method

.method public static showProgressDialog(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cancelable"    # Z

    .prologue
    .line 327
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;

    invoke-direct {v1, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method public static stringWithDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 770
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-direct {v0, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 771
    .local v0, "fmt":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "sdate":Ljava/lang/String;
    const-string v2, "BushimoSDK"

    const-string v3, "stringWithDate %s->%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-object v1
.end method

.method public static toast(I)V
    .locals 2
    .param p0, "stringResId"    # I

    .prologue
    .line 1110
    sget-boolean v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :goto_0
    return-void

    .line 1113
    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->toast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toast(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1094
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$7;

    invoke-direct {v1, p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1103
    return-void
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 719
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 724
    :goto_0
    return-object v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 724
    const-string v1, ""

    goto :goto_0
.end method
