.class Lklb/android/GameEngine/GameEngineActivity$7;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1111
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$7;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1115
    const-string v1, "network"

    .line 1116
    .local v1, "locationProvider":Ljava/lang/String;
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$7;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$1200(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lklb/android/GameEngine/GameEngineActivity$7;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lklb/android/GameEngine/GameEngineActivity;->access$1100(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1117
    return-void
.end method
