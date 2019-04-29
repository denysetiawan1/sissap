<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('login_model'));
        $this->load->library("UserLibrary");
    }

    function index()
    {
        if($this->session->userdata('LOGGED_IN') == true) redirect('gejala');

        $data["view"]="login/login";
        $this->load->view("login/theme", $data);
    }

    function submit(){
        if($this->input->post('username') != '' && $this->input->post('password') != ''){
            $obj = $this->login_model->getData($this->input->post('username'), $this->input->post('password'));
            if($obj->num_rows() > 0){

                $obj = $obj->row();
                $sessionData = array(
                    'ID_ADMIN'		    => $obj->id,
                    'USERNAME'			=> $obj->username,
                    'NAMA'		    	=> $obj->nama,
                    'LOGGED_IN' 		=> TRUE
                );
                $this->session->set_userdata($sessionData);

                $this->session->set_flashdata('success', "Login Berhasil");
                redirect('gejala');
            }
        }

        $this->session->set_flashdata('error', "Username dan Password salah.");
        redirect('login');
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect('login');
    }
}