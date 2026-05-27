# Agentic Audit Brief: Infrared Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 56.2% over 90 days

## Project Overview

- Project: Infrared Finance (`infrared-finance`)
- Website: [https://infrared.finance](https://infrared.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-27T20:19:41.580Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: berachain, bsc
- Contract surface: 27 unique implementations (121 raw deployments)
- DeFi Llama TVL: $50,681,737.58
- On-chain TVL (included contracts): $861,900.59
- TVL by chain: Berachain $861,900.59

## Project Description

Infrared Finance is a liquid staking protocol on Berachain and BSC that allows users to stake BERA tokens and receive a liquid staking derivative (iROFT) while earning staking rewards. It also manages fee distribution and bribe collection to optimize yield for stakers.

### Architecture

The core staking contracts (InfraredBERAV2_1 and InfraredV1_10) interact with supporting infrastructure: depositor and withdrawor handle user flows, distributor manages reward distribution, fee receivor collects protocol fees, and bribe collector optimizes yield, all sharing the iROFT token.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 27
- Raw deployments: 121
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $861,900.59
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $861,900.59 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedVault | core_logic | berachain | 93 deployments: berachain [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x023e5d...3124f0`; berachain `0x03c2ef...02ba65`; berachain `0x04bd6e...e69bd5`; berachain `0x04edcc...81b739`; berachain `0x0cb3e2...42d009`; berachain `0x0fff6d...9ddc97`; berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x1453c6...eba339`; berachain `0x16275c...e730f4`; berachain `0x1a18f5...1a2241`; berachain `0x22a3fb...488715`; berachain `0x23ed71...fd8864`; berachain `0x2415fe...12cf8f`; berachain `0x27b03a...9086db`; berachain `0x2a447f...e69ac2`; berachain `0x2e1139...7ae031`; berachain `0x2e32dd...e2b00f`; berachain `0x2f5119...723c9b`; berachain `0x3904aa...e1ab84`; berachain `0x3b43d2...0462b5`; berachain `0x3fc37a...798d00`; berachain `0x42cd67...7262b6`; berachain `0x47590f...f0ab02`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x5782d6...d5aaa5`; berachain `0x58b34e...2871fd`; berachain `0x58b61e...0ebe1e`; berachain `0x5d51a2...620224`; berachain `0x6503a8...1796c8`; berachain `0x6e0d09...86e20d`; berachain `0x70d6cf...1ad2ad`; berachain `0x732dfb...987a42`; berachain `0x78808a...9f503c`; berachain `0x79a27a...6f4ef8`; berachain `0x7bc28c...5a375a`; berachain `0x7c010b...c5b5c6`; berachain `0x7cc248...a4efe1`; berachain `0x7cde0a...e86d23`; berachain `0x7e3129...54e39a`; berachain `0x7e5717...286355`; berachain `0x7ef1f9...1f4730`; berachain `0x7f6ed5...87da17`; berachain `0x81ba24...6f490a`; berachain `0x81fb2a...893a1b`; berachain `0x82609f...62f587`; berachain `0x82d750...22dd2b`; berachain `0x855502...9034bc`; berachain `0x86fee0...0ac240`; berachain `0x8b492e...e030f9`; berachain `0x920598...9b139a`; berachain `0x9433cc...344e27`; berachain `0x95c1f2...14ebf7`; berachain `0x9f47f2...5d5c80`; berachain `0x9f898e...f7b732`; berachain `0xa2b10d...bf83d4`; berachain `0xa2e5e4...559ed4`; berachain `0xa3a376...80f26f`; berachain `0xa3fd52...93ce06`; berachain `0xa63ff9...ae4f88`; berachain `0xa6899c...c7a955`; berachain `0xa81dde...5abee4`; berachain `0xab71f6...7c42e6`; berachain `0xac36a9...e53529`; berachain `0xb0292f...a535ed`; berachain `0xb04a2a...ad3839`; berachain `0xb065f8...0f5088`; berachain `0xb17f63...a15a50`; berachain `0xb38b0d...26c9b9`; berachain `0xb59aa6...e85757`; berachain `0xba7f7d...825073`; berachain `0xbc4461...cda130`; berachain `0xbcd681...876a9d`; berachain `0xbf1961...13f5fe`; berachain `0xc2f574...eee206`; berachain `0xc6b6b0...479a29`; berachain `0xc9adf8...7250db`; berachain `0xcc0c3f...f6d05c`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xd39b77...09f907`; berachain `0xd5ae03...37d25a`; berachain `0xde7472...687958`; berachain `0xdfd21d...3184ca`; berachain `0xe19333...84f34f`; berachain `0xeb6e02...3bbcce`; berachain `0xf3a956...1f3aa1`; berachain `0xf3cbc6...ad8c7b`; berachain `0xf4c35f...240796`; berachain `0xf69cf3...2f18a5`; berachain `0xfe7a78...c5f575` | ⚠️ Unaudited |
| BribeCollector | operational_periphery | berachain | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | ⚠️ Unaudited |
| BribeCollectorV1_4 | operational_periphery | berachain | [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ⚠️ Unaudited |
| Infrared | unknown | berachain | [`0x559d13...88092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | ⚠️ Unaudited |
| InfraredBERA | unknown | berachain | [`0x94b5d5...546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | berachain | [`0xef26bc...2fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | ⚠️ Unaudited |
| InfraredBERADepositorV2 | unknown | berachain | [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | berachain | 2 deployments: berachain [`0xab2dad...b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/); berachain `0xf6a4a6...9fef97` | ⚠️ Unaudited |
| InfraredBERAV2_1 | unknown | berachain | [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ⚠️ Unaudited |
| InfraredBERAWithdrawor | operational_periphery | berachain | [`0x8c0e12...2818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | operational_periphery | berachain | [`0x725a55...e92444`](./contracts/berachain-80094/0x725a5576232220132f129f08e4a9eb7d4be92444/) | ⚠️ Unaudited |
| InfraredBGT | unknown | berachain | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ⚠️ Unaudited |
| InfraredDistributor | operational_periphery | berachain | 2 deployments: berachain [`0x1fad98...c4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/); berachain `0x742ebb...a90247` | ⚠️ Unaudited |
| InfraredV1_10 | unknown | berachain | [`0xb71b3d...2fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ⚠️ Unaudited |
| IROFT | unknown | bsc | [`0xace9de...bdcb39`](./contracts/bsc-56/0xace9de5af92eb82a97a5973b00eff85024bdcb39/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | berachain | `0x01b775...85282a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1ece52...ad441f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x718874...0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x778e92...7e896e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7d7631...7fec40` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7de65e...d00262` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb13a7d...f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbdc6d8...74bf12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd452dd...28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd76707...5d5673` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdd0a77...c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xff343f...4deaa6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | WrappedVault | core_logic | $861,900.59 | Verified native implementation with $861,900.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x61bd35...21da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | BribeCollector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x559d13...88092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | Infrared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x94b5d5...546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | InfraredBERA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xef26bc...2fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | InfraredBERADepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xab2dad...b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/) | InfraredBERAFeeReceivor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x725a55...e92444`](./contracts/berachain-80094/0x725a5576232220132f129f08e4a9eb7d4be92444/) | InfraredBERAWithdraworLite | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | InfraredBGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xace9de...bdcb39`](./contracts/bsc-56/0xace9de5af92eb82a97a5973b00eff85024bdcb39/) | IROFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
