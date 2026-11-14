.class public Lcom/transsion/camera/utils/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_FOCUS_VALUE_HIGH:I

.field public static final TAG_FOCUS_VALUE_LOW:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_GROUP_ID:I

.field public static final TAG_GROUP_INDEX:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/transsion/camera/utils/exif/ExifData;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 77
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v1, 0x101

    .line 79
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v1, 0x102

    .line 81
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v1, 0x103

    .line 83
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v1, 0x106

    .line 85
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v1, 0x10e

    .line 87
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v1, 0x10f

    .line 89
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKE:I

    const/16 v1, 0x110

    .line 91
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MODEL:I

    const/16 v1, 0x111

    .line 93
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v1, 0x112

    .line 95
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v1, 0x220

    .line 98
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_INDEX:I

    const/16 v1, 0x221

    .line 100
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_ID:I

    const/16 v1, 0x222

    .line 102
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_HIGH:I

    const/16 v1, 0x223

    .line 104
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_LOW:I

    const/16 v1, 0x115

    .line 108
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v1, 0x116

    .line 110
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v1, 0x117

    .line 112
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v1, 0x11a

    .line 114
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v1, 0x11b

    .line 116
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v1, 0x11c

    .line 118
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v1, 0x128

    .line 120
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v1, 0x12d

    .line 122
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v1, 0x131

    .line 124
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v1, 0x132

    .line 126
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v1, 0x13b

    .line 128
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v1, 0x13e

    .line 130
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v1, 0x13f

    .line 132
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v1, 0x211

    .line 134
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v1, 0x212

    .line 136
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v1, 0x213

    .line 138
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v1, 0x214

    .line 140
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v1, -0x7d68

    .line 142
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v1, -0x7897

    .line 144
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v1, -0x77db

    .line 146
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    const/4 v1, 0x1

    const/16 v2, 0x201

    .line 149
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v2, 0x202

    .line 151
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/4 v2, 0x2

    const/16 v3, -0x7d66

    .line 154
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v3, -0x7d63

    .line 156
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v3, -0x77de

    .line 158
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v3, -0x77dc

    .line 160
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v3, -0x77d9

    .line 162
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v3, -0x77d8

    .line 164
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_OECF:I

    const/16 v3, -0x7000

    .line 166
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v3, -0x6ffd

    .line 168
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v3, -0x6ffc

    .line 170
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v3, -0x6eff

    .line 172
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v3, -0x6efe

    .line 174
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v3, -0x6dff

    .line 176
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v3, -0x6dfe

    .line 178
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v3, -0x6dfd

    .line 180
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v3, -0x6dfc

    .line 182
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v3, -0x6dfb

    .line 184
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v3, -0x6dfa

    .line 186
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v3, -0x6df9

    .line 188
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v3, -0x6df8

    .line 190
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v3, -0x6df7

    .line 192
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    const/16 v3, -0x6df6

    .line 194
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v3, -0x6dec

    .line 196
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v3, -0x6d84

    .line 198
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v3, -0x6d7a

    .line 200
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v3, -0x6d70

    .line 202
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v3, -0x6d6f

    .line 204
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v3, -0x6d6e

    .line 206
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v3, -0x6000

    .line 208
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v3, -0x5fff

    .line 210
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v3, -0x5ffe

    .line 212
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v3, -0x5ffd

    .line 214
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v3, -0x5ffc

    .line 216
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v3, -0x5ffb

    .line 218
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v3, -0x5df5

    .line 220
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v3, -0x5df4

    .line 222
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v3, -0x5df2

    .line 224
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v3, -0x5df1

    .line 226
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v3, -0x5df0

    .line 228
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v3, -0x5dec

    .line 230
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v3, -0x5deb

    .line 232
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v3, -0x5de9

    .line 234
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v3, -0x5d00

    .line 236
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v3, -0x5cff

    .line 238
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v3, -0x5cfe

    .line 240
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v3, -0x5bff

    .line 242
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v3, -0x5bfe

    .line 244
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v3, -0x5bfd

    .line 246
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v3, -0x5bfc

    .line 248
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v3, -0x5bfb

    .line 250
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v3, -0x5bfa

    .line 252
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v3, -0x5bf9

    .line 254
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v3, -0x5bf8

    .line 256
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v3, -0x5bf7

    .line 258
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v3, -0x5bf6

    .line 260
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v3, -0x5bf5

    .line 262
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v3, -0x5bf4

    .line 264
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v3, -0x5be0

    .line 266
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/4 v3, 0x4

    .line 269
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 271
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 273
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/4 v0, 0x3

    .line 275
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 277
    invoke-static {v3, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v2, 0x5

    .line 279
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v2, 0x6

    .line 281
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v2, 0x7

    .line 283
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v2, 0x8

    .line 285
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v2, 0x9

    .line 287
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v2, 0xa

    .line 289
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v2, 0xb

    .line 291
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v2, 0xc

    .line 293
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v2, 0xd

    .line 295
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v2, 0xe

    .line 297
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v2, 0xf

    .line 299
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v2, 0x10

    .line 301
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v2, 0x11

    .line 303
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v2, 0x12

    .line 305
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v2, 0x13

    .line 307
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v2, 0x14

    .line 309
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v2, 0x15

    .line 311
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    const/16 v2, 0x16

    .line 313
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    const/16 v2, 0x17

    .line 315
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v2, 0x18

    .line 317
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v2, 0x19

    .line 319
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v2, 0x1a

    .line 321
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v2, 0x1b

    .line 323
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v2, 0x1c

    .line 325
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v2, 0x1d

    .line 327
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v2, 0x1e

    .line 329
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 332
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 339
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 342
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    .line 355
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifData;

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    const-string v0, "UTC"

    .line 2051
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 2164
    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2495
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2499
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/exif/IfdData;->getIfds()[I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 2501
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2502
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2182
    fill-array-data v2, :array_0

    .line 2185
    invoke-static {v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 2186
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v2, v5

    or-int/lit8 v7, v6, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v8, 0x40000

    or-int v9, v2, v8

    or-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v11, 0x30000

    or-int v12, v2, v11

    or-int/lit8 v13, v12, 0x3

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int/lit8 v13, v12, 0x1

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_INDEX:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_ID:I

    const/4 v14, 0x0

    or-int/2addr v9, v14

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_HIGH:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2207
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_LOW:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int/lit8 v15, v12, 0x2

    invoke-virtual {v3, v4, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v15, 0x50000

    or-int/2addr v2, v15

    or-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int/lit16 v5, v12, 0x300

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int/lit8 v5, v2, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/4 v9, 0x3

    or-int/2addr v2, v9

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int/lit8 v4, v6, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v14

    .line 2262
    invoke-static {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2263
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v3, v8

    or-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-array v3, v2, [I

    aput v1, v3, v14

    .line 2271
    invoke-static {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2272
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v6, 0x70000

    or-int v7, v3, v6

    or-int/lit8 v10, v7, 0x4

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2274
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2276
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v12, v3, v11

    or-int/lit8 v13, v12, 0x1

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2278
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2280
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v10, v3, v15

    or-int/2addr v10, v2

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2282
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v8, v3

    or-int/2addr v8, v2

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2284
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2286
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int/lit8 v11, v7, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2288
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2290
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v16, 0x20000

    or-int v17, v3, v16

    or-int/lit8 v6, v17, 0xd

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2292
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int/lit8 v6, v17, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2294
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2296
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int/lit8 v6, v17, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2298
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2300
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int/lit8 v15, v17, 0x21

    invoke-virtual {v4, v5, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2304
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2306
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2308
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2310
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2312
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int/lit8 v6, v12, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2314
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_OECF:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2316
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v15, 0xa0000

    or-int/2addr v3, v15

    or-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2318
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2320
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2322
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2324
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2326
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2328
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2330
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2332
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2334
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2336
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2340
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v3, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2342
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2346
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2348
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int/2addr v1, v12

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2350
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2352
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2354
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2356
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2358
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2360
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2362
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2364
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2366
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2368
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2370
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2372
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2374
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2376
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2378
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2380
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2384
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v3, 0x4

    aput v3, v1, v14

    .line 2390
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2391
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v5, 0x10000

    or-int/2addr v5, v1

    or-int/lit8 v6, v5, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2393
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v6, 0x20000

    or-int v7, v1, v6

    or-int/lit8 v6, v7, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2395
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2397
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v8, v1, v15

    or-int/2addr v8, v9

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2399
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2401
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2403
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v5, 0x50000

    or-int/2addr v5, v1

    or-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2405
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int/2addr v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2407
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int/lit8 v5, v7, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2409
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2411
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2413
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2415
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2417
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2419
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2421
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2423
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2425
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2427
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2429
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2431
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2433
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2435
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2437
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2439
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2441
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v5, 0x70000

    or-int/2addr v5, v1

    or-int/2addr v5, v14

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2443
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2445
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int/lit8 v5, v7, 0xb

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2447
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v5, 0x30000

    or-int/2addr v1, v5

    or-int/lit8 v1, v1, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    aput v9, v1, v14

    .line 2453
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2454
    iget-object v0, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    or-int/2addr v1, v14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    .line 2484
    invoke-static {}, Lcom/transsion/camera/utils/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2485
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 2486
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2487
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 1

    .line 1579
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static toExifLatLong(D)[Lcom/transsion/camera/utils/exif/Rational;
    .locals 7

    .line 2134
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double/2addr p0, v2

    double-to-int p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/transsion/camera/utils/exif/Rational;

    .line 2140
    new-instance v2, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 v0, 0x0

    aput-object v2, p1, v0

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v1, p0

    const-wide/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 p0, 0x2

    aput-object v0, p1, p0

    return-object p1
.end method


# virtual methods
.method public addGpsDateTimeStampTag(J)Z
    .locals 8

    .line 2112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 2113
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2114
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2118
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2119
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2120
    sget p1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/transsion/camera/utils/exif/Rational;

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    .line 2121
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    aput-object v0, p2, v1

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 2122
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    new-instance v3, Lcom/transsion/camera/utils/exif/Rational;

    iget-object v6, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    .line 2123
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    aput-object v3, p2, v0

    .line 2120
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 2128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    return v2
.end method

.method public addGpsTags(DD)Z
    .locals 5

    .line 2087
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->toExifLatLong(D)[Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 2088
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/exif/ExifInterface;->toExifLatLong(D)[Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v1

    .line 2089
    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v3, 0x0

    cmpl-double p1, p1, v3

    if-ltz p1, :cond_0

    const-string p1, "N"

    goto :goto_0

    :cond_0
    const-string p1, "S"

    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p1

    .line 2092
    sget p2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double p3, p3, v3

    if-ltz p3, :cond_1

    const-string p3, "E"

    goto :goto_1

    :cond_1
    const-string p3, "W"

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 2098
    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2099
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2100
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2101
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 7

    .line 1594
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1598
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 1599
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 1601
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 1604
    :cond_2
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifTag;

    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/utils/exif/ExifTag;-><init>(SSIIZ)V

    .line 1605
    invoke-virtual {p0, p3}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 1

    .line 1619
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1620
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method protected buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 6

    .line 1624
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1628
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1629
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    .line 1631
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1632
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifTag;

    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/exif/ExifTag;-><init>(SSIIZ)V

    return-object p0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 0

    .line 1545
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1549
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueIfd(I)I

    move-result p0

    return p0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-eqz p1, :cond_0

    .line 994
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/transsion/camera/utils/exif/ExifInterface;)V

    .line 995
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->setExifData(Lcom/transsion/camera/utils/exif/ExifData;)V

    return-object v0

    .line 992
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 1

    .line 1222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1223
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(II)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public getTag(II)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 1

    .line 1208
    invoke-static {p2}, Lcom/transsion/camera/utils/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1211
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/exif/ExifData;->getTag(SI)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2169
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->initTagInfo()V

    .line 2171
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 770
    :try_start_0
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/exif/ExifReader;-><init>(Lcom/transsion/camera/utils/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/transsion/camera/utils/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/transsion/camera/utils/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    return-void

    :catch_0
    move-exception p0

    .line 772
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exif format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1915
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 p0, 0x1

    return p0
.end method

.method public setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 0

    .line 1679
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifData;->addTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 831
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    const/4 p2, 0x0

    .line 832
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 833
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 829
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
