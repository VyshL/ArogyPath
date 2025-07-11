.class public Landroid/support/constraint/ConstraintSet$Layout;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# static fields
.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4b

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_MARGIN:I = 0x49

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x4a

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_PERCENT:I = 0x46

.field private static final HORIZONTAL_BIAS:I = 0x14

.field private static final HORIZONTAL_STYLE:I = 0x27

.field private static final HORIZONTAL_WEIGHT:I = 0x25

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_WIDTH:I = 0x16

.field private static final LEFT_MARGIN:I = 0x17

.field private static final LEFT_TO_LEFT:I = 0x18

.field private static final LEFT_TO_RIGHT:I = 0x19

.field private static final ORIENTATION:I = 0x1a

.field private static final RIGHT_MARGIN:I = 0x1b

.field private static final RIGHT_TO_LEFT:I = 0x1c

.field private static final RIGHT_TO_RIGHT:I = 0x1d

.field private static final START_MARGIN:I = 0x1e

.field private static final START_TO_END:I = 0x1f

.field private static final START_TO_START:I = 0x20

.field private static final TOP_MARGIN:I = 0x21

.field private static final TOP_TO_BOTTOM:I = 0x22

.field private static final TOP_TO_TOP:I = 0x23

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x4c

.field private static final VERTICAL_BIAS:I = 0x24

.field private static final VERTICAL_STYLE:I = 0x28

.field private static final VERTICAL_WEIGHT:I = 0x26

.field private static final WIDTH_PERCENT:I = 0x45

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public baselineToBaseline:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endMargin:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mApply:Z

.field public mBarrierAllowsGoneWidgets:Z

.field public mBarrierDirection:I

.field public mBarrierMargin:I

.field public mConstraintTag:Ljava/lang/String;

.field public mHeight:I

.field public mHelperType:I

.field public mIsGuideline:Z

.field public mReferenceIdString:Ljava/lang/String;

.field public mReferenceIds:[I

.field public mWidth:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 654
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    .line 709
    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 710
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 711
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 712
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 713
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 714
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 715
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 716
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 717
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 719
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 720
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 721
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 722
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 723
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 724
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_orientation:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 725
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintStart_toEndOf:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 726
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintStart_toStartOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 727
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 728
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 729
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 730
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 731
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 732
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 733
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 734
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 735
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintVertical_weight:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 736
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintHorizontal_weight:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 737
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 738
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 740
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 741
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintVertical_bias:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 742
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 743
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintLeft_creator:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 744
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 745
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 746
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 747
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 748
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_marginLeft:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 749
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_marginRight:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 750
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_marginStart:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 751
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 752
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_marginTop:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 753
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 754
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 755
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 757
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 758
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 759
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 760
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 761
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 763
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 764
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 765
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 766
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 767
    sget-object v0, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Layout_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 768
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mIsGuideline:Z

    .line 519
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mApply:Z

    .line 523
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    .line 524
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    .line 525
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    .line 526
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    .line 527
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    .line 528
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    .line 529
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    .line 530
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    .line 531
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    .line 532
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    .line 533
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    .line 534
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    .line 535
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    .line 536
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    .line 537
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    .line 538
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    .line 539
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    .line 540
    iput v3, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    .line 541
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/constraint/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 542
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    .line 543
    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    .line 544
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    .line 545
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 546
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 547
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    .line 548
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    .line 549
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    .line 550
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    .line 551
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    .line 552
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    .line 553
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    .line 554
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneLeftMargin:I

    .line 555
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    .line 556
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneRightMargin:I

    .line 557
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    .line 558
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    .line 559
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    .line 560
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    .line 561
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    .line 562
    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 563
    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    .line 564
    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    .line 565
    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    .line 566
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    .line 567
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    .line 568
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    .line 569
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    .line 570
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthPercent:F

    .line 571
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightPercent:F

    .line 572
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    .line 573
    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    .line 574
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->mHelperType:I

    .line 578
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    .line 579
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/support/constraint/ConstraintSet$Layout;)V
    .registers 4
    .param p1, "src"    # Landroid/support/constraint/ConstraintSet$Layout;

    .line 584
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mIsGuideline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mIsGuideline:Z

    .line 585
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mWidth:I

    .line 586
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mApply:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mApply:Z

    .line 587
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mHeight:I

    .line 588
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    .line 589
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    .line 590
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    .line 591
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    .line 592
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    .line 593
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    .line 594
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    .line 595
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    .line 596
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    .line 597
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    .line 598
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    .line 599
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    .line 600
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    .line 601
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    .line 602
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    .line 603
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    .line 604
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    .line 605
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    .line 606
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 607
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    .line 608
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    .line 609
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    .line 610
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 611
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 612
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    .line 613
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    .line 614
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    .line 615
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    .line 616
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    .line 617
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    .line 618
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    .line 619
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneLeftMargin:I

    .line 620
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    .line 621
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneRightMargin:I

    .line 622
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    .line 623
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    .line 624
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    .line 625
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    .line 626
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    .line 627
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 628
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    .line 629
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    .line 630
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    .line 631
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    .line 632
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    .line 633
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    .line 634
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    .line 635
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->widthPercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthPercent:F

    .line 636
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->heightPercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightPercent:F

    .line 637
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    .line 638
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    .line 639
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mHelperType:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mHelperType:I

    .line 640
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 642
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_f0

    .line 643
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    goto :goto_f3

    .line 645
    :cond_f0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    .line 647
    :goto_f3
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 648
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    .line 649
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    .line 651
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 652
    return-void
