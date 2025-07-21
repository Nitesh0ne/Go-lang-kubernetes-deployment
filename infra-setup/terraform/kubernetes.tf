locals {
  bastion_autoscaling_group_ids      = [aws_autoscaling_group.bastions-k8s-niteshnepali-com-np.id]
  bastion_security_group_ids         = [aws_security_group.bastion-k8s-niteshnepali-com-np.id]
  bastions_role_arn                  = aws_iam_role.bastions-k8s-niteshnepali-com-np.arn
  bastions_role_name                 = aws_iam_role.bastions-k8s-niteshnepali-com-np.name
  cluster_name                       = "k8s.niteshnepali.com.np"
  master_autoscaling_group_ids       = [aws_autoscaling_group.control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np.id]
  master_security_group_ids          = [aws_security_group.masters-k8s-niteshnepali-com-np.id]
  masters_role_arn                   = aws_iam_role.masters-k8s-niteshnepali-com-np.arn
  masters_role_name                  = aws_iam_role.masters-k8s-niteshnepali-com-np.name
  node_autoscaling_group_ids         = [aws_autoscaling_group.nodes-ap-south-1a-k8s-niteshnepali-com-np.id, aws_autoscaling_group.nodes-ap-south-1b-k8s-niteshnepali-com-np.id]
  node_security_group_ids            = [aws_security_group.nodes-k8s-niteshnepali-com-np.id]
  node_subnet_ids                    = [aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id, aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id]
  nodes_role_arn                     = aws_iam_role.nodes-k8s-niteshnepali-com-np.arn
  nodes_role_name                    = aws_iam_role.nodes-k8s-niteshnepali-com-np.name
  region                             = "ap-south-1"
  route_table_private-ap-south-1a_id = aws_route_table.private-ap-south-1a-k8s-niteshnepali-com-np.id
  route_table_private-ap-south-1b_id = aws_route_table.private-ap-south-1b-k8s-niteshnepali-com-np.id
  route_table_public_id              = aws_route_table.k8s-niteshnepali-com-np.id
  subnet_ap-south-1a_id              = aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id
  subnet_ap-south-1b_id              = aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id
  subnet_utility-ap-south-1a_id      = aws_subnet.utility-ap-south-1a-k8s-niteshnepali-com-np.id
  subnet_utility-ap-south-1b_id      = aws_subnet.utility-ap-south-1b-k8s-niteshnepali-com-np.id
  vpc_cidr_block                     = aws_vpc.k8s-niteshnepali-com-np.cidr_block
  vpc_id                             = aws_vpc.k8s-niteshnepali-com-np.id
  vpc_ipv6_cidr_block                = aws_vpc.k8s-niteshnepali-com-np.ipv6_cidr_block
  vpc_ipv6_cidr_length               = local.vpc_ipv6_cidr_block == "" ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-k8s-niteshnepali-com-np.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-k8s-niteshnepali-com-np.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-k8s-niteshnepali-com-np.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-k8s-niteshnepali-com-np.name
}

output "cluster_name" {
  value = "k8s.niteshnepali.com.np"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-k8s-niteshnepali-com-np.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-k8s-niteshnepali-com-np.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-k8s-niteshnepali-com-np.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-ap-south-1a-k8s-niteshnepali-com-np.id, aws_autoscaling_group.nodes-ap-south-1b-k8s-niteshnepali-com-np.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-k8s-niteshnepali-com-np.id]
}

