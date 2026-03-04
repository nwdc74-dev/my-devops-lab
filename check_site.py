import requests

# Change :80 to :8080
url = "http://localhost:8080" 

try:
    response = requests.get(url, timeout=2)
    if response.status_code == 200:
        print("✅ Website is UP on Port 8080!")
    else:
        print(f"⚠️ Status Code: {response.status_code}")
except Exception as e:
    print(f"🚨 Still unreachable. Error: {e}")
