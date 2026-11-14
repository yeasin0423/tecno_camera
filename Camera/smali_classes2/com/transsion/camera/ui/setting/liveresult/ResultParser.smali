.class Lcom/transsion/camera/ui/setting/liveresult/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# direct methods
.method private static AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "ON_EXTERNAL_FLASH"

    return-object p0

    :cond_2
    const-string p0, "ON_AUTO_FLASH_REDEYE"

    return-object p0

    :cond_3
    const-string p0, "ON_ALWAYS_FLASH"

    return-object p0

    :cond_4
    const-string p0, "ON_AUTO_FLASH"

    return-object p0

    :cond_5
    const-string p0, "ON"

    return-object p0

    :cond_6
    const-string p0, "OFF"

    return-object p0
.end method

.method private static AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "PRECAPTURE"

    return-object p0

    :cond_2
    const-string p0, "FLASH_REQUIRED"

    return-object p0

    :cond_3
    const-string p0, "LOCKED"

    return-object p0

    :cond_4
    const-string p0, "CONVERGED"

    return-object p0

    :cond_5
    const-string p0, "SEARCHING"

    return-object p0

    :cond_6
    const-string p0, "INACTIVE"

    return-object p0
.end method

.method private static AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "EDOF"

    return-object p0

    :cond_2
    const-string p0, "CONTINUOUS_PICTURE"

    return-object p0

    :cond_3
    const-string p0, "CONTINUOUS_VIDEO"

    return-object p0

    :cond_4
    const-string p0, "MACRO"

    return-object p0

    :cond_5
    const-string p0, "AUTO"

    return-object p0

    :cond_6
    const-string p0, "OFF"

    return-object p0
.end method

.method private static AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "PASSIVE_UNFOCUSED"

    return-object p0

    :pswitch_1
    const-string p0, "NOT_FOCUSED_LOCKED"

    return-object p0

    :pswitch_2
    const-string p0, "FOCUSED_LOCKED"

    return-object p0

    :pswitch_3
    const-string p0, "ACTIVE_SCAN"

    return-object p0

    :pswitch_4
    const-string p0, "PASSIVE_FOCUSED"

    return-object p0

    :pswitch_5
    const-string p0, "PASSIVE_SCAN"

    return-object p0

    :pswitch_6
    const-string p0, "INACTIVE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    const-string v2, " PreviewSize: \t"

    .line 33
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 34
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v3, " ISO: \t"

    .line 35
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 37
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    const-wide/32 v5, 0xf4240

    if-nez p0, :cond_1

    move-wide v7, v3

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v5

    :goto_0
    if-nez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    const-wide/32 v9, 0x3b9aca00

    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    div-long/2addr v9, v11

    long-to-float p0, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr p0, v9

    float-to-int p0, p0

    :goto_1
    const-string v9, " Exposure  Time: \t"

    .line 41
    invoke-virtual {v0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    const-string v8, " ms.  1/"

    .line 42
    invoke-virtual {v7, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    const-string v7, "s.\n"

    invoke-virtual {p0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 44
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_3

    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v3, v5

    :goto_2
    const-wide v5, 0x408f400000000000L    # 1000.0

    long-to-double v7, v3

    div-double/2addr v5, v7

    double-to-float p0, v5

    const-string v5, " Frame Duration: \t"

    .line 48
    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    const-string v4, " ms.  "

    invoke-virtual {v3, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    .line 49
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    const-string v3, " fps.\n"

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 51
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "com.transsion.brightnessValue"

    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    const-string v3, " Tran  BV: \t\t"

    .line 55
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 58
    :cond_4
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "com.mediatek.3afeature.aeAverageBrightness"

    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_5

    const-string v3, " MTK  CWV: \t\t"

    .line 62
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 65
    :cond_5
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "com.transsion.aflaserdist"

    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_6

    .line 69
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-string v4, " Laser DT: \t\t"

    .line 70
    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 71
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const/high16 v4, -0x10000

    .line 72
    invoke-static {v0, v4, v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 75
    :cond_6
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v3, " AF  Mode: \t\t"

    .line 76
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 77
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v3, " AF State: \t\t"

    .line 78
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 80
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v3, " AE  Mode: \t\t"

    .line 81
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 82
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v1, " AE State: \t\t"

    .line 83
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    return-object v0
.end method
