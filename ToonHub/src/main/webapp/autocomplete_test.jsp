<%@page import="java.util.ArrayList"%>
<%@page import="model.WebtoonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%WebtoonDAO dao = new WebtoonDAO(); 
ArrayList<String> title_list = dao.Searchname();
System.out.println(title_list);%>
        <!-- body 부분 -->
        <input id="searchInput" type="text" name = "text">

        <script>
            $(function() {    //화면 다 뜨면 시작
                var searchSource = <%=title_list%>; // 배열 형태로 
                $("#searchInput").autocomplete({  //오토 컴플릿트 시작
                    source : searchSource,    // source 는 자동 완성 대상
                    select : function(event, ui) {    //아이템 선택시
                        console.log(ui.item);
                    },
                    focus : function(event, ui) {    //포커스 가면
                        return false;//한글 에러 잡기용도로 사용됨
                    },
                    minLength: 1,// 최소 글자수
                    autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
                    classes: {    //잘 모르겠음
                        "ui-autocomplete": "highlight"
                    },
                    delay: 2000,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
        //            disabled: true, //자동완성 기능 끄기
                    position: { my : "right top", at: "right bottom" },    //잘 모르겠음
                    close : function(event){    //자동완성창 닫아질때 호출
                        console.log(event);
                    }
                });
                
            });
        </script>
</body>
</html>