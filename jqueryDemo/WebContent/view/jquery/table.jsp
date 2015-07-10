<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블의 행 개수 제한하고 칼럼 필터링하기</title>
<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/media/images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">
<style type="text/css" title="currentStyle">
   @import "media/css/demo_page.css";
   @import "media/css/demo_table.css";
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script> <!-- 항상 위에 있어야함 -->
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {   
   $('#example').dataTable( );
  
 });
</script>
</head>
<body>
   <table class="display" id="example">
      <thead>
         <tr> <th>id</th><th>name</th><th>price</th><th>description</th> </tr>
      </thead>   
      <tbody>         
         <tr>
            <td>1</td><td>레몬</td><td align="right">3000</td>
            <td>레몬에 포함되어 있는 쿠엔산은 피로회복에 좋다. 비타민C도 풍부하다.</td>
         </tr>
         <tr>
            <td>2</td><td>키위</td><td align="right">2000</td>
            <td>비타민C가 매우 풍부하다. 다이에트와 미용에도 매우 좋다.</td>
         </tr>
         <tr>
            <td>3</td><td>블루베리</td><td align="right">5000</td>
            <td>블루베리에 포함된 anthocyanin(안토시아닌)은 눈피로에 효과가 있다.</td>
         </tr>
         <tr>
            <td>4</td><td>체리</td><td align="right">5000</td>
            <td>체리는 맛이 단 성분이 많고 피로회복에 잘 듣는다.</td>
         </tr>
         <tr>
            <td>5</td><td>메론</td><td align="right">5000</td>
            <td>메론에는 비타민A와 칼륨이 많이 포함되어 있다.</td>
         </tr>
         <tr>
            <td>6</td><td>수박</td><td align="right">15000</td>
            <td>수분이 풍부한 과일이다.</td>
         </tr>
         <tr>
            <td>7</td><td>오렌지</td><td align="right">2000</td>
            <td>비타민C가 풍부합니다. 플래쉬 쥬스도 추천한다.</td>
         </tr>
         <tr>
            <td>8</td><td>파란사과</td><td align="right">4000</td>
            <td>단맛이 강한 향기가 상큼한 파란 사과이다.</td>
         </tr>
         <tr>
            <td>9</td><td>파인애플</td><td align="right">3000</td>
            <td>비타민B1 비타민B2가 풍부하다. 요리에도 사용할 수 있다.</td>
         </tr>
         <tr>
            <td>10</td><td>포도</td><td align="right">3500</td>
            <td>피로 회복, 피부미용, 펙틴과 타닌은 장 운동 촉진시킨다.</td>
         </tr>
         <tr>
            <td>11</td><td>석류</td><td align="right">4500</td>
            <td>피부는 물론 타이어트와 탈모 예방에 좋다. 피로를 빠르게 회복시킨다.</td>
         </tr>
         <tr>
            <td>12</td><td>토마토</td><td align="right">25000</td>
            <td>암과 노화를 막아주는 리코펜 성분이 풍부한다.</td>
         </tr>
         <tr>
            <td>13</td><td>참외</td><td align="right">25000</td>
            <td>칼륨 함량이 높아 이뇨 작용이 탁월하다.</td>
         </tr>
      </tbody>      
   </table>
</body>
</html>