output "node_subnet_ids" {
  value = [aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id, aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-k8s-niteshnepali-com-np.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-k8s-niteshnepali-com-np.name
}

output "region" {
  value = "ap-south-1"
}

output "route_table_private-ap-south-1a_id" {
  value = aws_route_table.private-ap-south-1a-k8s-niteshnepali-com-np.id
}

output "route_table_private-ap-south-1b_id" {
  value = aws_route_table.private-ap-south-1b-k8s-niteshnepali-com-np.id
}

output "route_table_public_id" {
  value = aws_route_table.k8s-niteshnepali-com-np.id
}

output "subnet_ap-south-1a_id" {
  value = aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id
}

output "subnet_ap-south-1b_id" {
  value = aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id
}

output "subnet_utility-ap-south-1a_id" {
  value = aws_subnet.utility-ap-south-1a-k8s-niteshnepali-com-np.id
}

output "subnet_utility-ap-south-1b_id" {
  value = aws_subnet.utility-ap-south-1b-k8s-niteshnepali-com-np.id
}

output "vpc_cidr_block" {
  value = aws_vpc.k8s-niteshnepali-com-np.cidr_block
}

output "vpc_id" {
  value = aws_vpc.k8s-niteshnepali-com-np.id
}

output "vpc_ipv6_cidr_block" {
  value = aws_vpc.k8s-niteshnepali-com-np.ipv6_cidr_block
}

output "vpc_ipv6_cidr_length" {
  value = local.vpc_ipv6_cidr_block == "" ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-k8s-niteshnepali-com-np" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-k8s-niteshnepali-com-np.id
    version = aws_launch_template.bastions-k8s-niteshnepali-com-np.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.k8s.niteshnepali.com.np"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.niteshnepali.com.np"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.bastion-k8s-niteshnepali--trrutc.id]
  vpc_zone_identifier = [aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id, aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id]
}

resource "aws_autoscaling_group" "control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np.id
    version = aws_launch_template.control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-ap-south-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.niteshnepali.com.np"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.tcp-k8s-niteshnepali-com--m1dd1f.id]
  vpc_zone_identifier = [aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id]
}

resource "aws_autoscaling_group" "nodes-ap-south-1a-k8s-niteshnepali-com-np" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-ap-south-1a-k8s-niteshnepali-com-np.id
    version = aws_launch_template.nodes-ap-south-1a-k8s-niteshnepali-com-np.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-ap-south-1a.k8s.niteshnepali.com.np"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-ap-south-1a.k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-ap-south-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.niteshnepali.com.np"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id]
}

resource "aws_autoscaling_group" "nodes-ap-south-1b-k8s-niteshnepali-com-np" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-ap-south-1b-k8s-niteshnepali-com-np.id
    version = aws_launch_template.nodes-ap-south-1b-k8s-niteshnepali-com-np.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-ap-south-1b.k8s.niteshnepali.com.np"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-ap-south-1b.k8s.niteshnepali.com.np"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-ap-south-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.niteshnepali.com.np"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id]
}

resource "aws_autoscaling_lifecycle_hook" "bastions-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.bastions-k8s-niteshnepali-com-np.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "bastions-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "control-plane-ap-south-1a-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "control-plane-ap-south-1a-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "nodes-ap-south-1a-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.nodes-ap-south-1a-k8s-niteshnepali-com-np.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "nodes-ap-south-1a-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "nodes-ap-south-1b-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.nodes-ap-south-1b-k8s-niteshnepali-com-np.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "nodes-ap-south-1b-NTHLifecycleHook"
}

resource "aws_cloudwatch_event_rule" "k8s-niteshnepali-com-np-ASGLifecycle" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_k8s.niteshnepali.com.np-ASGLifecycle_event_pattern")
  name          = "k8s.niteshnepali.com.np-ASGLifecycle"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np-ASGLifecycle"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_cloudwatch_event_rule" "k8s-niteshnepali-com-np-InstanceScheduledChange" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_k8s.niteshnepali.com.np-InstanceScheduledChange_event_pattern")
  name          = "k8s.niteshnepali.com.np-InstanceScheduledChange"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np-InstanceScheduledChange"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_cloudwatch_event_rule" "k8s-niteshnepali-com-np-InstanceStateChange" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_k8s.niteshnepali.com.np-InstanceStateChange_event_pattern")
  name          = "k8s.niteshnepali.com.np-InstanceStateChange"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np-InstanceStateChange"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_cloudwatch_event_rule" "k8s-niteshnepali-com-np-SpotInterruption" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_k8s.niteshnepali.com.np-SpotInterruption_event_pattern")
  name          = "k8s.niteshnepali.com.np-SpotInterruption"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np-SpotInterruption"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_cloudwatch_event_target" "k8s-niteshnepali-com-np-ASGLifecycle-Target" {
  arn  = aws_sqs_queue.k8s-niteshnepali-com-np-nth.arn
  rule = aws_cloudwatch_event_rule.k8s-niteshnepali-com-np-ASGLifecycle.id
}

