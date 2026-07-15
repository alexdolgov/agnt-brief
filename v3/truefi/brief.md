# Agentic Audit Brief: TrueFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 27 (0 matched; 27 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TrueFi (`truefi`)
- Website: [https://app.truefi.io/](https://app.truefi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 81 unique implementations (162 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $15,383,479.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for TrueFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 48
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 81
- Raw deployments: 162
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 20 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveFinancialOpportunity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3146fa...dadb1c` | ⚠️ Unaudited |
| AaveFinancialOpportunity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x727fc4...0a47ff` | ⚠️ Unaudited |
| ArbitraryDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x440ed3...a9df32`; ethereum `0x59262f...175ea7` | ⚠️ Unaudited |
| AssuredFinancialOpportunity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe87c74...fc351d`; ethereum `0xffe736...01e7e1` | ⚠️ Unaudited |
| ChainlinkTruUsdcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0d931...11415a` | ⚠️ Unaudited |
| ChainlinkTruUsdtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7029...e17ceb` | ⚠️ Unaudited |
| FractionalExponents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x104a47...a58f72`; ethereum `0xe40612...61c21b` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xc03151...f7477b`; ethereum `0xdc0175...5d476a` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0236c1...090eb2`; ethereum `0x8bef17...e35d32`; ethereum `0xd1c85e...65e4f0` | ⚠️ Unaudited |
| ImplementationReference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa47def...17d930`; ethereum `0xb3d91b...6e33f2` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bd642...89d1b9`; ethereum `0xa2f006...9f0ac1` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2185b9...4a9310` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2ec3fe...4d6e8e`; ethereum `0x6c23b0...f9a014`; ethereum `0x75ef17...cdbd2f`; ethereum `0x8cc5d5...77f777`; ethereum `0xce11fe...e1691e` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x4a9047...e71073`; ethereum `0x8eff7d...2568e0`; ethereum `0xcc527f...e0d86e`; ethereum `0xfb8d91...3b6383` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xecfd4f...8a957f` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1dfb77...c3a27c`; ethereum `0xcef760...571181` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x76dd49...d70c77`; ethereum `0xa5c6b8...82f772` | ⚠️ Unaudited |
| Liquidator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x319aa2...5ae4bf`; ethereum `0xf0f936...83a731` | ⚠️ Unaudited |
| Liquidator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7ac899...444bdf` | ⚠️ Unaudited |
| LiquidatorReset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fef23...d10a6d` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x035aff...6101cc`; ethereum `0x38488e...c25c67`; ethereum `0x979d49...76550d` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ace6d...4119e7`; ethereum `0xc20500...cfc177` | ⚠️ Unaudited |
| LoanFactory2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x69d844...6685bc` | ⚠️ Unaudited |
| LoanFactory2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcf14ab...189ab6`; ethereum `0xfeef3c...9cedcd` | ⚠️ Unaudited |
| LoanToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79cc39...83df86`; ethereum `0xf53d1f...76cf0b` | ⚠️ Unaudited |
| OwnedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0008fa...a113e1`; ethereum `0xc8d76c...5cd01c` | ⚠️ Unaudited |
| OwnedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x335ce7...24e58d`; ethereum `0x47f614...00c465` | ⚠️ Unaudited |
| OwnedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa4e2db...62d045`; ethereum `0xd74d34...ecd3c3` | ⚠️ Unaudited |
| PausedTrueUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8984...2ed291` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1391d9...8bd393` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f2891...82d7a3`; ethereum `0xf71a25...ce3194` | ⚠️ Unaudited |
| RatingAgencyV2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x298353...0dcfc0`; ethereum `0x87dd76...536d6f` | ⚠️ Unaudited |
| RatingAgencyV2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x615157...44bca7`; ethereum `0x87d161...813f42` | ⚠️ Unaudited |
| RatingAgencyV2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd42b06...4c9967`; ethereum `0xf931f6...3dd46b` | ⚠️ Unaudited |
| StakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1713ed...12e031`; ethereum `0x9499e8...805a2e` | ⚠️ Unaudited |
| StkTruToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x236969...8ee424` | ⚠️ Unaudited |
| StkTruToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa17cba...66f8b3`; ethereum `0xa36764...e3128b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7762bc...280db7`; ethereum `0xc4ca6d...a079d8` | ⚠️ Unaudited |
| TimeLockRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5fe2f5...35dcc4`; ethereum `0xeedb29...aaa95d` | ⚠️ Unaudited |
| TimeLockRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dcba8...8830e9` | ⚠️ Unaudited |
| TokenController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8a3015...210b3e`; ethereum `0xd22402...4cd642`; ethereum `0xe08a56...e28cf8` | ⚠️ Unaudited |
| TokenControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035f99...c16400` | ⚠️ Unaudited |
| TrueAUD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b4305...0dceb5`; ethereum `0xc40750...59befb` | ⚠️ Unaudited |
| TrueCAD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fe124...c259d8`; ethereum `0x5eae6f...fc8903` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11df97...f02a9a`; ethereum `0x6b6a4e...817f5a` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x493945...9bf929`; ethereum `0xe811d2...e27979` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x581038...419f27`; ethereum `0x8fd832...1a29d9` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa7ddca...b3df38`; ethereum `0xed45cf...ec2ff4` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xea522b...505fb8`; ethereum `0xf8f14f...d8315a` | ⚠️ Unaudited |
| TrueFi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x095527...280f2f`; ethereum `0x4c1959...543784` | ⚠️ Unaudited |
| TrueFiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x27f461...1060b1`; ethereum `0x3fe853...e53e46`; ethereum `0x5fa457...c2fab0`; ethereum `0x76e28a...a8d2cf`; ethereum `0xb3c6fd...985613`; ethereum `0xf2ee1c...de4fb3` | ⚠️ Unaudited |
| TrueFiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1e722...0e4149` | ⚠️ Unaudited |
| TrueFiPool2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01bd87...dc4fc6`; ethereum `0x27e15d...3947b9` | ⚠️ Unaudited |
| TrueFiPool2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa99135...f1c742` | ⚠️ Unaudited |
| TrueGBP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaa912f...08a1d9`; ethereum `0xc174ab...176285` | ⚠️ Unaudited |
| TrueHKD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ba82d...744cce`; ethereum `0x9c1a48...7daace` | ⚠️ Unaudited |
| TrueLender | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16d02d...4b0922`; ethereum `0x271b02...32db5a` | ⚠️ Unaudited |
| TrueLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x886cf5...ad9a89`; ethereum `0x909168...e726d9`; ethereum `0xbf172b...895f95` | ⚠️ Unaudited |
| TrueLender2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ade9...ee26b9` | ⚠️ Unaudited |
| TrueLender2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa606dd...2ff583` | ⚠️ Unaudited |
| TrueMultiFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xec6c3f...8b0b10` | ⚠️ Unaudited |
| TrueRatingAgency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x35c556...5cfc59`; ethereum `0x4909ac...46194f`; ethereum `0x57fea1...6b1769`; ethereum `0x97ca0a...bd574f` | ⚠️ Unaudited |
| TrueRatingAgency | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x43a4f9...1f9b88`; ethereum `0xcfaa2b...b41df1` | ⚠️ Unaudited |
| TrueRatingAgencyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x054613...61fb6b` | ⚠️ Unaudited |
| TrueRatingAgencyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0ecac5...28c733`; ethereum `0x353488...61f7fc`; ethereum `0x57abfe...0b8b5e` | ⚠️ Unaudited |
| TrueUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1a7299...76b70c`; ethereum `0x20594f...657e01`; ethereum `0x2f7f87...d4cf7b`; ethereum `0x390d50...15e5bf`; ethereum `0x3e09d6...ad7fc3`; ethereum `0x60435c...58458c`; ethereum `0x7a9701...d2e90f`; ethereum `0x8d50a5...78e16a`; ethereum `0xb13246...4979e4`; ethereum `0xb65f6f...8b2434`; ethereum `0xe1e029...32ae77`; ethereum `0xffc40f...a4c196` | ⚠️ Unaudited |
| TruPriceChainLinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d7ed...e4ea74` | ⚠️ Unaudited |
| TrustToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2a0e32...b47a11`; ethereum `0x4b4e1f...4f6df4`; ethereum `0x5d43ea...eef430`; ethereum `0x6927f6...ce66bb`; ethereum `0xacedb4...17e50d`; ethereum `0xbf79cc...9f3ab7`; ethereum `0xe7bf14...74a1cc` | ⚠️ Unaudited |
| TrustToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x305f89...4fede0`; ethereum `0x454cc3...0b4d21` | ⚠️ Unaudited |
| TruSushiswapRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x164b22...2ce4c0`; ethereum `0xd916d5...dbf778` | ⚠️ Unaudited |
| TruSushiswapRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x603929...78bde1` | ⚠️ Unaudited |
| TruSushiswapRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xda46c9...d96128`; ethereum `0xedf406...9a7cfd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ad80...1f3e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ebcf0...0ecd37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9064ac...83fe5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3c5d...870d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc992...eb066d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8cfba...c7c81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e322...30082f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe67814...a5fcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4c96...0bde59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf](https://github.com/trusttoken/audits/blob/master/PortfolioDebtToken/2023-02-22%20ChainSecurity%20Audit%20-%20PortfolioDebtToken.pdf) | yAudit | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-12-21%20Chainsulting%20Audit%20--%20One-Click%20Borrowing%2C%20Lines%20of%20Credit%2C%20Rate%20Model%2C%20TRU%20Staking%2C%20Default%20Liquidation.pdf) | Chainsulting | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [20211203 CertiK Audit Final Report.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/20211203%20CertiK%20Audit%20Final%20Report.pdf) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [REP-Trusttoken-#2-2021-09-13.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/REP-Trusttoken-%232-2021-09-13.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [truefi_2.0_audit_ben_cosman_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ben_cosman_2_17_2021.pdf) | Ben Cosman | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [truefi_2.0_audit_ethworks_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ethworks_2_17_2021.pdf) | EthWorks | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_3.0_audit_ben_cosman_5_19_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_ben_cosman_5_19_2021.pdf) | Ben Cosman | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_3.0_audit_certik_5_12_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_12_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_3.0_audit_certik_5_20_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_20_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_audit_jakub_wojciechowski_november_22_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_jakub_wojciechowski_november_22_2020.pdf) | Jakub Wojciechowski | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [truefi_audit_slowmist_november_21_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_slowmist_november_21_2020.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-03%20Injected%20Bugs%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-20%20Chainsulting%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [1.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/1.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 1 | low |
| [2.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/2.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 1 | low |
| [3.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/3.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 1 | low |
| [4.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/4.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 2 | medium |
| [5.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/5.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-22%20Internal%20Security%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-02-07%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [README.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/README.md) | unknown | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-05-26%20G0%20Group%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-06-07%20ABDK%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | ABDK | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-08-10%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-07-26%20ImmuneBytes%20LP%20Staking%20Gauge%20Audit%20Report) | ImmuneBytes | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-07-30%20ImmuneBytes%20SAFU%20Audit%20Report) | ImmuneBytes | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-10-17%20ImmuneBytes%20Lines%20of%20Credit%20Audit%20Report) | ImmuneBytes | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf — no match: Only one contract in scope: PortfolioDebtToken.sol. Audit date from cover page.
- [6669] 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf — no match: All contracts listed in the 'Tested Contract Files' section (4.3) and 'Source Unites in Scope' table (4.7) are included. Audit date from cover page and executive summary.
- [6670] 20211203 CertiK Audit Final Report.pdf — no match: Extracted 6 contracts from the Audit Scope table. Test files are not contracts. Date from 'Delivery Date Dec 02, 2021'.
- [6671] REP-Trusttoken-#2-2021-09-13.pdf — no match: All six contracts are explicitly listed in the Audit Scope table with file paths and SHA256 checksums.
- [6672] truefi_2.0_audit_ben_cosman_2_17_2021.pdf — no match: No reason recorded
- [6673] truefi_2.0_audit_ethworks_2_17_2021.pdf — no match: No reason recorded
- [6674] truefi_3.0_audit_ben_cosman_5_19_2021.pdf — no match: No reason recorded
- [6675] truefi_3.0_audit_certik_5_12_2021.pdf — no match: No reason recorded
- [6676] truefi_3.0_audit_certik_5_20_2021.pdf — no match: No reason recorded
- [6677] truefi_audit_jakub_wojciechowski_november_22_2020.pdf — no match: Scope explicitly limited to contracts/truefi folder. All contracts mentioned in issues are within that folder. LoanFactory is mentioned in recommendation but is part of the same folder.
- [6678] truefi_audit_slowmist_november_21_2020.pdf — no match: Scope defined by audit version code and files out of scope; contracts description table lists all in-scope contracts. Three distributor files explicitly out of scope. Audit date from AuditResult section.
- [6679] 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf — no match: Extracted contract names from bug descriptions; no explicit scope section found.
- [6680] 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf — no match: All contracts listed in the 'Tested Contract Files' section (page 9) and 'Source Unites in Scope' table (page 14) are included. Audit date from cover page and executive summary.
- [6681] 1.md — no match: Only one contract name found in a finding header; no explicit scope section or date.
- [6682] 2.md — no match: Only one contract name found in a finding header; no explicit scope section or date present.
- [6683] 3.md — no match: Only one contract name found in a finding header; no explicit scope section or audit date present.
- [6684] 4.md — no match: Extracted contract names from finding headers; no explicit scope section found; no date found.
- [6685] 5.md — no match: No scope section or contract names found in the provided text. Only a single finding mentioning 'Multiple' files with 'manager' but no specific contract names.
- [6686] 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf — no match: Extracted contract names from findings table; no explicit scope section found. Audit date inferred from header '12/18/2022'.
- [6688] 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf — no match: All contracts listed in the 'Audited Files' section are included. The audit date is explicitly stated as 'February 7, 2022'.
- [6689] README.md — no match: The document is a list of known issues for TrueFi Lending Marketplace V1, not a formal audit report with a scope section. No contracts are explicitly listed as in scope.
- [6690] 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf — no match: All contracts listed in the scope section of the audit report.
- [6691] 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf — no match: All 47 files listed in the scope section of the audit report.
- [6692] 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf — no match: Extracted from the 'Audited Files' section listing all files in scope. The audit date is explicitly stated as 'August 10, 2022' in the title and repeated throughout.
- [15468] 2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory) — no match: The provided text is a URL to a document, not the actual audit report content. No contract names or audit date could be extracted.
- [15469] 2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory) — no match: The provided text is a URL to a document, not the actual audit report content. No contract names or audit date could be extracted.
- [15470] 2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory) — no match: The provided text is only a URL to a document, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf | PortfolioDebtToken | unmatched — not counted | — | listed in scope table and mentioned throughout report | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | LineOfCreditAgency | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | DeficiencyToken | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | StakingVault | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | Liquidator2 | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TrueFiPool2 | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TrueFiCreditOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | FixedTermLoanAgency | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | LoanFactory2 | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TimeAveragedBaseRateOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | SAFU | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | PoolFactory | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | RateModel | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | SpotBaseRateOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | FixedTermLoan | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | BorrowingMutex | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TimeAveragedTruPriceOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | ChainlinkTruOracle | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | BorrowingMutex | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | FixedTermLoanAgency | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | LoanFactory2 | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | TrueCreditAgency | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | TrueRateAdjuster | unmatched — not counted | — | listed in scope table | no |
| REP-Trusttoken-#2-2021-09-13.pdf | LoanFactory3 | unmatched — not counted | — | listed in Audit Scope table with ID LFN | no |
| REP-Trusttoken-#2-2021-09-13.pdf | SpotBaseRateOracle | unmatched — not counted | — | listed in Audit Scope table with ID SBR | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TimeAveragedBaseRateOracle | unmatched — not counted | — | listed in Audit Scope table with ID TAB | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TrueCreditAgency | unmatched — not counted | — | listed in Audit Scope table with ID TCA | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TrueFiCreditOracle | unmatched — not counted | — | listed in Audit Scope table with ID TFC | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TrueRateAdjuster | unmatched — not counted | — | listed in Audit Scope table with ID TRA | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | Liquidator | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | LoanToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | TruPriceUniswapOracle | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | TrueRatingAgencyV2 | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | Liquidator | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | LoanFactory | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | LoanToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TrueFiPool | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TruePriceUniswapOracle | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TrueRatingAgencyV2 | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TrustToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | CurveYearnStrategy | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | Liquidator2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | LoanFactory2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | LoanToken2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | PoolFactory | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | TrueFiPool2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | TrueLender2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | CurveYearnStrategy | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | Liquidator2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | LoanFactory2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | LoanToken2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | PoolFactory | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | TrueFiPool2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | TrueLender2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | CurveYearnStrategy | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | Liquidator2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | LoanFactory2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | LoanToken2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | PoolFactory | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | TrueFiPool2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | TrueLender2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | LoanToken | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueLender | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueRatingAgency | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueFiPool | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueFarm | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | LinearTrueDistributor | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | ArbitraryDistributor | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | LoanFactory | unmatched — not counted | — | mentioned in recommendation for TrueLender | no |
| truefi_audit_slowmist_november_21_2020.pdf | ArbitraryDistributor | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | LinearTrueDistributor | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | ERC20 | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | Ownable | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | Initializable | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | LoanToken | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueFarm | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | LoanFactory | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueFiPool | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueLender | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueRatingAgency | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | UpgradeableERC20 | unmatched — not counted | — | referenced in enhancement suggestions | no |
| truefi_audit_slowmist_november_21_2020.pdf | UpgradeableOwnable | unmatched — not counted | — | referenced in enhancement suggestions | no |
| 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | mentioned in bug descriptions | no |
| 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | mentioned in bug descriptions | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IPortfolio | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IDebtInstrument | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IManagedPortfolio | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IBulletLoans | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ILenderVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IFinancialInstrument | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IERC20WithDecimals | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IBorrowerSignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | SignatureOnlyLenderVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | SignatureValidator | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | BorrowerSignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | Manageable | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | InitializableManageable | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolioFactory | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ProxyWrapper | unmatched — not counted | — | listed in scope table | no |
| 1.md | BulletLoans | unmatched — not counted | — | listed in finding header | no |
| 2.md | BulletLoans | unmatched — not counted | — | listed in finding header | no |
| 3.md | ManagedPortfolio | unmatched — not counted | — | listed in finding header | no |
| 4.md | ManagedPortfolio | unmatched — not counted | — | listed in finding header | no |
| 4.md | BulletLoans | unmatched — not counted | — | listed in finding header | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | mentioned in findings table | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | mentioned in findings table | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | SignatureValidator | unmatched — not counted | — | mentioned in findings table | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | BorrowerSignatureVerifier | unmatched — not counted | — | mentioned in findings table | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | BorrowerSignatureVerifier | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | SignatureOnlyLenderVerifier | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | InitializableManageable | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | Manageable | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ProxyWrapper | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCreditFactory | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | NonUsOnlyDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | TransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | WhitelistDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | WithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IManageable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | InitializableManageable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | Manageable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | StkClaimableContract | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | AllowedDelegatesList | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DaoGovernor | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DaoToken | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | StkTruToken | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | VoteToken | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DSRegistryServiceInterface | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IAutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IBasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IDebtInstrument | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IERC20WithDecimals | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IFinancialInstrument | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IFixedInterestOnlyLoans | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IFlexiblePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | ITransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | ProxyWrapper | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DepositStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FixedInterestOnlyLoansValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | MultiInstrumentValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | NonUsOnlyDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | PortfolioClosedWithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | TransferAgentWhitelistDepositStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | TransferAgentWhitelistTransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | TransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | WhitelistDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | WithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | Multicall2 | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCreditFactory | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FixedInterestOnlyLoans | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FixedInterestOnlyLoans | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCreditFactory | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | DaoGovernor | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | DaoToken | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | StkTruToken | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | VoteToken | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | DepositStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FIOLValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | LiquidValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | MultiInstrumentValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | NonUsOnlyDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | TransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | WhitelistDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | WithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | ProxyStorage | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | StkClaimableContract | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | Manageable | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | InitializableManageable | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 27
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 220 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=8, medium=3
- Match method counts: n/a

Zero-match audit list:

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf
- [6669] 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf
- [6670] 20211203 CertiK Audit Final Report.pdf
- [6671] REP-Trusttoken-#2-2021-09-13.pdf
- [6672] truefi_2.0_audit_ben_cosman_2_17_2021.pdf
- [6673] truefi_2.0_audit_ethworks_2_17_2021.pdf
- [6674] truefi_3.0_audit_ben_cosman_5_19_2021.pdf
- [6675] truefi_3.0_audit_certik_5_12_2021.pdf
- [6676] truefi_3.0_audit_certik_5_20_2021.pdf
- [6677] truefi_audit_jakub_wojciechowski_november_22_2020.pdf
- [6678] truefi_audit_slowmist_november_21_2020.pdf
- [6679] 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf
- [6680] 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf
- [6681] 1.md
- [6682] 2.md
- [6683] 3.md
- [6684] 4.md
- [6685] 5.md
- [6686] 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf
- [6688] 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf
- [6689] README.md
- [6690] 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf
- [6691] 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf
- [6692] 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf
- [15468] 2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory)
- [15469] 2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory)
- [15470] 2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
