# Agentic Audit Brief: Infrared Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 30 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Infrared Finance (`infrared-finance`)
- Website: [https://infrared.finance](https://infrared.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain, bsc
- Contract surface: 61 unique implementations (173 raw deployments)
- Coverage basis: 11/12 confirmed own live verified implementations (91.7%); conservative 91.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $24,233,210.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Infrared Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across berachain, bsc. Structural roles: 10 unclassified, 6 supporting, 4 core. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: unclassified (10), supporting (6), core (4)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (6), erc20 (2), erc20permit (2), pausable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7), solmate (3)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x04cddc...cab7d7`, chain 80094)
- ERC1967Proxy (`0x8c0e12...2818e1`, chain 80094)
- ERC1967Proxy (`0x8d4417...21298c`, chain 80094)
- ERC1967Proxy (`0x9b6761...cd3fe5`, chain 80094)
- ERC1967Proxy (`0xb5e9cf...512756`, chain 80094)
- ERC1967Proxy (`0xb71b3d...2fc126`, chain 80094)
- InfraredBGT (`0xac03ca...bb2e6b`, chain 80094)
- InfraredGovernanceTokenV1_2 (`0xa1b644...28c7c9`, chain 80094)
- InfraredVault (`0x75f3be...168301`, chain 80094)
- WrappedRewardToken (`0x4f3c10...670c1b`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (19 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/12 (91.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 12 of 61 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/49
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 61
- Raw deployments: 173
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 14 fresh, 12 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 58.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 22.4% | 2026-04 |
| Spearbit | Tier 1 | 7 | 14.3% | 2026-03 |
| Zellic | Tier 2 | 1 | 2.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeCollectorV1_4 | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-387431 | 2 deployments: berachain `0x8d4417...21298c`; berachain `0xd5a302...668bcb` | ✅ Audited |
| InfraredBERADepositorV2 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387433 | 2 deployments: berachain `0x04cddc...cab7d7`; berachain `0xe18e88...c3e24b` | ✅ Audited |
| InfraredBERAFeeReceivor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387429 | 2 deployments: berachain `0xab2dad...b18254`; berachain `0xf6a4a6...9fef97` | ✅ Audited |
| InfraredBERAV2_1 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387430 | 2 deployments: berachain `0x9b6761...cd3fe5`; berachain `0xc06549...5d9dcf` | ✅ Audited |
| InfraredBERAWithdrawor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387426 | 2 deployments: berachain `0x367cbf...6bac8d`; berachain `0x8c0e12...2818e1` | ✅ Audited |
| InfraredBGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-387425 | `0xac03ca...bb2e6b` | ✅ Audited |
| InfraredDistributor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387428 | 2 deployments: berachain `0x1fad98...c4ccd6`; berachain `0x742ebb...a90247` | ✅ Audited |
| InfraredV1_10 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387432 | `0xb71b3d...2fc126` | ✅ Audited |
| InfraredVault | core_logic | project_anchor | own_supporting | 0 | berachain | unit-387423 | `0x75f3be...168301` | ✅ Audited |
| StakedIR | unknown | project_anchor | own_supporting | 1 | berachain | unit-387427 | 2 deployments: berachain `0x4b5274...a71dbc`; berachain `0xb5e9cf...512756` | ✅ Audited |
| WrappedRewardToken | token | project_anchor | own_supporting | 0 | berachain | unit-387421 | `0x4f3c10...670c1b` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7813a7...51de27` | ⚠️ Unaudited |
| BatchClaimerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78b5eb...d59d84` | ⚠️ Unaudited |
| BatchClaimerV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd45b10...96723c` | ⚠️ Unaudited |
| BatchClaimerV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1d6844...a9fb67`; berachain `0xa38e68...03f491` | ⚠️ Unaudited |
| BribeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61bd35...21da40` | ⚠️ Unaudited |
| BribeCollectorV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb704ce...bd29a8` | ⚠️ Unaudited |
| BribeCollectorV1_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3cec5...803b3f` | ⚠️ Unaudited |
| BribeCollectorV1_4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x960a77...7c5301` | ⚠️ Unaudited |
| BYUSDRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x21c18c...4cc617`; berachain `0x88c017...a86725` | ⚠️ Unaudited |
| CuttingBoardDutchAuctionV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b8b98...973da3` | ⚠️ Unaudited |
| CuttingBoardDutchAuctionV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ed920...c122e4` | ⚠️ Unaudited |
| HarvestBaseCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf8bfe8...d46c5d` | ⚠️ Unaudited |
| HarvestBaseCollectorV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x733205...897da8`; berachain `0x8b498d...95c388` | ⚠️ Unaudited |
| Infrared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x559d13...88092f` | ⚠️ Unaudited |
| InfraredBERA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94b5d5...546d81` | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef26bc...2fef87` | ⚠️ Unaudited |
| InfraredBERARateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x776fd5...5c50a0` | ⚠️ Unaudited |
| InfraredBERAV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x33f314...995fd8` | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x725a55...e92444` | ⚠️ Unaudited |
| InfraredGovernanceTokenV1_2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-387424 | `0xa1b644...28c7c9` | ⚠️ Unaudited |
| InfraredV1_10 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-387422 | `0x6d4e88...d331b5` | ⚠️ Unaudited |
| InfraredV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x4d87f8...b2eff5`; berachain `0x7333e2...6c8555` | ⚠️ Unaudited |
| InfraredV1_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x67b4e6...d85cd1` | ⚠️ Unaudited |
| InfraredV1_4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd34a43...16ef20` | ⚠️ Unaudited |
| InfraredV1_5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb0713b...9a02dd` | ⚠️ Unaudited |
| InfraredV1_7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8d5a82...9360b9` | ⚠️ Unaudited |
| InfraredV1_8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39366e...86a635` | ⚠️ Unaudited |
| InfraredV1_9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe9a3c9...bcd8ef` | ⚠️ Unaudited |
| InfraredVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 4 deployments: berachain `0x12e9b8...38314c`; berachain `0x41c411...5588ce`; berachain `0x665309...189694`; berachain `0xf4c0ed...c5fe47` | ⚠️ Unaudited |
| IRAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x283071...3defdb`; berachain `0xe772bc...d5a717` | ⚠️ Unaudited |
| IROFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xace9de...bdcb39`; bsc `0xd26004...5d10d9` | ⚠️ Unaudited |
| IROFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfd0fa4...f9c2b5` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 4 deployments: berachain `0x43d69c...8b4b17`; berachain `0x5f7915...6e6fc8`; berachain `0x777ceb...fd8e51`; berachain `0x9d57c9...e6d349` | ⚠️ Unaudited |
| ProxyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c7f08...208bf0` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x3e8eda...681046`; berachain `0x5a2da5...3370cc` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x211407...d29576` | ⚠️ Unaudited |
| WrappedRewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x334404...f9aab7` | ⚠️ Unaudited |
| WrappedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 93 deployments: berachain `0x021f62...eccb0d`; berachain `0x023e5d...3124f0`; berachain `0x03c2ef...02ba65`; berachain `0x04bd6e...e69bd5`; berachain `0x04edcc...81b739`; berachain `0x0cb3e2...42d009`; berachain `0x0fff6d...9ddc97`; berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x1453c6...eba339`; berachain `0x16275c...e730f4`; berachain `0x1a18f5...1a2241`; berachain `0x22a3fb...488715`; berachain `0x23ed71...fd8864`; berachain `0x2415fe...12cf8f`; berachain `0x27b03a...9086db`; berachain `0x2a447f...e69ac2`; berachain `0x2e1139...7ae031`; berachain `0x2e32dd...e2b00f`; berachain `0x2f5119...723c9b`; berachain `0x3904aa...e1ab84`; berachain `0x3b43d2...0462b5`; berachain `0x3fc37a...798d00`; berachain `0x42cd67...7262b6`; berachain `0x47590f...f0ab02`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x5782d6...d5aaa5`; berachain `0x58b34e...2871fd`; berachain `0x58b61e...0ebe1e`; berachain `0x5d51a2...620224`; berachain `0x6503a8...1796c8`; berachain `0x6e0d09...86e20d`; berachain `0x70d6cf...1ad2ad`; berachain `0x732dfb...987a42`; berachain `0x78808a...9f503c`; berachain `0x79a27a...6f4ef8`; berachain `0x7bc28c...5a375a`; berachain `0x7c010b...c5b5c6`; berachain `0x7cc248...a4efe1`; berachain `0x7cde0a...e86d23`; berachain `0x7e3129...54e39a`; berachain `0x7e5717...286355`; berachain `0x7ef1f9...1f4730`; berachain `0x7f6ed5...87da17`; berachain `0x81ba24...6f490a`; berachain `0x81fb2a...893a1b`; berachain `0x82609f...62f587`; berachain `0x82d750...22dd2b`; berachain `0x855502...9034bc`; berachain `0x86fee0...0ac240`; berachain `0x8b492e...e030f9`; berachain `0x920598...9b139a`; berachain `0x9433cc...344e27`; berachain `0x95c1f2...14ebf7`; berachain `0x9f47f2...5d5c80`; berachain `0x9f898e...f7b732`; berachain `0xa2b10d...bf83d4`; berachain `0xa2e5e4...559ed4`; berachain `0xa3a376...80f26f`; berachain `0xa3fd52...93ce06`; berachain `0xa63ff9...ae4f88`; berachain `0xa6899c...c7a955`; berachain `0xa81dde...5abee4`; berachain `0xab71f6...7c42e6`; berachain `0xac36a9...e53529`; berachain `0xb0292f...a535ed`; berachain `0xb04a2a...ad3839`; berachain `0xb065f8...0f5088`; berachain `0xb17f63...a15a50`; berachain `0xb38b0d...26c9b9`; berachain `0xb59aa6...e85757`; berachain `0xba7f7d...825073`; berachain `0xbc4461...cda130`; berachain `0xbcd681...876a9d`; berachain `0xbf1961...13f5fe`; berachain `0xc2f574...eee206`; berachain `0xc6b6b0...479a29`; berachain `0xc9adf8...7250db`; berachain `0xcc0c3f...f6d05c`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xd39b77...09f907`; berachain `0xd5ae03...37d25a`; berachain `0xde7472...687958`; berachain `0xdfd21d...3184ca`; berachain `0xe19333...84f34f`; berachain `0xeb6e02...3bbcce`; berachain `0xf3a956...1f3aa1`; berachain `0xf3cbc6...ad8c7b`; berachain `0xf4c35f...240796`; berachain `0xf69cf3...2f18a5`; berachain `0xfe7a78...c5f575` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x01b775...85282a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1ece52...ad441f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x718874...0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x778e92...7e896e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7d7631...7fec40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7de65e...d00262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb13a7d...f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbdc6d8...74bf12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd452dd...28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd76707...5d5673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd0a77...c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff343f...4deaa6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Infrared - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Infrared - Zenith Audit Report - 20082025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%20-%2020082025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Infrared - Zenith Audit Report 09.07.2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%2009.07.2025.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | matched | 2 | 2 | 0 | 5 | n/a |
| [Infrared - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Infrared Berachain Core Integration - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Berachain%20Core%20Integration%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Infrared Merkle Distributor - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Merkle%20Distributor%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Infrared OFT Adapter Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20OFT%20Adapter%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Infrared Operations & Future Vaults Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Operations%20%26%20Future%20Vaults%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Infrared Smart Contract Security Assessment.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Smart%20Contract%20Security%20Assessment.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Infraredv1.5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infraredv1.5.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Zenith Audit Report - Infrared Finance.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Zenith%20Audit%20Report%20-%20Infrared%20Finance.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [baseline-ethskills.md](https://github.com/infrared-dao/contracts/blob/master/audits/baseline-ethskills.md) | unknown | Audit | 2026-04 | fresh | Direct | n/a | matched | 9 | 8 | 0 | 10 | n/a |
| [cantinacode-24.01.2026.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/cantinacode-24.01.2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [infraredContractsSecurityReview.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infraredContractsSecurityReview.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [infrared_contract_security_review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_contract_security_review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [infrared_security_review_12_11_2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_security_review_12_11_2025.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-infrared-03072025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-03072025.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-infrared-0310-bribeCollector.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0310-bribeCollector.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-infrared-0320.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [report-cantinacode-infrared-1.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [report-cantinacode-infrared-1201.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1201.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 1 | n/a |
| [report-cantinacode-infrared-5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-5.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [report-cantinacode-infrared-pr647.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-pr647.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-infrared.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 15 | high |
| [report-cli-cantina-infrared-0503_final.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cli-cantina-infrared-0503_final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [report-competition-infrared-contracts.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-competition-infrared-contracts.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | matched | 4 | 2 | 0 | 10 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5712] Infrared - Zellic Audit Report.pdf — matched: Scope includes core/*.sol, utils/*.sol, vendors/*.sol. Extracted contract names from threat model sections and file paths.
- [5713] Infrared - Zenith Audit Report - 20082025.pdf — no match: Scope section lists repository and commit hash but no specific contract names; extracted from findings and file references.
- [5714] Infrared - Zenith Audit Report 09.07.2025.pdf — matched: No reason recorded
- [5715] Infrared - Zenith Audit Report.pdf — no match: Scope section lists repository and commit hash but no specific contract files. Contract names extracted from findings.
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf — no match: The scope explicitly lists 'Programs contracts/tests/unit/core/Infrared/*' and the goals mention testing functions of Infrared.sol. No other contract names are explicitly in scope.
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf — no match: Only one contract in scope: MerkleDistributor.sol. Audit date from report published date.
- [5718] Infrared OFT Adapter Security Review.pdf — no match: No reason recorded
- [5719] Infrared Operations & Future Vaults Security Review.pdf — no match: Scope section lists two contracts: InfraredMultisigGovernance.s.sol and MultiRewards.sol. Audit date is November 12, 2025 from the cover page.
- [5720] Infrared Smart Contract Security Assessment.pdf — no match: Scope section explicitly lists three files: RewardsLib.sol, InfraredV1_9.sol, BatchClaimerV2_2.sol. Audit date is November 12, 2025 from the cover page.
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf — no match: The report is an incident response review, not a full audit with a scope section. Contract names extracted from code references and upgrade mentions.
- [5722] Infraredv1.5.pdf — no match: No explicit scope section found; contracts inferred from findings and context.
- [5723] Zenith Audit Report - Infrared Finance.pdf — no match: Only Infrared.sol is explicitly named as a target in findings. The scope section lists a repository and commit hash but no specific contract files. Other contracts (IBerachainBGT, BGT.sol, etc.) are dependencies or referenced in code but not in scope.
- [5724] baseline-ethskills.md — matched: No reason recorded
- [5725] cantinacode-24.01.2026.pdf — no match: Scope section explicitly lists three contracts in src/periphery/. Audit date from cover page: January 24, 2026.
- [5726] infraredContractsSecurityReview.pdf — no match: No explicit scope section found; contract names extracted from findings context. Audit date from cover page.
- [5727] infrared_contract_security_review.pdf — matched: No reason recorded
- [5728] infrared_security_review_12_11_2025.pdf — no match: Only one contract in scope: RewardDistributor.sol. Audit date from cover page.
- [5729] report-cantinacode-infrared-03072025.pdf — matched: No reason recorded
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf — no match: Only one contract (BribeCollectorV1_2) is explicitly in scope. InfraredUpgradeable is mentioned as a parent but not in scope.
- [5731] report-cantinacode-infrared-0320.pdf — no match: No explicit scope section found; contracts inferred from findings context. Audit date from cover page.
- [5732] report-cantinacode-infrared-1.pdf — matched: No reason recorded
- [5733] report-cantinacode-infrared-1201.pdf — matched: No reason recorded
- [5734] report-cantinacode-infrared-5.pdf — matched: No reason recorded
- [5735] report-cantinacode-infrared-pr647.pdf — matched: No reason recorded
- [5736] report-cantinacode-infrared.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report covers Infrared contracts including core contracts (Infrared, InfraredDistributor, BribeCollector) and voting contracts (Voter, VotingEscrow, etc.). Audit date is December 26, 2024 from the cover page.
- [5737] report-cli-cantina-infrared-0503_final.pdf — no match: Scope section explicitly lists three files in src/periphery. Additional contracts mentioned in findings are also included as they are part of the audited system.
- [5738] report-competition-infrared-contracts.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Infrared - Zellic Audit Report.pdf | IBGT | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | Infrared | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be...168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zellic Audit Report.pdf | MultiRewards | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | ValidatorSet | unmatched — not counted | — | listed in scope as utils/*.sol | no |
| Infrared - Zellic Audit Report.pdf | InfraredVaultDeployer | unmatched — not counted | — | listed in scope as utils/*.sol | no |
| Infrared - Zenith Audit Report - 20082025.pdf | Redeemer | unmatched — not counted | — | listed in scope and findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | BGT | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | RewardsLib | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | InfraredV1_8 | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERARateProvider | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | UpgradeInfraredBERAWithdrawor | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report.pdf | InfraredV1_4 | unmatched — not counted | — | Mentioned in findings I-1 and I-2 as target contract | no |
| Infrared - Zenith Audit Report.pdf | InfraredV1_2 | unmatched — not counted | — | Mentioned in finding I-2 as defining storage state | no |
| Infrared Berachain Core Integration - Zellic Audit Report.pdf | Infrared | unmatched — not counted | — | Scope section lists 'Programs contracts/tests/unit/core/Infrared/*' and goals mention test cases for Infrared.sol functions. | no |
| Infrared Merkle Distributor - Zenith Audit Report.pdf | MerkleDistributor | unmatched — not counted | — | listed in scope section | no |
| Infrared OFT Adapter Security Review.pdf | ConfigureOFTPeers | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | DeployIROFT | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | DeployIROFTAdapter | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | IROFT | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | IROFTAdapter | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | VerifyOFTSetup | unmatched — not counted | — | — | no |
| Infrared Operations & Future Vaults Security Review.pdf | InfraredMultisigGovernance | unmatched — not counted | — | listed in scope | no |
| Infrared Operations & Future Vaults Security Review.pdf | MultiRewards | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | RewardsLib | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | InfraredV1_9 | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | BatchClaimerV2_2 | unmatched — not counted | — | listed in scope | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | MultiRewards | unmatched — not counted | — | mentioned in root cause analysis | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | Infrared | unmatched — not counted | — | mentioned as contract to upgrade | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | InfraredV2 | unmatched — not counted | — | mentioned as upgraded contract | no |
| Infraredv1.5.pdf | WrappedVaultFactory | unmatched — not counted | — | mentioned in finding context: WrappedVaultFactory.sol#L22-L23 | no |
| Infraredv1.5.pdf | WrappedVaultOracleAuction | unmatched — not counted | — | mentioned in finding context: constructor of WrappedVaultOracleAuction | no |
| Zenith Audit Report - Infrared Finance.pdf | Infrared.sol | unmatched — not counted | — | Target in findings M-1 and M-2 | no |
| baseline-ethskills.md | BatchClaimerV2_2 | unmatched — not counted | — | — | no |
| baseline-ethskills.md | BribeCollectorV1_4 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8d4417...21298c` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | CuttingBoardSyndicate | unmatched — not counted | — | — | no |
| baseline-ethskills.md | IRAuction | unmatched — not counted | — | — | no |
| baseline-ethskills.md | IRRewardDistributor | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERADepositorV2_1 | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredBERAFeeReceivor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf6a4a6...9fef97` — deployed 2025-02-01 23:25:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERAV2_1 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9b6761...cd3fe5` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredUpgradeable | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredV1_10 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb71b3d...2fc126` — deployed 2025-02-01 23:25:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | MerkleDistributor | unmatched — not counted | — | — | no |
| baseline-ethskills.md | RewardsLib | unmatched — not counted | — | — | no |
| baseline-ethskills.md | StakedIR | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb5e9cf...512756` — deployed 2026-01-14 00:27:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | Upgradeable | unmatched — not counted | — | — | no |
| baseline-ethskills.md | WrappedRewardToken | own contract | WrappedRewardToken (selected) `0x4f3c10...670c1b` — deployed 2025-10-07 16:43:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | WrappedVault | unmatched — not counted | — | — | no |
| cantinacode-24.01.2026.pdf | CuttingBoardDutchAuction | unmatched — not counted | — | listed in scope section | no |
| cantinacode-24.01.2026.pdf | CuttingBoardManager | unmatched — not counted | — | listed in scope section | no |
| cantinacode-24.01.2026.pdf | CuttingBoardNFT | unmatched — not counted | — | listed in scope section | no |
| infraredContractsSecurityReview.pdf | InfraredV1_5 | unmatched — not counted | — | mentioned in findings context | no |
| infraredContractsSecurityReview.pdf | RewardsLib | unmatched — not counted | — | mentioned in findings context | no |
| infrared_contract_security_review.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| infrared_contract_security_review.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| infrared_contract_security_review.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | MerkleTree | unmatched — not counted | — | — | no |
| infrared_security_review_12_11_2025.pdf | RewardDistributor | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-infrared-03072025.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | MerkleTree | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-0310-bribeCollector.pdf | BribeCollectorV1_2 | unmatched — not counted | — | Listed in scope as the main contract under review; findings reference BribeCollectorV1_2.sol | no |
| report-cantinacode-infrared-0320.pdf | InfraredV1_3 | unmatched — not counted | — | mentioned in findings context and scope | no |
| report-cantinacode-infrared-0320.pdf | InfraredV1_2 | unmatched — not counted | — | mentioned in findings context and scope | no |
| report-cantinacode-infrared-1.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | Infrared | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERAClaimor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredDeployer | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1.pdf | InfraredUpgradeable | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | VaultManagerLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1201.pdf | InfraredBERAKeeper | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1201.pdf | InfraredBERAV2_1 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9b6761...cd3fe5` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1201.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | Infrared | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERAClaimor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredDeployer | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | InfraredUpgradeable | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | VaultManagerLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | BatchClaimerV2_2 | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | IRAuction | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | IRRewardDistributor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | InfraredV1_10 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb71b3d...2fc126` — deployed 2025-02-01 23:25:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-pr647.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | StakedIR | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb5e9cf...512756` — deployed 2026-01-14 00:27:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | Infrared | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | BribeCollector | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | Voter | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be...168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | MultiRewards | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | Reward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VotingReward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | BribeVotingReward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IBGT | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IInfraredDistributor | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IVoter | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IVotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | BalanceLogicLibrary | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VelodromeTimeLibrary | unmatched — not counted | — | listed in scope and findings | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardNFT | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSyndicate | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSyndicateLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardDutchAuctionV1_1 | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardDutchAuction | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardManager | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSlotNFT | unmatched — not counted | — | mentioned in findings context | no |
| report-competition-infrared-contracts.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | Infrared | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERAConstants | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERAFeeReceivor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf6a4a6...9fef97` — deployed 2025-02-01 23:25:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBGT | own contract | InfraredBGT (selected) `0xac03ca...bb2e6b` — deployed 2025-02-01 23:25:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be...168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | ValidatorManagerLib | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | WrappedVault | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0xa1b644...28c7c9` | InfraredGovernanceTokenV1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 30 own (25 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 30 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, medium=6
- Match method counts: unique_name=30

Zero-match audit list:

- [5713] Infrared - Zenith Audit Report - 20082025.pdf
- [5715] Infrared - Zenith Audit Report.pdf
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf
- [5718] Infrared OFT Adapter Security Review.pdf
- [5719] Infrared Operations & Future Vaults Security Review.pdf
- [5720] Infrared Smart Contract Security Assessment.pdf
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf
- [5722] Infraredv1.5.pdf
- [5723] Zenith Audit Report - Infrared Finance.pdf
- [5725] cantinacode-24.01.2026.pdf
- [5726] infraredContractsSecurityReview.pdf
- [5728] infrared_security_review_12_11_2025.pdf
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf
- [5731] report-cantinacode-infrared-0320.pdf
- [5737] report-cli-cantina-infrared-0503_final.pdf

Fork inheritance lineage and inherited audits are included when available.
