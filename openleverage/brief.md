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
| OLEToken | token | ethereum | n/a | [`0x92cfbec26c206c90aee3b7c66a9ae673754fab7e`](./contracts/ethereum-1/0x92cfbec26c206c90aee3b7c66a9ae673754fab7e/) | ✅ Audited |
| OLETokenLock | token | ethereum | n/a | [`0xa000e438f66fd1c4baa8a9c807c697b0765ef52e`](./contracts/ethereum-1/0xa000e438f66fd1c4baa8a9c807c697b0765ef52e/) | ✅ Audited |
| OPBorrowing | core_logic | arbitrum | n/a | [`0xe7779ebb5c28ccd6d3dcf13920b06402ca52189c`](./contracts/arbitrum-42161/0xe7779ebb5c28ccd6d3dcf13920b06402ca52189c/) | ✅ Audited |
| OPLimitOrder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x544a316642bbdde240e9975fb2f5543860348dfc`](./contracts/ethereum-1/0x544a316642bbdde240e9975fb2f5543860348dfc/); ethereum `0x7201afa4ff4bcc43b2dd9c9bcbc9e7305da6785d` | ✅ Audited |
| OPLimitOrder | unknown | bsc | n/a | 2 deployments: bsc [`0x4b2bfdfba06f7da22ab1482a56221307da1d394c`](./contracts/bsc-56/0x4b2bfdfba06f7da22ab1482a56221307da1d394c/); bsc `0x71f85ba5ef23102c991d671a48f7bc0d44d032cf` | ✅ Audited |
| RewardVault | unknown | ethereum | n/a | [`0x6ffeb0710eab7916a757389829e2d0d4c922098a`](./contracts/ethereum-1/0x6ffeb0710eab7916a757389829e2d0d4c922098a/) | ✅ Audited |
| RewardVault | unknown | ethereum | n/a | [`0xcd066664cfac1bfcf5601ed42f4d6129ec28e648`](./contracts/ethereum-1/0xcd066664cfac1bfcf5601ed42f4d6129ec28e648/) | ✅ Audited |
| RewardVault | unknown | bsc | n/a | 2 deployments: bsc [`0x3d11015d9044cabbb2504448e37f20d0d56e36f8`](./contracts/bsc-56/0x3d11015d9044cabbb2504448e37f20d0d56e36f8/); bsc `0x7bacb1c805cbbf7c4f74556a4b34fde7793d0887` | ✅ Audited |
| XOLE | unknown | bsc | n/a | [`0x71f1158d76af5b6762d5ebcdee19105eab2c77d2`](./contracts/bsc-56/0x71f1158d76af5b6762d5ebcdee19105eab2c77d2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OLEV2LockerSwap | unknown | ethereum | n/a | [`0x511df2a79e33560bc23f070c3098373f6ac27e20`](./contracts/ethereum-1/0x511df2a79e33560bc23f070c3098373f6ac27e20/) | ⚠️ Unaudited |
| OPBorrowing | core_logic | bsc | n/a | [`0xf436f8fe7b26d87eb74e5446acec2e8ad4075e47`](./contracts/bsc-56/0xf436f8fe7b26d87eb74e5446acec2e8ad4075e47/) | ⚠️ Unaudited |
| OpenLeverageOFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a`](./contracts/ethereum-1/0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a/); bsc `0xb7e2713cf55cf4b469b5a8421ae6fc0ed18f1467` | ⚠️ Unaudited |
| RetroactiveAirdropLock | unknown | bsc | n/a | 2 deployments: ethereum `0xe14e5ed1513744bf039d3fac30381e0c5d6e97e1`; bsc [`0x41690f3ac3befb5aee178413092092f040ad1c0c`](./contracts/bsc-56/0x41690f3ac3befb5aee178413092092f040ad1c0c/) | ⚠️ Unaudited |
| WordCupCompetition | unknown | bsc | n/a | [`0xb97ba5c4a569ddd3ad11ba838fd09b7380147ec7`](./contracts/bsc-56/0xb97ba5c4a569ddd3ad11ba838fd09b7380147ec7/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x1450bf412a1863da59c9418fc1ca08e5eee49264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d155be2ce8f7b2d3d3628988f3434d7ed0e89dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3794f366f5d4de9a80507a0259a463007cba6612` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x456b46f6df5d7175e898a870b6b22263e0d017fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x565c0dde927639ba5c6f92ec5b9a647a2aa7733f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x568339d4dfa645ea949426a23e7b88626a4ef520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59878bd12c634bba4b6123b50e1f418e5d6872c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74039a413cd7b501eb7b8f2ea9e35c0a6cb0a620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b041bd2f676eed1ab22a17c9ed5b6b3cb794673` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80fb57f657b50f8c5a9c42c0d94082be2f355576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9437ecd3f197c1d264fb8d4ed43fe89aad673175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e321d1cb6b540e922a5e4d8720feed0749e93f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x011ef047b99dc14862e279824fea36bac67c4074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e326751ab5937809eeabd38ed650f27754297b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x234345e07182de2adca355167d2b0bf1dfc45924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2645252e2155c12e2726d0ccd5fc0d1cccfe07e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27920a3130ec6aa73b94441e3f97625fe7c39e50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d44dcfdb7fb469a6bd7b726733ef7f85815af47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f68851ebc298aa3c0d28b89786718b27fdb04af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31ee2927271ed7c43c4dc1df823b665fb7e7e3cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36b311d1cc616f2e693e06bbfdd9e881aefc1cdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d1ce6c8ff6de4ceda88bde0f0c9b473d53f5889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45870dfd47b47e04a78fbe9dcf646dea797998eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d3f74c4cfbab1e8af2de98cd87a3beb874f519c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d40e7424db012b57f69e9c2013d64363f55a709` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ddb223f653561a715694b55fc32d1fa3c0779d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x556cc7f4412ca19fc858e3d08537dffafe1a37b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc3f0faa1353a8e8b08880504f36e84d058544c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7465cb9f4b1d726742c37def37b5c6c523a646cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bf286972a1d512195fa731e1ae7009af0417c50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3d55f324ca23b73fb1b902982a5356baf89de0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb495f8d9b6cc6d97ec0dd761c2ea4fb80fe8c494` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdcd2e1fa20a45043e21c7a29499dad5bcc0800d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0181848921f631b27cd73a0d469c2bb213a574d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf64926add467b2bac69c37ee49738e8b77aff5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3c40b0e577aa6f5111c25882290ffff68cd9846` | ❓ Unverified |

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
| ethereum | [`0x511df2a79e33560bc23f070c3098373f6ac27e20`](./contracts/ethereum-1/0x511df2a79e33560bc23f070c3098373f6ac27e20/) | OLEV2LockerSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf436f8fe7b26d87eb74e5446acec2e8ad4075e47`](./contracts/bsc-56/0xf436f8fe7b26d87eb74e5446acec2e8ad4075e47/) | OPBorrowing | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a`](./contracts/ethereum-1/0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a/) | OpenLeverageOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41690f3ac3befb5aee178413092092f040ad1c0c`](./contracts/bsc-56/0x41690f3ac3befb5aee178413092092f040ad1c0c/) | RetroactiveAirdropLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb97ba5c4a569ddd3ad11ba838fd09b7380147ec7`](./contracts/bsc-56/0xb97ba5c4a569ddd3ad11ba838fd09b7380147ec7/) | WordCupCompetition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
