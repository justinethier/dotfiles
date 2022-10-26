# Laravel

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

This can also be done via `openssl` on the command line:

```
echo 'value goes here' | openssl enc -aes-256-cbc -d -K 'key as hex' -iv 'iv as hex' -a
```
