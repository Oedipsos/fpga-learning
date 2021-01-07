<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X" />
        <signal name="XLXN_2" />
        <signal name="XLXN_6" />
        <signal name="Clk" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="S" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <port polarity="Input" name="X" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="S" />
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="and3b2" name="XLXI_2">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="X" name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="X" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_8">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="XLXN_11" name="D" />
            <blockpin signalname="S" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_11">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="XLXN_16" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="944" name="XLXI_2" orien="R90" />
        <instance x="1472" y="1296" name="XLXI_6" orien="R0" />
        <instance x="1728" y="928" name="XLXI_8" orien="R180" />
        <instance x="928" y="1664" name="XLXI_10" orien="R0" />
        <instance x="1456" y="1664" name="XLXI_11" orien="R0" />
        <branch name="X">
            <wire x2="720" y1="880" y2="880" x1="560" />
            <wire x2="960" y1="880" y2="880" x1="720" />
            <wire x2="960" y1="880" y2="944" x1="960" />
            <wire x2="720" y1="880" y2="1232" x1="720" />
            <wire x2="1472" y1="1232" y2="1232" x1="720" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1472" y1="1024" y2="1024" x1="1456" />
            <wire x2="1456" y1="1024" y2="1168" x1="1456" />
            <wire x2="1472" y1="1168" y2="1168" x1="1456" />
        </branch>
        <branch name="Clk">
            <wire x2="880" y1="1680" y2="1680" x1="624" />
            <wire x2="1440" y1="1680" y2="1680" x1="880" />
            <wire x2="928" y1="1536" y2="1536" x1="880" />
            <wire x2="880" y1="1536" y2="1680" x1="880" />
            <wire x2="1456" y1="1536" y2="1536" x1="1440" />
            <wire x2="1440" y1="1536" y2="1680" x1="1440" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="896" y1="1200" y2="1408" x1="896" />
            <wire x2="928" y1="1408" y2="1408" x1="896" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1808" y1="1280" y2="1280" x1="1392" />
            <wire x2="1392" y1="1280" y2="1408" x1="1392" />
            <wire x2="1456" y1="1408" y2="1408" x1="1392" />
            <wire x2="1808" y1="1200" y2="1200" x1="1728" />
            <wire x2="1808" y1="1200" y2="1280" x1="1808" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="896" y1="864" y2="944" x1="896" />
            <wire x2="1872" y1="864" y2="864" x1="896" />
            <wire x2="1872" y1="864" y2="1056" x1="1872" />
            <wire x2="1872" y1="1056" y2="1408" x1="1872" />
            <wire x2="1872" y1="1056" y2="1056" x1="1728" />
            <wire x2="1872" y1="1408" y2="1408" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="560" y="880" name="X" orien="R180" />
        <iomarker fontsize="28" x="624" y="1680" name="Clk" orien="R180" />
        <branch name="S">
            <wire x2="832" y1="800" y2="944" x1="832" />
            <wire x2="1360" y1="800" y2="800" x1="832" />
            <wire x2="1360" y1="800" y2="1408" x1="1360" />
            <wire x2="2048" y1="800" y2="800" x1="1360" />
            <wire x2="2048" y1="800" y2="992" x1="2048" />
            <wire x2="2176" y1="800" y2="800" x1="2048" />
            <wire x2="1360" y1="1408" y2="1408" x1="1312" />
            <wire x2="2048" y1="992" y2="992" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="2176" y="800" name="S" orien="R0" />
    </sheet>
</drawing>