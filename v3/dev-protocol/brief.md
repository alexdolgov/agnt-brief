# Agentic Audit Brief: Dev Protocol

## Project Overview

- Project: Dev Protocol (`dev-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.824Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 56 unique implementations (85 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 50 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 16 common project-authored base contract(s) (dip1, usingconfig, lockupstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 224; live-surface contracts included: 85 (40 live, 45 unknown).
- Excluded by liveness: 139 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/11 (27.3%)
- Deployed-live implementations: 11 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 56
- Raw deployments: 85
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 27.3% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dev | unknown | ethereum | n/a | [`0x5caf45...fd5b26`](./contracts/ethereum-1/0x5caf454ba92e6f2c929df14667ee360ed9fd5b26/) | ✅ Audited |
| Lockup | unknown | ethereum | n/a | 18 deployments: ethereum [`0x093ec4...11805e`](./contracts/ethereum-1/0x093ec4e2f80f8860a635ca6b4768a9d81911805e/); ethereum `0x1440ac...0179b7`; ethereum `0x24f114...1942ad`; ethereum `0x2a2273...e830bb`; ethereum `0x2c4f83...cb1b0d`; ethereum `0x34c64a...9eb6e2`; ethereum `0x474956...748ec2`; ethereum `0x54cb6a...038593`; ethereum `0x70d1ed...a80837`; ethereum `0x7b1104...e52dda`; ethereum `0x88b02a...4c9983`; ethereum `0x945c25...d53044`; ethereum `0x98ed66...d0bfd3`; ethereum `0xb3007c...34ddb5`; ethereum `0xbd2a75...77804f`; ethereum `0xbd3ac1...8aea43`; ethereum `0xe1653f...92fe86`; ethereum `0xf022e7...fdd303` | ✅ Audited |
| Withdraw | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1fd4cc...77843b`](./contracts/ethereum-1/0x1fd4cc54564f880d267d8cb75f60b04f4777843b/); ethereum `0x5f99f7...8bde19`; ethereum `0xeaabdb...d984bb` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Decimals | unknown | ethereum | n/a | [`0x6190a4...a68a4d`](./contracts/ethereum-1/0x6190a479cfafcb1637f5485366bcbce418a68a4d/) | ⚠️ Unaudited |
| EternalStorage | unknown | ethereum | n/a | [`0x8d643f...a43463`](./contracts/ethereum-1/0x8d643f228fdabf5eaf3dd97eb73e52635ea43463/) | ⚠️ Unaudited |
| LockupStorage | unknown | ethereum | n/a | 5 deployments: ethereum [`0x46218a...a65594`](./contracts/ethereum-1/0x46218adedfe50a6e9c9334fd40419b5624a65594/); ethereum `0x537687...251ff2`; ethereum `0x6577ad...923e8a`; ethereum `0xa029e8...357fe9`; ethereum `0xce45ee...2cb233` | ⚠️ Unaudited |
| MarketFactory | unknown | ethereum | n/a | 4 deployments: ethereum [`0xb56a25...732782`](./contracts/ethereum-1/0xb56a25a79a155849497426a5cb7a59c020732782/); ethereum `0xe47e6e...3100df`; ethereum `0xe91fbf...e68605`; ethereum `0xead290...0c278a` | ⚠️ Unaudited |
| MarketGroup | unknown | ethereum | n/a | [`0x54eeff...66f242`](./contracts/ethereum-1/0x54eeff7ad1e35f7395b1b4f4c86ec113eb66f242/) | ⚠️ Unaudited |
| MigrateLockup | unknown | ethereum | n/a | [`0xe43d47...d922c6`](./contracts/ethereum-1/0xe43d4734f7dc7184e6d4afe0ec54c73b0ed922c6/) | ⚠️ Unaudited |
| MigrateWithdraw | unknown | ethereum | n/a | [`0x09e989...90937f`](./contracts/ethereum-1/0x09e989a431321fa953bf9167c215b50e3a90937f/) | ⚠️ Unaudited |
| WithdrawStorage | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6d4988...a70f2f`](./contracts/ethereum-1/0x6d4988238b6396d15a63ed675d96dd4d86a70f2f/); ethereum `0x890275...44830e`; ethereum `0xb207a2...baacfc`; ethereum `0xf66145...946150` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a8f97...f3329c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x189815...186b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a2b49...29e5e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2397b1...1b1060` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24f5f2...86258e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe0cd...3cfa9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32533f...622740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3590f2...fa231d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d702d...e75f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42767b...165c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x458238...2a2cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1dbc...323bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56ff6f...b4fa0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5862fb...382845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65b2b8...7b35cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x707846...15bd36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72f06a...2e17cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b0b23...dfb599` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e026e...09d96f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8140a5...0ac073` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x926d9c...910330` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0ee41...4237a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2d49e...5e121c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5577d...205701` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9455c...a7ca2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac4143...b2278a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf31dd...787ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0a2e6...df443b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3bbc4...a39695` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f3e6...1264de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb64702...04a932` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb67405...9f947a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba4ba4...f85e15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb4b50...ec392d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbef4de...491ffa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02e33...07671f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc758ea...2d11ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc90dd1...723df5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdffe27...406cc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe66d0e...1051e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a21c...d0c52a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe90a83...cd80d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea518a...212178` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb2fee...265925` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedcf77...377929` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-report__quantstamp--sept-15-2020.pdf](https://github.com/dev-protocol/protocol/blob/main/docs/audit-report__quantstamp--sept-15-2020.pdf) | Quantstamp | Audit | 2020-09 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
