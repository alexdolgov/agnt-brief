# Agentic Audit Brief: LlamaPay

## Project Overview

- Project: LlamaPay (`llamapay`)
- Website: [https://llamapay.io](https://llamapay.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.155Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, avalanche, base, berachain, bsc, cronos, ethereum, fantom, gnosis, metis, optimism, polygon, sonic, zora
- Contract surface: 10 unique implementations (39 raw deployments)
- DeFi Llama TVL: $36,149,992.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Payments. Structurally: 14 project-authored contract(s) across 8 chain(s); built on solmate.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (boringbatchable, baseboringbatchable). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 39 (25 live, 14 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 10
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 16.7% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LlamaPayFactory | unknown | metis | n/a | 10 deployments: ethereum `0xde1c04...f84c7f`; bsc `0xde1c04...f84c7f`; metis [`0x06bfb4...f92c38`](./contracts/metis-1088/0x06bfb4725c1ccfbfbb45cb59b0f278c3cdf92c38/); metis `0x0ebe05...9b411c`; metis `0x43634d...030600`; metis `0x4ddfc2...7567b7`; metis `0xcfb166...c937bc`; base `0x09c39b...3aea07`; arbitrum `0xde1c04...f84c7f`; berachain `0x09c39b...3aea07` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LlamaPayBot | unknown | avalanche | n/a | 3 deployments: ethereum `0xc5a4fe...074ab9`; bsc `0xc5a4fe...074ab9`; avalanche [`0x57547f...0353d7`](./contracts/avalanche-43114/0x57547f79d8344accab21dc0a9c9d186e240353d7/) | ⚠️ Unaudited |
| Simple Vesting Escrow | operational_periphery | base | n/a | 3 deployments: base [`0x0d5e12...d62cce`](./contracts/base-8453/0x0d5e12e2bd630fc231d68f3cbf95ff5bb1d62cce/); base `0x2b3a5d...d15e49`; base `0x4c0f3d...6d4be5` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x02266e...121c01`](./contracts/ethereum-1/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/); optimism `0xb4e9d1...404779`; arbitrum `0x1564d7...528734`; avalanche `0x4c48f1...84fa0c` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | ethereum | n/a | [`0x056e39...532b72`](./contracts/ethereum-1/0x056e39bdd2d35f4eb27478369bdade51e0532b72/) | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | berachain | n/a | 8 deployments: ethereum `0xcf6178...6ab347`; bsc `0x62e13b...cd4c10`; gnosis `0x62e13b...cd4c10`; polygon `0x62e13b...cd4c10`; sonic `0xb93427...10411a`; base `0x62e13b...cd4c10`; arbitrum `0x62e13b...cd4c10`; berachain [`0x4ace3e...2b84bd`](./contracts/berachain-80094/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 7 deployments: cronos `0x62e13b...cd4c10`; fantom `0x62e13b...cd4c10`; fantom `0xc5a4fe...074ab9`; fantom `0xd152f5...452150`; fantom `0xda33d4...5294d1`; fantom `0xde1c04...f84c7f`; zora `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb93427...10411a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ace3e...2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62e13b...cd4c10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LlamaPay-v1.0.pdf](https://github.com/LlamaPay/llamapay/blob/master/audits/PeckShield-Audit-Report-LlamaPay-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x57547f...0353d7`](./contracts/avalanche-43114/0x57547f79d8344accab21dc0a9c9d186e240353d7/) | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d5e12...d62cce`](./contracts/base-8453/0x0d5e12e2bd630fc231d68f3cbf95ff5bb1d62cce/) | Simple Vesting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02266e...121c01`](./contracts/ethereum-1/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/) | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x056e39...532b72`](./contracts/ethereum-1/0x056e39bdd2d35f4eb27478369bdade51e0532b72/) | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4ace3e...2b84bd`](./contracts/berachain-80094/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
