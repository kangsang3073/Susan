$(document).ready(function(){
	getGraph();
		function getGraph(){
// Ajax 시작
	   		$.ajax({
	  			url:'/chart/rank',
//     		  	type:"GET",
	  			dataType:'json',
	  			success:function(arr){
	  			console.log(arr);
					// 자료 리스트 변수
			  		let menuList = [];
		  			let countList = [];
	
			 		// 그래프로 나타낼 자료 리스트에 담기
			  		for (let i = 0; i<arr.length;i++){
							menuList.push(arr[i].menu);    				  
							countList.push(arr[i].count);    				  
			  		}
    			  	// 변수를 view 파일에 출력할 getElementById 저장				
				const ctx = document.getElementById('myChart').getContext('2d');
					// 그래프 설정
					
				const myChart = new Chart(ctx, {
					type: 'bar',
					data: {
					labels: menuList,
					datasets: [{
					
					data: countList,
			 		backgroundColor: [
    				'rgba(255, 47, 0, 1)',
    				'rgba(217, 255, 0, 1)',
    				'rgba(0, 255, 128, 1)',
    				'rgba(255, 0, 246, 1)',
    				'rgba(110, 0, 255, 1)'
						],
						
			            
		            borderWidth: 1
						        }]
						    },
						    
    			options: {
    				legend: {
    					display: false
    					},
    				title: {
        				display: true,
        				text: '판매량 순위'
        					}, // title
        			scales: {
        				 yAxes: [{
			                ticks: {
			                    fontSize: 15, // Y축 레이블 값의 글자 크기
			                    stepSize: 1,
			                    min: 0
			               		 }
			            	}]
        				}
    					}// options
					})// const myChart = new Chart;
				}, 
				
    	  }); // ajax
      } //  getGraph
}); //document.ready
