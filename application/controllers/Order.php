<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {



	public function payment_method()
	{

		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }

		$this->load->library("cart");
		$data['total_cart_items'] = count($this->cart->contents());
		$this->load->view('template/header',$data);
		$this->load->view('payment-method');
		$this->load->view('template/footer');		
	}


	public function cash_on_delivery()
	{
	$this->load->library("cart");
		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }

		$this->form_validation->set_rules('name', 'Name', 'required');

		$this->form_validation->set_rules('email', 'Email', 'required');
		
		$this->form_validation->set_rules('mobile', 'Mobile number', 'required');

		$this->form_validation->set_rules('address', 'Address', 'required');


		if ($this->form_validation->run() == FALSE)
		{

			$data['total_cart_items'] = count($this->cart->contents());

			$this->load->view('template/header',$data);
			$this->load->view('cash-on-delivery');
			$this->load->view('template/footer');
		}else{

			$data['user_id']=$this->session->userdata('userid');
			$data['user_name']=$this->input->post('name');
			$data['user_address']=$this->input->post('address');
			$data['user_email']=$this->input->post('email');
			$data['user_mobile']=$this->input->post('mobile');
			$data['cart'] = serialize($this->cart->contents());
			$data['payment_method']='cash-on-delivery';
			$data['transaction_id']=rand(100000,999999);
			$data['order_date']=date("Y-m-d h:i:sa");

			$this->db->insert('orders',$data);
			$this->cart->destroy();
			$msg='<div class="alert alert-success">Congratulations '.$data['user_name'].'! <br>
			Your order has been confirmed. <br>
			Your transaction key '.$data['transaction_id'].' </div>';

			$this->session->set_flashdata('order',$msg);
			redirect(base_url());


		}	
	}



	public function my_account(){

	$this->load->library("cart");
		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }

		$query=  $this->db->select('*')->from('orders')->where('user_id',$this->session->userdata('userid'))->order_by('id','desc')->get();
		$data['result'] = $query->result_array();

		$data['total_cart_items'] = count($this->cart->contents());

		$this->load->view('template/header',$data);
		$this->load->view('my-order',$data);
		$this->load->view('template/footer');


	}

	public function order_details($id){
	$this->load->library("cart");
		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }


		$query=  $this->db->select('*')->from('orders')->where('id',$id)->get();
		$data['result'] = $query->result_array();
		$data['cart'] = unserialize($data['result'][0]['cart']);

		$data['total_cart_items'] = count($this->cart->contents());

		$this->load->view('template/header',$data);
		$this->load->view('order-details',$data);
		$this->load->view('template/footer');


	}


	
	public function stripe_payment_form()
	{
	$this->load->library("cart");
		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }

		$data['total_cart_items'] = count($this->cart->contents());
		$data['total_price'] = $this->cart->total();

		$this->load->view('template/header',$data);
		$this->load->view('stripe-payment');
		$this->load->view('template/footer');
	}

	public function ssl_payment_form()
	{
	$this->load->library("cart");
		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }

		$data['total_cart_items'] = count($this->cart->contents());
		$data['total_price'] = $this->cart->total();

		$this->load->view('template/header',$data);
		$this->load->view('ssl-payment');
		$this->load->view('template/footer');
	}

	


	public function stripe_payment()
	{

	$this->load->library("cart");
		if(($this->session->userdata('userid'))){
		}else{ redirect('Login'); }

		try{
			require_once('application/libraries/stripe-php/init.php');

			\Stripe\Stripe::setApiKey($this->config->item('stripe_secret'));

			\Stripe\Charge::create ([
				"amount" => $this->cart->total() * 100,
				"currency" => "USD",
				"source" => $this->input->post('stripeToken'),
				"description" => "Test payment" 
			]);

		} catch (\Stripe\Error\ApiConnection $e) {
    // Network problem, perhaps try again.
			
			$this->session->set_flashdata('success', 'Network problem, perhaps try again.');
			redirect($_SERVER['HTTP_REFERER']);
		} catch (\Stripe\Error\InvalidRequest $e) {
    // You screwed up in your programming. Shouldn't happen!
			
			$this->session->set_flashdata('success', 'Network problem, perhaps try again!');
			redirect($_SERVER['HTTP_REFERER']);
		} catch (\Stripe\Error\Api $e) {
    // Stripe's servers are down!
			
			$this->session->set_flashdata('success', 'Stripe servers are down!');
			redirect($_SERVER['HTTP_REFERER']);
		} catch (\Stripe\Error\Card $e) {
    // Card was declined.
			
			$this->session->set_flashdata('success', 'Network problem, perhaps try again.');
			redirect($_SERVER['HTTP_REFERER']);
		}


		$data['user_id']=$this->session->userdata('userid');
		$data['user_name']=$this->input->post('name');
		$data['user_address']=$this->input->post('address');
		$data['user_email']=$this->input->post('email');
		$data['user_mobile']=$this->input->post('mobile');
		$data['cart'] = serialize($this->cart->contents());
		$data['payment_method']='card-payment';
		$data['transaction_id']=$this->input->post('stripeToken');
		$data['order_date']=date("Y-m-d h:i:sa");

		$this->db->insert('orders',$data);
		$this->cart->destroy();
		$msg='<div class="alert alert-success">Congratulations '.$data['user_name'].'! <br>
		Your order has been confirmed. <br>
		Your transaction key '.$data['transaction_id'].' </div>';

		$this->session->set_flashdata('order',$msg);
		redirect(base_url());


	}



	public function pending_orders(){


		if(($this->session->userdata('admin_id'))){
		}else{ redirect('Admin'); }


		$query=  $this->db->select('*')->from('orders')->where('status',0)->get();
		$data['result'] = $query->result_array();

		//$data['total_cart_items'] = count($this->cart->contents());
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('pending-orders',$data);
		$this->load->view('admin/footer');

	}



	public function delivered_orders(){


		if(($this->session->userdata('admin_id'))){
		}else{ redirect('Admin'); }


		$query=  $this->db->select('*')->from('orders')->where('status',1)->order_by('id','desc')->get();
		$data['result'] = $query->result_array();
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('pending-orders',$data);
		$this->load->view('admin/footer');

	}


	public function cancelled_orders(){

		if(($this->session->userdata('admin_id'))){
		}else{ redirect('Admin'); }

		$query=  $this->db->select('*')->from('orders')->where('status',2)->get();
		$data['result'] = $query->result_array();
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('pending-orders',$data);
		$this->load->view('admin/footer');

	}


	public function order_info($id){

		if(($this->session->userdata('admin_id'))){
		}else{ redirect('Admin'); }

	$this->load->library("cart");
	
		$query=  $this->db->select('*')->from('orders')->where('id',$id)->get();
		$data['result'] = $query->result_array();
		$data['cart'] = unserialize($data['result'][0]['cart']);

		$data['total_cart_items'] = count($this->cart->contents());

		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('order-info',$data);
		$this->load->view('admin/footer');


	}



	public function delivered($id){

		
		$this->db->set('status',1);
		$this->db->where('id',$id);
		$this->db->update('orders');

		$msg='<div class="alert alert-success">Order marked as delivered </div>';

		$this->session->set_flashdata('message',$msg);
		redirect($_SERVER['HTTP_REFERER']);


	}



	public function cancelled($id){

		
		$this->db->set('status',2);
		$this->db->where('id',$id);
		$this->db->update('orders');

		$msg='<div class="alert alert-success">Order marked as cancelled </div>';

		$this->session->set_flashdata('message',$msg);
		redirect($_SERVER['HTTP_REFERER']);


	}



