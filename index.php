<?php
    include 'db.php';
    $serial_number = '66595018220294';
    $server_ip = '192.168.0.26'; //IP Host komputer saat ini.
	$server_port = '8080'; //Port tetap 8080 saja.
	
	function webservice($port,$url,$parameter){
		$curl = curl_init();
		set_time_limit(0);
		curl_setopt_array($curl, array(
			CURLOPT_PORT => $port,
			CURLOPT_URL => "http://".$url,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_ENCODING => "",
			CURLOPT_MAXREDIRS => 10,
			CURLOPT_TIMEOUT => 0,
			CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			CURLOPT_CUSTOMREQUEST => "POST",
			CURLOPT_POSTFIELDS => $parameter,
			CURLOPT_HTTPHEADER => array(
				"cache-control: no-cache",
				"content-type: application/x-www-form-urlencoded"
				),
			)
		);
		$response = curl_exec($curl);
		$err = curl_error($curl);
		curl_close($curl);
		if ($err) {
			$response = ("Error #:" . $err);
		}
		return $response;
	}

    $url = $server_ip."/scanlog/new";
    $parameter = "sn=".$serial_number;
    $server_output = webservice($server_port,$url,$parameter);
	$content = json_decode($server_output);
    
    foreach ($content as $key => $value) {
        if ((!is_array($value)) and ($value==1)) {
            foreach($content->Data as $entry){
                $sn = $entry->SN;
                $scan_date = $entry->ScanDate;
				$nip = $entry->PIN;
				$verify_mode = $entry->VerifyMode;
                $sql = 'INSERT INTO fp_log(scan_date,nip,verify_mode) values ("'.$scan_date.'","'.$nip.'","'.$verify_mode.'")';
				$result = mysqli_query($conn,$sql);
                if(!$result){
                    echo '<script>alert ("Failed !")</script>';
                }
            }
        }
    }
?>