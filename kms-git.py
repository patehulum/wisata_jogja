import os
import json
from aliyunsdkcore.client import AcsClient
from aliyunsdkkms.request.v20160120 import GetSecretValueRequest

# Set access key ID, access key secret, and region ID
access_key_id = "access-key-value"
access_key_secret = "secret-key-value"
region_id = "region-id"

# Create an Alibaba Cloud client
client = AcsClient(access_key_id, access_key_secret, region_id)

secret_name = "secret-name"

request = GetSecretValueRequest.GetSecretValueRequest()
request.set_SecretName(secret_name)

try:
    response = client.do_action_with_exception(request)
    secret_value = response.decode("utf-8")
    print(f"Retrieved secret: {secret_value}")

    # Mengubah output menjadi objek Python
    secret_data = json.loads(secret_value)

    # Mengambil nilai "AccountName" dan "AccountPassword" dari dalam "SecretData"
    secret_data_json = json.loads(secret_data['SecretData'])
    account_name = secret_data_json['AccountName']
    account_password = secret_data_json['AccountPassword']
    
    # Simpan Account password kedalam double quote
    account_password = f"'{account_password}'"

    # Hapus nilai lama dari environment variables jika sudah ada
    if 'AccountName' in os.environ:
        del os.environ['AccountName']
    if 'AccountPassword' in os.environ:
        del os.environ['AccountPassword']
    
    # Menyimpan nilai baru ke environment variables
    os.environ['AccountName'] = account_name
    os.environ['AccountPassword'] = account_password

    # Verifikasi bahwa nilai telah disimpan
    print(f"AccountName: {os.getenv('AccountName')}")
    print(f"AccountPassword: {os.getenv('AccountPassword')}")

    bashrc_path = os.path.expanduser("~/.bashrc")
    bashrc_content = ""

    try:
        # Attempt to read the contents of .bashrc
        with open(bashrc_path, "r") as bashrc_file:
            bashrc_content = bashrc_file.read()
    except FileNotFoundError:
        # Handle the case when .bashrc doesn't exist
        pass

    # Check if the AccountName variable is already in .bashrc
    if f'export AccountName=' in bashrc_content:
        # If it's already there, replace its value
        new_bashrc_content = ""
        for line in bashrc_content.split("\n"):
            if line.startswith("export AccountName="):
                line = f'export AccountName={account_name}'
            new_bashrc_content += line + "\n"
    
        # Write the updated .bashrc with the new value
        with open(bashrc_path, "w") as bashrc_file:
            bashrc_file.write(new_bashrc_content)
    else:
        # If it's not there, add a new line
        with open(bashrc_path, "a") as bashrc_file:
            bashrc_file.write(f"\n# Added by Python script\n")
            bashrc_file.write(f'export AccountName={account_name}\n')

    # Mengecek apakah variabel AccountPassword sudah ada di .bashrc
    if f'export AccountPassword=' in bashrc_content:
        # Jika sudah ada, maka gantilah nilainya
        new_bashrc_content = ""
        for line in bashrc_content.split("\n"):
            if line.startswith("export AccountPassword="):
                line = f'export AccountPassword={account_password}'
            new_bashrc_content += line + "\n"
    
        # Tulis ulang .bashrc dengan nilai yang baru
        with open(bashrc_path, "w") as bashrc_file:
            bashrc_file.write(new_bashrc_content)
    else:
        # Jika belum ada, tambahkan baris baru
        with open(bashrc_path, "a") as bashrc_file:
            bashrc_file.write(f"\n# Added by Python script\n")
            bashrc_file.write(f'export AccountPassword={account_password}\n')
    
    # Membersihkan cache Laravel
    laravel_directory = "/var/www/wisata_jogja"
    os.chdir(laravel_directory)  # Mengubah direktori kerja ke direktori Laravel
    os.system("php artisan config:cache")
    
except Exception as e:
    print(f"Error retrieving secret: {str(e)}")
