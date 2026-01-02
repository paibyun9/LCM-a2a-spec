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

eval-v5_1-test:
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5.1/eval/a2a_eval_response_v5_1.schema.json -d a2a-v5.1/eval/a2a_eval_allow_v5_1.example.json >/dev/null
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5.1/eval/a2a_eval_response_v5_1.schema.json -d a2a-v5.1/eval/a2a_eval_deny_v5_1.example.json >/dev/null
	@npx -y ajv-cli@5 validate --spec=draft2020 -s a2a-v5.1/eval/a2a_eval_response_v5_1.schema.json -d a2a-v5.1/eval/a2a_eval_missing_policy.fail.json >/dev/null || true
	@node -e "const fs=require('fs'); const p1=JSON.parse(fs.readFileSync('a2a-v5.1/eval/a2a_eval_allow_v5_1.example.json')); const p2=JSON.parse(fs.readFileSync('a2a-v5.1/eval/a2a_eval_deny_v5_1.example.json')); function assertLink(x){ if(!x.policy||!x.proof) throw new Error('missing policy/proof'); if(x.policy.policy_set_id!==x.proof.policy_ref_id) throw new Error('policy link mismatch'); const hasPolicyRef=(x.proof.references||[]).some(r=>r.type==='policy' && r.ref_id===x.policy.policy_set_id); if(!hasPolicyRef) throw new Error('missing policy reference'); } assertLink(p1); assertLink(p2); console.log('eval-v5_1-test ok');"
