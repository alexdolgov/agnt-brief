# Agentic Audit Brief: SwapX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SwapX (`swapx`)
- Website: [https://swapx.fi/](https://swapx.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, kava, linea, mantle, opbnb, polygon, polygon-zkevm, scroll, sonic, zksync-era
- Contract surface: 86 unique implementations (140 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $420,582.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for SwapX in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x111111...6bc4d6`, chain 1)
- UnnamedContract (`0x5a40df...f26112`, chain 1)
- UnnamedContract (`0x8dd509...715094`, chain 1)
- UnnamedContract (`0xeaec81...832b3e`, chain 1)
- UnnamedContract (`0x065356...0f51b7`, chain 56)
- UnnamedContract (`0xac9314...f5d501`, chain 56)
- UnnamedContract (`0x117005...db6e8a`, chain 137)
- UnnamedContract (`0x2d2c72...a73fc0`, chain 137)
- UnnamedContract (`0xb2f44d...2a5da7`, chain 137)
- UnnamedContract (`0xadda3a...6035f1`, chain 204)
- UnnamedContract (`0x89ffda...fa5f34`, chain 250)
- UnnamedContract (`0x932e19...b95c5e`, chain 250)
- UnnamedContract (`0x8a76c2...b94148`, chain 324)
- UnnamedContract (`0x1721cb...8115b1`, chain 1101)
- UnnamedContract (`0xe8532d...b8c23f`, chain 1101)
- UnnamedContract (`0x2d2c72...a73fc0`, chain 2222)
- UnnamedContract (`0x797ebb...432433`, chain 5000)
- UnnamedContract (`0x92bce3...effe5b`, chain 5000)
- UnnamedContract (`0xbbb97d...f46ad3`, chain 5000)
- UnnamedContract (`0xabe5b5...8ab3b3`, chain 8453)
- UnnamedContract (`0xfbf389...607065`, chain 8453)
- UnnamedContract (`0xedac86...fb44a6`, chain 42161)
- UnnamedContract (`0xfbf389...607065`, chain 42161)
- UnnamedContract (`0x9fab4b...d7418f`, chain 42220)
- UnnamedContract (`0xdd2346...9dc72d`, chain 43114)
- UnnamedContract (`0x0248b9...9cfe4b`, chain 59144)
- UnnamedContract (`0x259268...00195e`, chain 59144)
- UnnamedContract (`0x6e3eb9...772b53`, chain 59144)
- UnnamedContract (`0xa29f3d...4f544e`, chain 59144)
- UnnamedContract (`0xb0e787...70a6e7`, chain 59144)
- UnnamedContract (`0x2145b1...1ead93`, chain 81457)
- UnnamedContract (`0x9fab4b...d7418f`, chain 81457)
- UnnamedContract (`0xb42d59...114f15`, chain 81457)
- UnnamedContract (`0x9fab4b...d7418f`, chain 534352)
- UnnamedContract (`0xb42d59...114f15`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 35 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 35 of 86 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 86
- Raw deployments: 140
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x0797c9...f0c260`; sonic `0x10e075...56d350`; sonic `0x354a24...5e63ba`; sonic `0x4183f0...b0fb66`; sonic `0x5df06c...478734`; sonic `0x9ad934...953cfc`; sonic `0xeafc39...3a6e99`; sonic `0xf30ff9...019e46` | ⚠️ Unaudited |
| AlgebraVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc21af3...e4e5e6`; sonic `0xdf18a1...cde881` | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1fb164...85b6b3`; sonic `0xdaea57...629bb0` | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x99a257...55e095`; sonic `0xb5659d...5a0382` | ⚠️ Unaudited |
| ClaimFeesMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0fe846...4a2f83`; sonic `0xdb3e03...00b1a9` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x50ead8...875458`; sonic `0x6a36b9...7c68da` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xa1462d...ef819c`; sonic `0xff2e7c...85b8f3` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0326bc...69b120`; sonic `0x4293d5...d1add7` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x27e774...cae300`; sonic `0x41c1ef...b33922` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x66f28a...5eacb1`; sonic `0x7529f6...0e226c` | ⚠️ Unaudited |
| MerkleTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x36daa5...6f6419`; sonic `0x3deac0...1d64be`; sonic `0xac4d45...859642`; sonic `0xbf0073...e1d39b`; sonic `0xcedbc0...aeab7d`; sonic `0xe4b7bb...b55f60` | ⚠️ Unaudited |
| MerkleTreeSWPxNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x665bd4...dd8e5f`; sonic `0xfccbb2...48ad59` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4fe93c...f80589`; sonic `0x8b8c58...c83364` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x6991a1...3d859c`; sonic `0xc68f07...e0afbe` | ⚠️ Unaudited |
| MonolithicVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x51f029...f12ee0`; sonic `0x75b07f...520937`; sonic `0xf3bb60...b20b4d` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x55e342...2e1532`; sonic `0xda1073...4b5a4d` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x883b6c...4f9338` | ⚠️ Unaudited |
| NFTSalesSplitter_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x86fa3c...1345c0` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2ec58a...31c4ff`; sonic `0x422601...a46a7b` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x33a353...d21f84`; sonic `0xa8bcba...e81e61` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x05c1be...7f5663`; sonic `0xd887a7...502251` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1e58fe...2b858f`; sonic `0xeaed11...ff3828` | ⚠️ Unaudited |
| PairV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43cec2...52a86e` | ⚠️ Unaudited |
| PermissionsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8751ea...4ed487`; sonic `0x8cefa4...0c30c8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0xb8de83...4e122f`; sonic `0xbc427b...389feb`; sonic `0xed37cb...7241c7` | ⚠️ Unaudited |
| ReferralDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x85b08f...884422`; sonic `0x968ff4...285e28` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1c236d...4c94d3`; sonic `0x8f1795...374430` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xbfe77a...282c18`; sonic `0xf5f723...b29c27` | ⚠️ Unaudited |
| Royalties | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x522dc8...1a9cd3`; sonic `0x7ab97f...a8b43b` | ⚠️ Unaudited |
| SwapxTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3648af...e76a76`; sonic `0x650abd...3c82fd` | ⚠️ Unaudited |
| SWPx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x90c442...d8ebdf`; sonic `0xa04bc7...fb0e70` | ⚠️ Unaudited |
| SWPxNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x619057...754ba0`; sonic `0xc83f36...e72f78` | ⚠️ Unaudited |
| SWPxNFTFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x4053ec...c07de0`; sonic `0xe983a6...d4e060` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8ee87f...31b275`; sonic `0xe69667...e9792b` | ⚠️ Unaudited |
| VeArtProxyUpgradeableV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xa194e7...a43846` | ⚠️ Unaudited |
| VeArtProxyUpgradeableV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf62fed...c896fd` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x7912f3...e01b3b`; sonic `0xe76c57...b6bec7` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x94584d...fb3d05`; sonic `0xae5417...7c6cb3` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x082c47...7f4069` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | sonic | n/a | 4 deployments: sonic `0x1786fb...572cfd`; sonic `0x3a4744...44ee85`; sonic `0x91cc71...21460b`; sonic `0x972e71...f258ec` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | sonic | n/a | 5 deployments: sonic `0x58af3e...e38084`; sonic `0x8aa601...22da64`; sonic `0x90ff9c...0022ac`; sonic `0xd76c85...fdd7f3`; sonic `0xdf5390...fe0591` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x40247b...d5bf3f`; sonic `0x53ff76...5d098f` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x838505...00a26d` | ⚠️ Unaudited |
| VoterV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc1ae27...c407f2` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3dc1dd...2ca12e`; sonic `0xff5b46...f1b2ef` | ⚠️ Unaudited |
| VotingEscrowV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x329d9c...83e397` | ⚠️ Unaudited |
| VotingEscrowV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xaa30f0...576ca3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257763 | `0x111111...6bc4d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257764 | `0x5a40df...f26112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257765 | `0x8dd509...715094` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257766 | `0xeaec81...832b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-257786 | `0x065356...0f51b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-257787 | `0xac9314...f5d501` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257769 | `0x117005...db6e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257770 | `0x2d2c72...a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257771 | `0xb2f44d...2a5da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b0ef0...a4cd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x242cd1...ab65de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7c6389...605f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb62399...090a71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-257772 | `0xadda3a...6035f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-257774 | `0x89ffda...fa5f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-257775 | `0x932e19...b95c5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-257776 | `0x8a76c2...b94148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-257767 | `0x1721cb...8115b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-257768 | `0xe8532d...b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-257773 | `0x2d2c72...a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257781 | `0x797ebb...432433` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257782 | `0x92bce3...effe5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257783 | `0xbbb97d...f46ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257796 | `0xabe5b5...8ab3b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257797 | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257777 | `0xedac86...fb44a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257778 | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-257779 | `0x9fab4b...d7418f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-257780 | `0xdd2346...9dc72d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-257788 | `0x0248b9...9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-257789 | `0x259268...00195e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-257790 | `0x6e3eb9...772b53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-257791 | `0xa29f3d...4f544e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-257792 | `0xb0e787...70a6e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257793 | `0x2145b1...1ead93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257794 | `0x9fab4b...d7418f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257795 | `0xb42d59...114f15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257784 | `0x9fab4b...d7418f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257785 | `0xb42d59...114f15` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bailsec_SwapX_Exchange_Final_Report.pdf](https://swapx.fi/Bailsec_SwapX_Exchange_Final_Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf](https://swapx.fi/Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf](https://swapx.fi/Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13953] Bailsec_SwapX_Exchange_Final_Report.pdf — no match: All contracts explicitly listed in scope sections of the report. Audit date inferred from 'May 2024' in title and report date.
- [13954] Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf — no match: Three contracts explicitly listed in scope: NonfungiblePositionManager, BasePluginV1Factory, AlgebraBasePluginV1. Audit date inferred from title 'July 2024'.
- [13955] Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bailsec_SwapX_Exchange_Final_Report.pdf | BribeFactoryV3 | unmatched — not counted | — | listed in scope section 'Factories' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | GaugeFactoryV2 | unmatched — not counted | — | listed in scope section 'Factories' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | GaugeFactoryV2_CL | unmatched — not counted | — | listed in scope section 'Factories' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | GaugeV2 | unmatched — not counted | — | listed in scope section 'Gauges' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | GaugeV2_CL | unmatched — not counted | — | listed in scope section 'Gauges' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | GaugeExtraRewarder | unmatched — not counted | — | listed in scope section 'Gauges' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | CLFeesVault | unmatched — not counted | — | listed in scope section 'Gauges' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | CLFeesVault2 | unmatched — not counted | — | listed in scope section 'Gauges' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | VotingEscrow | unmatched — not counted | — | listed in scope section 'Core' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | VoterV3 | unmatched — not counted | — | listed in scope section 'Core' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | MinterUpgradeable | unmatched — not counted | — | listed in scope section 'Core' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | Bribe | unmatched — not counted | — | listed in scope section 'Bribes' | no |
| Bailsec_SwapX_Exchange_Final_Report.pdf | MonolithicVoter | unmatched — not counted | — | listed in scope section 'MonolithicVoter' | no |
| Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | listed in scope and diffchecker links | no |
| Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf | BasePluginV1Factory | unmatched — not counted | — | listed in scope and diffchecker links | no |
| Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf | AlgebraBasePluginV1 | unmatched — not counted | — | listed in scope and diffchecker links | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | AirdropClaim | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | MasterChef | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | MerkleTree | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | MerkleTreeSWPxNFT | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | NFTSalesSplitter | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | Royalties | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | SWPx | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | SWPxNFT | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | SWPxNFTFeeConverter | unmatched — not counted | — | — | no |
| Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf | Vesting | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13953] Bailsec_SwapX_Exchange_Final_Report.pdf
- [13954] Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf
- [13955] Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
