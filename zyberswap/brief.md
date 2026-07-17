# Agentic Audit Brief: ZyberSwap

## Project Overview

- Project: ZyberSwap (`zyberswap`)
- Website: [https://www.zyberswap.io](https://www.zyberswap.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:15.003Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: arbitrum
- Contract surface: 39 unique implementations (40 raw deployments)
- DeFi Llama TVL: $63,936.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 22 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 85; live-surface contracts included: 40 (9 live, 31 unknown).
- Excluded by liveness: 45 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/8 (37.5%)
- Deployed-live implementations: 8 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 39
- Raw deployments: 40
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 37.5% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZyberChef | unknown | arbitrum | n/a | [`0x9ba666165867e916ee7ed3a3ae6c19415c2fbddd`](./contracts/arbitrum-42161/0x9ba666165867e916ee7ed3a3ae6c19415c2fbddd/) | ✅ Audited |
| ZyberRouter | adapter | arbitrum | n/a | [`0x16e71b13fe6079b4312063f7e81f76d165ad32ad`](./contracts/arbitrum-42161/0x16e71b13fe6079b4312063f7e81f76d165ad32ad/) | ✅ Audited |
| ZyberToken | token | arbitrum | n/a | [`0x3b475f6f2f41853706afc9fa6a6b8c5df1a2724c`](./contracts/arbitrum-42161/0x3b475f6f2f41853706afc9fa6a6b8c5df1a2724c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProfitShare | unknown | arbitrum | n/a | [`0xc352940f6cadd1b38d60c353e44402258fb3e586`](./contracts/arbitrum-42161/0xc352940f6cadd1b38d60c353e44402258fb3e586/) | ⚠️ Unaudited |
| sZyberToken | token | arbitrum | n/a | [`0x3b71729510cbea2f23a1b9fd6b9db002271e119f`](./contracts/arbitrum-42161/0x3b71729510cbea2f23a1b9fd6b9db002271e119f/) | ⚠️ Unaudited |
| V3Fees | unknown | arbitrum | n/a | [`0xfe6d3b431c852fff066a748237e9ae963c8b89cd`](./contracts/arbitrum-42161/0xfe6d3b431c852fff066a748237e9ae963c8b89cd/) | ⚠️ Unaudited |
| ZyberEarn | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d`](./contracts/arbitrum-42161/0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d/); arbitrum `0xeff77e179f6abb49a5bf0ec25c920b495e110c3b` | ⚠️ Unaudited |
| ZyberVault | core_logic | arbitrum | n/a | [`0x9cb8ed8102b6c65d8cae931394352d7a676ce12a`](./contracts/arbitrum-42161/0x9cb8ed8102b6c65d8cae931394352d7a676ce12a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x039a31b938ff35af8bd776e0e319ad068f6b5f88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d09a0dbd59f02c2f0e45b04b0d8021c42a5575c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13927ceb9f63980e52a768788c16b3ba2d64607b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15cb8e177dd03a97faf56efab653c7b4ffc7e560` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19b2a1a462a33c859eb91121f710a01e0dfc52ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31c5b48457db7c255b424915a776ec3e5d0dc23d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37f3efe815ba4b65def108669c9d1bda153123c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3892c88651c3de2848c343de7e5f19e9ced216d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ae87d0a5fc06afe55e34e3f96546a75891788f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x466b5bc5260ec200171d6e0df5733fa86091a3b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5539b54370b92de97bf6e2153d69635b977d8d88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65eb774097913735a0e9c05403ed5dd011de6c8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x722ef2fe7c24b4b989212f7e70e12a086de736d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72d01e4fa5d2988beb65f7f1d5f04c5030a4b872` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cdad2abdbdd655e64dc4dccaf92b057576f3fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x835100ef5e932e30f75f84ae45d324791e9ea730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97c79ebc3cd6d86473afd57e42866b19900b371f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9984656ddb11bc34931a79f71aa18826912f6b56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f98040c5a1fa70e8b92de71601cd29a7137d787` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa79cb9dd0af7895db6c6b78d348141ed83419269` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9f66f335a40d6e09a2ab304180f29bd3d134359` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb502f124a4e268b1c9365fbb9c29d6d6ac1bec82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba86c3816e60683769f5e9b4e117065ea6105474` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc72ab830268cd8eae2896d9d5df83dc123628be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc7729b91f8706e4c7a767e6b2e47e42f1eacef5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce7b1d1ffe480094d6bb872acb33770bb69b2fc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4a8666053719ec8a8551f7db254916e74f3ce60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebc9f429314d2408f903f999a62403d4cb637d59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed4c3279a82c12339a197a4344cedaadd505a9c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf34d683654d318c08d4e8313f6fbad721eb3d7e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe9272a2e98be023e7df2ed3fb54243fa65005a5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_Zyberswap.pdf](https://github.com/solidproof/projects/blob/main/ZyberSwap/SmartContract_Audit_Solidproof_Zyberswap.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc352940f6cadd1b38d60c353e44402258fb3e586`](./contracts/arbitrum-42161/0xc352940f6cadd1b38d60c353e44402258fb3e586/) | ProfitShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b71729510cbea2f23a1b9fd6b9db002271e119f`](./contracts/arbitrum-42161/0x3b71729510cbea2f23a1b9fd6b9db002271e119f/) | sZyberToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfe6d3b431c852fff066a748237e9ae963c8b89cd`](./contracts/arbitrum-42161/0xfe6d3b431c852fff066a748237e9ae963c8b89cd/) | V3Fees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d`](./contracts/arbitrum-42161/0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d/) | ZyberEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9cb8ed8102b6c65d8cae931394352d7a676ce12a`](./contracts/arbitrum-42161/0x9cb8ed8102b6c65d8cae931394352d7a676ce12a/) | ZyberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
