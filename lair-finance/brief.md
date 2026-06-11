# Agentic Audit Brief: Lair Finance

## Project Overview

- Project: Lair Finance (`lair-finance`)
- Website: [https://lair.fi](https://lair.fi)
- Lifecycle: active (Tier 0, 93% below peak)
- Generated: 2026-06-11T00:34:40.012Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: berachain
- Contract surface: 78 unique implementations (191 raw deployments)
- DeFi Llama TVL: $5,549,655.05
- On-chain TVL (included contracts): $3,407,775.66
- TVL by chain: Berachain $3,407,775.66

## Project Description

Lair Finance is a cross-chain liquid staking and liquid restaking protocol with products across KAIA/Klaytn, Somnia, and Berachain. Its current public positioning includes KAIA liquid staking, Somnia staking, and Berachain/restaking-related deployments, so Berachain-only BERA liquid staking should not be presented as the full-project scope.

### Architecture

The Lair Finance family uses upgradeable proxy contracts to manage vault logic and token interactions, with the InfraredVault serving as the core staking mechanism and LairToken as the liquid representation of staked assets.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 64
- Unique implementations: 78
- Raw deployments: 191
- Audits discovered: 11
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,407,775.66
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 9 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| InfraredVault | core_logic | berachain | 2 deployments: berachain [`0x6583e7...f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/); berachain `0x75f3be...168301` | ⚠️ Unaudited |
| WrappedVault | core_logic | berachain | 93 deployments: berachain [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x023e5d...3124f0`; berachain `0x03c2ef...02ba65`; berachain `0x04bd6e...e69bd5`; berachain `0x04edcc...81b739`; berachain `0x0cb3e2...42d009`; berachain `0x0fff6d...9ddc97`; berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x1453c6...eba339`; berachain `0x16275c...e730f4`; berachain `0x1a18f5...1a2241`; berachain `0x22a3fb...488715`; berachain `0x23ed71...fd8864`; berachain `0x2415fe...12cf8f`; berachain `0x27b03a...9086db`; berachain `0x2a447f...e69ac2`; berachain `0x2e1139...7ae031`; berachain `0x2e32dd...e2b00f`; berachain `0x2f5119...723c9b`; berachain `0x3904aa...e1ab84`; berachain `0x3b43d2...0462b5`; berachain `0x3fc37a...798d00`; berachain `0x42cd67...7262b6`; berachain `0x47590f...f0ab02`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x5782d6...d5aaa5`; berachain `0x58b34e...2871fd`; berachain `0x58b61e...0ebe1e`; berachain `0x5d51a2...620224`; berachain `0x6503a8...1796c8`; berachain `0x6e0d09...86e20d`; berachain `0x70d6cf...1ad2ad`; berachain `0x732dfb...987a42`; berachain `0x78808a...9f503c`; berachain `0x79a27a...6f4ef8`; berachain `0x7bc28c...5a375a`; berachain `0x7c010b...c5b5c6`; berachain `0x7cc248...a4efe1`; berachain `0x7cde0a...e86d23`; berachain `0x7e3129...54e39a`; berachain `0x7e5717...286355`; berachain `0x7ef1f9...1f4730`; berachain `0x7f6ed5...87da17`; berachain `0x81ba24...6f490a`; berachain `0x81fb2a...893a1b`; berachain `0x82609f...62f587`; berachain `0x82d750...22dd2b`; berachain `0x855502...9034bc`; berachain `0x86fee0...0ac240`; berachain `0x8b492e...e030f9`; berachain `0x920598...9b139a`; berachain `0x9433cc...344e27`; berachain `0x95c1f2...14ebf7`; berachain `0x9f47f2...5d5c80`; berachain `0x9f898e...f7b732`; berachain `0xa2b10d...bf83d4`; berachain `0xa2e5e4...559ed4`; berachain `0xa3a376...80f26f`; berachain `0xa3fd52...93ce06`; berachain `0xa63ff9...ae4f88`; berachain `0xa6899c...c7a955`; berachain `0xa81dde...5abee4`; berachain `0xab71f6...7c42e6`; berachain `0xac36a9...e53529`; berachain `0xb0292f...a535ed`; berachain `0xb04a2a...ad3839`; berachain `0xb065f8...0f5088`; berachain `0xb17f63...a15a50`; berachain `0xb38b0d...26c9b9`; berachain `0xb59aa6...e85757`; berachain `0xba7f7d...825073`; berachain `0xbc4461...cda130`; berachain `0xbcd681...876a9d`; berachain `0xbf1961...13f5fe`; berachain `0xc2f574...eee206`; berachain `0xc6b6b0...479a29`; berachain `0xc9adf8...7250db`; berachain `0xcc0c3f...f6d05c`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xd39b77...09f907`; berachain `0xd5ae03...37d25a`; berachain `0xde7472...687958`; berachain `0xdfd21d...3184ca`; berachain `0xe19333...84f34f`; berachain `0xeb6e02...3bbcce`; berachain `0xf3a956...1f3aa1`; berachain `0xf3cbc6...ad8c7b`; berachain `0xf4c35f...240796`; berachain `0xf69cf3...2f18a5`; berachain `0xfe7a78...c5f575` | ⚠️ Unaudited |
| LairToken | token | berachain | 3 deployments: berachain [`0x3d6683...39d21e`](./contracts/berachain-80094/0x3d6683e1227d8ba761c3657bf424b1472839d21e/); berachain `0xa04152...802ca0`; berachain `0xf35307...8a0d3c` | ⚠️ Unaudited |
| BribeCollector | operational_periphery | berachain | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | ⚠️ Unaudited |
| BribeCollectorV1_4 | operational_periphery | berachain | [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ⚠️ Unaudited |
| InfraredBERADepositorV2 | unknown | berachain | [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | berachain | [`0xf6a4a6...9fef97`](./contracts/berachain-80094/0xf6a4a6acecd5311327ae3866624486b6179fef97/) | ⚠️ Unaudited |
| InfraredBERAV2_1 | unknown | berachain | [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ⚠️ Unaudited |
| InfraredBERAWithdrawor | operational_periphery | berachain | [`0x8c0e12...2818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ⚠️ Unaudited |
| InfraredBGT | unknown | berachain | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ⚠️ Unaudited |
| InfraredDistributor | operational_periphery | berachain | [`0x1fad98...c4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/) | ⚠️ Unaudited |
| InfraredV1_10 | unknown | berachain | [`0xb71b3d...2fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | [`0x9f6cf7...91a41d`](./contracts/berachain-80094/0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | 19 deployments: berachain [`0x2c7655...529586`](./contracts/berachain-80094/0x2c765592fe0025f3ca6aa53616afa1643d529586/); berachain `0x2cb2ef...518bc7`; berachain `0x381e9d...d7bffc`; berachain `0x3e97ca...faaa33`; berachain `0x4a110b...4a1019`; berachain `0x66611b...e5b6ab`; berachain `0x6905f9...178eda`; berachain `0x77df4e...8c9aaa`; berachain `0x7b56b9...8c7a87`; berachain `0x871195...37995e`; berachain `0x90e596...0a82bf`; berachain `0x91001c...764efc`; berachain `0xbaa896...301561`; berachain `0xd5c3b4...192870`; berachain `0xdeb193...218e31`; berachain `0xe1b6e6...009156`; berachain `0xe79bf7...cf6686`; berachain `0xfc3da0...379c82`; berachain `0xfe2b4e...785fa9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (64)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | berachain | `0x01b775...85282a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x06df64...94645d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0c7e78...099796` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0d493a...a942b3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x13452c...afbad2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x15e565...5c2dda` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1b1d44...21fa12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1c7c40...440dd4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1d1558...a78865` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1ece52...ad441f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x255e6d...b8be77` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2b6bb6...6e9ae3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2c6297...98611e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x35c50e...7b9fdf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x37bbcb...665ceb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x3a329e...5b7922` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x419b1e...40f23d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x45cd02...3586ba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4911c4...8f290b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4fafd5...1d7a87` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x5b6b08...8984ed` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x5be43b...39c20b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x6c92af...91389a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x718874...0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x778e92...7e896e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x77c587...1ebb62` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7a3d63...05f583` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7d7631...7fec40` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7de65e...d00262` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7f4ced...1d85f5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x82a3fc...585bfa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x84ce24...1765f4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x85ec12...b5eb8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x86205e...814b3e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x87e10e...dea7aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8c48ff...5a401f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8cf189...4eea35` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x901882...6dcba9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x99455a...990b51` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb13a7d...f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb526b1...9e81d9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb5988d...cf4d89` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb608f0...4c35e4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbae739...df4ee8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbdc6d8...74bf12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc5041b...a7893c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc909ef...3f082b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xcaee3c...d993ad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd0282e...e13119` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd24348...b5c7fb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd452dd...28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd49c81...6915d6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd58cc5...c105a0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd73349...4e2db3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd76707...5d5673` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdd0a77...c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xde8936...970b37` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe0cb21...c5b643` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe4d5f4...4b513a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xee85b7...300a30` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf050cd...eb4bca` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf31392...46d601` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf4f447...769ab6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xff343f...4deaa6` | ❓ Unverified |

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
| berachain | [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | WrappedVault | core_logic | $644,602.63 | Verified native implementation with $644,602.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3d6683...39d21e`](./contracts/berachain-80094/0x3d6683e1227d8ba761c3657bf424b1472839d21e/) | LairToken | token | $44,566.63 | Verified native implementation with $44,566.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | BribeCollector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | InfraredBGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2341] Bera LRT Contracts _ SSC.pdf
- [2342] Lair Restaking_Omniscia_Security_Review.pdf
- [2343] Lair_Restaking_v01.pdf
- [2344] Lair_Restaking_v2.pdf
- [2345] Lair_Restaking_v3.pdf
- [2346] Lair_stSomi_v01.pdf
- [2347] Lair_stSomi_v02.pdf
- [2348] Lair_Stake_v1.pdf
- [2349] Lair_Stake_v2.pdf
- [2350] Lair_Stake_v3.pdf
- [2351] Lair Finance Smart Contract Audit Report - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
