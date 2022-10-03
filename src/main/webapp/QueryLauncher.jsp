<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query Launcher</title>
<style>.hidden {

        display: none;
    }
</style>
</head>
<body>
    <h2>ACTIONS:</h2>

    <button onClick="toggleEdit()">EDIT</button>
    <form id="hideEdit" class="hidden" action="UpdateResponseServlet" method="post">
        <table  style="with: 80%" >
            <tr>
                <th>Search Product ID:</th>
                <td><input type="text" name="editid" /></td>
            </tr>
            <tr>
                <td>Update Product Name</td>
                <td><input type="text" name="editproduct" /></td>
            </tr>
            <tr>
                <td>Update Quantity</td>
                <td><input type="text" name="editquantity" /></td>
            </tr>
        </table>
        <input type="submit" value="Update Product" />
    </form>

    <br><br>

    <button onClick="toggleDel()">DELETE</button>
    <form id="hideDel" class="hidden" action="DeleteResponseServlet" method="post">
        <table  style="with: 80%" >
            <tr>
                <th>Input values to search for a record to delete:</th> 
            </tr>
            <tr>
                <td>Product ID</td>
                <td><input type="text" name="delid" /></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="delproduct" /></td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td><input type="text" name="delquantity" /></td>
            </tr>
        </table>
        <input type="submit" value="Delete Product" />
    </form>

    <div align="center">
        <h1>Add Product to Inventory</h1>
        <form action="sendQuery" method="post">
            <table style="with: 80%">

                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="id" /></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="product" /></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="quantity" /></td>
                </tr>
            </table>
            <input type="submit" value="Insert Product" />
        </form>
    </div>




    
<script>
function toggleEdit() {

  document.getElementById("hideEdit").classList.toggle("hidden");

}
function toggleDel() {

document.getElementById("hideDel").classList.toggle("hidden");

}
</script>
	
	
</body>
</html>