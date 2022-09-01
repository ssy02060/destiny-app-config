region=ap-northeast-2
aws_account_id=844148244640
aws ecr get-login-password \
     --region $region | helm registry login \
     --username AWS \
     --password-stdin $aws_account_id.dkr.ecr.$region.amazonaws.com

version=10
service_name=gateway
helm install ecr-chart-demo oci://$aws_account_id.dkr.ecr.$region.amazonaws.com/$service_name:$version
