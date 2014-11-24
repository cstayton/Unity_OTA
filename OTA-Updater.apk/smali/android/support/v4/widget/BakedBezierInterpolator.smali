.class final Landroid/support/v4/widget/BakedBezierInterpolator;
.super Ljava/lang/Object;
.source "BakedBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final INSTANCE:Landroid/support/v4/widget/BakedBezierInterpolator;

.field private static final STEP_SIZE:F

.field private static final VALUES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/widget/BakedBezierInterpolator;

    invoke-direct {v0}, Landroid/support/v4/widget/BakedBezierInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/BakedBezierInterpolator;->INSTANCE:Landroid/support/v4/widget/BakedBezierInterpolator;

    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    const/high16 v0, 0x3f80

    sget-object v1, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Landroid/support/v4/widget/BakedBezierInterpolator;->STEP_SIZE:F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x17t 0xb7t 0x51t 0x39t
        0xfat 0xedt 0x6bt 0x3at
        0x6ct 0x9t 0xf9t 0x3at
        0xfat 0xedt 0x6bt 0x3bt
        0xcat 0x54t 0xc1t 0x3bt
        0x4t 0xe7t 0xct 0x3ct
        0x38t 0xf8t 0x42t 0x3ct
        0x49t 0x9dt 0x80t 0x3ct
        0x7at 0x36t 0xabt 0x3ct
        0xcet 0x88t 0xd2t 0x3ct
        0x4at 0x7bt 0x3t 0x3dt
        0x2et 0x90t 0x20t 0x3dt
        0x37t 0x1at 0x40t 0x3dt
        0x67t 0xd5t 0x67t 0x3dt
        0x4bt 0x59t 0x86t 0x3dt
        0x52t 0x49t 0x9dt 0x3dt
        0x58t 0xa8t 0xb5t 0x3dt
        0xf3t 0x8et 0xd3t 0x3dt
        0x8ft 0xe4t 0xf2t 0x3dt
        0x3at 0x23t 0xat 0x3et
        0xact 0x8bt 0x1bt 0x3et
        0x9ft 0xabt 0x2dt 0x3et
        0x5dt 0x6dt 0x45t 0x3et
        0xbet 0x30t 0x59t 0x3et
        0x21t 0xb0t 0x72t 0x3et
        0x9dt 0x80t 0x86t 0x3et
        0x6t 0x12t 0x94t 0x3et
        0x49t 0x2et 0x9ft 0x3et
        0xfbt 0x5ct 0xadt 0x3et
        0x1at 0xc0t 0xbbt 0x3et
        0xa8t 0x57t 0xcat 0x3et
        0xa3t 0x23t 0xd9t 0x3et
        0x9dt 0x11t 0xe5t 0x3et
        0xeat 0x4t 0xf4t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x8bt 0xfdt 0x5t 0x3ft
        0x16t 0xfbt 0xbt 0x3ft
        0x13t 0xf2t 0x11t 0x3ft
        0x82t 0xe2t 0x17t 0x3ft
        0xc8t 0x7t 0x1dt 0x3ft
        0xf3t 0x1ft 0x22t 0x3ft
        0x90t 0x31t 0x27t 0x3ft
        0x3t 0x78t 0x2bt 0x3ft
        0xdct 0x68t 0x30t 0x3ft
        0x18t 0x95t 0x34t 0x3ft
        0xact 0xadt 0x38t 0x3ft
        0xbft 0xet 0x3ct 0x3ft
        0x1bt 0xdt 0x40t 0x3ft
        0xf8t 0x53t 0x43t 0x3ft
        0xb9t 0x8dt 0x46t 0x3ft
        0xd0t 0xb3t 0x49t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x9t 0x8at 0x4ft 0x3ft
        0x2at 0x3at 0x52t 0x3ft
        0x46t 0x25t 0x55t 0x3ft
        0x8bt 0x6ct 0x57t 0x3ft
        0x43t 0xadt 0x59t 0x3ft
        0x51t 0xdat 0x5bt 0x3ft
        0xd2t 0x0t 0x5et 0x3ft
        0x37t 0x1at 0x60t 0x3ft
        0xf3t 0x1ft 0x62t 0x3ft
        0x21t 0x1ft 0x64t 0x3ft
        0xabt 0xcft 0x65t 0x3ft
        0x19t 0x73t 0x67t 0x3ft
        0xf5t 0x4at 0x69t 0x3ft
        0xbet 0x9ft 0x6at 0x3ft
        0xd6t 0x56t 0x6ct 0x3ft
        0xf6t 0x97t 0x6dt 0x3ft
        0xfbt 0xcbt 0x6et 0x3ft
        0xe0t 0x2dt 0x70t 0x3ft
        0xaat 0x82t 0x71t 0x3ft
        0xeat 0x95t 0x72t 0x3ft
        0x2at 0xa9t 0x73t 0x3ft
        0xc1t 0xa8t 0x74t 0x3ft
        0x58t 0xa8t 0x75t 0x3ft
        0x46t 0x94t 0x76t 0x3ft
        0xe2t 0x58t 0x77t 0x3ft
        0x27t 0x31t 0x78t 0x3ft
        0x19t 0xe2t 0x78t 0x3ft
        0x43t 0xadt 0x79t 0x3ft
        0x8ct 0x4at 0x7at 0x3ft
        0xct 0x2t 0x7bt 0x3ft
        0xact 0x8bt 0x7bt 0x3ft
        0x4dt 0x15t 0x7ct 0x3ft
        0xd1t 0x91t 0x7ct 0x3ft
        0xc8t 0x7t 0x7dt 0x3ft
        0x32t 0x77t 0x7dt 0x3ft
        0xdt 0xe0t 0x7dt 0x3ft
        0xcdt 0x3bt 0x7et 0x3ft
        0x0t 0x91t 0x7et 0x3ft
        0x17t 0xd9t 0x7et 0x3ft
        0x12t 0x14t 0x7ft 0x3ft
        0xet 0x4ft 0x7ft 0x3ft
        0x7bt 0x83t 0x7ft 0x3ft
        0x40t 0xa4t 0x7ft 0x3ft
        0x92t 0xcbt 0x7ft 0x3ft
        0x3bt 0xdft 0x7ft 0x3ft
        0xe5t 0xf2t 0x7ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Landroid/support/v4/widget/BakedBezierInterpolator;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/BakedBezierInterpolator;->INSTANCE:Landroid/support/v4/widget/BakedBezierInterpolator;

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    cmpl-float v6, p1, v4

    if-ltz v6, :cond_0

    :goto_0
    return v4

    :cond_0
    cmpg-float v4, p1, v5

    if-gtz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    sget-object v5, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v4, v1

    sget v5, Landroid/support/v4/widget/BakedBezierInterpolator;->STEP_SIZE:F

    mul-float v2, v4, v5

    sub-float v0, p1, v2

    sget v4, Landroid/support/v4/widget/BakedBezierInterpolator;->STEP_SIZE:F

    div-float v3, v0, v4

    sget-object v4, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    aget v4, v4, v1

    sget-object v5, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    sget-object v6, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    goto :goto_0
.end method
