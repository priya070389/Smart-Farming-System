<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Product productDetails = new Product();
	int typeID = Integer.parseInt(request.getParameter("type_id"));
	ArrayList allProduct = productDetails.getAllProduct(typeID);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
		<h2>Products</h2>          
          <ul class="nospace listing">
          <% for(int i=0;i<allProduct.size();i++) 
			{ 
				HashMap ProductDetails = new HashMap();
				ProductDetails = (HashMap)allProduct.get(i);
			%>
				<li class="product-listing" style="width:151px">
					<div class="imgl borderedbox">
					<a href="product-details.jsp?product_id=<% out.print(ProductDetails.get("product_id")); %>">
						<img src="productImages/<% out.print(ProductDetails.get("product_image")); %>" style="height:130px; width:130px;">
					</a>
					</div>
					<div class="product-price">
						<b><% out.print(ProductDetails.get("product_name")); %></b> <br>
						&#8377; <% out.print(ProductDetails.get("product_price")); %>
					</div>
				</li>
			<%
			}
			%>
          </ul>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
