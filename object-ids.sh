#!/usr/bin/env bash
set -e

resource_group="mbright-bicep-test"
app="registerangryhippo"

storage_account_id="$(az storage account list -g "$resource_group" -o tsv --query '[0].id')"
echo "storage account ID: $storage_account_id"

insights_id="$(az monitor app-insights component show -g "$resource_group" --query '[0].id' -o tsv)"
echo "insights ID: $insights_id"

plan_id="$(az appservice plan list -g "$resource_group" -o tsv --query '[0].id')"
echo "plan ID: $plan_id"

system_topic_id="$(az eventgrid system-topic list -g "$resource_group" -o tsv --query '[0].id')"
echo "event grid system topic: $system_topic_id"

subscription_id="$(az eventgrid event-subscription list --location global --resource-group "$resource_group" -o tsv --query '[0].id')"
echo "event subcription id: $subscription_id"

app_id="$(az functionapp list --query "[?name=='$app'] | [0].id" -o tsv)"
echo "function app ID: $app_id"

function_id="$(az functionapp function list -g "$resource_group" -n "$app" --query '[0].id' --output tsv)"
echo "function ID: $function_id"
