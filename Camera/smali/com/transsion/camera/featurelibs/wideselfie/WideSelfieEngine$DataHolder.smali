.class final Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;
.super Ljava/lang/Object;
.source "WideSelfieEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataHolder"
.end annotation


# instance fields
.field private final mData:[B

.field private final mRect:[Landroid/graphics/Rect;


# direct methods
.method private constructor <init>([B[Landroid/graphics/Rect;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;->mData:[B

    .line 93
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;->mRect:[Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>([B[Landroid/graphics/Rect;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;-><init>([B[Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;)[B
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;->mData:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;)[Landroid/graphics/Rect;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;->mRect:[Landroid/graphics/Rect;

    return-object p0
.end method
