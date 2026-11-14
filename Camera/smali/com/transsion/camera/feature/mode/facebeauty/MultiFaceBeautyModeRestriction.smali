.class public Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;
.super Ljava/lang/Object;
.source "MultiFaceBeautyModeRestriction.java"


# static fields
.field private static final KEY_MULTI_FACEBEAUTY_MODE:Ljava/lang/String;

.field private static sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    const-class v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeEntry;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->KEY_MULTI_FACEBEAUTY_MODE:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->KEY_MULTI_FACEBEAUTY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->KEY_MULTI_FACEBEAUTY_MODE:Ljava/lang/String;

    const-string v4, "on"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "off"

    .line 33
    invoke-virtual {v2, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 34
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->KEY_MULTI_FACEBEAUTY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_face_detection"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->KEY_MULTI_FACEBEAUTY_MODE:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gender_indentification"

    .line 41
    invoke-virtual {v2, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 42
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getFaceAttributeRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/MultiFaceBeautyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
