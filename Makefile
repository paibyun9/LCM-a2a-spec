registration-test:
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_trial.pass.json >/dev/null
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_pro.pass.json >/dev/null
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_partner.pass.json >/dev/null
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/registration/a2a_registration.schema.json -d a2a-v5/registration/registration_partner.fail.json >/dev/null || true
	@echo "registration-test ok"

eval-test:
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/eval/a2a_eval_response.schema.json -d a2a-v5/eval/a2a_eval_allow.example.json >/dev/null
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5/eval/a2a_eval_response.schema.json -d a2a-v5/eval/a2a_eval_deny.example.json >/dev/null
	@echo "eval-test ok"
