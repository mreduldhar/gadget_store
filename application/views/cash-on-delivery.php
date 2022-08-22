  <!-- Content page -->
  <section class="bg0 p-t-104 p-b-116">
    <div class="container">
      <div class="flex-w flex-tr">
        <div class="col-md-3"></div>
        <div class="col-md-6" style="margin-top: 5%;margin-bottom: 5%;">


          <?php  
          
          
          if($this->session->flashdata('message')){ echo $this->session->flashdata('message'); }
          
          ?>
          
          <form action="<?=base_url()?>Order/cash_on_delivery" method="POST" id="paymentFrm" >

            <div class="form-group row">
              <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Name</label>
              <div class="col-sm-10">
                <input name="name" type="text" value="<?php echo $this->session->userdata('username');?>" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Enter your name here">
              </div>
            </div>
            <div class="error"><?=form_error('name')?></div>
            <div class="form-group row">
              <label for="colFormLabel" class="col-sm-2 col-form-label">Email</label>
              <div class="col-sm-10">
                <input name="email" type="email" value="<?php echo $this->session->userdata('email');?>" class="form-control" id="colFormLabel" placeholder="">
              </div>
            </div>
            <div class="error"><?=form_error('email')?></div>
            <div class="form-group row">
              <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Address</label>
              <div class="col-sm-10">
                <input name="address" type="text" class="form-control form-control-lg" id="colFormLabelLg" placeholder="Enter your address here">
              </div>
            </div>
            <div class="error"><?=form_error('address')?></div>


            <div class="form-group row">
              <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Mobile</label>
              <div class="col-sm-10">
                <input name="mobile" type="text" class="form-control form-control-lg" id="colFormLabelLg" placeholder="Enter your mobile number">
              </div>
            </div>
            <div class="error"><?=form_error('mobile')?></div>

            <button class="btn btn-info btn-lg" type="submit" id="payBtn" style="margin-left: 18%;">
              Confirm order
            </button>
          </form>
          
        </div></div>
        </div>
      </div>
    </section>  