resource "aws_cloudwatch_event_target" "k8s-niteshnepali-com-np-InstanceScheduledChange-Target" {
  arn  = aws_sqs_queue.k8s-niteshnepali-com-np-nth.arn
  rule = aws_cloudwatch_event_rule.k8s-niteshnepali-com-np-InstanceScheduledChange.id
}

resource "aws_cloudwatch_event_target" "k8s-niteshnepali-com-np-InstanceStateChange-Target" {
  arn  = aws_sqs_queue.k8s-niteshnepali-com-np-nth.arn
  rule = aws_cloudwatch_event_rule.k8s-niteshnepali-com-np-InstanceStateChange.id
}

resource "aws_cloudwatch_event_target" "k8s-niteshnepali-com-np-SpotInterruption-Target" {
  arn  = aws_sqs_queue.k8s-niteshnepali-com-np-nth.arn
  rule = aws_cloudwatch_event_rule.k8s-niteshnepali-com-np-SpotInterruption.id
}

resource "aws_ebs_volume" "a-etcd-events-k8s-niteshnepali-com-np" {
  availability_zone = "ap-south-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "a.etcd-events.k8s.niteshnepali.com.np"
    "k8s.io/etcd/events"                            = "a/a"
    "k8s.io/role/control-plane"                     = "1"
    "k8s.io/role/master"                            = "1"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-k8s-niteshnepali-com-np" {
  availability_zone = "ap-south-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "a.etcd-main.k8s.niteshnepali.com.np"
    "k8s.io/etcd/main"                              = "a/a"
    "k8s.io/role/control-plane"                     = "1"
    "k8s.io/role/master"                            = "1"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_eip" "ap-south-1a-k8s-niteshnepali-com-np" {
  domain = "vpc"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "ap-south-1a.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_eip" "ap-south-1b-k8s-niteshnepali-com-np" {
  domain = "vpc"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "ap-south-1b.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-k8s-niteshnepali-com-np" {
  name = "bastions.k8s.niteshnepali.com.np"
  role = aws_iam_role.bastions-k8s-niteshnepali-com-np.name
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastions.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-k8s-niteshnepali-com-np" {
  name = "masters.k8s.niteshnepali.com.np"
  role = aws_iam_role.masters-k8s-niteshnepali-com-np.name
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "masters.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-k8s-niteshnepali-com-np" {
  name = "nodes.k8s.niteshnepali.com.np"
  role = aws_iam_role.nodes-k8s-niteshnepali-com-np.name
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "nodes.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_role" "bastions-k8s-niteshnepali-com-np" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.k8s.niteshnepali.com.np_policy")
  name               = "bastions.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastions.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_role" "masters-k8s-niteshnepali-com-np" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.k8s.niteshnepali.com.np_policy")
  name               = "masters.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "masters.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_role" "nodes-k8s-niteshnepali-com-np" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.k8s.niteshnepali.com.np_policy")
  name               = "nodes.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "nodes.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-k8s-niteshnepali-com-np" {
  name   = "bastions.k8s.niteshnepali.com.np"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.k8s.niteshnepali.com.np_policy")
  role   = aws_iam_role.bastions-k8s-niteshnepali-com-np.name
}

resource "aws_iam_role_policy" "masters-k8s-niteshnepali-com-np" {
  name   = "masters.k8s.niteshnepali.com.np"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.k8s.niteshnepali.com.np_policy")
  role   = aws_iam_role.masters-k8s-niteshnepali-com-np.name
}

resource "aws_iam_role_policy" "nodes-k8s-niteshnepali-com-np" {
  name   = "nodes.k8s.niteshnepali.com.np"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.k8s.niteshnepali.com.np_policy")
  role   = aws_iam_role.nodes-k8s-niteshnepali-com-np.name
}

resource "aws_internet_gateway" "k8s-niteshnepali-com-np" {
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_key_pair" "kubernetes-k8s-niteshnepali-com-np-eb365ade7424cc9385cb6c050ff8d314" {
  key_name   = "kubernetes.k8s.niteshnepali.com.np-eb:36:5a:de:74:24:cc:93:85:cb:6c:05:0f:f8:d3:14"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.k8s.niteshnepali.com.np-eb365ade7424cc9385cb6c050ff8d314_public_key")
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_launch_template" "bastions-k8s-niteshnepali-com-np" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 32
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.bastions-k8s-niteshnepali-com-np.id
  }
  image_id      = "ami-0f918f7e67a3323f0"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-k8s-niteshnepali-com-np-eb365ade7424cc9385cb6c050ff8d314.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "bastions.k8s.niteshnepali.com.np"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-k8s-niteshnepali-com-np.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
      "Name"                                          = "bastions.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"          = ""
      "k8s.io/role/bastion"                           = "1"
      "kops.k8s.io/instancegroup"                     = "bastions"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
      "Name"                                          = "bastions.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"          = ""
      "k8s.io/role/bastion"                           = "1"
      "kops.k8s.io/instancegroup"                     = "bastions"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastions.k8s.niteshnepali.com.np"
    "aws-node-termination-handler/managed"          = ""
    "k8s.io/role/bastion"                           = "1"
    "kops.k8s.io/instancegroup"                     = "bastions"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_launch_template" "control-plane-ap-south-1a-masters-k8s-niteshnepali-com-np" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 30
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-k8s-niteshnepali-com-np.id
  }
  image_id      = "ami-0f918f7e67a3323f0"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-k8s-niteshnepali-com-np-eb365ade7424cc9385cb6c050ff8d314.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-k8s-niteshnepali-com-np.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "k8s.niteshnepali.com.np"
      "Name"                                                                                                  = "control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-ap-south-1a"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np"                                                         = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "k8s.niteshnepali.com.np"
      "Name"                                                                                                  = "control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-ap-south-1a"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np"                                                         = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "k8s.niteshnepali.com.np"
    "Name"                                                                                                  = "control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np"
    "aws-node-termination-handler/managed"                                                                  = ""
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-ap-south-1a"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np"                                                         = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-ap-south-1a.masters.k8s.niteshnepali.com.np_user_data")
}

