<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 个人房产直投合同之借款及服务协议 -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>

<style type="text/css">
html{ padding:0px; margin:0px; color:#000; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%;box-sizing: border-box; min-height: 100%;}
/*内外边距通常让各个浏览器样式的表现位置不同*/
body{ font: 14px/1.5 '微软雅黑',YaHei,'MicroSoft YaHei',tahoma,arial; color:#666666;}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,a,p,img,blockquote,th,td,hr,button,article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{ margin:0px; padding:0px; font-size:14px; font-family:'MicroSoft YaHei';}

/*去掉table cell的边距并让其边重合*/
table{ border-collapse:collapse; border-spacing:0;}

/* 去掉列表前的标识，li 会继承*/
ol,ul,li{ list-style:none;}

/*来自 yahoo,让标题都自定义，适应多个系统应用*/
h1,h2,h3,h4,h5,h6{ font-size:100%; font-weight:500;}

/* 清理浮动*/
.clearFloat:after{ visibility:hidden; display:block; font-size:0; content:""; clear:both; height:0;}
.clearFloat{ zoom:1;}/*兼容ie6 7*/

/* 设置内联，减少浮动带来的bug*/
.floatLeft,.floatRight{ display:inline;}
.floatLeft{ float:left;}
.floatRight{ float:right;}

.agreenment{ width:700px; margin:0 auto; font-family:'SimSun'; color:#333333; line-height:30px; margin-top:40px; margin-bottom:50px;}
.agreenment>h2{ font-size:18px; font-weight:bold; text-align:center;}
.agreenment p,.agreenment h4{ text-indent:2em;}
.agreenment h3,.agreenment h4{ font-weight:bold;}
.agreenment .atable{ color:#333333; line-height:30px; margin:20px 0; width:100%; text-align:center; border-top:1px solid #333333; border-left:1px solid #333333;}
.agreenment .atable tr td{ border-bottom:1px solid #333333; border-right:1px solid #333333;}
.agreenment2{ width:93%; margin:5%; height:400px; overflow-y:scroll;}
.width103{ width:103px; display:inline-block}
.agreen2{ position:relative;}
.agreen2 .zhang{ position:absolute; width:180px; height:180px; background:url(../img/argreen.png) center center no-repeat; left:180px; top:100px;}
</style>

</head>

<body>
<div class="wrapper agreenment agreen2">	<div class="zhang"></div>
  <h2>借款及服务协议 </h2>
  <p style="text-align:right">合同编号：__${agreementCode }__</p>
  <h3>本协议由以下各方于_${agreementStartDate }_在__北京朝阳区__签署：</h3> <br/>
  <h3>出借人：___${lendRealName }___</h3>
  <h3>身份证号：___${lendIdCard }___</h3> <br/>
  <h3>借款人：___${loanRealName }___</h3>
  <h3>身份证号：___${loanIdCard }___</h3> <br/>
  <h3>服务方：北京汇聚融达网络科技有限公司</h3>
  <h3>地址：北京市朝阳区光华路9号光华路SOHO2期B座11层 </h3> <br/>
  <h3>鉴于： </h3>
  <p style="text-indent:0em;">1.服务方是一家在中国北京市合法成立并有效存续的有限责任公司，有&nbsp;www.caifupad.com&nbsp;网站（以下简称&ldquo;网站&rdquo;，本协议中凡提及该网站者，所指向的权利义务主体均系服务方）的经营权，向网站注册用户提供信用咨询及金融信息服务。 <br/>
    2.借款人和出借人均已在网站注册，本协议使用借款人和出借人事先已充分阅读并认可的网站提供的借款及服务协议样本。 <br/>
    3.借款人和出借人均已承诺其提供给服务方的信息真实、完整、有效。 <br/>
    4.借款人具有合法的借款需求，出借人自愿以其自有的合法资金向借款人提供借款。出借人以本协议为依据与借款人形成真实、合法、有效的债权。 </p>
  <p style="text-indent:0em;">借款人和出借人基于平等自愿原则，经服务方的介绍，就有关借款事项达成如下协议，以兹信守： </p>
  <p style="text-indent:0em;"><strong>第一条 概念及定义</strong><br/>
    在本协议中，除非上下文另有解释，下列词语具有以下含义： <br/>
    1.1 出借人：指自主选择出借一定数量资金给他人的自然人。 <br/>
    1.2 借款人：指有资金需求、经服务方筛选提供给出借人并得到出借人一定数量出借资金的自然人。 <br/>
    1.3 债权：指在出借人与借款人借贷关系存续期间出借人对借款人拥有的全部权益，包括但不限于借款本金、利息、违约金等。债权以人民币计价。 <br/>
    1.4 工作日：指中华人民共和国法律规定的工作日，即法定工作日。 <br/>
    1.5提前还款：指在出借人与借款人借贷关系存续期间约定了借款人的本息偿还周期和金额等相关还款计划，借款人可能在协议规定的偿还周期结束前，在某一日期将剩余本息提前偿还给出借人，从而使出借人的资金比约定的计划提前收回。 <br/>
    1.6 个人信息：指出借人和借款人为达成本借款协议向服务方提供的身份证件、划款账户等个人身份、资产的资料和信息。 <br/>
    1.7商业秘密：指为完成本协议交易目的而为各方所知悉和相互透露的但并不为公众所知悉的包括但不限于交易方案、信用评估报告、资产情报、协议、备忘录、个人信息、技术数据等信息资料和文件。 </p>
  <p style="text-indent:0em;"><strong>第二条 资金出借方式</strong><br/>
    2.1出借人可选择下述任一方式实现其个人的资金出借需求。 <br/>
    □√对借款人进行选择，决定是否出借；如果决定出借，须将出借资金存入指定账户并通过电子签章的方式直接与借款人签署《借款及服务协议》； <br/>
    □×对服务方服务中的本协议项下的债权通过签署《债权转让及受让协议》进行受让，将款项支付给所购买的债权的转让方，从而完成资金的出借。 <br/>
    2.2借款人和出借人均同意上述网站接受委托的行为所产生的法律后果均由相应委托方承担。 </p>
  <p style="text-indent:0em;"><strong>第三条 借款基本信息 </strong><br/>
    3.1借款金额：借款人向出借人借款金额为人民币(大写)<u>  ${resultBalanceBig }  </u>， <br/>
    (小写 ¥${resultBalance })。 <br/>
    3.2借款期限：<u> ${dueTime } </u>个月，自${paymentDate }至${lastRepaymentDate }止。 <br/>
    3.3还款方式：  □${repaymentType==1?'√':'' } 等额本息  &nbsp;&nbsp;&nbsp; □${repaymentType==2?'√':'' } 按月付息，到期还本。 <br/>
    3.4每月还款金额：人民币<u>  ${shouldBalance2 }   </u>（大写）（详见每月系统自动生成的还款列表）。 <br/>
    3.5每月还款日：<u>  ${repaymentDay }   </u>（详见每月系统自动生成的还款列表）。 <br/>
    3.6借款利率：借款利率为固定利率，年利率为<u> ${annualRate } </u>%，在合同有效期内利率不变。 <br/>
    3.7 借款用途：<u> ${loanUseage }  </u></p>
  <p style="text-indent:0em;"><strong>第四条 借款的偿还 </strong><br/>
    4.1借款人承诺依本协议和还款明细列表约定的时间和金额按期足额向出借人还款。 <br/>
    4.2借款人将主动按月还款至网站指定账户并委托网站划付至出借人账户。 <br/>
    4.3借款人的最后一期还款必须包含全部剩余本金、利息及所有根据本协议产生的其他费用等。 <br/>
  <strong>第五条 通知 </strong><br/>
    5.1关于本协议条款和与本协议项下借款相关的其他协议、告示或其他有关使用服务方服务的通知，服务方将以电子形式或纸张形式通知，包括但不限于依据借款人和出借人向服务方提供的电子邮件地址发送电子邮件的方式、于平台或合作伙伴网站上公布或发送手机短信和电话通知等方式。 <br/>
    5.2在借款期限内，借款人发生提前还款或出借人进行催收等事由，均应依本协议约定告知服务方，由服务方以上述条款所列方式通知对方。 <br/>
    5.3各方在本协议中填写的联系信息即为其有效的通讯方式。各方联系信息如下： </p>
  <p style="text-indent:0em;"><strong>借款人</strong>  &nbsp;&nbsp;  通信地址：<u>   ${loanAddress }   </u>                             </p>
    <p style="text-indent:4.2em">邮箱地址：<u>   ${loanEmail }     </u>                               </p>
    <p style="text-indent:4.2em">联系电话： <u>   ${fn:substring(loanMobileNo,0,3)}*****${fn:substring(loanMobileNo,8,11)}    </u>                              </p>
    <p style="text-indent:4.2em">银行账号： <u>    ${loanCardCode }     </u>                              </p>
    <p style="text-indent:4.2em">开户行：   <u>   ${loanBankName }     </u>                            </p>
  <p style="text-indent:0em;"><strong>出借人</strong>  &nbsp;&nbsp;  通信地址：<u>  ${lendAddress }   </u>                               </p>
    <p style="text-indent:4.2em">邮箱地址： <u>   ${lendEmail }    </u>                              </p>
    <p style="text-indent:4.2em">联系电话： <u>   ${fn:substring(lendMobileNo,0,3)}*****${fn:substring(lendMobileNo,8,11)}  </u>                              </p>
    <p style="text-indent:4.2em">银行账号： <u>    ${lendCardCode }       </u>                              </p>
    <p style="text-indent:4.2em">开户行：   <u>   ${lendBankName }     </u>                              </p>
  <p style="text-indent:0em;"><strong>服务方</strong>    通讯地址：<u> 北京市朝阳区光华路9号光华路SOHO2期 B座11层 </u>                             </p>
  <p style="text-indent:0em;">5.4协议各方有权在任何时候更改其联系信息，但应按本协议约定的送达方式在变更后三个工作日内向其他方送达通知。否则变更方应当承担由此造成的送达不能产生的法律风险及责任。 </p>
  <p style="text-indent:0em;"><strong>第六条 服务费 </strong><br/>
    6.1服务费是指因服务方为借款人与出借人提供交易信息、撮合交易、信用咨询、还款提醒、还款咨询、还款特殊情况沟通等系列相关服务而由借款人和/或出借人支付给服务方的报酬。 <br/>
    6.2出借人同意向服务方支付相应的服务费用（具体费用见附件一）。 <br/>
    6.3借款人同意向服务方支付相应的的服务费用（具体见附件三）。 <br/>
    6.4本协议的服务期限自各方签订之日起至借款人还清全部本息及根据本协议产生的其他费用之日止。 </p>
  <p style="text-indent:0em;"><strong>第七条 提前还款 </strong><br/>
    7.1借款人可在借款期间任何时候提前偿还剩余借款。但借款人应当在还款日的<u>  七  </u>个工作日前向网站提出申请，网站收到申请后与借款人确定提前还款的具体情况并通知出借人。 <br/>
    7.2借款人提前偿还借款的，提前还款部分按本协议第二条约定的利息记收。若实际借款期限非自然月的整数倍的，按一个自然月的借款利息记收。 <br/>
    7.3借款人提前偿还借款的，借款人与出借人已支付的服务费不予退还。 </p>
  <p style="text-indent:0em;"><strong>第八条 逾期还款 </strong><br/>
    8.1借款人应严格履行还款义务，借款人未于借款协议规定的还款日前足额还款，除应支付本协议约定的利息外，应在还款日之次日起按照下列公式计算并向出借人支付逾期罚息。 <br/>
    8.2罚息利率为：<u>0.05%</u>/日           <br/>
    8.3罚息总额 = 逾期本息总额×对应罚息利率×逾期天数 <br/>
    8.4若借款人逾期支付任何一期还款超过<u>  30    </u>天或借款人在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，网站有权将借款人的逾期记录计入网站黑名单或相关合作方的信用记录以及国家和地方的公民征信系统；一切相关法律责任及后果概由借款人自负，与出借人及网站无涉。同时本协议项下的全部借款本息视同提前到期，借款人应立即清偿本协议项下尚未偿付的全部本金、利息、罚息及根据本协议产生的其他全部费用。 <br/>
    8.5当借款人出现本协议8.4陈述的恶意行为时，如服务方认定借款人系疑似欺诈，且服务方同意先行支付利息或本金给出借人的，出借人同意将债权不可撤销地转让给服务方。 </p>
  <p style="text-indent:0em;"><strong>第九条 关于各方的权利、义务 </strong><br/>
    <strong>A.出借人、借款人的权利与义务 </strong><br/>
    9.1.1 出借人享有其所出借款项带来的利息收益并按期收回本金； <br/>
    9.1.2 出借人有自行选择借款人，并最终决定是否出借资金给特定借款人的权利； <br/>
    9.1.3 出借人同意按本协议第6.2条款约定向服务方支付相应的服务费； <br/>
    9.1.4 出借人有权通过服务方网站查看自己名下账目相关信息及借款人的还款情况； <br/>
    9.1.5 出借人特别同意：未经服务方同意，出借人不得将本协议项下对借款人享有的债权转让给任何第三方； <br/>
    9.1.6出借人所有向第三方个人账户注入或是追加资金，都必须经过服务方确认方为有效。非经服务方确认的资金，仅属于出借人在本协议之外另行放入第三方个人账户之资金，不享有本协议下约定的资金收益及其相关权益； <br/>
    9.1.7借款人必须按月足额偿还对出借人的本金和利息； <br/>
    9.1.8借款人在此不可撤销的同意委托服务方或服务方合作的第三方机构直接从借款人账户扣划相应金额用于支付借款人应付的利息、本金、违约金、服务费、管理费及其它费用； <br/>
    9.1.9借款人须在每月还款日当日或之前将本协议规定的月偿还本息数额及其他相关费用存入指定还款帐号中。如果还款日遇到法定假日或公休日，还款日期进行相应顺延；如果还款日为每月30日，则遇到天数不足30天的月份，还款日为应还款当月的最后一日； <br/>
    9.1.10出借人与借款人应妥善保管自己在网站的注册用户名和密码，自行承担因注册用户名和密码丢失、泄露或允许他人使用所产生的后果。任何一方通过其用户名和密码登陆的任何操作均视为该方本人的真实意思表示。 </p>
  <p style="text-indent:0em;"><strong>B.服务方的权利及义务 </strong><br/>
    9.2.1服务方应当按照本协议的规定，恪尽职守，以诚实、信用、谨慎、有效管理的原则为出借人和借款人提供服务； <br/>
    9.2.2服务方有权依照本协议的规定向出借人和/或借款人收取相应的服务费用； <br/>
    9.2.3 如遇借款人发生违约逾期还款时，服务方有权选择是否向出借人垫付相应的利息和本金（具体垫付方式见附件一）； <br/>
    9.2.4服务方须对出借人和借款人的个人信息包括资产情况及其他服务相关事务的情况和资料依法保密； <br/>
    9.2.5 服务方承诺为出借人提供与借款人相关的信用已经过适当谨慎的资质审核服务，但对借款人相关资料的真实性无法进行保证且不承担责任； <br/>
    9.2.6在借贷关系存续期间，借款人发生违约行为时，应出借人的要求和委托授权，服务方将采取合法合理的措施协助出借人进行及时催收和追讨；若服务方向出借人垫付利息或本金则有权向借款人追偿； <br/>
    9.2.7服务方有权根据其对借款人的评审结果自主决定是否将借款人的借款需求及相关信息通过网站向出借人展示，以协助借款人获取资金来源； <br/>
    9.2.8服务方提供的相关服务，包括但不限于借款人推荐、出借促成、借款人信用评估、回款管理、出借资金贷后管理及必要的催收服务、以及定期提供资金出借情况报告等服务； <br/>
    9.2.9服务方应妥善保存本咨询服务协议文本电子版，以备查阅，保存期限为本协议存续期间及本协议终止之日起2年。 </p>
  <p style="text-indent:0em;"><strong>第十条 违约责任 </strong><br/>
    10.1 任何一方违反本协议的约定，使得本协议的全部或部分不能履行，均应承担违约责任，并赔偿损失方因此遭受的损失（包括由此产生的诉讼费和律师费用等）；如多方违约，根据实际情况各自承担相应的责任。违约方应赔偿因其违约而给守约方造成的损失，包括合同履行后可以获得的利益，但不得超过违反合同一方订立合同时可以预见或应当预见的因违反合同可能造成的损失。 <br/>
    10.2如出借人无正当理由拒绝协助或配合服务方对违约的借款人的诉讼或其他追索行动，出借人应承担由此而导致服务方发生的各项费用以及退还服务方已支付给出借人的补偿。10.3 若借款人没有足额偿还借款本息的，所偿还之金额应按照管理费、违约金、罚息、利息、本金之顺序偿还。 <br/>
    10.4 若借款人擅自更改本协议约定的借款用途、提供虚假资料或者故意隐瞒重要事实，则出借人有权通过服务人提前终止本协议并要求借款人提前偿还本金，同时借款人须分别向出借人和服务人支付借款本金总额 <u> 5  </u>%的违约金。 <br/>
    10.5 发生下列任何一项或几项情形的，视为借款人违约： <br/>
    （1）借款人的任何财产遭受没收、征用、查封、扣押、冻结等可能影响其履约能力的不利事件，且不能及时提供有效补救措施的； <br/>
    （2）借款人的财务状况出现影响其履约能力的不利变化，且不能及时提供有效补救措施的。 <br/>
    10.6 若因上述情形而导致借款人违约，或根据出借人合理判断借款人可能发生上述违约事件的，出借人有权自行或委托服务方采取下列任何一项或几项救济措施： <br/>
    （1）立即暂缓、取消发放全部或部分借款； <br/>
    （2）宣布已发放借款全部提前到期，乙方应立即偿还所有应付款； <br/>
    （3）提前终止本协议； <br/>
    （4）采取法律、法规以及本协议约定的其他救济措施。 <br/>
    10.7  如任何一方违反本协议保密条款约定，则其应向遭受损失的另一方赔偿其实际损失包括但不限于其可预见的合同收益损失、诉讼费及律师费用等。 </p>
  <p style="text-indent:0em;"><strong>第十一条 承诺和声明 </strong><br/>
    11.1未经服务方与全部出借人的一致同意，借款人不得以任何理由和任何形式将获得的借款用于前述借款用途之外的任何其他用途。借款人擅自改变借款用途将承担违约责任。借款人不得将所借款项用于任何违法活动（包括但不限于赌博、吸毒、贩毒、卖淫嫖娼等）及生产经营和消费以外的范畴（包括但不限于股票、基金、期货等金融产品的投资、房地产及房地产信托投资、二次借贷、彩票等）。否则，一经发现，出借人有权提前收回全部借款，并立即向公安等司法机关举报，追究借款人的刑事责任。 <br/>
    11.2借款人承诺向出借人提交的一切文本、图文、个人信息等资料等均为真实、有效。 <br/>
    11.3出借人承诺对本协议所涉的借款具有完全的支配能力，且为出借人的合法收入。如果第三人对资金归属、合法性问题发生争议，由出借人负责解决，不得因此而牵连服务方，并保证及时赔偿服务方因此所遭受的一切损失； <br/>
    11.4借款人和出借人承诺任何发自于借款人和出借人注册时提供的邮箱、手机的电子邮件与短信均为借款人和出借人的真实意思表示。 <br/>
    11.5因为平台或者涉及的第三方网站的设备、系统存在缺陷或者因为计算机病毒造成的损失，服务方不负责赔偿但应及时告知相关方停止使用平台。 <br/>
    11.6对于任何由于黑客攻击、电信部门技术调整导致之影响、因政府管制而造成的暂时性关闭、由于第三方原因（包括不可抗力或类似事件等）及其他非因本网站过错而造成的用户信息泄露、丢失、被盗用或被篡改等，服务方不承担责任。 </p>
<br />
  <p style="text-indent:0em;"><strong>第十二条 保密条款 </strong><br/>
    12.1 在本协议&quot;概念及定义&quot;中所约定的&quot;个人信息&quot;与&quot;商业秘密&quot;，均属于保密信息，各方应采取严格措施实施保密。 <br/>
    12.2上述保密信息具体包括但不限于任何具有保密性质的有关披露方或其关联机构的业务经营、方法、知识产权、技术秘诀、发明、技术数据或说明、测试方法、商业和财务信息、研究和开发活动、产品和销售计划以及客户和厂商信息。 <br/>
    12.3未经披露方事先书面同意，任何人不得向其他第三方披露保密信息，对于服务人提供给出借人或借款人的个人证件及其他相关信用信息，双方确保各自仅用于参考，不向任何第三方透露，出借人和借款人有义务为服务方的信用信息及业务内容进行保密。如果一方擅自、不恰当地向他人透露他方的个人信息、信用信息或商业秘密，由此给守约方造成损失的，由违约方承担全部责任。 </p>
  <p style="text-indent:0em;"><strong>第十三条 适用法律及争议解决 </strong><br/>
    13.1本协议的签订、履行、终止、解释均适用中华人民共和国法律； <br/>
    13.2各方在履行本协议发生争议时，应本着友好协商的方式解决，协商不成由协议签署地北京市朝阳区人民法院管辖。 </p>
  <p style="text-indent:0em;"><strong>第十四条 其他 </strong><br/>
    14.1本协议采用电子文本形式制成，并在服务方网站上保留存档，各方均认可该形式协议的法律效力。 <br/>
    14.2借款人及出借人同意服务方根据具体情况对本借款协议进行更新。 <br/>
    14.3如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。 <br/>
    14.4出借人通过该借款协议所获得的收益应自行申报并缴纳税款。 <br/>
    14.5服务方接受借款人和出借人的委托所产生的法律后果由相应委托方承担。如因借款人或出借人或其他第三方（包括但不限于技术问题）造成的延误或错误，服务方不承担任何责任。 <br/>
    14.6本协议自文本最终生成之日起生效。 <br/>
    14.7本协议及其附件的任何修改、补充均须以书面形式作出。附件所示内容与本协议具有同等法律效力。 </p>
  <p style="text-indent:0em;"><strong><em><u>(</u><u>以下无正文） </u></em></strong></p>
  <p style="text-indent:0em;">特别提示：任何一方通过平台网站页面点击确认或以其他方式选择接受本协议，及表示该方同意使用电子签名和数据电文，并表示该方已签署本协议且同意接受本协议所载全部内容、条款和条件以及平台所列的与本协议所述事项相关的各项规则及其他文件。 </p>
<br />
  <p style="text-indent:0em;">借款人： 
    ${loanRealName } </p>
  <br/>
  <p style="text-indent:0em;">出借人： 
    ${lendRealName } </p>
  <p style="text-indent:0em;">  <br/>
    服务方： 
    北京汇聚融达网络科技有限公司</p>
  <br/>
  <p style="text-indent:0em;"><strong>附件一： </strong><br/>
    <strong>出借人承担的费用 </strong></p>
  <p style="text-indent:0em;">出借人：${lendRealName }</p>
  <p style="text-indent:0em;">服务方：北京汇聚融达网络科技有限公司</p>
  <p style="text-indent:0em;"> 出借人与服务方经充分协商，就出借人通过服务方与借款人签订的编号为<u> ${agreementCode } </u>的《借款及服务协议》，如遇借款人发生违约逾期还款时，服务方可选择如下的一种方式： </p>
  <p style="text-indent:0em;">□×（一）服务方承诺垫付。具体垫付方式是： <br/>
    A. 借款人逾期3天以内（包括3天），服务方无需向出借人垫付罚息； <br/>
    B. 借款人逾期3天以上15天以内（包括15天），服务方承诺按日万分之五向出借人垫付罚息，并将前3天的逾期罚息一并补齐； <br/>
    C. 借款人逾期15天以上45天以内（包括45天），服务方承诺垫付出借人1个月的利息，罚息免予支付； <br/>
    D. 借款人逾期45天以上60天以内（包括60天），服务方承诺垫付出借人2个月的利息，罚息免予支付； <br/>
    E. 借款人逾期60天以上，服务方承诺向出借人还本付息。 </p>
  <p style="text-indent:0em;">□√（二）服务方不承诺垫付。 </p>
  <p style="text-indent:0em;"><strong>服务费收取标准  </strong><br/>
    出借人了解并同意：服务方因其提供的出借咨询、财务规划、投资管理、账户管理、催收回款等各项服务向出借人按月收取服务费，并按照双方约定的如下标准，自出借人出借收益中按月扣除。 </p>

  <table border="1" cellspacing="0" cellpadding="0" align="center" width="100%" class="atable">
    <tr>
      <td>收费项目 </td>
      <td>账户级别 </td>
      <td>收费对象 </td>
      <td>服务费率 </td>
      <td>收取方式 </td>
    </tr>
    
    <c:set var="firstFeesItem"></c:set>
    <c:if test="${not empty feesItems}">
        <c:forEach var="feesItem" items="${feesItems}" varStatus="s">
            <c:if test="${s.index == 0}">
                <c:set var="firstFeesItem" value="${feesItem}"/>
            </c:if>
            <tr style="height: 25px;">
                <td>
                        ${feesItem.feesItem.itemName}
                </td>
                <td>
                    	所有账户
                </td>
                <td>
                        ${feesItem.feesItem.radiceTypeStr}
                </td>
                <td>
                        ${feesItem.feesItem.feesRate}%
                </td>
                <td>
                        ${feesItem.chargePointStr}
                </td>
            </tr>
        </c:forEach>
    </c:if>
        
  </table>
  <p style="text-indent:0em;">① 服务费率为出借收益的${firstFeesItem.feesItem.feesRate}% <br/>
    ② 服务费按照出借笔数分别进行对应收取； <br/>
    ③ 服务费由服务方在每笔出借款对应的回款日收取（在当期借款人还款中自动扣除），单笔服务费=该笔出借资金总出借收益*服务费率。 </p>
  <br/>
  <br/>
  <p style="text-indent:0em;"><strong>附件二： <br/>

    还款明细表 </strong></p>
   
   <table border="1" cellspacing="0" cellpadding="0" align="center" width="100%" class="atable">
    <tr>
      <td>期数 </td>
      <td>金额（元） </td>
      <td>本金（元） </td>
      <td>利息（元） </td>
      <td>还款日期 </td>
    </tr>
    <c:forEach items="${repaymentPlanList}" var="plan">
	   	<tr>
	      <td>第${plan.sectionCode}期 </td>
	      <td>${plan.shouldBalance2}</td>
	      <td>${plan.shouldCapital2}</td>
	      <td>${plan.shouldInterest2}</td>
	      <td>${plan.repaymentDayDisplay}</td>
	    </tr>
    </c:forEach>
  </table><br/>
  
</div>
</body>
</html>