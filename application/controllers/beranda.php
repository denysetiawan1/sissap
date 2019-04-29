<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Beranda extends CI_Controller {
    public function index(){
        $data['view']   = "beranda/beranda";
        $this->load->view('beranda/beranda',$data);
   
    }
}