resource "aws_launch_template" "nodes-ap-south-1a-k8s-niteshnepali-com-np" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 30
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-k8s-niteshnepali-com-np.id
  }
  image_id      = "ami-0f918f7e67a3323f0"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-k8s-niteshnepali-com-np-eb365ade7424cc9385cb6c050ff8d314.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-ap-south-1a.k8s.niteshnepali.com.np"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-k8s-niteshnepali-com-np.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "k8s.niteshnepali.com.np"
      "Name"                                                                       = "nodes-ap-south-1a.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-ap-south-1a"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np"                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "k8s.niteshnepali.com.np"
      "Name"                                                                       = "nodes-ap-south-1a.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-ap-south-1a"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np"                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "k8s.niteshnepali.com.np"
    "Name"                                                                       = "nodes-ap-south-1a.k8s.niteshnepali.com.np"
    "aws-node-termination-handler/managed"                                       = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-ap-south-1a"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np"                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-ap-south-1a.k8s.niteshnepali.com.np_user_data")
}

resource "aws_launch_template" "nodes-ap-south-1b-k8s-niteshnepali-com-np" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 30
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-k8s-niteshnepali-com-np.id
  }
  image_id      = "ami-0f918f7e67a3323f0"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-k8s-niteshnepali-com-np-eb365ade7424cc9385cb6c050ff8d314.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-ap-south-1b.k8s.niteshnepali.com.np"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-k8s-niteshnepali-com-np.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "k8s.niteshnepali.com.np"
      "Name"                                                                       = "nodes-ap-south-1b.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-ap-south-1b"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np"                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "k8s.niteshnepali.com.np"
      "Name"                                                                       = "nodes-ap-south-1b.k8s.niteshnepali.com.np"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-ap-south-1b"
      "kubernetes.io/cluster/k8s.niteshnepali.com.np"                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "k8s.niteshnepali.com.np"
    "Name"                                                                       = "nodes-ap-south-1b.k8s.niteshnepali.com.np"
    "aws-node-termination-handler/managed"                                       = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-ap-south-1b"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np"                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-ap-south-1b.k8s.niteshnepali.com.np_user_data")
}

