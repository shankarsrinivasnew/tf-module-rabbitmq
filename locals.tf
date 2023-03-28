locals {

  ssm_parameters = concat([ var.component ], var.ssm_parameters)
}


