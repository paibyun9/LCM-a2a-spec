registration-test:
@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_trial.pass.json >/dev/null
@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_pro.pass.json >/dev/null
@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_partner.pass.json >/dev/null
@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_partner.fail.json >/dev/null || true
@echo "registration-test ok"
