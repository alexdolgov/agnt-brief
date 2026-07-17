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
| AllowTokens | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1486e225ee099f7ea491e32cd2a69e8264f70fe0`](./contracts/ethereum-1/0x1486e225ee099f7ea491e32cd2a69e8264f70fe0/); ethereum `0x8df20c2c85bee0c3da250da96d892598c70aa1be`; ethereum `0x9d772ca9dd5b7025acc23ed4bb2da9819f9789fd` | ✅ Audited |
| Federation | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2493b92b3b958c8d1e93899cae00bfc4854cbd18`](./contracts/ethereum-1/0x2493b92b3b958c8d1e93899cae00bfc4854cbd18/); ethereum `0xa38e6a92495a58a05969846a21d5cbb41dc4df24` | ✅ Audited |
| MultiSigWallet | governance | ethereum | n/a | [`0x062c74f9d27b1178bb76186c1756128ccb3ccd2e`](./contracts/ethereum-1/0x062c74f9d27b1178bb76186c1756128ccb3ccd2e/) | ✅ Audited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x05b68e70168e876b2025f837bc8e0b2312d5327d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09e3ba4e69762a1ee02bf34a3353756c0086438e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19d3c70ea390437ac520123260b5a915d9c0b0f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9edea53a1d4681f42a21ee846b22095d699c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d937dbadbe6aa80b954d2aa1164f8ae9ca99914` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d952407478407a0f461c3341f735bdb3248fade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x249ea34234f469a91f8fec130320cdb205744faf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29cdad148c715b853f64d0d917358b88c5633b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49eef28c3fc0504ef5974a524e343cf26fecf420` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x603e8247012516b01c6279fffe2879c2fbd24d5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657595ae6082f451b11a0103b8126f5c9465bea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67bb746ecc46eb3cf80b69191c18d0d098477880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72efb4b0932aea334b51c60046c8093f5fe0e0d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74aa9b461cad174ca066fc80af2151c96bd4d45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x752fa1171dd6f07ad818ea5e6dc2c9afda928537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8027e05761045704f8237ebdbb72bae56a05a500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x882619af8aa0f1946d9f375e64994e1246f9b52f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8908c967ffe8620eef74068ccddab0d9cfc8eba9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8be5c4268c5921446bb779d28e19fc8c440dc148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97d761d49a137e8bc140e5db95bc148c529e37bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa908bc57fbf079729f10017580a6bdf31e9ca92a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad95d2857f6a657b0b3ff538df028b0e2e806453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaed21f39d3df35dc6795b1e90a1f13151ee3c391` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb14b356ef1dcd94905b77f1827331c989f469379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4ba8c260e09926523d8ffdb3fd9194c3fc79156` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c313a427fa911a4c9a119e80feea0fe20e69f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7405c2b015b476e9bfb1a7e46e1e78ec00a7e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8b0370dfbb0c94add416001f50d90beac4d8868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0b2a9e31f69e4f0bc24584c678c582714a4fa1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc51579e62354a6e07e3706cabe180b7c26148959` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc81a826b34bbe9bb7b951dfb0cbc130189c16ed5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0ee3652c83d8b7347e0ae083d50f3778c6971d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd412acd34a832a09c80c8a4895ff46d733f09538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6b220491bf398fbe593b79844e8ba6866ae8ec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd913f2dde72f8565d05c3faeeab37e6bb4be216c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0a8251162f820f81976e133cfaa9a0a536378d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1b1ad78291dd6866a646a351ae0ab6228836747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8d817d2cc9185743076c405c905f7b24342eb4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf29fd896a43287a2b6f1b260c8263d7372c7c374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9a59a649859a27d664c8bdb51fa53bcb268545c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc8957fdd44499f0e223a26b66d6ef0d1e06196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe4e2a5d646e4398b34ec5b24a340ddb26509d6b` | ❓ Unverified |

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
