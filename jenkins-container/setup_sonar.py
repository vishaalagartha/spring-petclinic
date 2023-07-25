import requests

from requests.auth import HTTPBasicAuth

# Create project
payload = {'project': 'spring-petclinic',
'name': 'spring-petclinic',
'organization': 'vagartha'}
res = requests.post('http://localhost:9000/api/projects/create', auth=HTTPBasicAuth('admin', 'admin'), data=payload)
if res.status_code == 200:
    print('Successfully created project')
else:
    print(res.json()['errors'])

# Generate token
payload = { 'login': 'admin', 'name': 'jenkins' }
res = requests.post('http://localhost:9000/api/user_tokens/generate', auth=HTTPBasicAuth('admin', 'admin'), data=payload)
token = None
if res.status_code == 200:
    token = res.json()['token']
    print(res.json())
else:
    print(res.json()['errors'])
    res = requests.post('http://localhost:9000/api/user_tokens/revoke', auth=HTTPBasicAuth('admin', 'admin'), data=payload)
    if res.status_code == 204:
        print('Revoked token')
        res = requests.post('http://localhost:9000/api/user_tokens/generate', auth=HTTPBasicAuth('admin', 'admin'), data=payload)
        if res.status_code == 200:
          print(res.json())
          token = res.json()['token']
    else:
        print(res.json())

# Write token to file
if token:
    print('Writing token to sonar_token.txt')
    with open('./sonar_token.txt', 'w+') as f:
        f.write(token)
    