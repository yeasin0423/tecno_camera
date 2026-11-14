.class public Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;
.super Ljava/lang/Object;
.source "ModeRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 18
    const-class v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 30
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 33
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr,key_flash,key_exposure,key_setting_smart_denoise"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    const-string v3, "torch_not_support"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_hdr"

    const-string v4, "off"

    .line 37
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_flash"

    .line 38
    invoke-virtual {v1, v5, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v6, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    const-string v7, "key_exposure"

    .line 39
    invoke-virtual {v1, v7, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_setting_smart_denoise"

    const-string v8, "on"

    .line 40
    invoke-virtual {v1, v6, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 41
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v9, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    const-string v10, "torch_support"

    invoke-direct {v1, v9, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v9, "off,torch"

    .line 45
    invoke-virtual {v1, v5, v4, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v11, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v7, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 48
    invoke-virtual {v1, v6, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 49
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr,key_flash,key_exposure,key_face_beauty,key_setting_smart_denoise"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v11, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v1, v11, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 56
    invoke-virtual {v1, v5, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v7, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "key_face_beauty"

    const-string v11, "2"

    .line 58
    invoke-virtual {v1, v3, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 59
    invoke-virtual {v1, v6, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 60
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v12, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v1, v12, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 64
    invoke-virtual {v1, v5, v4, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v7, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 67
    invoke-virtual {v1, v3, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 68
    invoke-virtual {v1, v6, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 69
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_super_night,key_setting_smart_denoise"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "SuperNight-Switch"

    invoke-direct {v2, v3, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_super_night"

    const-string v7, "Night"

    const/4 v9, 0x0

    .line 74
    invoke-virtual {v2, v5, v7, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 75
    invoke-virtual {v2, v6, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 76
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "None"

    .line 78
    invoke-virtual {v2, v5, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 79
    invoke-virtual {v2, v6, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 80
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v2, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v2, "StableNight-Switch"

    invoke-direct {v1, v2, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Stable"

    .line 85
    invoke-virtual {v1, v5, v7, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 86
    invoke-virtual {v1, v6, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 87
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v5, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 90
    invoke-virtual {v1, v6, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 91
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 116
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public static getRelation(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    if-eqz p0, :cond_0

    .line 104
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string p1, "torch_support"

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    const-string p1, "key_flash"

    const-string v0, "off,torch"

    .line 107
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p1, "torch_not_support"

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public static getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
