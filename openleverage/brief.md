# Agentic Audit Brief: OpenLeverage

## Project Overview

- Project: OpenLeverage (`openleverage`)
- Website: [https://openleverage.finance](https://openleverage.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.080Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, bsc, ethereum
- Contract surface: 50 unique implementations (55 raw deployments)
- DeFi Llama TVL: $84,922.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 35 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (delegateinterface, adminable, delegatorinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 168; live-surface contracts included: 55 (19 live, 36 unknown).
- Excluded by liveness: 113 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/14 (64.3%)
- Deployed-live implementations: 14 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/14
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 50
- Raw deployments: 55
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 14.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 57.1% | 2023-11 |
| Code4rena | Tier 1 | 2 | 14.3% | 2022-01 |
| unknown | Tier 2 | 2 | 14.3% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OLEToken | token | ethereum | n/a | [`0x92cfbe...4fab7e`](./contracts/ethereum-1/0x92cfbec26c206c90aee3b7c66a9ae673754fab7e/) | ✅ Audited |
| OLETokenLock | token | ethereum | n/a | [`0xa000e4...5ef52e`](./contracts/ethereum-1/0xa000e438f66fd1c4baa8a9c807c697b0765ef52e/) | ✅ Audited |
| OPBorrowing | core_logic | arbitrum | n/a | [`0xe7779e...52189c`](./contracts/arbitrum-42161/0xe7779ebb5c28ccd6d3dcf13920b06402ca52189c/) | ✅ Audited |
| OPLimitOrder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x544a31...348dfc`](./contracts/ethereum-1/0x544a316642bbdde240e9975fb2f5543860348dfc/); ethereum `0x7201af...a6785d` | ✅ Audited |
| OPLimitOrder | unknown | bsc | n/a | 2 deployments: bsc [`0x4b2bfd...1d394c`](./contracts/bsc-56/0x4b2bfdfba06f7da22ab1482a56221307da1d394c/); bsc `0x71f85b...d032cf` | ✅ Audited |
| RewardVault | unknown | ethereum | n/a | [`0x6ffeb0...22098a`](./contracts/ethereum-1/0x6ffeb0710eab7916a757389829e2d0d4c922098a/) | ✅ Audited |
| RewardVault | unknown | ethereum | n/a | [`0xcd0666...28e648`](./contracts/ethereum-1/0xcd066664cfac1bfcf5601ed42f4d6129ec28e648/) | ✅ Audited |
| RewardVault | unknown | bsc | n/a | 2 deployments: bsc [`0x3d1101...6e36f8`](./contracts/bsc-56/0x3d11015d9044cabbb2504448e37f20d0d56e36f8/); bsc `0x7bacb1...3d0887` | ✅ Audited |
| XOLE | unknown | bsc | n/a | [`0x71f115...2c77d2`](./contracts/bsc-56/0x71f1158d76af5b6762d5ebcdee19105eab2c77d2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OLEV2LockerSwap | unknown | ethereum | n/a | [`0x511df2...c27e20`](./contracts/ethereum-1/0x511df2a79e33560bc23f070c3098373f6ac27e20/) | ⚠️ Unaudited |
| OPBorrowing | core_logic | bsc | n/a | [`0xf436f8...075e47`](./contracts/bsc-56/0xf436f8fe7b26d87eb74e5446acec2e8ad4075e47/) | ⚠️ Unaudited |
| OpenLeverageOFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b6e9c...83ab0a`](./contracts/ethereum-1/0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a/); bsc `0xb7e271...8f1467` | ⚠️ Unaudited |
| RetroactiveAirdropLock | unknown | bsc | n/a | 2 deployments: ethereum `0xe14e5e...6e97e1`; bsc [`0x41690f...ad1c0c`](./contracts/bsc-56/0x41690f3ac3befb5aee178413092092f040ad1c0c/) | ⚠️ Unaudited |
| WordCupCompetition | unknown | bsc | n/a | [`0xb97ba5...147ec7`](./contracts/bsc-56/0xb97ba5c4a569ddd3ad11ba838fd09b7380147ec7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1450bf...e49264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d155b...0e89dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3794f3...ba6612` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x456b46...d017fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x565c0d...a7733f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x568339...4ef520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59878b...6872c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74039a...b0a620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b041b...794673` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80fb57...355576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9437ec...673175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e321...49e93f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x011ef0...7c4074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e3267...4297b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x234345...c45924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x264525...fe07e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27920a...c39e50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d44dc...15af47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f6885...db04af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31ee29...e7e3cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36b311...fc1cdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d1ce6...3f5889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45870d...7998eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d3f74...4f519c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d40e7...55a709` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ddb2...c0779d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x556cc7...1a37b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc3f0...58544c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7465cb...a646cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bf286...417c50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3d55f...89de0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb495f8...e8c494` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdcd2e...c0800d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc01818...3a574d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf6492...7aff5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3c40b...cd9846` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-OpenLeverage-Protocol-2021-06-24.pdf](https://github.com/OpenLeverageDev/openleverage-contracts/blob/main/audits/REP-OpenLeverage-Protocol-2021-06-24.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-OpenLeverage-1.0.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OpenLeverage-1.0.1.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 2 | n/a |
| [code4rena.com/reports/2022-01-openleverage](https://code4rena.com/reports/2022-01-openleverage) | Code4rena | Contest | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-OpenLeverage-LimitOrder-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OpenLeverage-LimitOrder-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 4 | high |
| [PeckShield-Audit-Report-OpenLeverage-Lend-v1.0.pdf](https://github.com/OpenLeverageDev/overcollateralized-borrowing-contracts/blob/main/audits/PeckShield-Audit-Report-OpenLeverage-Lend-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-OLEv2-v1.0.pdf](https://github.com/OpenLeverageDev/ole-v2-contracts/blob/main/audits/PeckShield-Audit-Report-OLEv2-v1.0.pdf) | PeckShield | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [PeckShield-Audit-Report-OpenLeverage-v1.0.1.pdf](https://github.com/OpenLeverageDev/openleverage-contracts/blob/main/audits/PeckShield-Audit-Report-OpenLeverage-v1.0.1.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-OpenLeverage-v1.0.pdf](https://github.com/OpenLeverageDev/openleverage-contracts/blob/main/audits/PeckShield-Audit-Report-OpenLeverage-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x511df2...c27e20`](./contracts/ethereum-1/0x511df2a79e33560bc23f070c3098373f6ac27e20/) | OLEV2LockerSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf436f8...075e47`](./contracts/bsc-56/0xf436f8fe7b26d87eb74e5446acec2e8ad4075e47/) | OPBorrowing | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6e9c...83ab0a`](./contracts/ethereum-1/0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a/) | OpenLeverageOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41690f...ad1c0c`](./contracts/bsc-56/0x41690f3ac3befb5aee178413092092f040ad1c0c/) | RetroactiveAirdropLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb97ba5...147ec7`](./contracts/bsc-56/0xb97ba5c4a569ddd3ad11ba838fd09b7380147ec7/) | WordCupCompetition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=10, extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
