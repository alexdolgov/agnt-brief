# Agentic Audit Brief: Savvy

## Project Overview

- Project: Savvy (`savvy`)
- Website: [https://savvydefi.io](https://savvydefi.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:52.796Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum
- Contract surface: 31 unique implementations (33 raw deployments)
- DeFi Llama TVL: $122,822.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 18 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (mutex). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 163; live-surface contracts included: 33 (4 live, 29 unknown).
- Excluded by liveness: 130 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 31
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 50.0% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavvySyntheticToken | token | arbitrum | n/a | 3 deployments: arbitrum [`0xeee183...b8c2a6`](./contracts/arbitrum-42161/0xeee18334c414a47fb886a7317e1885b2bfb8c2a6/); arbitrum `0xf202ab...037706`; arbitrum `0xf77285...863ffa` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavvyProtocolToken | token | arbitrum | n/a | [`0x43ab8f...b9f034`](./contracts/arbitrum-42161/0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x00e1b9...bd7d4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x021fc8...bf8389` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05d947...609419` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0625d8...beee92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e06bb...1cf4fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x211e82...1cbfa4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21a194...720dce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x334878...912946` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3701a0...0fc59e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b1d73...843ff6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3de7bc...a63fad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f143e...d0f77b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7beb54...247797` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x841060...2916d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ca8a5...46d443` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97d5d7...b8a81f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f9690...e657ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa97ab3...6c5dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5b914...6df1d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8a525...2c523b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb903d2...b90c6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9dd16...def856` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb8ea8...cf48f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdef7e...50168e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8a2a2...28a0d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe679fc...7449c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6efae...10f2e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb5845...f9de25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xede390...931688` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
