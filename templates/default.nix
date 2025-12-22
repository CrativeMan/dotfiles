{
  basic = {
    path = ./basic;
    description = "A basic flake based on flake-parts";
  };

  c = {
    path = ./c;
    description = "A flake for C development";
  };

  golang = {
    path = ./golang;
    description = "A flake for golang development";
  };

  java = {
    path = ./java;
    description = "A flake for java development";
  };

  rust-bevy = {
    path = ./rust-bevy;
    description = "A flake using Oxalica's rust-overlay wrapped with bevy-flake and sccache.";
  };
}
