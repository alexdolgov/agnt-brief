# Agentic Audit Brief: LOCKON

## Project Overview

- Project: LOCKON (`lockon`)
- Website: [https://lockon.finance](https://lockon.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.657Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum, polygon
- Contract surface: 17 unique implementations (28 raw deployments)
- DeFi Llama TVL: $879,886.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 13 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (extendmodulebase, modulebase, operator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 28 (21 live, 7 unknown).
- Excluded by liveness: 32 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/10 (90.0%)
- Deployed-live implementations: 10 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/10
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 17
- Raw deployments: 28
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Bunzz | Tier 2 | 5 | 50.0% | 2024-10 |
| Hashlock | Tier 2 | 5 | 50.0% | 2025-09 |
| unknown | Tier 2 | 4 | 40.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | operational_periphery | arbitrum | n/a | [`0xf6e8fe...7e6b99`](./contracts/arbitrum-42161/0xf6e8fef3e5e0a7664caedbcc3e655e188a7e6b99/) | ✅ Audited |
| BasicIssuanceModule | unknown | arbitrum | n/a | 2 deployments: polygon `0x6f0790...4cb8ed`; arbitrum [`0x018afb...925e82`](./contracts/arbitrum-42161/0x018afbf49356138d7ccf465f3f3420e233925e82/) | ✅ Audited |
| ExchangeIssuanceZeroEx | unknown | polygon | n/a | 4 deployments: polygon [`0x44ace3...a408c4`](./contracts/polygon-137/0x44ace3accfb7ec2150a9b5a0ca747e65f2a408c4/); polygon `0xdbf320...79f058`; arbitrum `0x7eea52...b86c79`; arbitrum `0x8ca32f...65a585` | ✅ Audited |
| IndexStaking | unknown | arbitrum | n/a | [`0x8087cb...f4312d`](./contracts/arbitrum-42161/0x8087cb6c02b7a3c35e8c88cdbbd5eeb3fcf4312d/) | ✅ Audited |
| LockonVesting | operational_periphery | arbitrum | n/a | [`0x555962...91f2a0`](./contracts/arbitrum-42161/0x555962ce3093b15fac8d37c2a49935c96991f2a0/) | ✅ Audited |
| LockStaking | unknown | arbitrum | n/a | [`0x36f6dd...11423a`](./contracts/arbitrum-42161/0x36f6ddf9ee7c6dbec3e799c81d03a7986411423a/) | ✅ Audited |
| LockToken | token | arbitrum | n/a | [`0x992c20...d6ef74`](./contracts/arbitrum-42161/0x992c20c4e2f10f6b2c81ee686a200569fbd6ef74/) | ✅ Audited |
| PositionUnitAdjusterModule | unknown | polygon | n/a | 4 deployments: polygon [`0x8c2e03...95f06b`](./contracts/polygon-137/0x8c2e0399291d6225517a873de04ab92c2c95f06b/); polygon `0xb9bf07...642282`; arbitrum `0x99871a...b17278`; arbitrum `0xe1093e...05b7eb` | ✅ Audited |
| TradeModule | unknown | arbitrum | n/a | 3 deployments: polygon `0x6cc11e...1c3b01`; arbitrum [`0x495113...a026a6`](./contracts/arbitrum-42161/0x4951133b9429ac86ea894b428ff6409b08a026a6/); arbitrum `0xebe11a...56bcd3` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SetToken | token | polygon | n/a | 3 deployments: polygon [`0xadb6d6...437252`](./contracts/polygon-137/0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252/); polygon `0xbe9a09...e30f63`; polygon `0xd32dfe...80662f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x9c50ce...a3520f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x175024...3290d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24b803...596c8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d0b47...72c300` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e877c...0ec079` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4106f...833468` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd4850...ff3fac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [gitlab.com/lockon-finance/core-contracts/-/tree/main/audits](https://gitlab.com/lockon-finance/core-contracts/-/tree/main/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [blaize.tech/clients/smart-contract-security-audit-for-lockon-finance](https://blaize.tech/clients/smart-contract-security-audit-for-lockon-finance) | Blaize Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [final_report_LOCKON_Mar_27_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Mar_27_2024.pdf) | Bunzz | Audit | 2024-03 | stale | Direct | contract_name | 5 | n/a |
| [Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-(Adjuster)-audit-report-%5B15-Nov-2024%5D.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [Lockon-audit-report-[7-July-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-audit-report-%5B7-July-2023%5D.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 3 | n/a |
| [final_report_LOCKON_Oct_25_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Oct_25_2024.pdf) | Bunzz | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [LOCKON-Smart-Contract-Audit-Report.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/hashlock/LOCKON-Smart-Contract-Audit-Report.pdf) | Hashlock | Audit | 2025-09 | fresh | Direct | contract_name | 5 | n/a |
| [bunzz-audit (GitHub directory)](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=14

Zero-match audit list:

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance
- [3233] final_report_LOCKON_Oct_25_2024.pdf
- [15448] bunzz-audit (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
