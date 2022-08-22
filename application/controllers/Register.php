<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index()
	{

		$this->form_validation->set_rules('username', 'User Name', 'required|min_length[3]|max_length[30]|is_unique[users.username]');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[users.email]');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->library("cart");
			$data['total_cart_items'] = count($this->cart->contents());
			$this->load->view('template/header',$data);
			$this->load->view('register');
			$this->load->view('template/footer');
		} else{
			$data['username']=$this->input->post('username');
			$data['email']=$this->input->post('email');
			$data['password']=md5($this->input->post('password'));
			$data['status']=1;

			$res = $this->db->insert('users',$data);

			if($res){
				$this->session->set_flashdata('success','Your Account has been created successfully.');

				
			   $this->db->where('email',$data['email']);
			   $this->db->where('password',$data['password']);
			   $query=$this->db->get('users');
			   $result=$query->result_array();
   
   
			   if ($result) {
   
				   if($result[0]['status']=='0'){
					   
					   $msg='<div class="alert alert-danger"> Your Account is  not Verifed Yet! </div>';
					   
					   $this->session->set_flashdata('message',$msg);
					   
					   
					   redirect('login');
					   
				   }else{
						$this->session->set_userdata('userid', $result[0]['id']);
						$this->session->set_userdata('email', $result[0]['email']);
						$this->session->set_userdata('username', $result[0]['username']);
			
						redirect(base_url());
					}
			   }


			}else{
				$this->session->set_flashdata('info','Something went wrong please try again.');
				redirect('register');
			}

			// print_r($this->session->flashdata());
			// exit;

			
			

		}
	}

	

	public function email2(){
	require 'vendor/autoload.php'; // If you're using Composer (recommended)
// Comment out the above line if not using Composer
// require("<PATH TO>/sendgrid-php.php");
// If not using Composer, uncomment the above line and
// download sendgrid-php.zip from the latest release here,
// replacing <PATH TO> with the path to the sendgrid-php.php file,
// which is included in the download:
// https://github.com/sendgrid/sendgrid-php/releases
	$email = new \SendGrid\Mail\Mail();
            //$url = "http://localhost:8100/forgotten-password/" . $code;

	$email->setFrom("muhon199@gmail.com", "app-003");
	$email->setSubject("Forgot Password Link");
	$email->addTo("muhon199@gmail.com", "shop");
	$email->addContent("text/html", "Hi, your password reset code is ");


	$sendgrid = new \SendGrid('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');
	try {
		$sendgrid->send($email);
                //print $response->statusCode() . "\n";
                //print_r($response->headers());
               // print $response->body() . "\n";
	} catch (Exception $e) {
		echo 'Caught exception: ' . $e->getMessage() . "\n";
	}

}
}
