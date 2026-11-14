.class public final enum Lcom/transsion/camera/utils/SettingInfo$Pattern;
.super Ljava/lang/Enum;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/utils/SettingInfo$Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public static final enum BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public static final enum CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public static final enum NORMAL:Lcom/transsion/camera/utils/SettingInfo$Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1271
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/SettingInfo$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->NORMAL:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    .line 1272
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const-string v1, "BURST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/utils/SettingInfo$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    .line 1273
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const-string v1, "CONTINUOUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/transsion/camera/utils/SettingInfo$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/transsion/camera/utils/SettingInfo$Pattern;

    .line 1270
    sget-object v5, Lcom/transsion/camera/utils/SettingInfo$Pattern;->NORMAL:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    aput-object v5, v1, v2

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo$Pattern;->BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo$Pattern;->$VALUES:[Lcom/transsion/camera/utils/SettingInfo$Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/utils/SettingInfo$Pattern;
    .locals 1

    .line 1270
    const-class v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/utils/SettingInfo$Pattern;
    .locals 1

    .line 1270
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->$VALUES:[Lcom/transsion/camera/utils/SettingInfo$Pattern;

    invoke-virtual {v0}, [Lcom/transsion/camera/utils/SettingInfo$Pattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/utils/SettingInfo$Pattern;

    return-object v0
.end method
