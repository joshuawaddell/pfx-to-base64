$wildcardCertificatePath = "ENTER PATH TO PFX HERE"
$secureCertificatePassword = "ENTER CERTIFICATE PASSWORD HERE"
$certificateFlags = [System.Security.Cryptography.X509Certificates.X509KeyStorageFlags]::Exportable
$certificateCollection = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2Collection
$certificateCollection.Import($wildcardCertificatePath, $secureCertificatePassword, $certificateFlags)
$pkcs12ContentType = [System.Security.Cryptography.X509Certificates.X509ContentType]::Pkcs12
$certificateBytes = $certificateCollection.Export($pkcs12ContentType)
$encodedCertificate = [System.Convert]::ToBase64String($certificateBytes) | Out-File 'ENTER PATH TO BASE64 HERE'
