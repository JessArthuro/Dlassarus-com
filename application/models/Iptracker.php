<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Iptracker extends CI_Model{

	private $sys = null;
	
	public function __construct(){
		$this->sys	=& get_instance();
        $this->sys->load->library('user_agent');
	}
	
	private static function get_ip_address(){		
		$ip = getenv('HTTP_CLIENT_IP')?:
			getenv('HTTP_X_FORWARDED_FOR')?:
			getenv('HTTP_X_FORWARDED')?:
			getenv('HTTP_FORWARDED_FOR')?:
			getenv('HTTP_FORWARDED')?:
			getenv('REMOTE_ADDR');		
		return $ip;
	}
	
	private function get_page_visit(){
		return current_url();
	}
    
    private function get_user_agent(){        
        if ($this->sys->agent->is_browser()){
            $agent = $this->sys->agent->browser().' '.$this->sys->agent->version();
        }
        elseif ($this->sys->agent->is_robot()){
            $agent = $this->sys->agent->robot();
        }
        elseif ($this->sys->agent->is_mobile()){
            $agent = $this->sys->agent->mobile();
        }
        else{
            $agent = 'Unidentified User Agent';
        }
        return $agent;
    }

    private function get_platform(){
    	if ($this->sys->agent->platform()) {
    		$platform = $this->sys->agent->platform();
    	}
    	return $platform;
    }
	
	public function save_site_visit(){
		$ip 	= self::get_ip_address();
		$page	= self::get_page_visit();
        $agent  = self::get_user_agent();
        $platform = self::get_platform();
		$seg    = explode("-", $page);
				
			$data = array(
				'ip'            => $ip,
				'url'     => $page,
                'navegador'    => $agent,
                'plataforma' => $platform,
				'date'          => time()
			);
			
			$this->sys->db->insert('history', $data);			
		}
	}

$tracker = new Iptracker();
$tracker->save_site_visit();
