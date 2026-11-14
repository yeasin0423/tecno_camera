.class public Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;
.super Ljava/lang/Object;
.source "FaceBeautyModeRestriction.java"


# static fields
.field private static final KEY_FACEBEAUTY_MODE:Ljava/lang/String;

.field private static sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    const-class v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->KEY_FACEBEAUTY_MODE:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 21
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->KEY_FACEBEAUTY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr,key_slimbody_info"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->KEY_FACEBEAUTY_MODE:Ljava/lang/String;

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_hdr"

    const-string v4, "off"

    .line 28
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v2, "key_slimbody_info"

    const-string v4, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 29
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 30
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->KEY_FACEBEAUTY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v5, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->KEY_FACEBEAUTY_MODE:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 39
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getRelation(I)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 49
    sget-object p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    .line 51
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method
