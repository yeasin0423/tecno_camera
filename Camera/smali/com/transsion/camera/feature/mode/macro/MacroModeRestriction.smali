.class public Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;
.super Ljava/lang/Object;
.source "MacroModeRestriction.java"


# static fields
.field private static final HEADER_KEY:Ljava/lang/String;

.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    const-class v0, Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->HEADER_KEY:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    sget-object v1, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->HEADER_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_camera_zoom,key_eye_detection,key_face_detection,key_auto_focus_switch,key_human_detection"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->HEADER_KEY:Ljava/lang/String;

    const-string v3, "value_wide_cam_support"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_camera_zoom"

    const-string v3, "value_zoom_support_macro_active"

    const-string v4, "150,250"

    .line 30
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "key_eye_detection"

    const-string v5, "off"

    .line 31
    invoke-virtual {v1, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_face_detection"

    .line 32
    invoke-virtual {v1, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v7, "key_auto_focus_switch"

    .line 33
    invoke-virtual {v1, v7, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v8, "key_human_detection"

    .line 34
    invoke-virtual {v1, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 35
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v9, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->HEADER_KEY:Ljava/lang/String;

    const-string v10, "value_wide_cam_not_support"

    invoke-direct {v1, v9, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "100,200"

    .line 39
    invoke-virtual {v1, v2, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 40
    invoke-virtual {v1, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 41
    invoke-virtual {v1, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 42
    invoke-virtual {v1, v7, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 43
    invoke-virtual {v1, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 44
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
