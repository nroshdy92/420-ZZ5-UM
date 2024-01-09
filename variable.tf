
variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "countNumber"{
  type=number
  default=0
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "myname"{
  type=string
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}
variable "prefix"{
 type=string
 default="mcit"
}
variable "component" {
  type    = list
  default = ["bastion", "frontproxy", "db", "infra"]
}
variable "environment"{
 type=string
 default="staging"
}

variable "example_map" {​

  type = map(object({​

    name = string​

    enemies_destroyed = number​

    badguy = bool​

  }))​

  default = {​

    key1 = {​

      name = "luke"​

      enemies_destroyed = 4252​

      badguy = false​

    }​

    key2 = {​

      name = "yoda"​

      enemies_destroyed = 900​

      badguy = false​

    }​

    key3 = {​

      name = "darth"​

      enemies_destroyed=  20000056894​

      badguy = true​

    }​

  }​

}​

variable "lightsabre_color_map" {​

  type = map(list(string))​

  default = {​

    luke = ["green", "blue"]​

    yoda = ["green"]​

    darth = ["red"]​

  }​

}​

This could also be achieved with a map using the ‘set’ type:​

​

variable "lightsabre_color_map" {​

  type = map(set(string))​

  default = {​

    luke = ["green", "blue"]​

    yoda = ["green"]​

    darth = ["red"]​

  }​

}​

​