.end method

.method public dump(Landroid/support/constraint/motion/MotionScene;Ljava/lang/StringBuilder;)V
    .registers 15
    .param p1, "scene"    # Landroid/support/constraint/motion/MotionScene;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 976
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_85

    .line 978
    aget-object v2, v0, v1

    .line 979
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 981
    goto :goto_82

    .line 990
    :cond_22
    :try_start_22
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 991
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 992
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_2c} :catch_7e

    const-string v7, "\"\n"

    const-string v8, " = \""

    const-string v9, "    "

    if-ne v5, v6, :cond_5b

    .line 993
    :try_start_34
    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    .line 994
    .local v6, "iValue":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7c

    .line 995
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v10

    .line 996
    .local v10, "stringid":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    if-nez v10, :cond_53

    move-object v8, v6

    goto :goto_54

    :cond_53
    move-object v8, v10

    :goto_54
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 1002
    .end local v6    # "iValue":Ljava/lang/Integer;
    .end local v10    # "stringid":Ljava/lang/String;
    :cond_5b
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7c

    .line 1003
    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    .line 1004
    .local v6, "fValue":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_7d

    .line 1005
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_7b} :catch_7e

    goto :goto_7d

    .line 1002
    .end local v6    # "fValue":Ljava/lang/Float;
    :cond_7c
    :goto_7c
    nop

    .line 1016
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7d
    :goto_7d
    goto :goto_82

    .line 1014
    :catch_7e
    move-exception v4

    .line 1015
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 977
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :goto_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1020
    .end local v1    # "i":I
    :cond_85
    return-void
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 771
    sget-object v0, Landroid/support/constraint/R$styleable;->Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 772
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintSet$Layout;->mApply:Z

    .line 773
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 774
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_2ba

    .line 775
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 777
    .local v3, "attr":I
    sget-object v4, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "   "

    const/16 v7, 0x11

    const-string v8, "ConstraintSet"

    packed-switch v4, :pswitch_data_2be

    .line 965
    :pswitch_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 966
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 965
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b6

    .line 939
    :pswitch_4f
    iget-boolean v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    .line 940
    goto/16 :goto_2b6

    .line 936
    :pswitch_59
    iget-boolean v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    .line 937
    goto/16 :goto_2b6

    .line 958
    :pswitch_63
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 959
    goto/16 :goto_2b6

    .line 961
    :pswitch_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 962
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 961
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    goto/16 :goto_2b6

    .line 955
    :pswitch_95
    iget-boolean v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 956
    goto/16 :goto_2b6

    .line 952
    :pswitch_9f
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 953
    goto/16 :goto_2b6

    .line 949
    :pswitch_a7
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    .line 950
    goto/16 :goto_2b6

    .line 946
    :pswitch_b1
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    .line 947
    goto/16 :goto_2b6

    .line 942
    :pswitch_bb
    const-string v4, "CURRENTLY UNSUPPORTED"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    goto/16 :goto_2b6

    .line 933
    :pswitch_c2
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightPercent:F

    .line 934
    goto/16 :goto_2b6

    .line 930
    :pswitch_ca
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthPercent:F

    .line 931
    goto/16 :goto_2b6

    .line 842
    :pswitch_d2
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    .line 843
    goto/16 :goto_2b6

    .line 839
    :pswitch_dc
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    .line 840
    goto/16 :goto_2b6

    .line 836
    :pswitch_e6
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    .line 837
    goto/16 :goto_2b6

    .line 924
    :pswitch_f0
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    .line 925
    goto/16 :goto_2b6

    .line 927
    :pswitch_fa
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    .line 928
    goto/16 :goto_2b6

    .line 918
    :pswitch_104
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    .line 919
    goto/16 :goto_2b6

    .line 921
    :pswitch_10e
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    .line 922
    goto/16 :goto_2b6

    .line 900
    :pswitch_118
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    .line 901
    goto/16 :goto_2b6

    .line 897
    :pswitch_122
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    .line 898
    goto/16 :goto_2b6

    .line 909
    :pswitch_12c
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    .line 910
    goto/16 :goto_2b6

    .line 912
    :pswitch_136
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 913
    goto/16 :goto_2b6

    .line 903
    :pswitch_140
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    .line 904
    goto/16 :goto_2b6

    .line 906
    :pswitch_14a
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    .line 907
    goto/16 :goto_2b6

    .line 866
    :pswitch_154
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    .line 867
    goto/16 :goto_2b6

    .line 791
    :pswitch_15e
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    .line 792
    goto/16 :goto_2b6

    .line 794
    :pswitch_168
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    .line 795
    goto/16 :goto_2b6

    .line 885
    :pswitch_172
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    .line 886
    goto/16 :goto_2b6

    .line 827
    :pswitch_17c
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    .line 828
    goto/16 :goto_2b6

    .line 824
    :pswitch_186
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    .line 825
    goto/16 :goto_2b6

    .line 875
    :pswitch_190
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_2b6

    .line 876
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    goto/16 :goto_2b6

    .line 788
    :pswitch_19e
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    .line 789
    goto/16 :goto_2b6

    .line 785
    :pswitch_1a8
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    .line 786
    goto/16 :goto_2b6

    .line 872
    :pswitch_1b2
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    .line 873
    goto/16 :goto_2b6

    .line 821
    :pswitch_1bc
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    .line 822
    goto/16 :goto_2b6

    .line 782
    :pswitch_1c6
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    .line 783
    goto/16 :goto_2b6

    .line 779
    :pswitch_1d0
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    .line 780
    goto/16 :goto_2b6

    .line 869
    :pswitch_1da
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    .line 870
    goto/16 :goto_2b6

    .line 891
    :pswitch_1e4
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mWidth:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mWidth:I

    .line 892
    goto/16 :goto_2b6

    .line 894
    :pswitch_1ee
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->mHeight:I

    .line 895
    goto/16 :goto_2b6

    .line 863
    :pswitch_1f8
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    .line 864
    goto/16 :goto_2b6

    .line 818
    :pswitch_202
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    .line 819
    goto/16 :goto_2b6

    .line 815
    :pswitch_20c
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    .line 816
    goto/16 :goto_2b6

    .line 812
    :pswitch_216
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    .line 813
    goto/16 :goto_2b6

    .line 848
    :pswitch_220
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    .line 849
    goto/16 :goto_2b6

    .line 857
    :pswitch_22a
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    .line 858
    goto/16 :goto_2b6

    .line 851
    :pswitch_234
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneRightMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneRightMargin:I

    .line 852
    goto/16 :goto_2b6

    .line 845
    :pswitch_23e
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneLeftMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneLeftMargin:I

    .line 846
    goto/16 :goto_2b6

    .line 860
    :pswitch_248
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    .line 861
    goto :goto_2b6

    .line 854
    :pswitch_251
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    .line 855
    goto :goto_2b6

    .line 830
    :pswitch_25a
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    .line 831
    goto :goto_2b6

    .line 833
    :pswitch_263
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    .line 834
    goto :goto_2b6

    .line 880
    :pswitch_26c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_2b6

    .line 881
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    goto :goto_2b6

    .line 809
    :pswitch_279
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 810
    goto :goto_2b6

    .line 806
    :pswitch_282
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 807
    goto :goto_2b6

    .line 915
    :pswitch_28b
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 916
    goto :goto_2b6

    .line 797
    :pswitch_292
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    .line 798
    goto :goto_2b6

    .line 800
    :pswitch_29b
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    .line 801
    goto :goto_2b6

    .line 888
    :pswitch_2a4
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    .line 889
    goto :goto_2b6

    .line 803
    :pswitch_2ad
    iget v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    .line 804
    nop

    .line 774
    .end local v3    # "attr":I
    :cond_2b6
    :goto_2b6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 970
    .end local v2    # "i":I
    :cond_2ba
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 971
    return-void

    :pswitch_data_2be
    .packed-switch 0x1
        :pswitch_2ad
        :pswitch_2a4
        :pswitch_29b
        :pswitch_292
        :pswitch_28b
        :pswitch_282
        :pswitch_279
        :pswitch_26c
        :pswitch_263
        :pswitch_25a
        :pswitch_251
        :pswitch_248
        :pswitch_23e
        :pswitch_234
        :pswitch_22a
        :pswitch_220
        :pswitch_216
        :pswitch_20c
        :pswitch_202
        :pswitch_1f8
        :pswitch_1ee
        :pswitch_1e4
        :pswitch_1da
        :pswitch_1d0
        :pswitch_1c6
        :pswitch_1bc
        :pswitch_1b2
        :pswitch_1a8
        :pswitch_19e
        :pswitch_190
        :pswitch_186
        :pswitch_17c
        :pswitch_172
        :pswitch_168
        :pswitch_15e
        :pswitch_154
        :pswitch_14a
        :pswitch_140
        :pswitch_136
        :pswitch_12c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_122
        :pswitch_118
        :pswitch_10e
        :pswitch_104
        :pswitch_fa
        :pswitch_f0
        :pswitch_25
        :pswitch_e6
        :pswitch_dc
        :pswitch_d2
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_ca
        :pswitch_c2
        :pswitch_bb
        :pswitch_b1
        :pswitch_a7
        :pswitch_9f
        :pswitch_95
        :pswitch_6b
        :pswitch_63
        :pswitch_25
        :pswitch_25
        :pswitch_59
        :pswitch_4f
    .end packed-switch
.end method
