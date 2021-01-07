<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B4" />
        <signal name="A4" />
        <signal name="S4" />
        <signal name="A3" />
        <signal name="B3" />
        <signal name="XLXN_63" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_59" />
        <signal name="A2" />
        <signal name="B2" />
        <signal name="XLXN_145" />
        <signal name="XLXN_146" />
        <signal name="XLXN_147" />
        <signal name="XLXN_148" />
        <signal name="A1" />
        <signal name="B1" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160" />
        <signal name="R" />
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <port polarity="Input" name="B4" />
        <port polarity="Input" name="A4" />
        <port polarity="Output" name="S4" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="B1" />
        <port polarity="Output" name="R" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S3" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_13">
            <blockpin signalname="A4" name="I0" />
            <blockpin signalname="B4" name="I1" />
            <blockpin signalname="S4" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_12">
            <blockpin signalname="A3" name="I0" />
            <blockpin signalname="B3" name="I1" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="A4" name="I0" />
            <blockpin signalname="B4" name="I1" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="A3" name="I0" />
            <blockpin signalname="B3" name="I1" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="XLXN_63" name="I0" />
            <blockpin signalname="XLXN_59" name="I1" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_41">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_148" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_35">
            <blockpin signalname="XLXN_59" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="S3" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_77">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_145" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_78">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_147" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_79">
            <blockpin signalname="XLXN_145" name="I0" />
            <blockpin signalname="XLXN_148" name="I1" />
            <blockpin signalname="XLXN_146" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_80">
            <blockpin signalname="XLXN_147" name="I0" />
            <blockpin signalname="XLXN_146" name="I1" />
            <blockpin signalname="XLXN_160" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_81">
            <blockpin signalname="XLXN_148" name="I0" />
            <blockpin signalname="XLXN_145" name="I1" />
            <blockpin signalname="S2" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_82">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="XLXN_157" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_83">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="XLXN_159" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_84">
            <blockpin signalname="XLXN_157" name="I0" />
            <blockpin signalname="XLXN_160" name="I1" />
            <blockpin signalname="XLXN_158" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_85">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="XLXN_158" name="I1" />
            <blockpin signalname="R" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_86">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="XLXN_157" name="I1" />
            <blockpin signalname="S1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="B4">
            <wire x2="1904" y1="352" y2="352" x1="1744" />
            <wire x2="1904" y1="352" y2="384" x1="1904" />
            <wire x2="1744" y1="352" y2="400" x1="1744" />
            <wire x2="1904" y1="240" y2="352" x1="1904" />
        </branch>
        <branch name="A4">
            <wire x2="1840" y1="288" y2="288" x1="1680" />
            <wire x2="1840" y1="288" y2="384" x1="1840" />
            <wire x2="1680" y1="288" y2="400" x1="1680" />
            <wire x2="1840" y1="240" y2="288" x1="1840" />
        </branch>
        <branch name="A3">
            <wire x2="1472" y1="288" y2="288" x1="1280" />
            <wire x2="1472" y1="288" y2="384" x1="1472" />
            <wire x2="1280" y1="288" y2="400" x1="1280" />
            <wire x2="1472" y1="240" y2="288" x1="1472" />
        </branch>
        <branch name="B3">
            <wire x2="1536" y1="352" y2="352" x1="1344" />
            <wire x2="1536" y1="352" y2="384" x1="1536" />
            <wire x2="1344" y1="352" y2="400" x1="1344" />
            <wire x2="1536" y1="240" y2="352" x1="1536" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1344" y1="1024" y2="1040" x1="1344" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1312" y1="672" y2="672" x1="1248" />
            <wire x2="1248" y1="672" y2="992" x1="1248" />
            <wire x2="1280" y1="992" y2="992" x1="1248" />
            <wire x2="1280" y1="992" y2="1040" x1="1280" />
            <wire x2="1312" y1="656" y2="672" x1="1312" />
        </branch>
        <instance x="1776" y="384" name="XLXI_13" orien="R90" />
        <instance x="1408" y="384" name="XLXI_12" orien="R90" />
        <instance x="1616" y="400" name="XLXI_24" orien="R90" />
        <instance x="1216" y="400" name="XLXI_23" orien="R90" />
        <instance x="1248" y="768" name="XLXI_39" orien="R90" />
        <instance x="1216" y="1040" name="XLXI_41" orien="R90" />
        <iomarker fontsize="28" x="1472" y="240" name="A3" orien="R270" />
        <iomarker fontsize="28" x="1536" y="240" name="B3" orien="R270" />
        <iomarker fontsize="28" x="1840" y="240" name="A4" orien="R270" />
        <iomarker fontsize="28" x="1904" y="240" name="B4" orien="R270" />
        <branch name="A2">
            <wire x2="960" y1="288" y2="288" x1="768" />
            <wire x2="960" y1="288" y2="384" x1="960" />
            <wire x2="768" y1="288" y2="400" x1="768" />
            <wire x2="960" y1="240" y2="288" x1="960" />
        </branch>
        <branch name="B2">
            <wire x2="1024" y1="352" y2="352" x1="832" />
            <wire x2="1024" y1="352" y2="384" x1="1024" />
            <wire x2="832" y1="352" y2="400" x1="832" />
            <wire x2="1024" y1="240" y2="352" x1="1024" />
        </branch>
        <branch name="XLXN_145">
            <wire x2="816" y1="704" y2="704" x1="800" />
            <wire x2="800" y1="704" y2="768" x1="800" />
            <wire x2="992" y1="656" y2="656" x1="816" />
            <wire x2="992" y1="656" y2="1024" x1="992" />
            <wire x2="816" y1="656" y2="704" x1="816" />
            <wire x2="992" y1="640" y2="656" x1="992" />
        </branch>
        <branch name="XLXN_146">
            <wire x2="832" y1="1024" y2="1040" x1="832" />
        </branch>
        <branch name="XLXN_147">
            <wire x2="800" y1="672" y2="672" x1="736" />
            <wire x2="736" y1="672" y2="992" x1="736" />
            <wire x2="768" y1="992" y2="992" x1="736" />
            <wire x2="768" y1="992" y2="1040" x1="768" />
            <wire x2="800" y1="656" y2="672" x1="800" />
        </branch>
        <instance x="896" y="384" name="XLXI_77" orien="R90" />
        <instance x="704" y="400" name="XLXI_78" orien="R90" />
        <instance x="736" y="768" name="XLXI_79" orien="R90" />
        <instance x="704" y="1040" name="XLXI_80" orien="R90" />
        <instance x="864" y="1024" name="XLXI_81" orien="R90" />
        <branch name="XLXN_148">
            <wire x2="864" y1="720" y2="768" x1="864" />
            <wire x2="928" y1="720" y2="720" x1="864" />
            <wire x2="928" y1="720" y2="1024" x1="928" />
            <wire x2="1120" y1="720" y2="720" x1="928" />
            <wire x2="1120" y1="720" y2="1376" x1="1120" />
            <wire x2="1312" y1="1376" y2="1376" x1="1120" />
            <wire x2="1312" y1="1296" y2="1376" x1="1312" />
        </branch>
        <branch name="A1">
            <wire x2="448" y1="288" y2="288" x1="256" />
            <wire x2="448" y1="288" y2="384" x1="448" />
            <wire x2="256" y1="288" y2="400" x1="256" />
            <wire x2="448" y1="240" y2="288" x1="448" />
        </branch>
        <branch name="B1">
            <wire x2="512" y1="352" y2="352" x1="320" />
            <wire x2="512" y1="352" y2="384" x1="512" />
            <wire x2="320" y1="352" y2="400" x1="320" />
            <wire x2="512" y1="240" y2="352" x1="512" />
        </branch>
        <branch name="XLXN_157">
            <wire x2="304" y1="704" y2="704" x1="288" />
            <wire x2="288" y1="704" y2="768" x1="288" />
            <wire x2="480" y1="656" y2="656" x1="304" />
            <wire x2="480" y1="656" y2="1024" x1="480" />
            <wire x2="304" y1="656" y2="704" x1="304" />
            <wire x2="480" y1="640" y2="656" x1="480" />
        </branch>
        <branch name="XLXN_158">
            <wire x2="320" y1="1024" y2="1040" x1="320" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="288" y1="672" y2="672" x1="224" />
            <wire x2="224" y1="672" y2="992" x1="224" />
            <wire x2="256" y1="992" y2="992" x1="224" />
            <wire x2="256" y1="992" y2="1040" x1="256" />
            <wire x2="288" y1="656" y2="672" x1="288" />
        </branch>
        <branch name="XLXN_160">
            <wire x2="352" y1="720" y2="768" x1="352" />
            <wire x2="416" y1="720" y2="720" x1="352" />
            <wire x2="416" y1="720" y2="1024" x1="416" />
            <wire x2="608" y1="720" y2="720" x1="416" />
            <wire x2="608" y1="720" y2="1376" x1="608" />
            <wire x2="800" y1="1376" y2="1376" x1="608" />
            <wire x2="800" y1="1296" y2="1376" x1="800" />
        </branch>
        <instance x="384" y="384" name="XLXI_82" orien="R90" />
        <instance x="192" y="400" name="XLXI_83" orien="R90" />
        <instance x="224" y="768" name="XLXI_84" orien="R90" />
        <instance x="192" y="1040" name="XLXI_85" orien="R90" />
        <instance x="352" y="1024" name="XLXI_86" orien="R90" />
        <branch name="S1">
            <wire x2="448" y1="1280" y2="1392" x1="448" />
            <wire x2="832" y1="1392" y2="1392" x1="448" />
            <wire x2="832" y1="1392" y2="1440" x1="832" />
        </branch>
        <branch name="S2">
            <wire x2="960" y1="1296" y2="1296" x1="896" />
            <wire x2="896" y1="1296" y2="1440" x1="896" />
            <wire x2="960" y1="1280" y2="1296" x1="960" />
        </branch>
        <branch name="S3">
            <wire x2="960" y1="1392" y2="1424" x1="960" />
            <wire x2="960" y1="1424" y2="1440" x1="960" />
            <wire x2="1472" y1="1392" y2="1392" x1="960" />
            <wire x2="1472" y1="1280" y2="1392" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="448" y="240" name="A1" orien="R270" />
        <iomarker fontsize="28" x="512" y="240" name="B1" orien="R270" />
        <iomarker fontsize="28" x="960" y="240" name="A2" orien="R270" />
        <iomarker fontsize="28" x="1024" y="240" name="B2" orien="R270" />
        <iomarker fontsize="28" x="832" y="1440" name="S1" orien="R90" />
        <iomarker fontsize="28" x="896" y="1440" name="S2" orien="R90" />
        <iomarker fontsize="28" x="960" y="1440" name="S3" orien="R90" />
        <branch name="S4">
            <wire x2="1872" y1="1424" y2="1424" x1="1024" />
            <wire x2="1024" y1="1424" y2="1440" x1="1024" />
            <wire x2="1872" y1="640" y2="1424" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1440" name="S4" orien="R90" />
        <iomarker fontsize="28" x="720" y="1440" name="R" orien="R90" />
        <branch name="R">
            <wire x2="288" y1="1296" y2="1424" x1="288" />
            <wire x2="720" y1="1424" y2="1424" x1="288" />
            <wire x2="720" y1="1424" y2="1440" x1="720" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="1328" y1="704" y2="704" x1="1312" />
            <wire x2="1312" y1="704" y2="768" x1="1312" />
            <wire x2="1504" y1="656" y2="656" x1="1328" />
            <wire x2="1504" y1="656" y2="1024" x1="1504" />
            <wire x2="1328" y1="656" y2="704" x1="1328" />
            <wire x2="1504" y1="640" y2="656" x1="1504" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1376" y1="720" y2="768" x1="1376" />
            <wire x2="1440" y1="720" y2="720" x1="1376" />
            <wire x2="1712" y1="720" y2="720" x1="1440" />
            <wire x2="1440" y1="720" y2="1024" x1="1440" />
            <wire x2="1712" y1="656" y2="720" x1="1712" />
        </branch>
        <instance x="1376" y="1024" name="XLXI_35" orien="R90" />
    </sheet>
</drawing>