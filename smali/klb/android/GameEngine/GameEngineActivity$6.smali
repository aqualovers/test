.class Lklb/android/GameEngine/GameEngineActivity$6;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$6;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1078
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v8, "Failed to get location"

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    .line 1088
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->stopGetLocation()Z

    .line 1089
    return-void

    .line 1084
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 1085
    .local v4, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 1086
    .local v6, "longitude":D
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v8, "succeeded"

    move v3, v2

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1104
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v8, "provider DISABLED"

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    .line 1105
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->stopGetLocation()Z

    .line 1106
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1099
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1094
    return-void
.end method
