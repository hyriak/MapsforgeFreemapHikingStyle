# MapsforgeFreemapHikingStyle
Custom style for Locus Map

## Installation

1. Compile the style:
```
xsltproc freemap_slovakia.xslt > freemap_slovakia.xml
```
2. Put `freemap_slovakia` directory to `Locus/mapsVector/_themes`

## Developing

To quickly see theme changes run:
```
xsltproc freemap_slovakia.xslt > freemap_slovakia.xml && adb push freemap_slovakia.xml /sdcard/Locus/mapsVector/_themes/freemap_slovakia/freemap_slovakia.xml
```

Then re-select the theme in Locus.
