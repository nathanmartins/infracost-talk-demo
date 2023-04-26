

## Commandos para testar:

```shell
terraform plan -out tfplan.binary
terraform show -json tfplan.binary > plan.json

infracost breakdown --path plan.jsons
```