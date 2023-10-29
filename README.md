# 수산물 MES 사이트
### 호스팅 사이트 : http://kangsang.gonetis.com:11080
#### 1. 개발도구 : Eclipse, Github  
#### 2. 개발언어 : Java(OpenJDK 11.0.2), MySQL(8.0.17), JavaScript
#### 3. 라이브러리 : jQuery(3.6.4), JSTL(1.2)
#### 4. 프레임워크 : Spring(4.3.8.RELEASE), MyBatis(3.4.1)
#### 5. 웹 애플리케이션도구 : JSP(MVC model2)
#### 6. 웹 호스팅 : Docker

***

#### 개발 기간 : 8월 1일 ~ 8월 20일

### <상세 코드>
#### 고객관리 페이지  
1. Model 
    - 고객관리현황 DAO [CustomerDAO.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/dao/ProductionDAO.java)

2. View    
    - 고객관리 리스트 [guest/guestList.jsp](https://github.com/kangsang3073/Mealki/blob/main/src/main/webapp/WEB-INF/views/mps/production/listForm.jsp) 

3. Controller  
    - 컨트롤러 [CustomerController.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/controller/ProductionController.java) 

#### 택배관리 페이지 
1. Model 
    - 택배관리 DAO [ParcelDAO.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/dao/QualityDAO.java) 
    
2. View  
    - 택배관리 리스트 [parcel/parcelList.jsp](https://github.com/kangsang3073/Mealki/blob/main/src/main/webapp/WEB-INF/views/mps/quality/listForm.jsp)   

3. Controller  
    - 컨트롤러 [ParcelController.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/controller/QualityController.java)

#### 구매관리 페이지 
1. Model 
    - 구매 DAO [StoreDAO.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/dao/QualityDAO.java) 
    
2. View  
    - 구매 리스트 [store/storeList.jsp](https://github.com/kangsang3073/Mealki/blob/main/src/main/webapp/WEB-INF/views/mps/quality/listForm.jsp)   

3. Controller  
    - 컨트롤러 [StoreController.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/controller/QualityController.java)
      
#### 판매관리 페이지 
1. Model 
    - 판매관리 DAO [SaleDAO.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/dao/QualityDAO.java) 
    
2. View  
    - 판매관리 리스트 [sale/saleList.jsp](https://github.com/kangsang3073/Mealki/blob/main/src/main/webapp/WEB-INF/views/mps/quality/listForm.jsp)   

3. Controller  
    - 컨트롤러 [SaleController.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/controller/QualityController.java)
  
