<div class="products">

  <div class="container">

                <table class="table table-dark table-hover">
                  <tr style="background: #c7c4c4;">
                   <th width="40%">Product Name</th>
                   <th width="20%">Quantity</th>
                   <th width="20%">Price</th>
                   <th width="20%">Total</th>
                 </tr>

                 <?php 
                 $total =0;
                  foreach($cart as $cart){
                  $total +=$cart['subtotal']; ?>

                 <tr style="background: #f3cbeb;"> 
                  <td class="pname" ><?php echo $cart['name'] ?></td>
                  <td class="pname" ><?php echo $cart['qty'] ?></td>
                  <td class="pname" >৳<?php echo $cart['price'] ?></td>
                  <td class="pname" >৳<?php echo $cart['subtotal'] ?></td>
                  
                </tr>
                <?php } ?>
                <tr style="background: #dea5a5;">
                  <th></th><th></th><th>Grand Total</th>
                  <th><p><?php echo "৳".$total; ?></p></th>
                </tr>
              </table>

            </div>
          </div>