#!/bin/sh

SED_COMMAND='sed'
if test "$(uname)" = "Darwin"; then
  SED_COMMAND='gsed'
fi


read -p "Converting BillingReminder (mayus) in: " choice
egrep -rl 'BillingReminder' * | xargs $SED_COMMAND -i "s/BillingReminder/$choice/g"

read -p "Converting billing_reminder (minus) in: " choice
egrep -rl 'billing_reminder' . | xargs $SED_COMMAND -i "s/billing_reminder/$choice/g"
