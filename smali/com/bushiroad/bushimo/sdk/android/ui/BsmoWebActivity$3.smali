.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;
.super Ljava/lang/Object;
.source "BsmoWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->showImageUploadDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

.field final synthetic val$aRequestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->val$aRequestUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 916
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 918
    packed-switch p2, :pswitch_data_0

    .line 966
    :goto_0
    return-void

    .line 921
    :pswitch_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isMountedSD()Z

    move-result v5

    if-nez v5, :cond_0

    .line 922
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v5

    const v6, 0x7f060043

    const-string v7, "string"

    const-string v8, "bsmo_error_not_mounted_sd"

    invoke-virtual {v5, v6, v7, v8}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->toast(I)V

    goto :goto_0

    .line 927
    :cond_0
    iget-object v5, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->val$aRequestUrl:Ljava/lang/String;

    # invokes: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->saveURLParams(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->access$100(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Ljava/lang/String;)V

    .line 929
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 930
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "title"

    const-string v6, "tmp.jpg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v5, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    invoke-virtual {v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    # setter for: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->access$202(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 934
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 935
    .local v0, "cameraIntent":Landroid/content/Intent;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string v5, "output"

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    # getter for: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->access$200(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 937
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 938
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 939
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v5, "camera_uri"

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    # getter for: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->mImageUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->access$200(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 940
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 941
    iget-object v5, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    const/16 v6, 0x16

    invoke-virtual {v5, v0, v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 947
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    .end local v4    # "values":Landroid/content/ContentValues;
    :pswitch_1
    iget-object v5, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->val$aRequestUrl:Ljava/lang/String;

    # invokes: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->saveURLParams(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->access$100(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Ljava/lang/String;)V

    .line 950
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    const-string v5, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    iget-object v5, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$3;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    const/16 v6, 0xb

    invoke-virtual {v5, v2, v6}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 959
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto/16 :goto_0

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
