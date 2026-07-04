# Agentic Audit Brief: Sovryn Bridge

## Project Overview

- Project: Sovryn Bridge (`sovryn-bridge`)
- Website: [https://alpha.sovryn.app](https://alpha.sovryn.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.355Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 45 unique implementations (48 raw deployments)
- DeFi Llama TVL: $2,420,653.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 5 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 48 (6 live, 42 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/3 (100.0%)
- Deployed-live implementations: 3 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/3
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 45
- Raw deployments: 48
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 13 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 3 | 100.0% | 2021-09 |
| CertiK | Tier 2 | 1 | 33.3% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowTokens | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1486e2...f70fe0`](./contracts/ethereum-1/0x1486e225ee099f7ea491e32cd2a69e8264f70fe0/); ethereum `0x8df20c...0aa1be`; ethereum `0x9d772c...9789fd` | ✅ Audited |
| Federation | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2493b9...4cbd18`](./contracts/ethereum-1/0x2493b92b3b958c8d1e93899cae00bfc4854cbd18/); ethereum `0xa38e6a...c4df24` | ✅ Audited |
| MultiSigWallet | governance | ethereum | n/a | [`0x062c74...3ccd2e`](./contracts/ethereum-1/0x062c74f9d27b1178bb76186c1756128ccb3ccd2e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x05b68e...d5327d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09e3ba...86438e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19d3c7...c0b0f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9ede...699c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d937d...a99914` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d9524...48fade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x249ea3...744faf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29cdad...633b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49eef2...ecf420` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x603e82...d24d5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657595...65bea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67bb74...477880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72efb4...e0e0d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74aa9b...d4d45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x752fa1...928537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8027e0...05a500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x882619...f9b52f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8908c9...c8eba9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8be5c4...0dc148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97d761...9e37bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa908bc...9ca92a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad95d2...806453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaed21f...e3c391` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb14b35...469379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4ba8c...c79156` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c313...0e69f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7405c...0a7e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8b037...4d8868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0b2a9...a4fa1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc51579...148959` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc81a82...c16ed5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0ee3...c6971d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd412ac...f09538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6b220...ae8ec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd913f2...be216c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0a825...6378d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1b1ad...836747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8d817...42eb4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf29fd8...c7c374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9a59a...68545c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc895...e06196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe4e2a...509d6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [omniscia.io/reports/sovryn-bridge-implementation-v4](https://omniscia.io/reports/sovryn-bridge-implementation-v4) | Omniscia | Audit | 2021-09 | stale | Direct | contract_name | 6 | high |
| [Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/DistributedCollective/sovryn-audits/main/Least%20Authority%20-%20Sovryn%20Bi-directional%20FastBTC%20Final%20Audit%20Report.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://wiki.sovryn.com/en/technical-documents/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [System-wide Sovryn Smart Contract Audit by CertiK, October 2021 (also discovered via alternate URL)](https://raw.githubusercontent.com/DistributedCollective/sovryn-audits/main/certik-pre-sovryn-2021-10-11.pdf) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_%20Zero.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_Origins.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021](https://omniscia.io/reports/sovryn-babelfish-protocol-v1) | yAudit | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Staking Contract Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Staking_Smart_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Genesis Sale Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Genesis_Sale_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [cSOV Token Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_CSOV_Token_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Sovryn Governance Security Audit v210115.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Governance%20Security%20Audit%20v210115.pdf) | yAudit | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Governance Audit by Franklin Richards, December 2020](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Governance_Smart_Contract_Audit.pdf) | Franklin Richards | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Smart Contract Source Code Audit, December 2020](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Audit%20Smart%20Contracts%20v201218.pdf) | yAudit | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Audit by Pessimistic, October 7, 2020](https://sovryn.app/images/pdf/SovrynAudit2020.pdf) | Pessimistic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sovryn Security Recheck.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Recheck.pdf) | Unknown | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Zero-match audit list:

- [21320] Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf
- [24484] Manual audit seed
- [24486] Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021
- [24487] Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021
- [24488] BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021
- [24490] Staking Contract Audit by Franklin Richards, January 2021
- [24491] Genesis Sale Audit by Franklin Richards, January 2021
- [24492] cSOV Token Audit by Franklin Richards, January 2021
- [24493] Sovryn Governance Security Audit v210115.pdf
- [24494] Governance Audit by Franklin Richards, December 2020
- [24495] Smart Contract Source Code Audit, December 2020
- [24496] Audit by Pessimistic, October 7, 2020
- [24498] Sovryn Security Recheck.pdf

Fork inheritance lineage and inherited audits are included when available.
