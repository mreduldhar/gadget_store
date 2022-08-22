<div class="products">

  <div class="container">

    <?php  $msg=$this->session->flashdata('message');
    if(!empty($msg)){
      echo  "<br>".$msg;  } ?> 
      <?php if ($result) { ?>
        <center><h3 style="color:#96588A;">Your Order History</h3></center><br>
      <?php } ?>
      <table class="table col-md-10 offset-1">
        <thead>
          <tr style="background: #c7c4c4;font-weight: 700;">
            <th>Order Date</th>
            <th>Amount</th>
            <th>Transaction Id</th>
            <th>Status</th>
            <th>Action</th>

          </tr>
        </thead>

        <tbody>
          <?php foreach ($result as $row) { ?>
            <tr style="background: #dea5a5;">
              <td><?php 
              echo date("Y-m-d", strtotime($row['order_date'])); ?></td>
              <td><?php $cart = unserialize($row['cart']);
              $total =0;
              foreach ($cart as $cart2) {  

                $total +=$cart2['subtotal'];
              } 
              echo '৳'.$total;
              ?> </td>

              <td><?php echo $row['transaction_id'] ?></td>

              <td><?php if($row['status']==0){
                echo 'Pending';
              } else if($row['status']==1){
                echo 'Delivered';
              }

             else if($row['status']==2){
              echo 'cancelled';
            }
            
            else{
              echo 'Pending';
            } ?></td>
            <td><div class="btn-group"><a class="btn btn-success" href="<?=base_url()?>Order/order_details/<?=$row['id']?>">View Details</a>
             <?php if ($row['status']==0) { ?>
               <a href="<?=base_url()?>Order/cancelled/<?=$row['id']?>" class="btn btn-danger">cancel order</a>
             <?php } else if ($row['status']==2) { ?>
               <a href="" class="btn btn-danger" disabled>cancelled</a>
             <?php } else if ($row['status']==1) { ?>
               <a href="" class="btn btn-primary" disabled>Shipped</a>
               <?php } ?></div></td>
             </tr>



           <?php } ?>
         </tbody>
       </table>
     </div>
   </div>