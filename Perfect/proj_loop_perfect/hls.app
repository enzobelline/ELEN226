<project xmlns="com.autoesl.autopilot.project" name="proj_loop_perfect" top="loop_perfect">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags=""/>
    </Simulation>
    <files xmlns="">
        <file name="../../loop_perfect_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../result.golden.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="loop_perfect.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="inactive"/>
        <solution name="solution3" status="inactive"/>
        <solution name="solution4" status="inactive"/>
        <solution name="solution5" status="inactive"/>
        <solution name="solution6" status="active"/>
    </solutions>
</project>

