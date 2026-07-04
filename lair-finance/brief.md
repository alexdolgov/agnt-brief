# Agentic Audit Brief: Lair Finance

## Project Overview

- Project: Lair Finance (`lair-finance`)
- Website: [https://lair.fi](https://lair.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.394Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: berachain
- Contract surface: 86 unique implementations (195 raw deployments)
- DeFi Llama TVL: $3,809,190.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 19 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, infraredupgradeable, upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 198; live-surface contracts included: 195 (131 live, 64 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 27 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 86
- Raw deployments: 195
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 7 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeCollector | unknown | berachain | n/a | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | ⚠️ Unaudited |
| BribeCollectorV1_4 | operational_periphery | berachain | n/a | [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ⚠️ Unaudited |
| Infrared | unknown | berachain | n/a | [`0x559d13...88092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | ⚠️ Unaudited |
| InfraredBERA | unknown | berachain | n/a | [`0x94b5d5...546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | berachain | n/a | [`0xef26bc...2fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | ⚠️ Unaudited |
| InfraredBERADepositorV2 | unknown | berachain | n/a | [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | berachain | n/a | 2 deployments: berachain [`0xab2dad...b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/); berachain `0xf6a4a6...9fef97` | ⚠️ Unaudited |
| InfraredBERAV2_1 | unknown | berachain | n/a | [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ⚠️ Unaudited |
| InfraredBERAWithdrawor | operational_periphery | berachain | n/a | [`0x8c0e12...2818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ⚠️ Unaudited |
| InfraredBGT | unknown | berachain | n/a | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ⚠️ Unaudited |
| InfraredDistributor | unknown | berachain | n/a | 2 deployments: berachain [`0x1fad98...c4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/); berachain `0x742ebb...a90247` | ⚠️ Unaudited |
| InfraredV1_10 | unknown | berachain | n/a | [`0xb71b3d...2fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ⚠️ Unaudited |
| InfraredVault | core_logic | berachain | n/a | 2 deployments: berachain [`0x6583e7...f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/); berachain `0x75f3be...168301` | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | [`0x9f6cf7...91a41d`](./contracts/berachain-80094/0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d/) | ⚠️ Unaudited |
| LairToken | token | berachain | n/a | [`0xf35307...8a0d3c`](./contracts/berachain-80094/0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c/) | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | n/a | [`0x29af24...3c764d`](./contracts/berachain-80094/0x29af240276168330c3c266112d7ffdc1fd3c764d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x1c7c40...440dd4`](./contracts/berachain-80094/0x1c7c4053f43c59daacbed3485a6bbfdc54440dd4/); berachain `0x91001c...764efc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 3 deployments: berachain [`0x2c6297...98611e`](./contracts/berachain-80094/0x2c6297f5aeabafc16ffe1227d84a0ea01398611e/); berachain `0x381e9d...d7bffc`; berachain `0x7b56b9...8c7a87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | 2 deployments: berachain [`0x2c7655...529586`](./contracts/berachain-80094/0x2c765592fe0025f3ca6aa53616afa1643d529586/); berachain `0x3e97ca...faaa33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | 3 deployments: berachain [`0x2cb2ef...518bc7`](./contracts/berachain-80094/0x2cb2ef8703965d6dbe19eacad5616284db518bc7/); berachain `0xfc3da0...379c82`; berachain `0xfe2b4e...785fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | 6 deployments: berachain [`0x4a110b...4a1019`](./contracts/berachain-80094/0x4a110b149a9a6abb1f4c83b20b3f6c4bbd4a1019/); berachain `0x66611b...e5b6ab`; berachain `0x77df4e...8c9aaa`; berachain `0x90e596...0a82bf`; berachain `0xd5c3b4...192870`; berachain `0xdeb193...218e31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x5b6b08...8984ed`](./contracts/berachain-80094/0x5b6b085061c65ed4d6f83b6ab69a6b3bf48984ed/); berachain `0xe1b6e6...009156` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x6905f9...178eda`](./contracts/berachain-80094/0x6905f9e8ab3c61ac205f4d27b32bf0fb2d178eda/); berachain `0x84ce24...1765f4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0x871195...37995e`](./contracts/berachain-80094/0x8711959569ba069420b1ddfd7b9d020e4837995e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0xbaa896...301561`](./contracts/berachain-80094/0xbaa8967fdf9a0b72451110c6609ae01adb301561/); berachain `0xd24348...b5c7fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0xe79bf7...cf6686`](./contracts/berachain-80094/0xe79bf7cb7ee8cf6a26f2f368fa80800e87cf6686/) | ⚠️ Unaudited |
| WrappedVault | core_logic | berachain | n/a | 93 deployments: berachain [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x023e5d...3124f0`; berachain `0x03c2ef...02ba65`; berachain `0x04bd6e...e69bd5`; berachain `0x04edcc...81b739`; berachain `0x0cb3e2...42d009`; berachain `0x0fff6d...9ddc97`; berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x1453c6...eba339`; berachain `0x16275c...e730f4`; berachain `0x1a18f5...1a2241`; berachain `0x22a3fb...488715`; berachain `0x23ed71...fd8864`; berachain `0x2415fe...12cf8f`; berachain `0x27b03a...9086db`; berachain `0x2a447f...e69ac2`; berachain `0x2e1139...7ae031`; berachain `0x2e32dd...e2b00f`; berachain `0x2f5119...723c9b`; berachain `0x3904aa...e1ab84`; berachain `0x3b43d2...0462b5`; berachain `0x3fc37a...798d00`; berachain `0x42cd67...7262b6`; berachain `0x47590f...f0ab02`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x5782d6...d5aaa5`; berachain `0x58b34e...2871fd`; berachain `0x58b61e...0ebe1e`; berachain `0x5d51a2...620224`; berachain `0x6503a8...1796c8`; berachain `0x6e0d09...86e20d`; berachain `0x70d6cf...1ad2ad`; berachain `0x732dfb...987a42`; berachain `0x78808a...9f503c`; berachain `0x79a27a...6f4ef8`; berachain `0x7bc28c...5a375a`; berachain `0x7c010b...c5b5c6`; berachain `0x7cc248...a4efe1`; berachain `0x7cde0a...e86d23`; berachain `0x7e3129...54e39a`; berachain `0x7e5717...286355`; berachain `0x7ef1f9...1f4730`; berachain `0x7f6ed5...87da17`; berachain `0x81ba24...6f490a`; berachain `0x81fb2a...893a1b`; berachain `0x82609f...62f587`; berachain `0x82d750...22dd2b`; berachain `0x855502...9034bc`; berachain `0x86fee0...0ac240`; berachain `0x8b492e...e030f9`; berachain `0x920598...9b139a`; berachain `0x9433cc...344e27`; berachain `0x95c1f2...14ebf7`; berachain `0x9f47f2...5d5c80`; berachain `0x9f898e...f7b732`; berachain `0xa2b10d...bf83d4`; berachain `0xa2e5e4...559ed4`; berachain `0xa3a376...80f26f`; berachain `0xa3fd52...93ce06`; berachain `0xa63ff9...ae4f88`; berachain `0xa6899c...c7a955`; berachain `0xa81dde...5abee4`; berachain `0xab71f6...7c42e6`; berachain `0xac36a9...e53529`; berachain `0xb0292f...a535ed`; berachain `0xb04a2a...ad3839`; berachain `0xb065f8...0f5088`; berachain `0xb17f63...a15a50`; berachain `0xb38b0d...26c9b9`; berachain `0xb59aa6...e85757`; berachain `0xba7f7d...825073`; berachain `0xbc4461...cda130`; berachain `0xbcd681...876a9d`; berachain `0xbf1961...13f5fe`; berachain `0xc2f574...eee206`; berachain `0xc6b6b0...479a29`; berachain `0xc9adf8...7250db`; berachain `0xcc0c3f...f6d05c`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xd39b77...09f907`; berachain `0xd5ae03...37d25a`; berachain `0xde7472...687958`; berachain `0xdfd21d...3184ca`; berachain `0xe19333...84f34f`; berachain `0xeb6e02...3bbcce`; berachain `0xf3a956...1f3aa1`; berachain `0xf3cbc6...ad8c7b`; berachain `0xf4c35f...240796`; berachain `0xf69cf3...2f18a5`; berachain `0xfe7a78...c5f575` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | berachain | n/a | `0x01b775...85282a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x06df64...94645d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0c7e78...099796` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0d493a...a942b3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x13452c...afbad2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x15e565...5c2dda` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1b1d44...21fa12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1d1558...a78865` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1ece52...ad441f` | ❓ Unverified |
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
| UnnamedContract | unknown | berachain | n/a | `0x718874...0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x778e92...7e896e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x77c587...1ebb62` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7a3d63...05f583` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7d7631...7fec40` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7de65e...d00262` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7f4ced...1d85f5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x82a3fc...585bfa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x85ec12...b5eb8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x86205e...814b3e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x87e10e...dea7aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8c48ff...5a401f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8cf189...4eea35` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x901882...6dcba9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x99455a...990b51` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb13a7d...f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb526b1...9e81d9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb5988d...cf4d89` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb608f0...4c35e4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbae739...df4ee8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbdc6d8...74bf12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc5041b...a7893c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc909ef...3f082b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xcaee3c...d993ad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd0282e...e13119` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd452dd...28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd49c81...6915d6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd58cc5...c105a0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd73349...4e2db3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd76707...5d5673` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdd0a77...c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xde8936...970b37` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe0cb21...c5b643` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe4d5f4...4b513a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xee85b7...300a30` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf050cd...eb4bca` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf31392...46d601` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf4f447...769ab6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xff343f...4deaa6` | ❓ Unverified |

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
| [Lair_Stake_v1.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v1.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Lair_Stake_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v2.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Lair_Stake_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v3.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Lair Finance Smart Contract Audit Report - Final Report.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/vault/Lair%20Finance%20Smart%20Contract%20Audit%20Report%20-%20Final%20Report.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | BribeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | BribeCollectorV1_4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x559d13...88092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | Infrared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x94b5d5...546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | InfraredBERA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xef26bc...2fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | InfraredBERADepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | InfraredBERADepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xab2dad...b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/) | InfraredBERAFeeReceivor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | InfraredBERAV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8c0e12...2818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | InfraredBERAWithdrawor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | InfraredBGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1fad98...c4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/) | InfraredDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb71b3d...2fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | InfraredV1_10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6583e7...f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/) | InfraredVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x9f6cf7...91a41d`](./contracts/berachain-80094/0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d/) | KodiakIslandWithRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf35307...8a0d3c`](./contracts/berachain-80094/0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c/) | LairToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x29af24...3c764d`](./contracts/berachain-80094/0x29af240276168330c3c266112d7ffdc1fd3c764d/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | WrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 62 |

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
