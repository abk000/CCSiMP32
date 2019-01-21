<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_12(4:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_18(31:0)" />
        <signal name="XLXN_19(31:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_22(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="XLXN_24(31:0)" />
        <signal name="XLXN_29(31:0)" />
        <signal name="XLXN_28(3:0)" />
        <signal name="XLXN_27(31:0)" />
        <signal name="XLXN_31(31:0)" />
        <signal name="XLXN_32(31:0)" />
        <signal name="XLXN_33(31:0)" />
        <signal name="XLXN_34(31:0)" />
        <signal name="Instr(31:0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38(31:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65(1:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_87" />
        <signal name="I_CLK" />
        <signal name="I_EN" />
        <signal name="Instr(15:0)" />
        <signal name="XLXN_92" />
        <signal name="Instr(20:16)" />
        <signal name="Instr(15:11)" />
        <signal name="Instr(25:21)" />
        <signal name="Instr(31:26)" />
        <signal name="Instr(25:0)" />
        <port polarity="Input" name="I_CLK" />
        <port polarity="Input" name="I_EN" />
        <blockdef name="DEC">
            <timestamp>2018-5-26T2:52:15</timestamp>
            <rect width="432" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-608" y2="-608" x1="496" />
            <line x2="560" y1="-544" y2="-544" x1="496" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <blockdef name="FSM">
            <timestamp>2018-5-26T2:52:30</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="ACU">
            <timestamp>2018-5-26T2:51:42</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2018-5-26T2:52:8</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="MUX5">
            <timestamp>2018-5-26T2:52:43</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2018-5-26T2:53:0</timestamp>
            <rect width="432" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-300" height="24" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
        </blockdef>
        <blockdef name="MUX32">
            <timestamp>2018-5-26T2:52:36</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="EXT">
            <timestamp>2018-5-26T2:52:23</timestamp>
            <rect width="352" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2018-5-26T2:52:52</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="ADD1">
            <timestamp>2018-5-26T2:51:51</timestamp>
            <rect width="384" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="ADD2">
            <timestamp>2018-5-26T2:52:1</timestamp>
            <rect width="384" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
        </blockdef>
        <blockdef name="ROM">
            <timestamp>2018-5-26T2:53:15</timestamp>
            <rect width="432" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2018-5-26T2:53:10</timestamp>
            <rect width="512" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="576" y="-364" height="24" />
            <line x2="640" y1="-352" y2="-352" x1="576" />
            <rect width="64" x="576" y="-44" height="24" />
            <line x2="640" y1="-32" y2="-32" x1="576" />
        </blockdef>
        <blockdef name="JUMP">
            <timestamp>2018-5-17T2:27:18</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="SHIFT2">
            <timestamp>2018-5-26T3:14:27</timestamp>
            <rect width="400" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="DEC" name="XLXI_21">
            <blockpin signalname="XLXN_67" name="I_DEC_EN" />
            <blockpin signalname="Instr(31:26)" name="I_DEC_Opcode(5:0)" />
            <blockpin signalname="XLXN_36" name="O_DEC_RegDst" />
            <blockpin signalname="XLXN_37" name="O_DEC_Jump" />
            <blockpin signalname="XLXN_40" name="O_DEC_Beq" />
            <blockpin signalname="XLXN_41" name="O_DEC_Bne" />
            <blockpin signalname="XLXN_46" name="O_DEC_MemRead" />
            <blockpin signalname="XLXN_47" name="O_DEC_MemtoReg" />
            <blockpin signalname="XLXN_48" name="O_DEC_MemWrite" />
            <blockpin signalname="XLXN_49" name="O_DEC_ALUSrc" />
            <blockpin signalname="XLXN_63" name="O_DEC_RegWrite" />
            <blockpin signalname="XLXN_65(1:0)" name="O_DEC_ALUOp(1:0)" />
        </block>
        <block symbolname="FSM" name="XLXI_22">
            <blockpin signalname="I_CLK" name="I_FSM_CLK" />
            <blockpin signalname="I_EN" name="I_FSM_EN" />
            <blockpin signalname="Instr(31:0)" name="I_FSM_INST(31:0)" />
            <blockpin signalname="XLXN_84" name="O_FSM_IF" />
            <blockpin signalname="XLXN_67" name="O_FSM_ID" />
            <blockpin signalname="XLXN_75" name="O_FSM_EX" />
            <blockpin signalname="XLXN_85" name="O_FSM_ME" />
            <blockpin signalname="Instr(25:0)" name="O_FSM_WB" />
        </block>
        <block symbolname="EXT" name="XLXI_23">
            <blockpin signalname="Instr(15:0)" name="I_EXT_16(15:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="O_EXT_32(31:0)" />
        </block>
        <block symbolname="JUMP" name="XLXI_24">
            <blockpin signalname="Instr(25:0)" name="I_JUMP_26(25:0)" />
            <blockpin signalname="XLXN_18(31:0)" name="I_JUMP_PC(31:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="O_JUMP_32(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_26">
            <blockpin signalname="XLXN_45" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_18(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_24(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_27">
            <blockpin signalname="XLXN_47" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_34(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_33(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_28">
            <blockpin signalname="XLXN_37" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_39(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="Instr(25:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_29">
            <blockpin signalname="XLXN_85" name="I_PC_UPDATE" />
            <blockpin signalname="Instr(25:0)" name="I_PC(31:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="O_PC(31:0)" />
        </block>
        <block symbolname="RAM" name="XLXI_30">
            <blockpin signalname="XLXN_85" name="I_RAM_EN" />
            <blockpin signalname="XLXN_46" name="I_RAM_RE" />
            <blockpin signalname="XLXN_48" name="I_RAM_WE" />
            <blockpin signalname="XLXN_34(31:0)" name="I_RAM_ADDR(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="I_RAM_DATA(31:0)" />
            <blockpin signalname="XLXN_33(31:0)" name="O_RAM_DATA(31:0)" />
        </block>
        <block symbolname="REG" name="XLXI_31">
            <blockpin signalname="XLXN_77" name="I_REG_EN" />
            <blockpin signalname="XLXN_83" name="I_REG_WE" />
            <blockpin signalname="Instr(25:21)" name="I_REG_SELECT_RS(4:0)" />
            <blockpin signalname="Instr(20:16)" name="I_REG_SELECT_RT(4:0)" />
            <blockpin signalname="XLXN_12(4:0)" name="I_REG_SELECT_RD(4:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="I_REG_DATA_RD(31:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="O_REG_DATA_A(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="O_REG_DATA_B(31:0)" />
        </block>
        <block symbolname="ROM" name="XLXI_32">
            <blockpin signalname="XLXN_84" name="I_ROM_EN" />
            <blockpin signalname="XLXN_13(31:0)" name="I_ROM_ADDR(31:0)" />
            <blockpin signalname="Instr(31:0)" name="O_ROM_DATA(31:0)" />
        </block>
        <block symbolname="SHIFT2" name="XLXI_34">
            <blockpin signalname="XLXN_21(31:0)" name="I_SHIFT_32(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="O_SHIFT_32(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_36">
            <blockpin signalname="XLXN_75" name="I_ALU_EN" />
            <blockpin signalname="XLXN_28(3:0)" name="I_ALU_CTL(3:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="I_ALU_A(31:0)" />
            <blockpin signalname="XLXN_27(31:0)" name="I_ALU_B(31:0)" />
            <blockpin signalname="XLXN_87" name="O_ALU_Zero" />
            <blockpin signalname="XLXN_34(31:0)" name="O_ALU_Out(31:0)" />
        </block>
        <block symbolname="ADD1" name="XLXI_37">
            <blockpin signalname="XLXN_13(31:0)" name="I_ADD1_A(31:0)" />
            <blockpin signalname="XLXN_18(31:0)" name="O_ADD1_Out(31:0)" />
        </block>
        <block symbolname="ADD2" name="XLXI_38">
            <blockpin signalname="XLXN_18(31:0)" name="I_ADD2_A(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="I_ADD2_B(31:0)" />
            <blockpin signalname="XLXN_24(31:0)" name="O_ADD2_Out(31:0)" />
        </block>
        <block symbolname="MUX5" name="XLXI_39">
            <blockpin signalname="XLXN_36" name="I_MUX_Sel" />
            <blockpin signalname="Instr(20:16)" name="I_MUX_0(4:0)" />
            <blockpin signalname="Instr(15:11)" name="I_MUX_1(4:0)" />
            <blockpin signalname="XLXN_12(4:0)" name="O_MUX_Out(4:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_25">
            <blockpin signalname="XLXN_49" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_31(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_27(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="ACU" name="XLXI_35">
            <blockpin signalname="XLXN_65(1:0)" name="I_ACU_ALUOp(1:0)" />
            <blockpin name="I_ACU_Funct(5:0)" />
            <blockpin signalname="XLXN_28(3:0)" name="O_ACU_CTL(3:0)" />
        </block>
        <block symbolname="and2" name="XLXI_42">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="XLXN_87" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_45">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_46">
            <blockpin signalname="Instr(25:0)" name="I0" />
            <blockpin signalname="XLXN_67" name="I1" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="XLXN_63" name="I0" />
            <blockpin signalname="Instr(25:0)" name="I1" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="176" y="1200" name="XLXI_29" orien="R0">
        </instance>
        <instance x="160" y="2176" name="XLXI_32" orien="R0">
        </instance>
        <instance x="1504" y="1056" name="XLXI_36" orien="R0">
        </instance>
        <instance x="736" y="1888" name="XLXI_31" orien="R0">
        </instance>
        <instance x="912" y="2144" name="XLXI_23" orien="R0">
        </instance>
        <instance x="2448" y="1792" name="XLXI_30" orien="R0">
        </instance>
        <instance x="1872" y="432" name="XLXI_26" orien="R0">
        </instance>
        <instance x="2560" y="304" name="XLXI_28" orien="R0">
        </instance>
        <instance x="2512" y="624" name="XLXI_24" orien="R0">
        </instance>
        <instance x="112" y="944" name="XLXI_37" orien="R0">
        </instance>
        <instance x="240" y="432" name="XLXI_22" orien="R0">
        </instance>
        <instance x="1024" y="688" name="XLXI_34" orien="R0">
        </instance>
        <instance x="1072" y="528" name="XLXI_38" orien="R0">
        </instance>
        <line x2="736" y1="1788" y2="1792" x1="732" />
        <branch name="XLXN_12(4:0)">
            <wire x2="720" y1="1744" y2="1744" x1="624" />
            <wire x2="720" y1="1744" y2="1792" x1="720" />
            <wire x2="736" y1="1792" y2="1792" x1="720" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="80" y1="1088" y2="1088" x1="16" />
            <wire x2="16" y1="1088" y2="2144" x1="16" />
            <wire x2="160" y1="2144" y2="2144" x1="16" />
            <wire x2="112" y1="912" y2="912" x1="32" />
            <wire x2="32" y1="912" y2="1024" x1="32" />
            <wire x2="80" y1="1024" y2="1024" x1="32" />
            <wire x2="672" y1="1024" y2="1024" x1="80" />
            <wire x2="672" y1="1024" y2="1104" x1="672" />
            <wire x2="80" y1="1024" y2="1088" x1="80" />
            <wire x2="672" y1="1104" y2="1104" x1="608" />
        </branch>
        <branch name="XLXN_18(31:0)">
            <wire x2="688" y1="912" y2="912" x1="624" />
            <wire x2="688" y1="592" y2="912" x1="688" />
            <wire x2="880" y1="592" y2="592" x1="688" />
            <wire x2="1744" y1="592" y2="592" x1="880" />
            <wire x2="2512" y1="592" y2="592" x1="1744" />
            <wire x2="1072" y1="432" y2="432" x1="880" />
            <wire x2="880" y1="432" y2="592" x1="880" />
            <wire x2="1872" y1="336" y2="336" x1="1744" />
            <wire x2="1744" y1="336" y2="592" x1="1744" />
        </branch>
        <branch name="XLXN_22(31:0)">
            <wire x2="1072" y1="496" y2="496" x1="992" />
            <wire x2="992" y1="496" y2="608" x1="992" />
            <wire x2="1568" y1="608" y2="608" x1="992" />
            <wire x2="1568" y1="608" y2="656" x1="1568" />
            <wire x2="1568" y1="656" y2="656" x1="1552" />
        </branch>
        <branch name="XLXN_24(31:0)">
            <wire x2="1728" y1="432" y2="432" x1="1584" />
            <wire x2="1728" y1="400" y2="432" x1="1728" />
            <wire x2="1872" y1="400" y2="400" x1="1728" />
        </branch>
        <branch name="XLXN_29(31:0)">
            <wire x2="1408" y1="1536" y2="1536" x1="1376" />
            <wire x2="1408" y1="960" y2="1536" x1="1408" />
            <wire x2="1504" y1="960" y2="960" x1="1408" />
        </branch>
        <instance x="1680" y="1648" name="XLXI_25" orien="R0">
        </instance>
        <instance x="1472" y="1280" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_28(3:0)">
            <wire x2="1504" y1="896" y2="896" x1="1440" />
            <wire x2="1440" y1="896" y2="1120" x1="1440" />
            <wire x2="2064" y1="1120" y2="1120" x1="1440" />
            <wire x2="2064" y1="1120" y2="1184" x1="2064" />
            <wire x2="2064" y1="1184" y2="1184" x1="2000" />
        </branch>
        <branch name="XLXN_27(31:0)">
            <wire x2="1504" y1="1024" y2="1024" x1="1424" />
            <wire x2="1424" y1="1024" y2="1104" x1="1424" />
            <wire x2="2256" y1="1104" y2="1104" x1="1424" />
            <wire x2="2256" y1="1104" y2="1488" x1="2256" />
            <wire x2="2256" y1="1488" y2="1488" x1="2176" />
        </branch>
        <branch name="XLXN_31(31:0)">
            <wire x2="1440" y1="1856" y2="1856" x1="1376" />
            <wire x2="1680" y1="1552" y2="1552" x1="1440" />
            <wire x2="1440" y1="1552" y2="1760" x1="1440" />
            <wire x2="1440" y1="1760" y2="1856" x1="1440" />
            <wire x2="2448" y1="1760" y2="1760" x1="1440" />
        </branch>
        <instance x="2416" y="2128" name="XLXI_27" orien="M0">
        </instance>
        <branch name="XLXN_32(31:0)">
            <wire x2="736" y1="1856" y2="1856" x1="688" />
            <wire x2="688" y1="1856" y2="1968" x1="688" />
            <wire x2="1920" y1="1968" y2="1968" x1="688" />
        </branch>
        <branch name="XLXN_33(31:0)">
            <wire x2="3088" y1="2096" y2="2096" x1="2416" />
            <wire x2="3088" y1="1504" y2="1504" x1="3008" />
            <wire x2="3088" y1="1504" y2="2096" x1="3088" />
        </branch>
        <branch name="XLXN_34(31:0)">
            <wire x2="2368" y1="1024" y2="1024" x1="2000" />
            <wire x2="2368" y1="1024" y2="1696" x1="2368" />
            <wire x2="2368" y1="1696" y2="1872" x1="2368" />
            <wire x2="2496" y1="1872" y2="1872" x1="2368" />
            <wire x2="2496" y1="1872" y2="2032" x1="2496" />
            <wire x2="2448" y1="1696" y2="1696" x1="2368" />
            <wire x2="2496" y1="2032" y2="2032" x1="2416" />
        </branch>
        <branch name="Instr(31:0)">
            <wire x2="768" y1="2080" y2="2080" x1="720" />
            <wire x2="768" y1="2080" y2="2144" x1="768" />
        </branch>
        <branch name="XLXN_38(31:0)">
            <wire x2="2480" y1="48" y2="272" x1="2480" />
            <wire x2="2560" y1="272" y2="272" x1="2480" />
            <wire x2="3136" y1="48" y2="48" x1="2480" />
            <wire x2="3136" y1="48" y2="528" x1="3136" />
            <wire x2="3136" y1="528" y2="528" x1="3040" />
        </branch>
        <branch name="XLXN_39(31:0)">
            <wire x2="2464" y1="272" y2="272" x1="2368" />
            <wire x2="2464" y1="208" y2="272" x1="2464" />
            <wire x2="2560" y1="208" y2="208" x1="2464" />
        </branch>
        <instance x="2144" y="784" name="XLXI_42" orien="R0" />
        <instance x="2160" y="928" name="XLXI_43" orien="R0" />
        <instance x="1632" y="736" name="XLXI_44" orien="R0" />
        <branch name="XLXN_42">
            <wire x2="2016" y1="704" y2="704" x1="1856" />
            <wire x2="2016" y1="704" y2="800" x1="2016" />
            <wire x2="2160" y1="800" y2="800" x1="2016" />
        </branch>
        <instance x="2112" y="608" name="XLXI_45" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="2112" y1="480" y2="480" x1="2048" />
            <wire x2="2048" y1="480" y2="624" x1="2048" />
            <wire x2="2464" y1="624" y2="624" x1="2048" />
            <wire x2="2464" y1="624" y2="688" x1="2464" />
            <wire x2="2464" y1="688" y2="688" x1="2400" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="2112" y1="544" y2="544" x1="2064" />
            <wire x2="2064" y1="544" y2="608" x1="2064" />
            <wire x2="2480" y1="608" y2="608" x1="2064" />
            <wire x2="2480" y1="608" y2="832" x1="2480" />
            <wire x2="2480" y1="832" y2="832" x1="2416" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1872" y1="272" y2="272" x1="1792" />
            <wire x2="1792" y1="272" y2="448" x1="1792" />
            <wire x2="2432" y1="448" y2="448" x1="1792" />
            <wire x2="2432" y1="448" y2="512" x1="2432" />
            <wire x2="2432" y1="512" y2="512" x1="2368" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1664" y1="1296" y2="1296" x1="1296" />
            <wire x2="1664" y1="1296" y2="1488" x1="1664" />
            <wire x2="1680" y1="1488" y2="1488" x1="1664" />
        </branch>
        <instance x="1568" y="2128" name="XLXI_47" orien="R0" />
        <instance x="1632" y="1952" name="XLXI_46" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="1312" y1="1360" y2="1360" x1="1296" />
            <wire x2="1520" y1="1312" y2="1312" x1="1312" />
            <wire x2="1520" y1="1312" y2="2064" x1="1520" />
            <wire x2="1568" y1="2064" y2="2064" x1="1520" />
            <wire x2="1312" y1="1312" y2="1360" x1="1312" />
        </branch>
        <branch name="Instr(25:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1632" type="branch" />
            <wire x2="768" y1="400" y2="400" x1="704" />
            <wire x2="768" y1="400" y2="496" x1="768" />
            <wire x2="768" y1="496" y2="496" x1="704" />
            <wire x2="704" y1="496" y2="1632" x1="704" />
            <wire x2="704" y1="1632" y2="2000" x1="704" />
            <wire x2="1328" y1="2000" y2="2000" x1="704" />
            <wire x2="1568" y1="2000" y2="2000" x1="1328" />
            <wire x2="1328" y1="1984" y2="2000" x1="1328" />
            <wire x2="1440" y1="1984" y2="1984" x1="1328" />
            <wire x2="1440" y1="1888" y2="1984" x1="1440" />
            <wire x2="1632" y1="1888" y2="1888" x1="1440" />
        </branch>
        <branch name="XLXN_65(1:0)">
            <wire x2="1344" y1="1424" y2="1424" x1="1296" />
            <wire x2="1344" y1="1184" y2="1424" x1="1344" />
            <wire x2="1472" y1="1184" y2="1184" x1="1344" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="720" y1="208" y2="208" x1="704" />
            <wire x2="720" y1="208" y2="240" x1="720" />
            <wire x2="784" y1="240" y2="240" x1="720" />
            <wire x2="784" y1="240" y2="704" x1="784" />
            <wire x2="1392" y1="704" y2="704" x1="784" />
            <wire x2="1392" y1="704" y2="1824" x1="1392" />
            <wire x2="1632" y1="1824" y2="1824" x1="1392" />
            <wire x2="720" y1="240" y2="848" x1="720" />
            <wire x2="736" y1="848" y2="848" x1="720" />
        </branch>
        <branch name="XLXN_21(31:0)">
            <wire x2="1024" y1="656" y2="656" x1="944" />
            <wire x2="944" y1="656" y2="752" x1="944" />
            <wire x2="1456" y1="752" y2="752" x1="944" />
            <wire x2="1456" y1="752" y2="1616" x1="1456" />
            <wire x2="1456" y1="1616" y2="2112" x1="1456" />
            <wire x2="1680" y1="1616" y2="1616" x1="1456" />
            <wire x2="1456" y1="2112" y2="2112" x1="1392" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1360" y1="1232" y2="1232" x1="1296" />
            <wire x2="1360" y1="1232" y2="1344" x1="1360" />
            <wire x2="2208" y1="1344" y2="1344" x1="1360" />
            <wire x2="2208" y1="1344" y2="1632" x1="2208" />
            <wire x2="2448" y1="1632" y2="1632" x1="2208" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1424" y1="1168" y2="1168" x1="1296" />
            <wire x2="1424" y1="1168" y2="1728" x1="1424" />
            <wire x2="2432" y1="1728" y2="1728" x1="1424" />
            <wire x2="2432" y1="1728" y2="1968" x1="2432" />
            <wire x2="2432" y1="1968" y2="1968" x1="2416" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1360" y1="1104" y2="1104" x1="1296" />
            <wire x2="1360" y1="1104" y2="1136" x1="1360" />
            <wire x2="2432" y1="1136" y2="1136" x1="1360" />
            <wire x2="2432" y1="1136" y2="1568" x1="2432" />
            <wire x2="2448" y1="1568" y2="1568" x1="2432" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1328" y1="1040" y2="1040" x1="1296" />
            <wire x2="1328" y1="1040" y2="1360" x1="1328" />
            <wire x2="2144" y1="1360" y2="1360" x1="1328" />
            <wire x2="2160" y1="864" y2="864" x1="2144" />
            <wire x2="2144" y1="864" y2="1360" x1="2144" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1344" y1="976" y2="976" x1="1296" />
            <wire x2="1344" y1="976" y2="1088" x1="1344" />
            <wire x2="2128" y1="1088" y2="1088" x1="1344" />
            <wire x2="2144" y1="720" y2="720" x1="2128" />
            <wire x2="2128" y1="720" y2="1088" x1="2128" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1360" y1="912" y2="912" x1="1296" />
            <wire x2="1360" y1="912" y2="1072" x1="1360" />
            <wire x2="2448" y1="1072" y2="1072" x1="1360" />
            <wire x2="2448" y1="144" y2="1072" x1="2448" />
            <wire x2="2560" y1="144" y2="144" x1="2448" />
        </branch>
        <instance x="736" y="1456" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_75">
            <wire x2="736" y1="272" y2="272" x1="704" />
            <wire x2="736" y1="272" y2="720" x1="736" />
            <wire x2="1360" y1="720" y2="720" x1="736" />
            <wire x2="1360" y1="720" y2="832" x1="1360" />
            <wire x2="1504" y1="832" y2="832" x1="1360" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="736" y1="1536" y2="1536" x1="672" />
            <wire x2="672" y1="1536" y2="1920" x1="672" />
            <wire x2="1904" y1="1920" y2="1920" x1="672" />
            <wire x2="1904" y1="1856" y2="1856" x1="1888" />
            <wire x2="1904" y1="1856" y2="1920" x1="1904" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="736" y1="1600" y2="1600" x1="80" />
            <wire x2="80" y1="1600" y2="1936" x1="80" />
            <wire x2="1840" y1="1936" y2="1936" x1="80" />
            <wire x2="1840" y1="1936" y2="2032" x1="1840" />
            <wire x2="1840" y1="2032" y2="2032" x1="1824" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="48" y1="752" y2="2080" x1="48" />
            <wire x2="160" y1="2080" y2="2080" x1="48" />
            <wire x2="864" y1="752" y2="752" x1="48" />
            <wire x2="864" y1="144" y2="144" x1="704" />
            <wire x2="864" y1="144" y2="752" x1="864" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="96" y1="96" y2="1104" x1="96" />
            <wire x2="176" y1="1104" y2="1104" x1="96" />
            <wire x2="800" y1="96" y2="96" x1="96" />
            <wire x2="800" y1="96" y2="176" x1="800" />
            <wire x2="800" y1="176" y2="336" x1="800" />
            <wire x2="2496" y1="176" y2="176" x1="800" />
            <wire x2="2496" y1="176" y2="960" x1="2496" />
            <wire x2="800" y1="336" y2="336" x1="704" />
            <wire x2="2496" y1="960" y2="960" x1="2416" />
            <wire x2="2416" y1="960" y2="1504" x1="2416" />
            <wire x2="2448" y1="1504" y2="1504" x1="2416" />
        </branch>
        <branch name="Instr(25:0)">
            <wire x2="176" y1="1168" y2="1168" x1="96" />
            <wire x2="96" y1="1168" y2="1728" x1="96" />
            <wire x2="96" y1="1728" y2="2240" x1="96" />
            <wire x2="3120" y1="2240" y2="2240" x1="96" />
            <wire x2="3120" y1="144" y2="144" x1="3056" />
            <wire x2="3120" y1="144" y2="2240" x1="3120" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="1568" y1="704" y2="784" x1="1568" />
            <wire x2="2080" y1="784" y2="784" x1="1568" />
            <wire x2="2080" y1="784" y2="832" x1="2080" />
            <wire x2="1616" y1="704" y2="704" x1="1568" />
            <wire x2="1632" y1="704" y2="704" x1="1616" />
            <wire x2="2144" y1="656" y2="656" x1="1616" />
            <wire x2="1616" y1="656" y2="704" x1="1616" />
            <wire x2="2080" y1="832" y2="832" x1="2000" />
        </branch>
        <branch name="I_CLK">
            <wire x2="240" y1="144" y2="144" x1="128" />
        </branch>
        <branch name="I_EN">
            <wire x2="240" y1="272" y2="272" x1="144" />
        </branch>
        <iomarker fontsize="28" x="128" y="144" name="I_CLK" orien="R180" />
        <iomarker fontsize="28" x="144" y="272" name="I_EN" orien="R180" />
        <branch name="Instr(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="128" y="400" type="branch" />
            <wire x2="240" y1="400" y2="400" x1="128" />
        </branch>
        <branch name="Instr(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="2112" type="branch" />
            <wire x2="912" y1="2112" y2="2112" x1="848" />
        </branch>
        <branch name="Instr(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1664" type="branch" />
            <wire x2="736" y1="1664" y2="1664" x1="624" />
        </branch>
        <instance x="160" y="1904" name="XLXI_39" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="64" y1="768" y2="1744" x1="64" />
            <wire x2="160" y1="1744" y2="1744" x1="64" />
            <wire x2="1312" y1="768" y2="768" x1="64" />
            <wire x2="1312" y1="768" y2="848" x1="1312" />
            <wire x2="1312" y1="848" y2="848" x1="1296" />
        </branch>
        <branch name="Instr(20:16)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="128" y="1792" type="branch" />
            <wire x2="128" y1="1792" y2="1808" x1="128" />
            <wire x2="160" y1="1808" y2="1808" x1="128" />
        </branch>
        <branch name="Instr(15:11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="1872" type="branch" />
            <wire x2="160" y1="1872" y2="1872" x1="144" />
        </branch>
        <branch name="Instr(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1616" type="branch" />
            <wire x2="640" y1="1616" y2="1616" x1="560" />
            <wire x2="640" y1="1616" y2="1728" x1="640" />
            <wire x2="736" y1="1728" y2="1728" x1="640" />
        </branch>
        <branch name="Instr(31:26)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1440" type="branch" />
            <wire x2="736" y1="1424" y2="1424" x1="512" />
            <wire x2="512" y1="1424" y2="1440" x1="512" />
        </branch>
        <branch name="Instr(25:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="416" type="branch" />
            <wire x2="2464" y1="432" y2="528" x1="2464" />
            <wire x2="2512" y1="528" y2="528" x1="2464" />
            <wire x2="2528" y1="432" y2="432" x1="2464" />
            <wire x2="2528" y1="416" y2="432" x1="2528" />
        </branch>
    </sheet>
</drawing>