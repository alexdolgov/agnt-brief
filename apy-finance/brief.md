# Agentic Audit Brief: APY Finance

## Project Overview

- Project: APY Finance (`apy-finance`)
- Website: [https://apy.finance](https://apy.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:04.012Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $413,794.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 5 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/5
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 4 | 80.0% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| APYGovernanceToken | unknown | ethereum | n/a | [`0x561af1...240b62`](./contracts/ethereum-1/0x561af1ec26491a89e3907fb11eed479843240b62/) | ✅ Audited |
| APYPoolToken | unknown | ethereum | n/a | [`0x21347b...4bce75`](./contracts/ethereum-1/0x21347bf816051ffa9a6456536fcdd2cea44bce75/) | ✅ Audited |
| PoolTokenV3 | unknown | ethereum | n/a | [`0x75ce0e...2a8970`](./contracts/ethereum-1/0x75ce0e501e2e6776fcaaa514f394a88a772a8970/) | ✅ Audited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x3dea1f...e973d9`](./contracts/ethereum-1/0x3dea1f053ab24b0c5b0c663b1c07b6b702e973d9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceTokenV2 | unknown | ethereum | n/a | [`0x95a449...446611`](./contracts/ethereum-1/0x95a4492f028aa1fd432ea71146b433e7b4446611/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [APY_Finance_governance_token_reward_halborn_report_V1.1.pdf](https://github.com/apy-finance/apy-audits/blob/main/APY_Finance_governance_token_reward_halborn_report_V1.1.pdf) | Halborn | Audit | 2020-10 | stale | Direct | contract_name | 1 | high |
| [ApyFinance_smartcontract_halborn_report_V1.pdf](https://github.com/apy-finance/apy-audits/blob/main/ApyFinance_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |
| [APY_Finance_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/APY_Finance_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x95a449...446611`](./contracts/ethereum-1/0x95a4492f028aa1fd432ea71146b433e7b4446611/) | GovernanceTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
