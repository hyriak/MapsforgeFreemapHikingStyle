<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="natural_ways">
        <rule e="way" k="natural" v="*">
            <rule e="way" k="natural" v="coastline">
                <rule e="way" k="*" v="*" closed="no">
                    <line stroke="#708599" stroke-width="2.0dp"/>
                </rule>
                <rule e="way" k="*" v="*" closed="yes">
                    <area fill="#b5d6f1" stroke="#b5d6f1" stroke-width="0.4dp"/>
                </rule>
            </rule>
            <rule e="way" k="natural" v="glacier">
                <area fill="#fafaff" stroke="#add8e6" stroke-width="0.8dp"/>
            </rule>
            <rule e="way" k="natural" v="land">
                <area fill="#f8f8f8" stroke="#e0e0e0" stroke-width="0.1dp"/>
            </rule>
            <rule e="way" k="natural" v="beach">
                <area fill="#eecc55"/>
            </rule>
            <rule e="way" k="natural" v="heath">
                <area fill="#ffffc0" stroke="#ffff90" stroke-width="0.2dp"/>
            </rule>
            <rule e="way" k="natural" v="marsh|wetland">
                <area src="file:/patterns/marsh.png"/>
            </rule>
            <rule cat="topo_common" e="way" k="natural" v="cliff" zoom-min="14" zoom-max="16">
              <line stroke="#555555"  stroke-width="0.2dp"/>
              <line stroke="#555555"  dy="1dp" stroke-dasharray="2,10" stroke-width="0.4dp" stroke-linecap="butt"/>
            </rule>
            <rule cat="topo_common" e="way" k="natural" v="cliff" zoom-min="17">
              <line stroke="#555555"  stroke-width="0.18dp"/>
              <line stroke="#555555"  dy="1.8dp" stroke-dasharray="2,20" stroke-width="0.4dp" stroke-linecap="butt"/>
            </rule>
        </rule>
    </xsl:template>

    <xsl:template name="natural_nodes">
        <rule cat="topo_common" e="node" k="natural" v="*">
            <rule e="node" k="natural" v="cave_entrance" zoom-min="14">
                <symbol src="file:/symbols/cave_entrance.png" symbol-width="16dp"/>
                <rule e="node" k="*" v="*" zoom-min="16">
                    <caption k="name" dy="12dp" font-style="bold" font-family="serif" font-size="8dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                </rule>
            </rule>
            <rule e="node" k="natural" v="spring" zoom-min="14">
                <symbol src="file:/symbols/spring.svg" symbol-width="10dp"/>
                <rule e="node" k="*" v="*" zoom-min="16">
                    <caption k="name" dy="12dp" font-style="bold" font-size="10dp" fill="#0092da" stroke="#ffffff" stroke-width="2dp"/>
                </rule>
            </rule>
            <rule e="node" k="natural" v="peak" zoom-min="11">
                <symbol src="file:/symbols/peak.png" symbol-width="12dp" force-draw="1"/>
                <rule e="any" k="*" v="*" zoom-min="12">
                    <caption k="name" dy="-6dp" font-style="bold_italic" font-family="serif" font-size="8dp" scale-font-size="14,1.1" fill="#760000" stroke="#e9dca2" stroke-width="1.8dp"/>
                    <rule e="any" k="*" v="*" zoom-min="15">
                        <caption k="ele" dy="12dp" font-style="italic" font-size="9dp" scale-font-size="16,1.1" fill="#000000" stroke="#ffffff" stroke-width="1.4dp"/>
                    </rule>
                </rule>
            </rule>
            <rule e="node" k="natural" v="tree" zoom-min="16">
                <symbol src="file:/symbols/tree.png"/>
                <rule e="node" k="*" v="*" zoom-min="17">
                    <caption k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                </rule>
            </rule>
            <rule e="node" k="natural" v="volcano" zoom-min="12">
                <symbol src="file:/symbols/vulcan.png"/>
                <rule e="node" k="*" v="*" zoom-min="17">
                    <caption k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                </rule>
            </rule>
        </rule>
        <rule e="node" k="waterway" v="waterfall" zoom-min="14">
          <symbol src="file:/symbols/waterfall.svg" symbol-width="12dp"/>
          <caption k="name" dy="+12dp" font-style="bold_italic" font-family="serif" font-size="6dp" scale-font-size="16,1.1" fill="#4040ff" stroke="#ffffff" stroke-width="1.8dp"/>
        </rule>
        <rule cat="topo_common" e="node" k="amenity" v="hunting_stand" zoom-min="14">
            <symbol src="file:/symbols/hunting_stand.svg" symbol-width="14dp"/>
        </rule>
        <rule e="node" k="man_made" v="mast" zoom-min="14">
            <symbol src="file:/symbols/tower_comm.svg" symbol-width="14dp"/>
        </rule>
        <rule e="node" k="man_made" v="tower" zoom-min="14">
            <rule e="node" k="tower:type" v="communication">
                <symbol src="file:/symbols/tower_comm.svg" symbol-width="14dp"/>
            </rule>
            <rule e="node" k="tower:type" v="observation" zoom-min="14">
                <symbol src="file:/symbols/tower_obs.svg" symbol-width="14dp"/>
            </rule>
        </rule>
    </xsl:template>

</xsl:stylesheet>