resource "aws_lb" "api-k8s-niteshnepali-com-np" {
  enable_cross_zone_load_balancing = false
  internal                         = false
  load_balancer_type               = "network"
  name                             = "api-k8s-niteshnepali-com--b503ee"
  security_groups                  = [aws_security_group.api-elb-k8s-niteshnepali-com-np.id]
  subnet_mapping {
    subnet_id = aws_subnet.utility-ap-south-1a-k8s-niteshnepali-com-np.id
  }
  subnet_mapping {
    subnet_id = aws_subnet.utility-ap-south-1b-k8s-niteshnepali-com-np.id
  }
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "api.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_lb" "bastion-k8s-niteshnepali-com-np" {
  enable_cross_zone_load_balancing = false
  internal                         = false
  load_balancer_type               = "network"
  name                             = "bastion-k8s-niteshnepali--trrutc"
  security_groups                  = [aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id]
  subnet_mapping {
    subnet_id = aws_subnet.utility-ap-south-1a-k8s-niteshnepali-com-np.id
  }
  subnet_mapping {
    subnet_id = aws_subnet.utility-ap-south-1b-k8s-niteshnepali-com-np.id
  }
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastion.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_lb_listener" "api-k8s-niteshnepali-com-np-443" {
  default_action {
    target_group_arn = aws_lb_target_group.tcp-k8s-niteshnepali-com--m1dd1f.id
    type             = "forward"
  }
  load_balancer_arn = aws_lb.api-k8s-niteshnepali-com-np.id
  port              = 443
  protocol          = "TCP"
}

resource "aws_lb_listener" "bastion-k8s-niteshnepali-com-np-22" {
  default_action {
    target_group_arn = aws_lb_target_group.bastion-k8s-niteshnepali--trrutc.id
    type             = "forward"
  }
  load_balancer_arn = aws_lb.bastion-k8s-niteshnepali-com-np.id
  port              = 22
  protocol          = "TCP"
}

resource "aws_lb_target_group" "bastion-k8s-niteshnepali--trrutc" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "bastion-k8s-niteshnepali--trrutc"
  port     = 22
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastion-k8s-niteshnepali--trrutc"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_lb_target_group" "tcp-k8s-niteshnepali-com--m1dd1f" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "tcp-k8s-niteshnepali-com--m1dd1f"
  port     = 443
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "tcp-k8s-niteshnepali-com--m1dd1f"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_nat_gateway" "ap-south-1a-k8s-niteshnepali-com-np" {
  allocation_id = aws_eip.ap-south-1a-k8s-niteshnepali-com-np.id
  subnet_id     = aws_subnet.utility-ap-south-1a-k8s-niteshnepali-com-np.id
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "ap-south-1a.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_nat_gateway" "ap-south-1b-k8s-niteshnepali-com-np" {
  allocation_id = aws_eip.ap-south-1b-k8s-niteshnepali-com-np.id
  subnet_id     = aws_subnet.utility-ap-south-1b-k8s-niteshnepali-com-np.id
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "ap-south-1b.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_route" "route-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.k8s-niteshnepali-com-np.id
  route_table_id         = aws_route_table.k8s-niteshnepali-com-np.id
}

resource "aws_route" "route-__--0" {
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.k8s-niteshnepali-com-np.id
  route_table_id              = aws_route_table.k8s-niteshnepali-com-np.id
}

resource "aws_route" "route-private-ap-south-1a-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.ap-south-1a-k8s-niteshnepali-com-np.id
  route_table_id         = aws_route_table.private-ap-south-1a-k8s-niteshnepali-com-np.id
}

resource "aws_route" "route-private-ap-south-1b-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.ap-south-1b-k8s-niteshnepali-com-np.id
  route_table_id         = aws_route_table.private-ap-south-1b-k8s-niteshnepali-com-np.id
}

