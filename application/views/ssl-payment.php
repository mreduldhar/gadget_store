
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
.panel-title {
    display: inline;
    font-weight: bold;
}
.display-table {
    display: table;
}
.display-tr {
    display: table-row;
}
.display-td {
    display: table-cell;
    vertical-align: middle;
    width: 61%;
}
</style>
<div class="products">
    <div class="container">

     <div class="row">
     <img class="img-responsive" style="height: 73px;margin: 0 auto;" src="<?= base_url('img/ssl.png') ?>">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                    </div>                    
                </div>
                <div class="panel-body">

                    <?php if($this->session->flashdata('success')){ ?>
                    <div class="alert alert-success text-center">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <p><?php echo $this->session->flashdata('success'); ?></p>
                    </div>
                    <?php } ?>

                    <form role="form" action="<?=base_url()?>Order/easycheckout_endpoint" method="post" class="require-validation"
                       data-cc-on-file="false"
                       data-stripe-publishable-key="<?php echo $this->config->item('stripe_key') ?>"
                       id="payment-form">


            <div class="form-row row">
              <div class='col-xs-12 form-group required'>
              <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Name</label>
                <input name="name" type="text" value="<?php echo $this->session->userdata('username');?>" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Enter your name here">
              </div>
            </div>
            <div class="error"><?=form_error('name')?></div>


            <div class="form-row row">
              <div class='col-xs-12 form-group required'>
              <label for="colFormLabel" class="col-sm-2 col-form-label">Email</label>
                <input name="email" type="email" value="<?php echo $this->session->userdata('email');?>" class="form-control" id="colFormLabel" placeholder="">
              </div>
            </div>
            <div class="error"><?=form_error('email')?></div>

            <div class="form-row row">
              <div class='col-xs-12 form-group required'>
              <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Address</label>
                <input name="address" type="text" class="form-control form-control-lg" id="colFormLabelLg" placeholder="Enter your address here">
              </div>
            </div>
            <div class="error"><?=form_error('address')?></div>


            <div class="form-row row">
              <div class='col-xs-12 form-group required'>
              <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Mobile</label>
                <input name="mobile" type="text" class="form-control form-control-lg" id="colFormLabelLg" placeholder="Enter your mobile number">
              </div>
            </div>

            <div class="error"><?=form_error('mobile')?></div>


                   

                    <div class='form-row row'>
                        <div class='col-md-12 error form-group hide'>
                            <div class='alert-danger alert'>Please correct the errors and try
                            again.</div>
                        </div>
                    </div>

                    <input type="hidden" id="price_to_submit" name="total_price" value="<?php echo $total_price; ?>">

                    <div class="row">
                        <div class="col-xs-12">
                            <button class="btn btn-primary btn-lg btn-block" type="submit">Pay Now <span id="paying_amount">(<?php echo "৳".$total_price; ?>)</span></button>
                        </div>
                    </div>

                </form>
            </div>
        </div>        
    </div>
</div>

</div>
</div>     

