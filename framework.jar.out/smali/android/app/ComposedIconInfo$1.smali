.class final Landroid/app/ComposedIconInfo$1;
.super Ljava/lang/Object;
.source "ComposedIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ComposedIconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/ComposedIconInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ComposedIconInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 88
    new-instance v0, Landroid/app/ComposedIconInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ComposedIconInfo;-><init>(Landroid/os/Parcel;Landroid/app/ComposedIconInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/ComposedIconInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ComposedIconInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ComposedIconInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/ComposedIconInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/ComposedIconInfo$1;->newArray(I)[Landroid/app/ComposedIconInfo;

    move-result-object v0

    return-object v0
.end method
