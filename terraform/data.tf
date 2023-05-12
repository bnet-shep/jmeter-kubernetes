data "external" "user" {
   program = ["${path.module}/user.sh"]
}
