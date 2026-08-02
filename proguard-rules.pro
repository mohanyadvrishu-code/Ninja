# BloodyShine ProGuard rules

# Keep CloudburstMC protocol classes
-keep class org.cloudburstmc.** { *; }
-keep class org.cloudburstmc.netty.** { *; }
-keep class org.cloudburstmc.protocol.** { *; }

# Keep MinecraftAuth classes
-keep class net.raphimc.minecraftauth.** { *; }

# Keep Netty classes
-keep class io.netty.** { *; }

# Keep JJWT
-keep class io.jsonwebtoken.** { *; }

# Keep Log4j
-keep class org.apache.logging.** { *; }

# General Android
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
