# Agentic Audit Brief: Switcheo Finance

## Project Overview

- Project: Switcheo Finance (`switcheo-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.205Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 34 unique implementations (75 raw deployments)
- DeFi Llama TVL: $950,669.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 43 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (abstracttoken, token, basictoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 75 (61 live, 14 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 34
- Raw deployments: 75
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlephSync | unknown | ethereum | n/a | [`0x166fd4...2f8ad5`](./contracts/ethereum-1/0x166fd4299364b21c7567e163d85d78d2fb2f8ad5/) | ⚠️ Unaudited |
| AmpleforthWrapper | unknown | ethereum | n/a | [`0xb2b9d7...947dc5`](./contracts/ethereum-1/0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| BCAPToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x403506...180158`](./contracts/ethereum-1/0x403506af39e41e2226440ad5fb44c6200b180158/); ethereum `0xef6dd4...cbbf8b` | ⚠️ Unaudited |
| CelsiusToken | token | ethereum | n/a | [`0xaaaebe...09d42d`](./contracts/ethereum-1/0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d/) | ⚠️ Unaudited |
| DuskToken | token | ethereum | n/a | [`0x940a2d...4aa551`](./contracts/ethereum-1/0x940a2db1b7008b6c776d4faaca729d6d4a4aa551/) | ⚠️ Unaudited |
| EIP20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27702a...4ef628`](./contracts/ethereum-1/0x27702a26126e0b3702af63ee09ac4d1a084ef628/); ethereum `0xc0134b...fbe03e` | ⚠️ Unaudited |
| GigaWattToken | token | ethereum | n/a | [`0x84119c...494eda`](./contracts/ethereum-1/0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda/) | ⚠️ Unaudited |
| INSToken | token | ethereum | n/a | [`0x5b2e4a...74a320`](./contracts/ethereum-1/0x5b2e4a700dfbc560061e957edec8f6eeeb74a320/) | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | n/a | [`0xdd974d...6bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| LEO | unknown | ethereum | n/a | [`0x2af5d2...912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | ⚠️ Unaudited |
| LogERC20 | token | ethereum | n/a | [`0x047f18...434a4b`](./contracts/ethereum-1/0x047f18e7f21aa714c6a5f4b346318eb384434a4b/) | ⚠️ Unaudited |
| LUCToken | token | ethereum | n/a | [`0x5dbe29...a5c719`](./contracts/ethereum-1/0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719/) | ⚠️ Unaudited |
| OneWorldOnlineToken | token | ethereum | n/a | [`0xfdbc1a...c22b23`](./contracts/ethereum-1/0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23/) | ⚠️ Unaudited |
| SocialMediaMarketToken | token | ethereum | n/a | [`0x78eb8d...c4d237`](./contracts/ethereum-1/0x78eb8dc641077f049f910659b6d580e80dc4d237/) | ⚠️ Unaudited |
| StandardToken | token | ethereum | n/a | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x6e109e...c07aef`](./contracts/ethereum-1/0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef/) | ⚠️ Unaudited |
| Wallet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3792d2...85f6ef`](./contracts/ethereum-1/0x3792d288d9f0993971f23e4758acb719f285f6ef/); ethereum `0xecf8db...89b534` | ⚠️ Unaudited |
| WrapperLock | unknown | ethereum | n/a | 39 deployments: ethereum [`0x058e2b...f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/); ethereum `0x1488f9...a1df4e`; ethereum `0x1a9b2d...eba26e`; ethereum `0x23b7b4...79f0e7`; ethereum `0x274bbd...f804cf`; ethereum `0x378301...90946c`; ethereum `0x38ae37...106a32`; ethereum `0x3b4d5a...64c684`; ethereum `0x4007e9...e037d1`; ethereum `0x4c24a4...bdd268`; ethereum `0x5501c4...06c8ca`; ethereum `0x5d1737...2adb7c`; ethereum `0x60f852...90042c`; ethereum `0x680bf2...1480e9`; ethereum `0x69391c...7a8e53`; ethereum `0x70b04d...0f3864`; ethereum `0x752d04...ed6deb`; ethereum `0x7d5a23...5862b3`; ethereum `0x874726...67982f`; ethereum `0x8a7108...153dc9`; ethereum `0x8aa72d...5f9686`; ethereum `0x8bffb6...5b5148`; ethereum `0x994161...a218fa`; ethereum `0xa216c4...cd8d78`; ethereum `0xab02fe...1767dc`; ethereum `0xab056a...bebfa2`; ethereum `0xaee07e...693782`; ethereum `0xb0abd4...f8c03c`; ethereum `0xb33ce6...ea2dec`; ethereum `0xbcf2a4...29eef9`; ethereum `0xc94ec1...9f0f9d`; ethereum `0xcf67d7...d558f7`; ethereum `0xd7a7af...8c949c`; ethereum `0xd9ebeb...a56247`; ethereum `0xe82cfc...04ce33`; ethereum `0xea7abb...061b3f`; ethereum `0xeb52a9...884899`; ethereum `0xf58825...9dc953`; ethereum `0xff6b71...cdbbfc` | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0xaa7427...be1011`](./contracts/ethereum-1/0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x011e4e...c5f05e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038fa5...f72197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03d75e...4bdd97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da1a5...7a3c64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4214c9...0af981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6eb972...83c347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72390f...c8ff32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c905e...229540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836344...d35dc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6e9bc...c9a3c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb775ef...0b57e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8ced0...bc07d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebbace...1c3ce0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1deed...455b0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf (also discovered via alternate URL)](https://www.chainsecurity.com/reports/Switcheo/ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf) | ChainSecurity | Audit | 2018-11 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_Switcheo.pdf](https://github.com/ChainSecurity/audits/blob/master/ChainSecurity_Switcheo.pdf) | ChainSecurity | Audit | 2018-11 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://www.chainsecurity.com/security-audit/switcheo) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21333] ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf
- [21334] ChainSecurity_Switcheo.pdf
- [24515] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
