<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>    
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="contentheadflex content-header"  id="contentheid">
    <div class="row">
     <div class="col-sm-12">
       <div class="contenttitle memberperformencetitle">
         <h1>
          Order details
        </h1>
      </div>
    </div>

  </div>

</section>

<?php  $msg=$this->session->flashdata('message');
if(!empty($msg)){
  echo  "<br>".$msg;  } ?> 
  <section class="content">
    <div class="row">
      <div class="table table-stripe">
        <table class="tablenew table table-hover">
          <tbody>
           <table class="table table-bordered">
            <tr style="background: #cabfbf;">
             <th width="40%">Product Name</th>
             <th width="20%">Quantity</th>
             <th width="20%">Price</th>
             <th width="20%">Total</th>
           </tr>

           <?php 
           $total =0;
           foreach($cart as $cart){
            $total +=$cart['subtotal']; ?>

            <tr> 
              <td class="pname" ><?php echo $cart['name'] ?></td>
              <td class="pname" ><?php echo $cart['qty'] ?></td>
              <td class="pname" >৳<?php echo $cart['price'] ?></td>
              <td class="pname" >৳<?php echo $cart['subtotal'] ?></td>
              
            </tr>
          <?php } ?>
          <tr>
            <th></th><th></th><th>Grand Total</th>
            <th><p>৳<?php echo $total; ?></p></th>
          </tr>

        </table>
        <?php if ($result[0]['status']==0) { ?>
         <div class="btn-group pull-right" style="margin-right: 5%;"><a class="btn btn-success" style="background:#96588A;" href="<?=base_url()?>Order/delivered/<?=$result[0]['id']?>">Shipped</a><a href="<?=base_url()?>Order/cancelled/<?=$result[0]['id']?>" class="btn btn-danger">Cancel Order</a></div>
         
       <?php } else if ($result[0]['status']==1) { ?>
        <div class="btn-group pull-right" style="margin-right: 5%;">
          <button class="btn btn-info btn-lg" disabled="" style="background: #96588A;">Order Shipped</button>
        </div>
      <?php } else if ($result[0]['status']==2) { ?>
        <div class="btn-group pull-right" style="margin-right: 5%;">
          <button class="btn btn-info btn-lg" disabled="">Order Cancelled</button>
        </div>
      <?php } ?>
    </div>
  </div>

</tbody>
</table>
</div>
</div>
</section>