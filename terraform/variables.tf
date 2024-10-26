variable "aws_region" {
  description = "La région AWS"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key ID"
  type        = string
  sensitive = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive = true
}

variable "aws_session_token" {
  description = "AWS Session Token"
  type        = string
  sensitive = true
}


variable "cluster_name" {
  description = "Nom du cluster EKS"
  type        = string
  default     = "terraform-cluster"  # Nom du cluster mis à jour
}

variable "subnet_ids" {
  description = "IDs des sous-réseaux"
  type        = list(string)
  default     = ["subnet-07884ab69d3a17148", "subnet-0785a7ff7c7cd4e01"]  # Valeurs par défaut
}

variable "role_arn" {
  description = "ARN du rôle IAM pour EKS"
  type        = string
  default     = "arn:aws:iam::374547093317:role/LabRole"  # Valeur par défaut
}

variable "vpc_id" {
  description = "L'ID du VPC pour le cluster EKS"
  type        = string
  default     = "vpc-0cd469ebefbddf4c5"  # Remplacez par votre ID de VPC réel
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "172.31.0.0/16"  # Modifiez-le selon vos besoins
}
