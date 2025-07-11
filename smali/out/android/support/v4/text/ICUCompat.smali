.class public final Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "addLikelySubtags"

    const-string v2, "libcore.icu.ICU"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x15

    if-lt v0, v5, :cond_24

    .line 38
    :try_start_c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    .line 43
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_50

    .line 41
    :catch_1d
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    :try_start_24
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_44

    .line 48
    const-string v2, "getScript"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 50
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_45

    .line 59
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_44
    goto :goto_50

    .line 53
    :catch_45
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 55
    sput-object v1, Landroid/support/v4/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 58
    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 125
    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "localeStr":Ljava/lang/String;
    :try_start_6
    sget-object v2, Landroid/support/v4/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_21

    .line 128
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 129
    .local v3, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_17} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v2

    .line 134
    .end local v3    # "args":[Ljava/lang/Object;
    :catch_18
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 131
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1d
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_21
    nop

    .line 139
    :goto_22
    return-object v1
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 110
    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroid/support/v4/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1d

    .line 111
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 112
    .local v3, "args":[Ljava/lang/Object;
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_13} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_13} :catch_14

    return-object v2

    .line 117
    .end local v3    # "args":[Ljava/lang/Object;
    :catch_14
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 114
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_19
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1d
    nop

    .line 121
    :goto_1e
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 88
    const-string v0, "ICUCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2b

    .line 90
    const/4 v1, 0x1

    :try_start_a
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 91
    .local v1, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1b} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1b} :catch_1c

    return-object v0

    .line 94
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_1c
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 92
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_21
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 97
    :goto_26
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_2b
    invoke-static {p0}, Landroid/support/v4/text/ICUCompat;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 101
    invoke-static {v0}, Landroid/support/v4/text/ICUCompat;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    :cond_36
    return-object v2
.end method
