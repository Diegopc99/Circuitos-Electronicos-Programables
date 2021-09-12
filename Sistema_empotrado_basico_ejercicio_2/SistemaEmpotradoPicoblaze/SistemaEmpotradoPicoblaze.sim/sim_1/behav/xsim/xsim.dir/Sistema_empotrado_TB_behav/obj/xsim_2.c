/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_2389(char*, char *);
extern void execute_2390(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_38(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_40(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_75(char*, char *);
extern void execute_77(char*, char *);
extern void execute_79(char*, char *);
extern void execute_89(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_96(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_121(char*, char *);
extern void execute_118(char*, char *);
extern void execute_123(char*, char *);
extern void execute_127(char*, char *);
extern void execute_129(char*, char *);
extern void execute_177(char*, char *);
extern void execute_589(char*, char *);
extern void execute_729(char*, char *);
extern void execute_730(char*, char *);
extern void execute_1529(char*, char *);
extern void execute_285(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_297(char*, char *);
extern void execute_146(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_232(char*, char *);
extern void execute_241(char*, char *);
extern void execute_603(char*, char *);
extern void execute_604(char*, char *);
extern void execute_605(char*, char *);
extern void execute_606(char*, char *);
extern void execute_607(char*, char *);
extern void execute_608(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_612(char*, char *);
extern void execute_744(char*, char *);
extern void execute_745(char*, char *);
extern void execute_746(char*, char *);
extern void execute_747(char*, char *);
extern void execute_748(char*, char *);
extern void execute_749(char*, char *);
extern void execute_750(char*, char *);
extern void execute_861(char*, char *);
extern void execute_1066(char*, char *);
extern void execute_1055(char*, char *);
extern void execute_1177(char*, char *);
extern void execute_1205(char*, char *);
extern void execute_942(char*, char *);
extern void execute_1314(char*, char *);
extern void execute_1315(char*, char *);
extern void execute_1316(char*, char *);
extern void execute_1317(char*, char *);
extern void execute_1318(char*, char *);
extern void execute_1319(char*, char *);
extern void execute_1320(char*, char *);
extern void execute_1463(char*, char *);
extern void execute_1479(char*, char *);
extern void execute_143(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_166(char*, char *);
extern void execute_190(char*, char *);
extern void execute_193(char*, char *);
extern void execute_200(char*, char *);
extern void execute_203(char*, char *);
extern void execute_206(char*, char *);
extern void execute_209(char*, char *);
extern void execute_212(char*, char *);
extern void execute_214(char*, char *);
extern void execute_217(char*, char *);
extern void execute_224(char*, char *);
extern void execute_227(char*, char *);
extern void execute_237(char*, char *);
extern void execute_248(char*, char *);
extern void execute_258(char*, char *);
extern void execute_261(char*, char *);
extern void execute_263(char*, char *);
extern void execute_265(char*, char *);
extern void execute_281(char*, char *);
extern void execute_592(char*, char *);
extern void execute_733(char*, char *);
extern void execute_741(char*, char *);
extern void execute_857(char*, char *);
extern void execute_1050(char*, char *);
extern void execute_1196(char*, char *);
extern void execute_1293(char*, char *);
extern void execute_1296(char*, char *);
extern void execute_1304(char*, char *);
extern void execute_1532(char*, char *);
extern void execute_1533(char*, char *);
extern void execute_1534(char*, char *);
extern void execute_1535(char*, char *);
extern void execute_1536(char*, char *);
extern void execute_1537(char*, char *);
extern void execute_1538(char*, char *);
extern void execute_1539(char*, char *);
extern void execute_1540(char*, char *);
extern void execute_1542(char*, char *);
extern void execute_1543(char*, char *);
extern void execute_1544(char*, char *);
extern void execute_1545(char*, char *);
extern void execute_1546(char*, char *);
extern void execute_1547(char*, char *);
extern void execute_1548(char*, char *);
extern void execute_1549(char*, char *);
extern void execute_1550(char*, char *);
extern void execute_1551(char*, char *);
extern void execute_1552(char*, char *);
extern void execute_1553(char*, char *);
extern void execute_1554(char*, char *);
extern void execute_1555(char*, char *);
extern void execute_1556(char*, char *);
extern void execute_1557(char*, char *);
extern void execute_1558(char*, char *);
extern void execute_1559(char*, char *);
extern void execute_1646(char*, char *);
extern void execute_1610(char*, char *);
extern void execute_1611(char*, char *);
extern void execute_1612(char*, char *);
extern void execute_1613(char*, char *);
extern void execute_1614(char*, char *);
extern void execute_1615(char*, char *);
extern void execute_1616(char*, char *);
extern void execute_1617(char*, char *);
extern void execute_1618(char*, char *);
extern void execute_1619(char*, char *);
extern void execute_1620(char*, char *);
extern void execute_1621(char*, char *);
extern void execute_1622(char*, char *);
extern void execute_1623(char*, char *);
extern void execute_1624(char*, char *);
extern void execute_1625(char*, char *);
extern void execute_1626(char*, char *);
extern void execute_1627(char*, char *);
extern void execute_1628(char*, char *);
extern void execute_1629(char*, char *);
extern void execute_1630(char*, char *);
extern void execute_1631(char*, char *);
extern void execute_1632(char*, char *);
extern void execute_1633(char*, char *);
extern void execute_1634(char*, char *);
extern void execute_1635(char*, char *);
extern void execute_1636(char*, char *);
extern void execute_1637(char*, char *);
extern void execute_1638(char*, char *);
extern void execute_1639(char*, char *);
extern void execute_1640(char*, char *);
extern void execute_1641(char*, char *);
extern void execute_1642(char*, char *);
extern void execute_1643(char*, char *);
extern void execute_1644(char*, char *);
extern void execute_1648(char*, char *);
extern void execute_1649(char*, char *);
extern void execute_1650(char*, char *);
extern void execute_1651(char*, char *);
extern void execute_1652(char*, char *);
extern void execute_1653(char*, char *);
extern void execute_1654(char*, char *);
extern void execute_1655(char*, char *);
extern void execute_1656(char*, char *);
extern void execute_1657(char*, char *);
extern void execute_1658(char*, char *);
extern void execute_1659(char*, char *);
extern void execute_1660(char*, char *);
extern void execute_1661(char*, char *);
extern void execute_1662(char*, char *);
extern void execute_1663(char*, char *);
extern void execute_1664(char*, char *);
extern void execute_1665(char*, char *);
extern void execute_1666(char*, char *);
extern void execute_1667(char*, char *);
extern void execute_1668(char*, char *);
extern void execute_1669(char*, char *);
extern void execute_1670(char*, char *);
extern void execute_1671(char*, char *);
extern void execute_1693(char*, char *);
extern void execute_1694(char*, char *);
extern void execute_1695(char*, char *);
extern void execute_1696(char*, char *);
extern void execute_1697(char*, char *);
extern void execute_1698(char*, char *);
extern void execute_1699(char*, char *);
extern void execute_1700(char*, char *);
extern void execute_1701(char*, char *);
extern void execute_1702(char*, char *);
extern void execute_1703(char*, char *);
extern void execute_1704(char*, char *);
extern void execute_1705(char*, char *);
extern void execute_1706(char*, char *);
extern void execute_1707(char*, char *);
extern void execute_1708(char*, char *);
extern void execute_1709(char*, char *);
extern void execute_1710(char*, char *);
extern void execute_1711(char*, char *);
extern void execute_1717(char*, char *);
extern void execute_1740(char*, char *);
extern void execute_1741(char*, char *);
extern void execute_1743(char*, char *);
extern void execute_1799(char*, char *);
extern void execute_1802(char*, char *);
extern void execute_1810(char*, char *);
extern void execute_1818(char*, char *);
extern void execute_1825(char*, char *);
extern void execute_1826(char*, char *);
extern void execute_1827(char*, char *);
extern void execute_1828(char*, char *);
extern void execute_1836(char*, char *);
extern void execute_1975(char*, char *);
extern void execute_1976(char*, char *);
extern void execute_1977(char*, char *);
extern void execute_1906(char*, char *);
extern void execute_1966(char*, char *);
extern void execute_1974(char*, char *);
extern void execute_2095(char*, char *);
extern void execute_2118(char*, char *);
extern void execute_2126(char*, char *);
extern void execute_2387(char*, char *);
extern void execute_2388(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_382(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_431(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_478(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_497(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_516(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_573(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_592(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_611(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_649(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_677(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_687(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_754(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_769(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_777(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_784(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_792(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_799(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_807(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_814(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_829(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_837(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_844(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_859(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_867(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_875(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_883(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_891(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_899(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_907(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_915(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_923(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_931(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_940(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_948(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_956(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_964(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_972(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_980(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_988(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_996(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1004(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1014(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1022(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1030(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1038(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1046(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1054(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1070(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1078(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1087(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1095(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1260(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1276(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1283(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1290(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1324(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1326(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1327(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1329(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1377(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1386(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1410(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1412(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1413(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1414(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1429(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1431(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1432(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1435(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1499(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1513(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1528(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1536(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1550(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1555(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1563(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1572(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1587(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1590(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1593(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1596(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1599(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1602(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1605(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1608(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1612(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1619(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1626(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1633(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1641(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1675(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1684(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1714(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1724(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1729(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1739(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1744(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1754(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1759(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1769(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1774(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1784(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1789(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1799(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1804(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1810(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1815(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1821(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1826(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1834(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1842(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1852(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1857(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1867(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1872(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1882(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1887(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1897(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1902(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1912(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1917(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1927(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1932(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1942(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1947(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1957(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1962(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1972(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1977(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1986(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2001(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2004(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2007(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2010(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2013(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2016(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2019(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2022(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2026(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2033(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2040(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2047(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2055(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[464] = {(funcp)execute_2389, (funcp)execute_2390, (funcp)execute_34, (funcp)execute_35, (funcp)execute_36, (funcp)execute_38, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_40, (funcp)execute_62, (funcp)execute_63, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_75, (funcp)execute_77, (funcp)execute_79, (funcp)execute_89, (funcp)execute_93, (funcp)execute_94, (funcp)execute_96, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_121, (funcp)execute_118, (funcp)execute_123, (funcp)execute_127, (funcp)execute_129, (funcp)execute_177, (funcp)execute_589, (funcp)execute_729, (funcp)execute_730, (funcp)execute_1529, (funcp)execute_285, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_297, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_232, (funcp)execute_241, (funcp)execute_603, (funcp)execute_604, (funcp)execute_605, (funcp)execute_606, (funcp)execute_607, (funcp)execute_608, (funcp)execute_609, (funcp)execute_610, (funcp)execute_611, (funcp)execute_612, (funcp)execute_744, (funcp)execute_745, (funcp)execute_746, (funcp)execute_747, (funcp)execute_748, (funcp)execute_749, (funcp)execute_750, (funcp)execute_861, (funcp)execute_1066, (funcp)execute_1055, (funcp)execute_1177, (funcp)execute_1205, (funcp)execute_942, (funcp)execute_1314, (funcp)execute_1315, (funcp)execute_1316, (funcp)execute_1317, (funcp)execute_1318, (funcp)execute_1319, (funcp)execute_1320, (funcp)execute_1463, (funcp)execute_1479, (funcp)execute_143, (funcp)execute_151, (funcp)execute_152, (funcp)execute_153, (funcp)execute_166, (funcp)execute_190, (funcp)execute_193, (funcp)execute_200, (funcp)execute_203, (funcp)execute_206, (funcp)execute_209, (funcp)execute_212, (funcp)execute_214, (funcp)execute_217, (funcp)execute_224, (funcp)execute_227, (funcp)execute_237, (funcp)execute_248, (funcp)execute_258, (funcp)execute_261, (funcp)execute_263, (funcp)execute_265, (funcp)execute_281, (funcp)execute_592, (funcp)execute_733, (funcp)execute_741, (funcp)execute_857, (funcp)execute_1050, (funcp)execute_1196, (funcp)execute_1293, (funcp)execute_1296, (funcp)execute_1304, (funcp)execute_1532, (funcp)execute_1533, (funcp)execute_1534, (funcp)execute_1535, (funcp)execute_1536, (funcp)execute_1537, (funcp)execute_1538, (funcp)execute_1539, (funcp)execute_1540, (funcp)execute_1542, (funcp)execute_1543, (funcp)execute_1544, (funcp)execute_1545, (funcp)execute_1546, (funcp)execute_1547, (funcp)execute_1548, (funcp)execute_1549, (funcp)execute_1550, (funcp)execute_1551, (funcp)execute_1552, (funcp)execute_1553, (funcp)execute_1554, (funcp)execute_1555, (funcp)execute_1556, (funcp)execute_1557, (funcp)execute_1558, (funcp)execute_1559, (funcp)execute_1646, (funcp)execute_1610, (funcp)execute_1611, (funcp)execute_1612, (funcp)execute_1613, (funcp)execute_1614, (funcp)execute_1615, (funcp)execute_1616, (funcp)execute_1617, (funcp)execute_1618, (funcp)execute_1619, (funcp)execute_1620, (funcp)execute_1621, (funcp)execute_1622, (funcp)execute_1623, (funcp)execute_1624, (funcp)execute_1625, (funcp)execute_1626, (funcp)execute_1627, (funcp)execute_1628, (funcp)execute_1629, (funcp)execute_1630, (funcp)execute_1631, (funcp)execute_1632, (funcp)execute_1633, (funcp)execute_1634, (funcp)execute_1635, (funcp)execute_1636, (funcp)execute_1637, (funcp)execute_1638, (funcp)execute_1639, (funcp)execute_1640, (funcp)execute_1641, (funcp)execute_1642, (funcp)execute_1643, (funcp)execute_1644, (funcp)execute_1648, (funcp)execute_1649, (funcp)execute_1650, (funcp)execute_1651, (funcp)execute_1652, (funcp)execute_1653, (funcp)execute_1654, (funcp)execute_1655, (funcp)execute_1656, (funcp)execute_1657, (funcp)execute_1658, (funcp)execute_1659, (funcp)execute_1660, (funcp)execute_1661, (funcp)execute_1662, (funcp)execute_1663, (funcp)execute_1664, (funcp)execute_1665, (funcp)execute_1666, (funcp)execute_1667, (funcp)execute_1668, (funcp)execute_1669, (funcp)execute_1670, (funcp)execute_1671, (funcp)execute_1693, (funcp)execute_1694, (funcp)execute_1695, (funcp)execute_1696, (funcp)execute_1697, (funcp)execute_1698, (funcp)execute_1699, (funcp)execute_1700, (funcp)execute_1701, (funcp)execute_1702, (funcp)execute_1703, (funcp)execute_1704, (funcp)execute_1705, (funcp)execute_1706, (funcp)execute_1707, (funcp)execute_1708, (funcp)execute_1709, (funcp)execute_1710, (funcp)execute_1711, (funcp)execute_1717, (funcp)execute_1740, (funcp)execute_1741, (funcp)execute_1743, (funcp)execute_1799, (funcp)execute_1802, (funcp)execute_1810, (funcp)execute_1818, (funcp)execute_1825, (funcp)execute_1826, (funcp)execute_1827, (funcp)execute_1828, (funcp)execute_1836, (funcp)execute_1975, (funcp)execute_1976, (funcp)execute_1977, (funcp)execute_1906, (funcp)execute_1966, (funcp)execute_1974, (funcp)execute_2095, (funcp)execute_2118, (funcp)execute_2126, (funcp)execute_2387, (funcp)execute_2388, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_11, (funcp)transaction_40, (funcp)transaction_68, (funcp)transaction_374, (funcp)transaction_382, (funcp)transaction_390, (funcp)transaction_398, (funcp)transaction_406, (funcp)transaction_415, (funcp)transaction_423, (funcp)transaction_431, (funcp)transaction_438, (funcp)transaction_447, (funcp)transaction_454, (funcp)transaction_461, (funcp)transaction_478, (funcp)transaction_497, (funcp)transaction_516, (funcp)transaction_535, (funcp)transaction_554, (funcp)transaction_573, (funcp)transaction_592, (funcp)transaction_611, (funcp)transaction_630, (funcp)transaction_649, (funcp)transaction_658, (funcp)transaction_667, (funcp)transaction_677, (funcp)transaction_687, (funcp)transaction_697, (funcp)transaction_707, (funcp)transaction_717, (funcp)transaction_727, (funcp)transaction_737, (funcp)transaction_747, (funcp)transaction_754, (funcp)transaction_762, (funcp)transaction_769, (funcp)transaction_777, (funcp)transaction_784, (funcp)transaction_792, (funcp)transaction_799, (funcp)transaction_807, (funcp)transaction_814, (funcp)transaction_822, (funcp)transaction_829, (funcp)transaction_837, (funcp)transaction_844, (funcp)transaction_852, (funcp)transaction_859, (funcp)transaction_867, (funcp)transaction_875, (funcp)transaction_883, (funcp)transaction_891, (funcp)transaction_899, (funcp)transaction_907, (funcp)transaction_915, (funcp)transaction_923, (funcp)transaction_931, (funcp)transaction_940, (funcp)transaction_948, (funcp)transaction_956, (funcp)transaction_964, (funcp)transaction_972, (funcp)transaction_980, (funcp)transaction_988, (funcp)transaction_996, (funcp)transaction_1004, (funcp)transaction_1014, (funcp)transaction_1022, (funcp)transaction_1030, (funcp)transaction_1038, (funcp)transaction_1046, (funcp)transaction_1054, (funcp)transaction_1062, (funcp)transaction_1070, (funcp)transaction_1078, (funcp)transaction_1087, (funcp)transaction_1095, (funcp)transaction_1103, (funcp)transaction_1110, (funcp)transaction_1118, (funcp)transaction_1125, (funcp)transaction_1133, (funcp)transaction_1140, (funcp)transaction_1148, (funcp)transaction_1155, (funcp)transaction_1163, (funcp)transaction_1170, (funcp)transaction_1178, (funcp)transaction_1185, (funcp)transaction_1193, (funcp)transaction_1200, (funcp)transaction_1208, (funcp)transaction_1215, (funcp)transaction_1223, (funcp)transaction_1230, (funcp)transaction_1238, (funcp)transaction_1245, (funcp)transaction_1253, (funcp)transaction_1260, (funcp)transaction_1269, (funcp)transaction_1276, (funcp)transaction_1283, (funcp)transaction_1290, (funcp)transaction_1315, (funcp)transaction_1318, (funcp)transaction_1321, (funcp)transaction_1322, (funcp)transaction_1324, (funcp)transaction_1325, (funcp)transaction_1326, (funcp)transaction_1327, (funcp)transaction_1328, (funcp)transaction_1329, (funcp)transaction_1356, (funcp)transaction_1357, (funcp)transaction_1358, (funcp)transaction_1359, (funcp)transaction_1377, (funcp)transaction_1384, (funcp)transaction_1386, (funcp)transaction_1393, (funcp)transaction_1409, (funcp)transaction_1410, (funcp)transaction_1411, (funcp)transaction_1412, (funcp)transaction_1413, (funcp)transaction_1414, (funcp)transaction_1415, (funcp)transaction_1416, (funcp)transaction_1429, (funcp)transaction_1430, (funcp)transaction_1431, (funcp)transaction_1432, (funcp)transaction_1435, (funcp)transaction_1499, (funcp)transaction_1506, (funcp)transaction_1513, (funcp)transaction_1520, (funcp)transaction_1528, (funcp)transaction_1536, (funcp)transaction_1544, (funcp)transaction_1550, (funcp)transaction_1555, (funcp)transaction_1563, (funcp)transaction_1572, (funcp)transaction_1587, (funcp)transaction_1590, (funcp)transaction_1593, (funcp)transaction_1596, (funcp)transaction_1599, (funcp)transaction_1602, (funcp)transaction_1605, (funcp)transaction_1608, (funcp)transaction_1612, (funcp)transaction_1619, (funcp)transaction_1626, (funcp)transaction_1633, (funcp)transaction_1641, (funcp)transaction_1675, (funcp)transaction_1684, (funcp)transaction_1694, (funcp)transaction_1699, (funcp)transaction_1709, (funcp)transaction_1714, (funcp)transaction_1724, (funcp)transaction_1729, (funcp)transaction_1739, (funcp)transaction_1744, (funcp)transaction_1754, (funcp)transaction_1759, (funcp)transaction_1769, (funcp)transaction_1774, (funcp)transaction_1784, (funcp)transaction_1789, (funcp)transaction_1799, (funcp)transaction_1804, (funcp)transaction_1810, (funcp)transaction_1815, (funcp)transaction_1821, (funcp)transaction_1826, (funcp)transaction_1834, (funcp)transaction_1842, (funcp)transaction_1852, (funcp)transaction_1857, (funcp)transaction_1867, (funcp)transaction_1872, (funcp)transaction_1882, (funcp)transaction_1887, (funcp)transaction_1897, (funcp)transaction_1902, (funcp)transaction_1912, (funcp)transaction_1917, (funcp)transaction_1927, (funcp)transaction_1932, (funcp)transaction_1942, (funcp)transaction_1947, (funcp)transaction_1957, (funcp)transaction_1962, (funcp)transaction_1972, (funcp)transaction_1977, (funcp)transaction_1986, (funcp)transaction_2001, (funcp)transaction_2004, (funcp)transaction_2007, (funcp)transaction_2010, (funcp)transaction_2013, (funcp)transaction_2016, (funcp)transaction_2019, (funcp)transaction_2022, (funcp)transaction_2026, (funcp)transaction_2033, (funcp)transaction_2040, (funcp)transaction_2047, (funcp)transaction_2055};
const int NumRelocateId= 464;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Sistema_empotrado_TB_behav/xsim.reloc",  (void **)funcTab, 464);
	iki_vhdl_file_variable_register(dp + 436496);
	iki_vhdl_file_variable_register(dp + 436552);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Sistema_empotrado_TB_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Sistema_empotrado_TB_behav/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Sistema_empotrado_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Sistema_empotrado_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Sistema_empotrado_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