///--- sslcommerz paymnet ---//
public function easycheckout_endpoint()
	{
        $this->load->library("cart");
		$data['user_id']=$this->session->userdata('userid');
		$data['user_name']=$this->input->post('name');
		$data['user_address']=$this->input->post('address');
		$data['user_email']=$this->input->post('email');
		$data['user_mobile']=$this->input->post('mobile');
		$data['cart'] = serialize($this->cart->contents());
		$data['payment_method']='card-payment';
		$data['transaction_id']='';
		$data['order_date']=date("Y-m-d h:i:sa");

		$this->db->insert('orders',$data);
		$order_id =  $this->db->insert_id();
		
		$this->cart->destroy();

		if($order_id){
			$post_data = array();
			$post_data['total_amount'] = $this->input->post('total_price');
			$post_data['currency'] = "BDT";
			$post_data['tran_id'] = $order_id;
			$post_data['success_url'] = base_url()."success/".$post_data['tran_id'];
			$post_data['fail_url'] = base_url()."order/ssl_payment_failed";
			$post_data['cancel_url'] = base_url()."cancel";
			$post_data['ipn_url'] = base_url()."ipn";
			# $post_data['multi_card_name'] = "mastercard,visacard,amexcard";  # DISABLE TO DISPLAY ALL AVAILABLE

			# EMI INFO
			// $post_data['emi_option'] = "1";
			// $post_data['emi_max_inst_option'] = "9";
			// $post_data['emi_selected_inst'] = "9";

			# CUSTOMER INFORMATION
			$post_data['cus_name'] = $this->input->post('name');
			$post_data['cus_email'] = $this->input->post('email');
			$post_data['cus_add1'] = $this->input->post('address');
			$post_data['cus_city'] = 'Sylhet';
			$post_data['cus_state'] = 'Sylhet';
			$post_data['cus_postcode'] = '3100';
			$post_data['cus_country'] = 'Bangladesh';
			$post_data['cus_phone'] = $this->input->post('mobile');

			# SHIPMENT INFORMATION
			$post_data['ship_name'] = $this->input->post('name');
			$post_data['ship_add1'] = $this->input->post('address');
			$post_data['ship_city'] = 'Sylhet';
			$post_data['ship_state'] = 'Sylhet';
			$post_data['ship_postcode'] = '3100';
			$post_data['ship_country'] = 'Bangladesh';

			# OPTIONAL PARAMETERS
			$post_data['value_a'] = "ref002";
			$post_data['value_b'] = "ref002";
			$post_data['value_c'] = "ref003";
			$post_data['value_d'] = "ref004";

			$post_data['product_profile'] = "physical-goods";
			$post_data['shipping_method'] = "YES";
			$post_data['num_of_item'] = "3";
			$post_data['product_name'] = "Computer,Speaker";
			$post_data['product_category'] = "Ecommerce";

			$this->load->library('session');

			$session = array(
				'tran_id' => $post_data['tran_id'],
				'amount' => $post_data['total_amount'],
				'currency' => $post_data['currency']
			);
			$this->session->set_userdata('tarndata', $session);
			
			if($this->sslcommerz->EasyCheckout($post_data,'gadge62e695930faee', 'gadge62e695930faee@ssl'))
			{
				echo "Pending";
				exit;
				/***************************************
				# Change your database status to Pending.
				****************************************/
			}
		}
	}

	public function ssl_payment_success($order_id){

		if($this->input->post('tran_id')){
			$data = array(
				'id'=>$order_id,
				'transaction_id'=>$this->input->post('bank_tran_id'),
				'payment_method'=>$this->input->post('card_type')
			);

			if($this->Cart->updateOrder($data)){

				$msg='<div class="alert alert-success">Congratulations! <br>
				Your order has been confirmed. <br>
				Your transaction key '.$data['transaction_id'].' </div>';

				$this->session->set_flashdata('order',$msg);
				redirect(base_url());
			}
		}
	}


	public function ssl_payment_failed(){

		$msg='<div class="alert alert-danger">Sorry! <br>
		Your order has been failed. <br>
		Please try again.</div>';

		$this->session->set_flashdata('order',$msg);
		redirect(base_url());
	}






}