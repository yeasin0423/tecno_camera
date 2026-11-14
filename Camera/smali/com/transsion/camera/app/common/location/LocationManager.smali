.class public Lcom/transsion/camera/app/common/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# instance fields
.field mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationProvider;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/location/LocationProvider;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public recordLocation(Z)V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/location/LocationProvider;->recordLocation(Z)V

    return-void
.end method
