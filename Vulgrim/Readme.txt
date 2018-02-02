Welcome to RSPDEVOPS- Remote Trigger Jenkins Job By KSPKR
*********************************************************
import urllib3, requests, json
url = "https://10.155.1.132:8080/jenkins/job/Test-01-01/build?token=Vulgrim"
params = {"parameter": [{"name": "build.xml", "file": "file0"},]}
	with open("integration.xml", "rb") as f:
	    file_data = f.read()
	    data, content_type = urllib3.encode_multipart_formdata([
	        ("file0", (f.name, file_data)),
		    ("json", json.dumps(params)),
		        ("Submit", "Build"),
			    ])
			    resp = requests.post(url, auth=("admin", "K!ngK0ng19"), data=data,
			            headers={"content-type": content_type}, verify=False)
				    resp.raise_for_status()
