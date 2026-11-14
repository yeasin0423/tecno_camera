.class public Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;
.super Ljava/lang/Object;
.source "SBFeatureInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public drawableId:I

.field public featureId:I

.field public layoutId:I

.field public titleId:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    .line 35
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->layoutId:I

    .line 36
    iput p3, p0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->titleId:I

    .line 37
    iput p4, p0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->drawableId:I

    .line 38
    iput-object p5, p0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->value:Ljava/lang/String;

    return-void
.end method
