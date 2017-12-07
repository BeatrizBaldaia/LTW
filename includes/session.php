<?php
  //TODO: Not working with the first login if code below is uncommented.
  //Unsure if this is the correct $_SERVER variable.
  session_set_cookie_params(0, '/', $_SERVER['SERVER_NAME'], false, true); //TODO PENULTIMA ALTERAR

  session_start();
  //session_regenerate_id(true); // Recommended in class to be turned off.
  if (!isset($_SESSION['csrf'])) {
    $_SESSION['csrf'] = generate_random_token();
  }
  // Colocar aqui funcoes de obtencao
  // de dados relativos a uma sassao iniciada:
  // $_SESSION

  function generate_random_token() {
    return bin2hex(openssl_random_pseudo_bytes(32));
  }
?>