resource "aws_route53_record" "api-k8s-niteshnepali-com-np" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.api-k8s-niteshnepali-com-np.dns_name
    zone_id                = aws_lb.api-k8s-niteshnepali-com-np.zone_id
  }
  name    = "api.k8s.niteshnepali.com.np"
  type    = "A"
  zone_id = "/hostedzone/Z02417472NWO1SMXIVEH"
}

resource "aws_route53_record" "api-k8s-niteshnepali-com-np-AAAA" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.api-k8s-niteshnepali-com-np.dns_name
    zone_id                = aws_lb.api-k8s-niteshnepali-com-np.zone_id
  }
  name    = "api.k8s.niteshnepali.com.np"
  type    = "AAAA"
  zone_id = "/hostedzone/Z02417472NWO1SMXIVEH"
}

resource "aws_route53_record" "bastion-k8s-niteshnepali-com-np" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.bastion-k8s-niteshnepali-com-np.dns_name
    zone_id                = aws_lb.bastion-k8s-niteshnepali-com-np.zone_id
  }
  name    = "bastion.k8s.niteshnepali.com.np"
  type    = "A"
  zone_id = "/hostedzone/Z02417472NWO1SMXIVEH"
}

resource "aws_route53_record" "bastion-k8s-niteshnepali-com-np-AAAA" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.bastion-k8s-niteshnepali-com-np.dns_name
    zone_id                = aws_lb.bastion-k8s-niteshnepali-com-np.zone_id
  }
  name    = "bastion.k8s.niteshnepali.com.np"
  type    = "AAAA"
  zone_id = "/hostedzone/Z02417472NWO1SMXIVEH"
}

