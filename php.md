Proof of concept to decode a Laravel 9 cookie:

```
function laravel_decode($cookie) {
 // TODO: URL decode $cookie (replace '%3D' with '=')
 $data = json_decode(base64_decode($cookie));
 return openssl_decrypt($data->value,
  "aes-256-cbc",
  base64_decode("Laravel app key goes here"),
  0,
  base64_decode($data->iv), $data->tag || '');
}
```
