<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>    
<div class="content-wrapper">
  <section>
    <div class="row">
     <div class="col-sm-12">
       <div>
        <center>         <h1>
          <?php if ($this->uri->segment(2)=='delivered_orders') {
            echo 'Delivered orders';
          } else if ($this->uri->segment(2)=='pending_orders') { 
            echo 'Pending orders';
          } else if ($this->uri->segment(2)=='cancelled_orders') { 
            echo 'Cancelled orders';
          } ?>
        </h1></center>
      </div>
    </div>

  </div>
  <!--end row -->
</section>

<div class="settingstablebody box-body table-responsive no-padding">
  <table class="tablenew table table-hover">
    <tbody>
      <tr style="background: #cabfbf;">
        <th>Date</th>
        <th>Amount</th>
        <th>Transactions Id</th>
        <th>Status</th>
        <th>Action</th>

      </tr>
    </thead>

    <tbody>
      <?php foreach ($result as $row) { ?>
        <tr>
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
          } else{
            echo 'Pending';
          } ?></td>
          <td><div class="btn-group"><a class="btn btn-success" style="background:#96588A; " href="<?=base_url()?>Order/order_info/<?=$row['id']?>">View Details</a></div></td>
        </tr>

      <?php } ?>
    </tbody>
  </table>
</div>
</div>