<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Product productDetails = new Product();
	ArrayList allProduct;
	if(request.getParameter("vendor_id") != null) {
		int vendorID = Integer.parseInt(request.getParameter("vendor_id"));
		allProduct = productDetails.getAllVendorProduct(String.valueOf(vendorID));
	} 
	else if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) {
		allProduct = productDetails.getAllProduct(0);
	}
	else {
		allProduct = productDetails.getAllVendorProduct(session.getAttribute("login_emp_id").toString());
	}
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Product Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Product Code</th>
              <th>Image</th>
              <th>Name</th>
              <th>Type</th>
              <th>Company</th>
              <th>Price</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% 
			if(allProduct.size()!=0) 
			{
				for(int i=0;i<allProduct.size();i++) 
				{ 
					HashMap ProductDetails = new HashMap();
					ProductDetails = (HashMap)allProduct.get(i);
				%>
					<tr>
					  <td style="text-align:center;"><% out.print(ProductDetails.get("product_id")); %></td>
					  <td>
						<a href="product-details.jsp?product_id=<% out.print(ProductDetails.get("product_id")); %>">
							<img src="productImages/<% out.print(ProductDetails.get("product_image")); %>" style="height:80px; width:80px;">
						</a>
					  </td>
					  <td><% out.print(ProductDetails.get("product_name")); %></td>
					  <td><% out.print(ProductDetails.get("product_type")); %></td>
					  <td><% out.print(ProductDetails.get("product_company")); %></td>
					  <td><% out.print(ProductDetails.get("product_price")); %></td>
					  <td> <a href="product.jsp?product_id=<% out.print(ProductDetails.get("product_id")); %>">Edit</a> </td>
					</tr>
				<%
				}
			}
			else {
			%>
				<tr>
					<td colspan="7">No products found !!!</td>
				</tr>
			<%}%>
			</tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
