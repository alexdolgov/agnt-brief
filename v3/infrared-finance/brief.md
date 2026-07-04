# Agentic Audit Brief: Infrared Finance

## Project Overview

- Project: Infrared Finance (`infrared-finance`)
- Website: [https://infrared.finance](https://infrared.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.300Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: berachain, bsc
- Contract surface: 53 unique implementations (167 raw deployments)
- DeFi Llama TVL: $24,233,210.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 44 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 5 functional families. Its contracts share 17 common project-authored base contract(s) (oftcore, oapp, oappsender). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 172; live-surface contracts included: 167 (155 live, 12 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/41 (56.1%)
- Deployed-live implementations: 41 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 23/41
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 53
- Raw deployments: 167
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 23
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 14 fresh, 12 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 29.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 16 | 39.0% | 2026-04 |
| Spearbit | Tier 1 | 12 | 29.3% | 2026-03 |
| Zellic | Tier 2 | 2 | 4.9% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchClaimerV2_2 | unknown | berachain | n/a | 2 deployments: berachain [`0x1d6844...a9fb67`](./contracts/berachain-80094/0x1d6844b42784d3adbd7fdfa5887d56d22aa9fb67/); berachain `0xa38e68...03f491` | ✅ Audited |
| BribeCollector | unknown | berachain | n/a | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | ✅ Audited |
| BribeCollectorV1_2 | unknown | berachain | n/a | [`0xb704ce...bd29a8`](./contracts/berachain-80094/0xb704cec5e4df84446f6bcad9a52b9f4641bd29a8/) | ✅ Audited |
| BribeCollectorV1_4 | operational_periphery | berachain | n/a | 2 deployments: berachain [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/); berachain `0xd5a302...668bcb` | ✅ Audited |
| CuttingBoardDutchAuctionV1_1 | unknown | berachain | n/a | [`0x2b8b98...973da3`](./contracts/berachain-80094/0x2b8b98231635f3762ae269f6d34b0f209f973da3/) | ✅ Audited |
| Infrared | unknown | berachain | n/a | [`0x559d13...88092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | ✅ Audited |
| InfraredBERADepositorV2 | unknown | berachain | n/a | 2 deployments: berachain [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/); berachain `0xe18e88...c3e24b` | ✅ Audited |
| InfraredBERAV2_1 | unknown | berachain | n/a | 2 deployments: berachain [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/); berachain `0xc06549...5d9dcf` | ✅ Audited |
| InfraredBERAWithdrawor | unknown | berachain | n/a | 2 deployments: berachain [`0x367cbf...6bac8d`](./contracts/berachain-80094/0x367cbfd767de1452415d24fae29c0fde206bac8d/); berachain `0x8c0e12...2818e1` | ✅ Audited |
| InfraredBGT | unknown | berachain | n/a | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ✅ Audited |
| InfraredDistributor | unknown | berachain | n/a | 2 deployments: berachain [`0x1fad98...c4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/); berachain `0x742ebb...a90247` | ✅ Audited |
| InfraredV1_10 | unknown | berachain | n/a | 2 deployments: berachain [`0x6d4e88...d331b5`](./contracts/berachain-80094/0x6d4e881a7fefe098c6434fa9fa6d6695dad331b5/); berachain `0xb71b3d...2fc126` | ✅ Audited |
| InfraredV1_2 | unknown | berachain | n/a | 2 deployments: berachain [`0x4d87f8...b2eff5`](./contracts/berachain-80094/0x4d87f81f11660aac19c4a9165a10e2697cb2eff5/); berachain `0x7333e2...6c8555` | ✅ Audited |
| InfraredV1_3 | unknown | berachain | n/a | [`0x67b4e6...d85cd1`](./contracts/berachain-80094/0x67b4e6721ad3a99b7ff3679caee971b07fd85cd1/) | ✅ Audited |
| InfraredV1_4 | unknown | berachain | n/a | [`0xd34a43...16ef20`](./contracts/berachain-80094/0xd34a436621e93dbadf15b6040dee7dbcbd16ef20/) | ✅ Audited |
| InfraredV1_5 | unknown | berachain | n/a | [`0xb0713b...9a02dd`](./contracts/berachain-80094/0xb0713bafa14f1a36abfce7800a0e8d2c539a02dd/) | ✅ Audited |
| InfraredV1_8 | unknown | berachain | n/a | [`0x39366e...86a635`](./contracts/berachain-80094/0x39366e79e2b07667ae44c10b11b2866dba86a635/) | ✅ Audited |
| InfraredV1_9 | unknown | berachain | n/a | [`0xe9a3c9...bcd8ef`](./contracts/berachain-80094/0xe9a3c95e071599b2178c52277dcf8a57a8bcd8ef/) | ✅ Audited |
| InfraredVault | core_logic | berachain | n/a | 5 deployments: berachain [`0x12e9b8...38314c`](./contracts/berachain-80094/0x12e9b82f3280cc32e81b865f85734d52c538314c/); berachain `0x41c411...5588ce`; berachain `0x665309...189694`; berachain `0x75f3be...168301`; berachain `0xf4c0ed...c5fe47` | ✅ Audited |
| IROFT | unknown | bsc | n/a | [`0xace9de...bdcb39`](./contracts/bsc-56/0xace9de5af92eb82a97a5973b00eff85024bdcb39/) | ✅ Audited |
| MerkleDistributor | unknown | berachain | n/a | 4 deployments: berachain [`0x43d69c...8b4b17`](./contracts/berachain-80094/0x43d69cf03615d341d84a1917a3253b6c978b4b17/); berachain `0x5f7915...6e6fc8`; berachain `0x777ceb...fd8e51`; berachain `0x9d57c9...e6d349` | ✅ Audited |
| Redeemer | unknown | berachain | n/a | 2 deployments: berachain [`0x3e8eda...681046`](./contracts/berachain-80094/0x3e8eda9821c588a57200b790204c0066a1681046/); berachain `0x5a2da5...3370cc` | ✅ Audited |
| WrappedVault | core_logic | berachain | n/a | 93 deployments: berachain [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x023e5d...3124f0`; berachain `0x03c2ef...02ba65`; berachain `0x04bd6e...e69bd5`; berachain `0x04edcc...81b739`; berachain `0x0cb3e2...42d009`; berachain `0x0fff6d...9ddc97`; berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x1453c6...eba339`; berachain `0x16275c...e730f4`; berachain `0x1a18f5...1a2241`; berachain `0x22a3fb...488715`; berachain `0x23ed71...fd8864`; berachain `0x2415fe...12cf8f`; berachain `0x27b03a...9086db`; berachain `0x2a447f...e69ac2`; berachain `0x2e1139...7ae031`; berachain `0x2e32dd...e2b00f`; berachain `0x2f5119...723c9b`; berachain `0x3904aa...e1ab84`; berachain `0x3b43d2...0462b5`; berachain `0x3fc37a...798d00`; berachain `0x42cd67...7262b6`; berachain `0x47590f...f0ab02`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x5782d6...d5aaa5`; berachain `0x58b34e...2871fd`; berachain `0x58b61e...0ebe1e`; berachain `0x5d51a2...620224`; berachain `0x6503a8...1796c8`; berachain `0x6e0d09...86e20d`; berachain `0x70d6cf...1ad2ad`; berachain `0x732dfb...987a42`; berachain `0x78808a...9f503c`; berachain `0x79a27a...6f4ef8`; berachain `0x7bc28c...5a375a`; berachain `0x7c010b...c5b5c6`; berachain `0x7cc248...a4efe1`; berachain `0x7cde0a...e86d23`; berachain `0x7e3129...54e39a`; berachain `0x7e5717...286355`; berachain `0x7ef1f9...1f4730`; berachain `0x7f6ed5...87da17`; berachain `0x81ba24...6f490a`; berachain `0x81fb2a...893a1b`; berachain `0x82609f...62f587`; berachain `0x82d750...22dd2b`; berachain `0x855502...9034bc`; berachain `0x86fee0...0ac240`; berachain `0x8b492e...e030f9`; berachain `0x920598...9b139a`; berachain `0x9433cc...344e27`; berachain `0x95c1f2...14ebf7`; berachain `0x9f47f2...5d5c80`; berachain `0x9f898e...f7b732`; berachain `0xa2b10d...bf83d4`; berachain `0xa2e5e4...559ed4`; berachain `0xa3a376...80f26f`; berachain `0xa3fd52...93ce06`; berachain `0xa63ff9...ae4f88`; berachain `0xa6899c...c7a955`; berachain `0xa81dde...5abee4`; berachain `0xab71f6...7c42e6`; berachain `0xac36a9...e53529`; berachain `0xb0292f...a535ed`; berachain `0xb04a2a...ad3839`; berachain `0xb065f8...0f5088`; berachain `0xb17f63...a15a50`; berachain `0xb38b0d...26c9b9`; berachain `0xb59aa6...e85757`; berachain `0xba7f7d...825073`; berachain `0xbc4461...cda130`; berachain `0xbcd681...876a9d`; berachain `0xbf1961...13f5fe`; berachain `0xc2f574...eee206`; berachain `0xc6b6b0...479a29`; berachain `0xc9adf8...7250db`; berachain `0xcc0c3f...f6d05c`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xd39b77...09f907`; berachain `0xd5ae03...37d25a`; berachain `0xde7472...687958`; berachain `0xdfd21d...3184ca`; berachain `0xe19333...84f34f`; berachain `0xeb6e02...3bbcce`; berachain `0xf3a956...1f3aa1`; berachain `0xf3cbc6...ad8c7b`; berachain `0xf4c35f...240796`; berachain `0xf69cf3...2f18a5`; berachain `0xfe7a78...c5f575` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchClaimer | unknown | berachain | n/a | [`0x7813a7...51de27`](./contracts/berachain-80094/0x7813a73134bf03fbfb982d33066558887351de27/) | ⚠️ Unaudited |
| BatchClaimerV2 | unknown | berachain | n/a | [`0x78b5eb...d59d84`](./contracts/berachain-80094/0x78b5ebb84db848c55e553fe1928474f926d59d84/) | ⚠️ Unaudited |
| BatchClaimerV2_1 | unknown | berachain | n/a | [`0xd45b10...96723c`](./contracts/berachain-80094/0xd45b101981d907a2bd0157dd83fb12a04d96723c/) | ⚠️ Unaudited |
| BribeCollectorV1_3 | unknown | berachain | n/a | [`0xb3cec5...803b3f`](./contracts/berachain-80094/0xb3cec5ac14897ebc145da41c46e97a37cd803b3f/) | ⚠️ Unaudited |
| BribeCollectorV1_4 | unknown | berachain | n/a | [`0x960a77...7c5301`](./contracts/berachain-80094/0x960a7791322e2ddf5aba61b467bd8718377c5301/) | ⚠️ Unaudited |
| BYUSDRewardDistributor | unknown | berachain | n/a | 2 deployments: berachain [`0x21c18c...4cc617`](./contracts/berachain-80094/0x21c18c071c11160877e6f86eb8d30926cc4cc617/); berachain `0x88c017...a86725` | ⚠️ Unaudited |
| HarvestBaseCollector | unknown | berachain | n/a | [`0xf8bfe8...d46c5d`](./contracts/berachain-80094/0xf8bfe8377b2f16f154d7a0c406eae46cd5d46c5d/) | ⚠️ Unaudited |
| HarvestBaseCollectorV1_2 | unknown | berachain | n/a | 2 deployments: berachain [`0x733205...897da8`](./contracts/berachain-80094/0x7332051c4eed9cd40b28ba0a1c5d042666897da8/); berachain `0x8b498d...95c388` | ⚠️ Unaudited |
| InfraredBERA | unknown | berachain | n/a | [`0x94b5d5...546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | berachain | n/a | [`0xef26bc...2fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | berachain | n/a | 2 deployments: berachain [`0xab2dad...b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/); berachain `0xf6a4a6...9fef97` | ⚠️ Unaudited |
| InfraredBERAV2 | unknown | berachain | n/a | [`0x33f314...995fd8`](./contracts/berachain-80094/0x33f3145f2691ae01cfbb67854830ca84c2995fd8/) | ⚠️ Unaudited |
| InfraredV1_7 | unknown | berachain | n/a | [`0x8d5a82...9360b9`](./contracts/berachain-80094/0x8d5a82ddc916a2750fa9769aae354bf7a19360b9/) | ⚠️ Unaudited |
| IRAuction | unknown | berachain | n/a | 2 deployments: berachain [`0x283071...3defdb`](./contracts/berachain-80094/0x283071d22d8d70340bebd5e09e03262ebc3defdb/); berachain `0xe772bc...d5a717` | ⚠️ Unaudited |
| IROFTAdapter | adapter | berachain | n/a | [`0xfd0fa4...f9c2b5`](./contracts/berachain-80094/0xfd0fa49f8aa1d61da390e10ead23c650b0f9c2b5/) | ⚠️ Unaudited |
| ProxyDeployer | unknown | berachain | n/a | [`0x0c7f08...208bf0`](./contracts/berachain-80094/0x0c7f08bd9c6811f5dba2f9e26e451b0473208bf0/) | ⚠️ Unaudited |
| StakedIR | unknown | berachain | n/a | 2 deployments: berachain [`0x4b5274...a71dbc`](./contracts/berachain-80094/0x4b5274376f4e7ed198bc9af848120fcad0a71dbc/); berachain `0xb5e9cf...512756` | ⚠️ Unaudited |
| WrappedRewardToken | unknown | berachain | n/a | 2 deployments: berachain [`0x334404...f9aab7`](./contracts/berachain-80094/0x334404782ab67b4f6b2a619873e579e971f9aab7/); berachain `0x4f3c10...670c1b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | berachain | n/a | `0x01b775...85282a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1ece52...ad441f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x718874...0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x778e92...7e896e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7d7631...7fec40` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7de65e...d00262` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb13a7d...f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbdc6d8...74bf12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd452dd...28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd76707...5d5673` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdd0a77...c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xff343f...4deaa6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Infrared - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | 6 | high |
| [Infrared - Zenith Audit Report - 20082025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%20-%2020082025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 3 | high |
| [Infrared - Zenith Audit Report 09.07.2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%2009.07.2025.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | 2 | n/a |
| [Infrared - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | medium |
| [Infrared Berachain Core Integration - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Berachain%20Core%20Integration%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Infrared Merkle Distributor - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Merkle%20Distributor%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 4 | high |
| [Infrared OFT Adapter Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20OFT%20Adapter%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [Infrared Operations & Future Vaults Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Operations%20%26%20Future%20Vaults%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Infrared Smart Contract Security Assessment.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Smart%20Contract%20Security%20Assessment.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 3 | high |
| [Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 1 | medium |
| [Infraredv1.5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infraredv1.5.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Zenith Audit Report - Infrared Finance.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Zenith%20Audit%20Report%20-%20Infrared%20Finance.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 1 | medium |
| [baseline-ethskills.md](https://github.com/infrared-dao/contracts/blob/master/audits/baseline-ethskills.md) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | 6 | n/a |
| [cantinacode-24.01.2026.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/cantinacode-24.01.2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [infraredContractsSecurityReview.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infraredContractsSecurityReview.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 1 | medium |
| [infrared_contract_security_review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_contract_security_review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 2 | n/a |
| [infrared_security_review_12_11_2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_security_review_12_11_2025.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [report-cantinacode-infrared-03072025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-03072025.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [report-cantinacode-infrared-0310-bribeCollector.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0310-bribeCollector.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 1 | medium |
| [report-cantinacode-infrared-0320.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 3 | medium |
| [report-cantinacode-infrared-1.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [report-cantinacode-infrared-1201.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1201.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 2 | n/a |
| [report-cantinacode-infrared-5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-5.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [report-cantinacode-infrared-pr647.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-pr647.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [report-cantinacode-infrared.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 9 | high |
| [report-cli-cantina-infrared-0503_final.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cli-cantina-infrared-0503_final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [report-competition-infrared-contracts.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-competition-infrared-contracts.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, medium=6
- Match method counts: contract_name=20, extraction_exact=35

Zero-match audit list:

- [5719] Infrared Operations & Future Vaults Security Review.pdf
- [5722] Infraredv1.5.pdf
- [5725] cantinacode-24.01.2026.pdf
- [5728] infrared_security_review_12_11_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