resource "aws_route_table" "k8s-niteshnepali-com-np" {
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/kops/role"                       = "public"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_route_table" "private-ap-south-1a-k8s-niteshnepali-com-np" {
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "private-ap-south-1a.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/kops/role"                       = "private-ap-south-1a"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_route_table" "private-ap-south-1b-k8s-niteshnepali-com-np" {
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "private-ap-south-1b.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/kops/role"                       = "private-ap-south-1b"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_route_table_association" "private-ap-south-1a-k8s-niteshnepali-com-np" {
  route_table_id = aws_route_table.private-ap-south-1a-k8s-niteshnepali-com-np.id
  subnet_id      = aws_subnet.ap-south-1a-k8s-niteshnepali-com-np.id
}

resource "aws_route_table_association" "private-ap-south-1b-k8s-niteshnepali-com-np" {
  route_table_id = aws_route_table.private-ap-south-1b-k8s-niteshnepali-com-np.id
  subnet_id      = aws_subnet.ap-south-1b-k8s-niteshnepali-com-np.id
}

resource "aws_route_table_association" "utility-ap-south-1a-k8s-niteshnepali-com-np" {
  route_table_id = aws_route_table.k8s-niteshnepali-com-np.id
  subnet_id      = aws_subnet.utility-ap-south-1a-k8s-niteshnepali-com-np.id
}

resource "aws_route_table_association" "utility-ap-south-1b-k8s-niteshnepali-com-np" {
  route_table_id = aws_route_table.k8s-niteshnepali-com-np.id
  subnet_id      = aws_subnet.utility-ap-south-1b-k8s-niteshnepali-com-np.id
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key      = "k8s.niteshnepali.com.np/cluster-completed.spec"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key      = "k8s.niteshnepali.com.np/backups/etcd/events/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key      = "k8s.niteshnepali.com.np/backups/etcd/main/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-aws-cloud-controller-addons-k8s-io-k8s-1-18" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-aws-cloud-controller.addons.k8s.io-k8s-1.18_content")
  key      = "k8s.niteshnepali.com.np/addons/aws-cloud-controller.addons.k8s.io/k8s-1.18.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-aws-ebs-csi-driver-addons-k8s-io-k8s-1-17" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17_content")
  key      = "k8s.niteshnepali.com.np/addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-bootstrap" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-bootstrap_content")
  key      = "k8s.niteshnepali.com.np/addons/bootstrap-channel.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key      = "k8s.niteshnepali.com.np/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key      = "k8s.niteshnepali.com.np/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key      = "k8s.niteshnepali.com.np/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key      = "k8s.niteshnepali.com.np/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-limit-range-addons-k8s-io" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-limit-range.addons.k8s.io_content")
  key      = "k8s.niteshnepali.com.np/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-networking-projectcalico-org-k8s-1-25" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-networking.projectcalico.org-k8s-1.25_content")
  key      = "k8s.niteshnepali.com.np/addons/networking.projectcalico.org/k8s-1.25.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-node-termination-handler-aws-k8s-1-11" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-node-termination-handler.aws-k8s-1.11_content")
  key      = "k8s.niteshnepali.com.np/addons/node-termination-handler.aws/k8s-1.11.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-niteshnepali-com-np-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_k8s.niteshnepali.com.np-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key      = "k8s.niteshnepali.com.np/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "kops-version-txt" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key      = "k8s.niteshnepali.com.np/kops-version.txt"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-ap-south-1a" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-ap-south-1a_content")
  key      = "k8s.niteshnepali.com.np/manifests/etcd/events-control-plane-ap-south-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-ap-south-1a" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-ap-south-1a_content")
  key      = "k8s.niteshnepali.com.np/manifests/etcd/main-control-plane-ap-south-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key      = "k8s.niteshnepali.com.np/manifests/static/kube-apiserver-healthcheck.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-ap-south-1a" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-ap-south-1a_content")
  key      = "k8s.niteshnepali.com.np/igconfig/control-plane/control-plane-ap-south-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-ap-south-1a" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-ap-south-1a_content")
  key      = "k8s.niteshnepali.com.np/igconfig/node/nodes-ap-south-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-ap-south-1b" {
  bucket   = "k8s.niteshnepali.com.np"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-ap-south-1b_content")
  key      = "k8s.niteshnepali.com.np/igconfig/node/nodes-ap-south-1b/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_security_group" "api-elb-k8s-niteshnepali-com-np" {
  description = "Security group for api ELB"
  name        = "api-elb.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "api-elb.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_security_group" "bastion-elb-k8s-niteshnepali-com-np" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastion-elb.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_security_group" "bastion-k8s-niteshnepali-com-np" {
  description = "Security group for bastion"
  name        = "bastion.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "bastion.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_security_group" "masters-k8s-niteshnepali-com-np" {
  description = "Security group for masters"
  name        = "masters.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "masters.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_security_group" "nodes-k8s-niteshnepali-com-np" {
  description = "Security group for nodes"
  name        = "nodes.k8s.niteshnepali.com.np"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "nodes.k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-k8s-niteshnepali-com-np" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-k8s-niteshnepali-com-np" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-0-0--21-ingress-tcp-22to22-bastion-elb-k8s-niteshnepali-com-np" {
  cidr_blocks       = ["172.20.0.0/21"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-8-0--21-ingress-tcp-22to22-bastion-elb-k8s-niteshnepali-com-np" {
  cidr_blocks       = ["172.20.8.0/21"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-k8s-niteshnepali-com-np" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-k8s-niteshnepali-com-np" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-k8s-niteshnepali-com-np-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-k8s-niteshnepali-com-np-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-k8s-niteshnepali-com-np-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-k8s-niteshnepali-com-np-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-k8s-niteshnepali-com-np-ingress-icmp-3to4-bastion-k8s-niteshnepali-com-np" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-elb-k8s-niteshnepali-com-np-ingress-tcp-22to22-bastion-k8s-niteshnepali-com-np" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-k8s-niteshnepali-com-np-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-k8s-niteshnepali-com-np-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-k8s-niteshnepali-com-np-ingress-icmp-3to4-bastion-elb-k8s-niteshnepali-com-np" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-k8s-niteshnepali-com-np-ingress-tcp-22to22-masters-k8s-niteshnepali-com-np" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-k8s-niteshnepali-com-np-ingress-tcp-22to22-nodes-k8s-niteshnepali-com-np" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.bastion-k8s-niteshnepali-com-np.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-k8s-niteshnepali-com-np-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-k8s-niteshnepali-com-np-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-k8s-niteshnepali-com-np-ingress-all-0to0-masters-k8s-niteshnepali-com-np" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.masters-k8s-niteshnepali-com-np.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-k8s-niteshnepali-com-np-ingress-all-0to0-nodes-k8s-niteshnepali-com-np" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.masters-k8s-niteshnepali-com-np.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-ingress-4-0to0-masters-k8s-niteshnepali-com-np" {
  from_port                = 0
  protocol                 = "4"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-ingress-all-0to0-nodes-k8s-niteshnepali-com-np" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-ingress-tcp-1to2379-masters-k8s-niteshnepali-com-np" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-ingress-tcp-2382to4000-masters-k8s-niteshnepali-com-np" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-ingress-tcp-4003to65535-masters-k8s-niteshnepali-com-np" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-niteshnepali-com-np-ingress-udp-1to65535-masters-k8s-niteshnepali-com-np" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.nodes-k8s-niteshnepali-com-np.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-cp-to-elb" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.masters-k8s-niteshnepali-com-np.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-elb-to-cp" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.masters-k8s-niteshnepali-com-np.id
  source_security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-172-20-0-0--21" {
  cidr_blocks       = ["172.20.0.0/21"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-172-20-8-0--21" {
  cidr_blocks       = ["172.20.8.0/21"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-k8s-niteshnepali-com-np.id
  to_port           = -1
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-ssh-nlb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.bastion-elb-k8s-niteshnepali-com-np.id
  to_port           = -1
  type              = "ingress"
}

resource "aws_sqs_queue" "k8s-niteshnepali-com-np-nth" {
  message_retention_seconds = 300
  name                      = "k8s-niteshnepali-com-np-nth"
  policy                    = file("${path.module}/data/aws_sqs_queue_k8s-niteshnepali-com-np-nth_policy")
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s-niteshnepali-com-np-nth"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_subnet" "ap-south-1a-k8s-niteshnepali-com-np" {
  availability_zone                           = "ap-south-1a"
  cidr_block                                  = "172.20.64.0/18"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "ap-south-1a.k8s.niteshnepali.com.np"
    "SubnetType"                                    = "Private"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/role/internal-elb"               = "1"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_subnet" "ap-south-1b-k8s-niteshnepali-com-np" {
  availability_zone                           = "ap-south-1b"
  cidr_block                                  = "172.20.128.0/18"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "ap-south-1b.k8s.niteshnepali.com.np"
    "SubnetType"                                    = "Private"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/role/internal-elb"               = "1"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_subnet" "utility-ap-south-1a-k8s-niteshnepali-com-np" {
  availability_zone                           = "ap-south-1a"
  cidr_block                                  = "172.20.0.0/21"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "utility-ap-south-1a.k8s.niteshnepali.com.np"
    "SubnetType"                                    = "Utility"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/role/elb"                        = "1"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_subnet" "utility-ap-south-1b-k8s-niteshnepali-com-np" {
  availability_zone                           = "ap-south-1b"
  cidr_block                                  = "172.20.8.0/21"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "utility-ap-south-1b.k8s.niteshnepali.com.np"
    "SubnetType"                                    = "Utility"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
    "kubernetes.io/role/elb"                        = "1"
  }
  vpc_id = aws_vpc.k8s-niteshnepali-com-np.id
}

resource "aws_vpc" "k8s-niteshnepali-com-np" {
  assign_generated_ipv6_cidr_block = true
  cidr_block                       = "172.20.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "k8s-niteshnepali-com-np" {
  domain_name         = "ap-south-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
  tags = {
    "KubernetesCluster"                             = "k8s.niteshnepali.com.np"
    "Name"                                          = "k8s.niteshnepali.com.np"
    "kubernetes.io/cluster/k8s.niteshnepali.com.np" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "k8s-niteshnepali-com-np" {
  dhcp_options_id = aws_vpc_dhcp_options.k8s-niteshnepali-com-np.id
  vpc_id          = aws_vpc.k8s-niteshnepali-com-np.id
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 5.0.0"
    }
  }
}
