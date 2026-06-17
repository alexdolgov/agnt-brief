# Agentic Audit Brief: Lair Finance

## Project Overview

- Project: Lair Finance (`lair-finance`)
- Website: [https://lair.fi](https://lair.fi)
- Lifecycle: active (Tier 0, 93% below peak)
- Generated: 2026-06-17T07:00:45.350Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: berachain
- Contract surface: 61 unique implementations (84 raw deployments)
- DeFi Llama TVL: $4,166,761.80
- On-chain TVL (included contracts): $3,407,768.64
- TVL by chain: Berachain $3,407,768.64

## Project Description

Lair Finance is a cross-chain liquid staking and liquid restaking protocol with products across KAIA/Klaytn, Somnia, and Berachain. Its current public positioning includes KAIA liquid staking, Somnia staking, and Berachain/restaking-related deployments, so Berachain-only BERA liquid staking should not be presented as the full-project scope.

### Architecture

The Lair Finance family uses upgradeable proxy contracts to manage vault logic and token interactions, with the InfraredVault serving as the core staking mechanism and LairToken as the liquid representation of staked assets.

## Contract Surface Quality

- Indexed contracts: 192; live-surface contracts included: 84 (84 live, 0 unknown).
- Excluded by liveness: 95 inactive, 13 singleton, 0 uninitialized.
- Deployment units: 10/17 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 7/20.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 61
- Raw deployments: 84
- Audits discovered: 11
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,407,768.64
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 9 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InfraredVault | core_logic | berachain | n/a | 2 deployments: berachain [`0x6583e7...f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/); berachain `0x75f3be...168301` | ⚠️ Unaudited |
| WrappedVault | core_logic | berachain | n/a | 15 deployments: berachain [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x58b34e...2871fd`; berachain `0x7e3129...54e39a`; berachain `0x81ba24...6f490a`; berachain `0x920598...9b139a`; berachain `0xa3a376...80f26f`; berachain `0xb38b0d...26c9b9`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xde7472...687958`; berachain `0xfe7a78...c5f575` | ⚠️ Unaudited |
| LairToken | token | berachain | n/a | [`0xf35307...8a0d3c`](./contracts/berachain-80094/0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c/) | ⚠️ Unaudited |
| BribeCollectorV1_4 | operational_periphery | berachain | unit-27460 | [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ⚠️ Unaudited |
| InfraredBERADepositorV2 | unknown | berachain | unit-27451 | [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ⚠️ Unaudited |
| InfraredBERAV2_1 | unknown | berachain | unit-27462 | [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ⚠️ Unaudited |
| InfraredBERAWithdrawor | operational_periphery | berachain | unit-27459 | [`0x8c0e12...2818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ⚠️ Unaudited |
| InfraredBGT | unknown | berachain | n/a | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ⚠️ Unaudited |
| InfraredV1_10 | unknown | berachain | unit-27463 | [`0xb71b3d...2fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | [`0x9f6cf7...91a41d`](./contracts/berachain-80094/0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d/) | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | n/a | [`0x29af24...3c764d`](./contracts/berachain-80094/0x29af240276168330c3c266112d7ffdc1fd3c764d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | unit-27453 (2 proxies) | 2 deployments: berachain [`0x2c7655...529586`](./contracts/berachain-80094/0x2c765592fe0025f3ca6aa53616afa1643d529586/); berachain `0x3e97ca...faaa33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | unit-27454 (3 proxies) | 3 deployments: berachain [`0x2cb2ef...518bc7`](./contracts/berachain-80094/0x2cb2ef8703965d6dbe19eacad5616284db518bc7/); berachain `0xfc3da0...379c82`; berachain `0xfe2b4e...785fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | unit-27456 (6 proxies) | 6 deployments: berachain [`0x4a110b...4a1019`](./contracts/berachain-80094/0x4a110b149a9a6abb1f4c83b20b3f6c4bbd4a1019/); berachain `0x66611b...e5b6ab`; berachain `0x77df4e...8c9aaa`; berachain `0x90e596...0a82bf`; berachain `0xd5c3b4...192870`; berachain `0xdeb193...218e31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | unit-27458 | [`0x871195...37995e`](./contracts/berachain-80094/0x8711959569ba069420b1ddfd7b9d020e4837995e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | unit-27466 | [`0xe79bf7...cf6686`](./contracts/berachain-80094/0xe79bf7cb7ee8cf6a26f2f368fa80800e87cf6686/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | berachain | n/a | `0x06df64...94645d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0c7e78...099796` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0d493a...a942b3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x13452c...afbad2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x15e565...5c2dda` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1b1d44...21fa12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1d1558...a78865` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x255e6d...b8be77` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2b6bb6...6e9ae3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x35c50e...7b9fdf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x37bbcb...665ceb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x3a329e...5b7922` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x419b1e...40f23d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x45cd02...3586ba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4911c4...8f290b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4fafd5...1d7a87` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x5be43b...39c20b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6c92af...91389a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x77c587...1ebb62` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7a3d63...05f583` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7f4ced...1d85f5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x82a3fc...585bfa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x85ec12...b5eb8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x86205e...814b3e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x87e10e...dea7aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8c48ff...5a401f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x901882...6dcba9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x99455a...990b51` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb526b1...9e81d9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb5988d...cf4d89` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb608f0...4c35e4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbae739...df4ee8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc909ef...3f082b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xcaee3c...d993ad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd0282e...e13119` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd49c81...6915d6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd58cc5...c105a0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd73349...4e2db3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xde8936...970b37` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe0cb21...c5b643` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe4d5f4...4b513a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xee85b7...300a30` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf050cd...eb4bca` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf31392...46d601` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf4f447...769ab6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bera LRT Contracts _ SSC.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/lrBGT/Bera%20LRT%20Contracts%20_%20SSC.pdf) | SSC | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Lair Restaking_Omniscia_Security_Review.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair%20Restaking_Omniscia_Security_Review.pdf) | Omniscia | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Lair_Restaking_v01.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v01.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Lair_Restaking_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v2.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Lair_Restaking_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v3.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Lair_stSomi_v01.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stSomi/Lair_stSomi_v01.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Lair_stSomi_v02.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stSomi/Lair_stSomi_v02.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Lair_Stake_v1.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v1.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Lair_Stake_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v2.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Lair_Stake_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v3.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Lair Finance Smart Contract Audit Report - Final Report.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/vault/Lair%20Finance%20Smart%20Contract%20Audit%20Report%20-%20Final%20Report.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x6583e7...f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/) | InfraredVault | core_logic | $2,718,606.40 | Verified native implementation with $2,718,606.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | WrappedVault | core_logic | $644,595.61 | Verified native implementation with $644,595.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf35307...8a0d3c`](./contracts/berachain-80094/0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c/) | LairToken | token | $44,566.63 | Verified native implementation with $44,566.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | InfraredBGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x29af24...3c764d`](./contracts/berachain-80094/0x29af240276168330c3c266112d7ffdc1fd3c764d/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14247] Bera LRT Contracts _ SSC.pdf
- [14248] Lair Restaking_Omniscia_Security_Review.pdf
- [14249] Lair_Restaking_v01.pdf
- [14250] Lair_Restaking_v2.pdf
- [14251] Lair_Restaking_v3.pdf
- [14252] Lair_stSomi_v01.pdf
- [14253] Lair_stSomi_v02.pdf
- [14254] Lair_Stake_v1.pdf
- [14255] Lair_Stake_v2.pdf
- [14256] Lair_Stake_v3.pdf
- [14257] Lair Finance Smart Contract Audit Report - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
