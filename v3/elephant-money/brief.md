# Agentic Audit Brief: Elephant Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 386 unique implementations (612 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $70,398,487.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Elephant Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 64 contract row(s) across bsc, ethereum. Structural roles: 35 unclassified, 22 core, 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 64
- Structural roles: unclassified (35), core (22), supporting (7)
- Contract kinds: contract (64)
- Detected standards: ownable (19), erc20 (9), erc20permit (3), accesscontrol (1), chainlinkaggregator (1), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (25)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 64; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 77 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 309 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/192
- Verified + Unaudited implementations: 192
- Verified by bytecode match: 0
- Unverified implementations: 194
- Unique implementations: 386
- Raw deployments: 612
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (192)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d52d2...dd9144`; bsc `0x4fdbdf...4bbace`; bsc `0x944b31...6dae7b` | ⚠️ Unaudited |
| AdministrativeNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236774 | `0xa94211...2a8ee4` | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236726 | `0x01fb38...6ae484` | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3750a4...64f326`; bsc `0x6349cb...f4a101` | ⚠️ Unaudited |
| autoBsw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a16f...cda73d` | ⚠️ Unaudited |
| BackedForwardingPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236768 | `0x99c919...ea8f05` | ⚠️ Unaudited |
| BakeryAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x08e358...c6c61b`; bsc `0x17307d...10b9cf`; bsc `0xbe24a0...b0c88c` | ⚠️ Unaudited |
| BankrollNetworkStack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec1005...ce1eb7` | ⚠️ Unaudited |
| BatchERC721Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7776b8...cdd9dc` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236796 | `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x173661...9f1285`; bsc `0x858e33...8af7ee` | ⚠️ Unaudited |
| BiswapRouter02 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236741 | `0x3a6d8c...350dd8` | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb74e96...4ff897` | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236786 | `0xcccc27...51b43c` | ⚠️ Unaudited |
| BotGasStation | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236783 | `0xc4d9b0...6778b9` | ⚠️ Unaudited |
| BSWMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a539a...b1f522`; bsc `0xaec140...3f0fbf` | ⚠️ Unaudited |
| BSWToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x965f52...120dd1` | ⚠️ Unaudited |
| BTCBTurbine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e74b4...41858c` | ⚠️ Unaudited |
| BulkNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236727 | `0x029a89...fb606a` | ⚠️ Unaudited |
| BulkNFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x112492...7f7269`; bsc `0xd606ec...e1444b` | ⚠️ Unaudited |
| BuyoutModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea1ac...484197` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7865a...62655a` | ⚠️ Unaudited |
| ConstOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa952f8...b21edb` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4187aa...113634` | ⚠️ Unaudited |
| CP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5d6e6a...16b245`; bsc `0x6a3c8b...0f12e5`; bsc `0xd1aacd...0a53bf` | ⚠️ Unaudited |
| CrowdPoolingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x778df5...e185dc`; bsc `0x9c9ef6...28debc`; bsc `0xd5a7e1...07281a` | ⚠️ Unaudited |
| CustomERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2aabd1...98051b`; bsc `0x4777a6...e10f1f`; bsc `0xb71c24...17ced2` | ⚠️ Unaudited |
| CustomMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff739f...7eaff3` | ⚠️ Unaudited |
| Depot | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236732 | `0x1a6a71...7e68a5` | ⚠️ Unaudited |
| Depot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6da246...39f42b` | ⚠️ Unaudited |
| DODO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x47520b...80fec2`; bsc `0x77106d...d2d748`; bsc `0x99ba96...48515b` | ⚠️ Unaudited |
| DODOBscToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67ee3c...b929e2` | ⚠️ Unaudited |
| DODOCalleeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2673e5...8e3b4b` | ⚠️ Unaudited |
| DODOCpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7831d8...57f08d`; bsc `0xa86724...5474d8`; bsc `0xbb8680...97f28c` | ⚠️ Unaudited |
| DODODppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624fc8...ec21b9` | ⚠️ Unaudited |
| DODODropsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc05a30...c3323b` | ⚠️ Unaudited |
| DODODspProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2442a8...d4e65a` | ⚠️ Unaudited |
| DODOIncentive | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ee639...9cd352` | ⚠️ Unaudited |
| DODOLimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa68d05...8240c1`; bsc `0xdc5e86...7b2a04` | ⚠️ Unaudited |
| DODOLimitOrderBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x187da3...9cf5fe`; bsc `0xd4edd3...43f083` | ⚠️ Unaudited |
| DODOLimitOrderProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e6c9f...a03322` | ⚠️ Unaudited |
| DODOMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f9bf...0cc750` | ⚠️ Unaudited |
| DODOMineReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf94435...387416` | ⚠️ Unaudited |
| DODOMineV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4e306a...a8b641`; bsc `0xf998ff...6fd217` | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c39dc...9597ac`; bsc `0x8f3fb1...b5c590` | ⚠️ Unaudited |
| DODOMineV3Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a5aa9...0dabd8`; bsc `0xf1ed17...0c6d6a` | ⚠️ Unaudited |
| DODONFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed972...489888` | ⚠️ Unaudited |
| DODONFT1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc9224...f56119` | ⚠️ Unaudited |
| DODONFTApprove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f6978...4c7a6c` | ⚠️ Unaudited |
| DODONFTPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x509d37...b5b965` | ⚠️ Unaudited |
| DODONFTProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d224a...798c71`; bsc `0x485239...8131fa`; bsc `0xb9c408...e6fcde` | ⚠️ Unaudited |
| DODONFTRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c0dd7...dce31a` | ⚠️ Unaudited |
| DODONFTRouteHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d8349...57fbf3` | ⚠️ Unaudited |
| DODORecharge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x61b216...1d0f6a`; bsc `0xf7c531...7eddca` | ⚠️ Unaudited |
| DODORouteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x38a92d...5b3b12`; bsc `0x6b3d81...9737ca`; bsc `0xea872a...53671b` | ⚠️ Unaudited |
| DODOStarterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x796249...29ecb9` | ⚠️ Unaudited |
| DODOStarterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81521b...ffe8d1` | ⚠️ Unaudited |
| DODOUpCpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x01d3e7...0679fa`; bsc `0x39eb55...173d03` | ⚠️ Unaudited |
| DODOV2CuttingRouteHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9d393...9c4468` | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3a343f...054965`; bsc `0xd56281...043127` | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236766 | `0x8f8dd7...d58486` | ⚠️ Unaudited |
| DODOV2RouteHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1dc8d1...f9c993`; bsc `0xb48ee7...1c3a65`; bsc `0xc1cce4...53d957`; bsc `0xf2cd74...6cd617` | ⚠️ Unaudited |
| DPPAdvanced | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0fe261...9065f4`; bsc `0x3a60a7...abc406`; bsc `0x5a2e22...708759`; bsc `0x64b2e6...c2f1e3`; bsc `0x7f6070...67ac53`; bsc `0x88cbf4...4593e5`; bsc `0xa7e60e...0e6a3d`; bsc `0xf718dd...1ac38e` | ⚠️ Unaudited |
| DPPAdvancedAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2ae3df...afed36`; bsc `0x4796db...10dd5f`; bsc `0x68b3ad...5ad28d`; bsc `0x69856d...efaf4b`; bsc `0xbb23ff...964aa5`; bsc `0xcdfd45...3a2380`; bsc `0xff133a...a8ae6a` | ⚠️ Unaudited |
| DPPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xafe0a7...609eef`; bsc `0xd9cac3...51daae` | ⚠️ Unaudited |
| DPPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x03e794...35b1a0`; bsc `0x3024a8...c2d633` | ⚠️ Unaudited |
| DPPOracleAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9743c...2bc59c` | ⚠️ Unaudited |
| DropsFeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6de96b...c0c67d` | ⚠️ Unaudited |
| DSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x392b2a...c1cab6`; bsc `0xe3c91f...e9066e` | ⚠️ Unaudited |
| DSPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0fb981...ede767`; bsc `0xbb245f...b81378` | ⚠️ Unaudited |
| DVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x026076...33d901`; bsc `0x409e37...5d1dd9`; bsc `0xe44f14...1753c9` | ⚠️ Unaudited |
| DVMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x790b4a...1733fb`; bsc `0xa1254e...96b6d4` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236728 | `0x0567f2...d42aee` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236735 | `0x264990...ca5ebf` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ef1b8...1d5b2e` | ⚠️ Unaudited |
| Elephant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd96ec8...62be1a` | ⚠️ Unaudited |
| Elephant | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236795 | `0xe283d0...92f688` | ⚠️ Unaudited |
| ElephantDollar | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236793 | `0xdd325c...1a70e0` | ⚠️ Unaudited |
| ElephantDollarDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x00c66c...da2cd2`; bsc `0x8655e8...2eee3b`; bsc `0x9462e7...46de89`; bsc `0xb702b3...c9529c`; bsc `0xdb2c27...440455` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x239090...5e2a66` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236744 | `0x4d1e19...802b7c` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236780 | `0xb6c05c...ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236781 | `0xb92afe...ab3198` | ⚠️ Unaudited |
| ElephantNFTBulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2286be...6a544a` | ⚠️ Unaudited |
| ElephantNFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x811d1b...f1da38`; bsc `0x846f61...c6ce9a`; bsc `0xb6f387...b11972` | ⚠️ Unaudited |
| ElephantNFTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x95beb1...2706ce`; bsc `0xd357de...f261e0` | ⚠️ Unaudited |
| ElephantNFTStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236769 | `0x9a372c...8ec4da` | ⚠️ Unaudited |
| ElephantNFTStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236779 | `0xb2b1d8...1c4fb3` | ⚠️ Unaudited |
| ElephantNFTTraitTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d8c58...eb9eff` | ⚠️ Unaudited |
| ElephantNFTTraitTracker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236787 | `0xce1b79...2824f1` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236749 | `0x612ce9...4cccba` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed5514...208843` | ⚠️ Unaudited |
| ElephantRouterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf522f...5ab1cc` | ⚠️ Unaudited |
| ElephantRouterProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236797 | `0xeaad13...253fa9` | ⚠️ Unaudited |
| ElephantYieldEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2689e3...8c5efd` | ⚠️ Unaudited |
| ERC20Mine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x132231...b6a630`; bsc `0x2b40bc...f42999`; bsc `0x2c29cb...aa4c47`; bsc `0x322b43...b0385f`; bsc `0x38e02c...8fd145`; bsc `0x3b6067...9f9237`; bsc `0x7b6bbc...a0f695`; bsc `0x9a74b1...9ef45e`; bsc `0xc1ba6b...d4f032`; bsc `0xf6585f...db608f`; bsc `0xf7ac92...9f8e18` | ⚠️ Unaudited |
| ERC20MineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xba428f...5168d8`; bsc `0xd12317...ae1e4d` | ⚠️ Unaudited |
| ERC20V2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x652c09...a19a4d` | ⚠️ Unaudited |
| ERC20V3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed22a...e7dc92` | ⚠️ Unaudited |
| FairFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x18b60f...d6bc31`; bsc `0xa0744f...f68502` | ⚠️ Unaudited |
| FarmEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236771 | `0xa3473f...ab3281` | ⚠️ Unaudited |
| Fear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e6293...48b5e1` | ⚠️ Unaudited |
| FeeRateDIP3Impl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x06c19e...76322b`; bsc `0x818995...b03e45`; bsc `0xafb8ec...07ecc2`; bsc `0xe5e9b0...5a4c4d` | ⚠️ Unaudited |
| FeeRateImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b0d94...76d2fe` | ⚠️ Unaudited |
| FilterAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde8a38...0f9d41` | ⚠️ Unaudited |
| FilterERC1155V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x763569...3caee1` | ⚠️ Unaudited |
| FilterERC721V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x333641...1c301f` | ⚠️ Unaudited |
| FlowEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x202b8d...8576ab` | ⚠️ Unaudited |
| Fragment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9542f4...43b419`; bsc `0xa8f057...839b14` | ⚠️ Unaudited |
| FuturesActionVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236748 | `0x5c5778...d436ae` | ⚠️ Unaudited |
| FuturesEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x155479...d7c791`; bsc `0x1f61a4...3fdaeb`; bsc `0x5b24f7...8af11b`; bsc `0x5d87d8...76237a`; bsc `0x778c19...e38440`; bsc `0x8a3955...19ec06`; bsc `0x9a37fa...ceed56`; bsc `0x9ecde1...2cd68e`; bsc `0xa29004...1f3381`; bsc `0xc22e92...208573`; bsc `0xe98529...1dcead` | ⚠️ Unaudited |
| FuturesEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236755 | `0x6c81fd...e1a1ee` | ⚠️ Unaudited |
| FuturesNFTMigrationVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236770 | `0x9ae4de...8ff408` | ⚠️ Unaudited |
| FuturesRDFVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236773 | `0xa8e3ee...535b3e` | ⚠️ Unaudited |
| FuturesVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236776 | `0xaeb9b3...77fcd2` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-236800 | `0xd5d371...bac644` | ⚠️ Unaudited |
| InitializableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c5509...c830a5` | ⚠️ Unaudited |
| InitializableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99155e...f7bdf5` | ⚠️ Unaudited |
| InitializableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd0ed3...1ea188` | ⚠️ Unaudited |
| InstantFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcc60a...8dced8` | ⚠️ Unaudited |
| InvestorMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbfa00a...678ff7`; bsc `0xf723ec...b1d2a4` | ⚠️ Unaudited |
| LockedTokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x36b673...6110df`; bsc `0xc6894b...7d834c`; bsc `0xe077ce...f4df9d` | ⚠️ Unaudited |
| MarketingTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x706d4d...4f40d0` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdbc1a1...061739`; bsc `0xfb9b2d...e6308e` | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf7e00...20c8d4` | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc25286...af97b8` | ⚠️ Unaudited |
| NFTCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0dd95c...3a1deb`; bsc `0xd66b8b...1e3629` | ⚠️ Unaudited |
| NFTMarketplaceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x22a46d...32c150`; bsc `0x36239e...f1e30d`; bsc `0x3f3bad...2130e0`; bsc `0xf57cad...6fceb3` | ⚠️ Unaudited |
| NFTMarketplaceHelper | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236757 | `0x6f4318...ca3248` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236737 | `0x2aefa3...d8ce12` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe8966...e07871` | ⚠️ Unaudited |
| NFTTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e08ea...16b8fa` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2f48cd...1f2db0`; bsc `0x742e74...4d3736` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca143c...350c73` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236733 | `0x1cea83...195ce1` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236745 | `0x4e90f5...4b861b` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647bc9...6bec48` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236799 | `0xf15a72...e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236731 | `0x10ed43...56024e` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| PcsPeriodicTwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28fafc...5679e3` | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236746 | `0x5606ee...326d3c` | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9394b...893861` | ⚠️ Unaudited |
| PegSupportTreasuryStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b5eeb...90e567` | ⚠️ Unaudited |
| PerformanceFund | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236789 | `0xd23d87...d412ac` | ⚠️ Unaudited |
| PerformanceFundV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236729 | `0x060044...d96162` | ⚠️ Unaudited |
| PoolHeartBeat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5cbfa...ed46e5` | ⚠️ Unaudited |
| RandomGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7c062b...c5fe72`; bsc `0xefda12...efc758` | ⚠️ Unaudited |
| ReferralData | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236750 | `0x6248d9...e1ea4a` | ⚠️ Unaudited |
| SafeElephantNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236736 | `0x29a833...a45c06` | ⚠️ Unaudited |
| SafeElephantNFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x825055...74d875`; bsc `0xb3a23f...8fbacd` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 116 deployments: bsc `0x00a142...b39346`; bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x112ff6...6d4eef`; bsc `0x12e5b4...d93c3f`; bsc `0x131010...fa04b8`; bsc `0x1362b3...f3ba65`; bsc `0x13ca6a...4bb845`; bsc `0x13e903...4c8237`; bsc `0x1beb5a...f4d995`; bsc `0x1c3c5c...661492`; bsc `0x1edb72...a0ced5`; bsc `0x1f337d...d32970`; bsc `0x263678...24303d`; bsc `0x2792cc...8bd280`; bsc `0x28944e...673801`; bsc `0x2968da...ad6a46`; bsc `0x2a979f...0d7ecd`; bsc `0x339c7c...721d69`; bsc `0x34265c...f67006`; bsc `0x36fc9c...28860f`; bsc `0x3e776f...86f08b`; bsc `0x3e963d...4d547b`; bsc `0x44eece...e0ba51`; bsc `0x454076...ece61a`; bsc `0x50945a...0358ac`; bsc `0x5215d0...c18dd2`; bsc `0x53c60a...bd9891`; bsc `0x57393b...c90411`; bsc `0x5f1b5b...f414a3`; bsc `0x61330d...ce5862`; bsc `0x62204e...80378e`; bsc `0x62cfcc...258373`; bsc `0x631b87...90bca0`; bsc `0x6653c3...978a25`; bsc `0x66ac2a...d955ae`; bsc `0x683963...dc39e5`; bsc `0x69c4c9...fc8157`; bsc `0x6c00f2...e5dff4`; bsc `0x6cbba2...a1394d`; bsc `0x6d4067...25fd4d`; bsc `0x6e31da...c1df38`; bsc `0x724b71...dcfa1d`; bsc `0x72a79a...109cc9`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x78f818...0aa38e`; bsc `0x7951bc...6fafc0`; bsc `0x7d621c...7c9589`; bsc `0x81af4b...bc5d61`; bsc `0x84f41c...55c859`; bsc `0x850281...de5bbb`; bsc `0x858d2c...4a4832`; bsc `0x868cd8...48536a`; bsc `0x8b10e6...c42ff4`; bsc `0x8bb118...d94d4b`; bsc `0x8d87f0...105e71`; bsc `0x8dde1a...3056d4`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa1684b...57ff15`; bsc `0xa320db...72382f`; bsc `0xa394dd...823459`; bsc `0xa3a911...ac4444`; bsc `0xa5aa38...aee8c2`; bsc `0xa6c2f2...577c8f`; bsc `0xaa2b37...9fd4e5`; bsc `0xaa9947...7ff3e4`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xb23b56...391ce9`; bsc `0xbbbc00...c1d10c`; bsc `0xbd09d5...7b0d1d`; bsc `0xc1519a...b52d21`; bsc `0xc50676...81e920`; bsc `0xc6a577...c5f3eb`; bsc `0xc7019f...fdb84a`; bsc `0xc7313c...823fa7`; bsc `0xc7ba45...2ac468`; bsc `0xc941b2...1676a3`; bsc `0xcc1b01...3f6a73`; bsc `0xcdebe0...1c22fa`; bsc `0xcf505c...6bd5fa`; bsc `0xd3b649...9d09d4`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xd86e47...e0b4c4`; bsc `0xda730d...458187`; bsc `0xe018d6...01831d`; bsc `0xe02f66...51dc98`; bsc `0xe056fb...25990b`; bsc `0xe09d1d...ac20a0`; bsc `0xe42d17...c175a7`; bsc `0xe63967...6e6f74`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeaebd1...14e4b1`; bsc `0xeb8134...0540b7`; bsc `0xedb963...1e6879`; bsc `0xeeee29...d8e193`; bsc `0xf2db34...186dda`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf4af1a...a1637c`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275`; bsc `0xfd8fce...51755d` | ⚠️ Unaudited |
| StampedeEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7c4dad...b914b7`; bsc `0x7f6cec...a171ce`; bsc `0xac0292...d65c14` | ⚠️ Unaudited |
| StampedeEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236794 | `0xdd8ad4...7b68a8` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24f1c7...f99c58` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236742 | `0x49241e...b02400` | ⚠️ Unaudited |
| SuperCharger | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236798 | `0xec8c93...6d7305` | ⚠️ Unaudited |
| SwapFeeReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2810b4...552dd8`; bsc `0x41bde0...4aaf83`; bsc `0x703932...8f9ee8`; bsc `0x92437a...c31d2c`; bsc `0xc8d5d4...e4ea51`; bsc `0xcfb450...223800`; bsc `0xf6af64...37aedb` | ⚠️ Unaudited |
| TeamTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x513d15...b6b036` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5d6fe...dae9fe` | ⚠️ Unaudited |
| Treasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236738 | `0x2da1a9...b5267d` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236767 | `0x98f6c7...87fc92` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236775 | `0xacef13...37bfdd` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236777 | `0xaf0980...fbb4fc` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236784 | `0xc6a42b...6d18bb` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236785 | `0xcb5a02...ce8ce4` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236791 | `0xd3b4fb...bc6fdf` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236792 | `0xd9de89...00ec3e` | ⚠️ Unaudited |
| Trumpet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236747 | `0x574a69...47e073` | ⚠️ Unaudited |
| Trumpet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6a68a...7ef81c` | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x470cb1...f1f1de` | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236762 | `0x7cb957...b64b04` | ⚠️ Unaudited |
| TRUNKSupportTreasuryStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236788 | `0xcecba4...174587` | ⚠️ Unaudited |
| Turbine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236752 | `0x69c714...2f2d86` | ⚠️ Unaudited |
| Turbine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236756 | `0x6de7de...20a51d` | ⚠️ Unaudited |
| Turbine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x701821...dd874e`; bsc `0xb4fbd2...2c9db8` | ⚠️ Unaudited |
| TurbineProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236739 | `0x2e390c...a2cb89` | ⚠️ Unaudited |
| TurbineProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236754 | `0x6beadd...42ded1` | ⚠️ Unaudited |
| UpCrowdPoolingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3e64f1...66ba9e`; bsc `0x4f57f6...b0f270`; bsc `0x69f52a...56f0a0`; bsc `0xeceade...95dc32` | ⚠️ Unaudited |
| UserQuota | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x695d7b...3887d7`; bsc `0xae7186...6f0e12` | ⚠️ Unaudited |
| UserQuotaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e467a...80cbdd` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x545787...42d0fb` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236759 | `0x71b00a...5938ed` | ⚠️ Unaudited |
| vDODOMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505a0f...ae945f` | ⚠️ Unaudited |
| WBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236782 | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| WELEPHANT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236734 | `0x241f21...87cdca` | ⚠️ Unaudited |
| WELEPHANT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60fc26...fd4de3` | ⚠️ Unaudited |
| WELEPHANT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236772 | `0xa546d0...4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9ef34c...1880c2`; bsc `0xba532f...3a963a` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236778 | `0xb247c1...422d15` | ⚠️ Unaudited |
| Whitelist | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236740 | `0x3064cd...85ed97` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (194)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00c093...96b9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00f736...80053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x029aa7...8851ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03533f...7b5a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a774...cf2532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05588d...c284ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07a7c3...e250c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08406b...e60a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0990d4...8990ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09fc7c...97f817` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236730 | `0x0b3ddb...3ffe11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ccf30...2557db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x101d65...c49c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x107f56...ad096f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11dfa8...198d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125593...8e95bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13abe3...69bc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14bc99...483c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x165ba8...02c820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c1bc...51c8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17ebc3...bd3aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2dde...5edf00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e0d40...b5e30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e2c67...4e4f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eb6cc...fdbcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2037b7...7657f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20e64a...c179e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x213cc0...87321b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22013e...a04b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x221e4c...afd1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2753cd...5fabd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x278967...0ff468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29828b...76be02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c6c72...aeb226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d5e8e...df943d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ef706...1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2efff8...f0961c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3000d2...fa35e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30c726...c07d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30d4d8...fc8732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30ead2...9c5b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31239b...a37de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31d23e...c87f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34cb11...9fcf03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x351738...afa644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x366ad3...9fddcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x368540...a80e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ac762...344af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aec8f...a3ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3af527...303e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2a86...67563f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b53aa...1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b545b...547f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c05bf...9582b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c1173...660d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c1336...d07ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dfd47...e314d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f2904...56cef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fcf08...88c074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x410ea7...d244c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x442247...6f225d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a496...6180a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48d5a4...f3cd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49a984...0de166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a8aef...af2115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b735d...fc1423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c4f80...853f2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236743 | `0x4c6471...5c09d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e6465...ca71e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fcd69...523a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x501bce...63d04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51147b...326699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5310df...dafcf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x553a68...92eb18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5687ce...967ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c18ff...332171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x601cc4...a79d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f674...e2ff84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6576e3...fc783b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x674bb9...c7cae1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236751 | `0x6839e2...a82dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x691c42...a18325` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236753 | `0x6b5081...74c181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9cd0...4693fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dfaaa...7572d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e7995...0f8434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f052e...722ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236758 | `0x708115...5813d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70e61a...b1255f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77197a...469def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x781184...f913c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799c6e...0d8515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a0d7b...68e5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a62f3...169b57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236760 | `0x7b68a2...278018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bcb41...7a0411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c073b...80022a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236761 | `0x7c7990...5a5569` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236763 | `0x7d908c...385043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f73de...d157f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fcb0c...788b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82e635...dbb3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86a109...298b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b332...34fab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86c4da...690883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8796f8...c48a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88d32f...cc8e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cde0d...af3085` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236764 | `0x8ce535...f48da5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236765 | `0x8cf0a5...ab5740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dad7d...d57d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e4842...8359d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e5248...1a05e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9182fd...d38d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x924c26...55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92dade...4e162b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x962b70...5a32ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9806ab...304dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ab212...db9f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b8ea5...cdb593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d3923...07af34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa03e0d...cbb598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0cb2d...1a260b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa70a8d...ebad79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7473c...4040fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa86f31...36414a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaffad...b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac0b6a...a06ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf0a36...cbb968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf47e9...b23d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf860f...eeab3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2f8f2...d12cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb629ac...41f8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba8562...ce7b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb947c...46a353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc99f6...ae517c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbee8d3...c2b702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc04c9c...a9e48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc274f0...f15eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc342f8...6aabef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5b7fd...d8ae15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6f6f5...fb5302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6fa53...760968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7e2df...f97d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8b18b...c4e79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8fe24...fd5a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc99426...dd47c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9d455...b49099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc5dcf...dd21a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceef79...e7fcd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0ae24...dc8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0ff24...c1016a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd13ab9...3dd813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1d231...455876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd23112...f9c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3477c...2fe4d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236790 | `0xd35c54...943e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4fb0d...6dd053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd520a3...bdf834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5a7c9...feb529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6ac57...086135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd72b35...a42707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd92515...0e5268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd96d9c...c17151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb964b...363bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbd20f...c88852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcb503...52e264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd171a...0325d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde3ea6...c4ffa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdea860...353e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfc11a...82ec33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe18735...0e7c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1cac5...75388d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe223ac...760ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe30dac...c1d3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5a7be...955660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5cbd9...c36c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe60e43...d9b32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9bcd0...d5f3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xede909...7b8141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf16cd6...8555c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf43910...36f6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf60d3c...6f752a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf74d1e...1a61eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7c101...f4d21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7f376...11c10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf907e1...d9e806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf90f26...0da6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbf9a2...aa0282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc3a92...8bde30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc5860...42bb5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/ElephantMoney](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4640] sourcehat.com/audits/ElephantMoney — no match: No reason recorded
- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf — no match: Two contracts explicitly named in scope: ElephantReserve and Stampede. Audit date found on cover page and in basic information table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/ElephantMoney | BankrollNetworkStack | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Elephant | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantDollar | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantDollarDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantGraveyard | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantLiquidityDrive | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantPoolDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantReserve | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Treasury | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Whitelist | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf | ElephantReserve | unmatched — not counted | — | listed in scope table and throughout report | no |
| PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf | Stampede | unmatched — not counted | — | listed in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 191 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 194 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [4640] sourcehat.com/audits/ElephantMoney
- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
