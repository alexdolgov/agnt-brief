# Agentic Audit Brief: Goldfinch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Goldfinch (`goldfinch`)
- Website: [https://goldfinch.finance](https://goldfinch.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, base-sepolia, chain-31337, ethereum
- Contract surface: 171 unique implementations (180 raw deployments)
- Coverage basis: 0/28 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,460,568.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Goldfinch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across base, base-sepolia, chain-31337, ethereum. Structural roles: 24 core, 4 supporting. 24 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: core (24), supporting (4)
- Contract kinds: contract (27), unclassified (1)
- Detected standards: erc165 (10), accesscontrol (9), erc1967proxy (9), ownable (9), pausable (9), erc20 (1)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (7), uniswap (1)
- Upgradeable-pattern rows: 24

## Fork Analysis

0 of 80 contracts are derived from known codebases. 80 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x100656...411066`, chain 1)
- UnnamedContract (`0x18d53b...74dc3e`, chain 1)
- UnnamedContract (`0x2cc8bf...545a61`, chain 1)
- UnnamedContract (`0x361212...5a5f28`, chain 1)
- UnnamedContract (`0x384860...94d0a6`, chain 1)
- UnnamedContract (`0x3d0c92...7cb8fe`, chain 1)
- UnnamedContract (`0x3d62ae...454de0`, chain 1)
- UnnamedContract (`0x412d7d...79bd4c`, chain 1)
- UnnamedContract (`0x41bbc5...11e7e0`, chain 1)
- UnnamedContract (`0x4e5d9b...508838`, chain 1)
- UnnamedContract (`0x5ccfa5...9ea7a1`, chain 1)
- UnnamedContract (`0x68008e...e38830`, chain 1)
- UnnamedContract (`0x6a445e...f700bf`, chain 1)
- UnnamedContract (`0x6ce937...dfe008`, chain 1)
- UnnamedContract (`0x7bcb28...efb6a7`, chain 1)
- UnnamedContract (`0x8481a6...31f822`, chain 1)
- UnnamedContract (`0x84ac02...787c3d`, chain 1)
- UnnamedContract (`0x86db00...bf7197`, chain 1)
- UnnamedContract (`0x8783e2...c70657`, chain 1)
- UnnamedContract (`0x892880...4d2b44`, chain 1)
- UnnamedContract (`0x95afe0...9384a8`, chain 1)
- UnnamedContract (`0x978911...31a22e`, chain 1)
- UnnamedContract (`0x9a16a9...8ae79b`, chain 1)
- UnnamedContract (`0xaa425f...98fda1`, chain 1)
- UnnamedContract (`0xb01b31...d39e75`, chain 1)
- UnnamedContract (`0xb7bee8...abe9c5`, chain 1)
- UnnamedContract (`0xba0439...5cbb41`, chain 1)
- UnnamedContract (`0xba7b8e...b6dc21`, chain 1)
- UnnamedContract (`0xbc1081...98a077`, chain 1)
- UnnamedContract (`0xbd431e...628ec5`, chain 1)
- UnnamedContract (`0xc35c28...42b8ed`, chain 1)
- UnnamedContract (`0xc84d4a...2bd523`, chain 1)
- UnnamedContract (`0xd16bc9...674c83`, chain 1)
- UnnamedContract (`0xd1a2de...caa00e`, chain 1)
- UnnamedContract (`0xd20508...bd87f9`, chain 1)
- UnnamedContract (`0xd52dc1...007220`, chain 1)
- UnnamedContract (`0xe1635f...fdd7d6`, chain 1)
- UnnamedContract (`0xe75b8e...0aabdb`, chain 1)
- UnnamedContract (`0xe7ab44...d84dfa`, chain 1)
- UnnamedContract (`0xe8e780...b090b9`, chain 1)
- UnnamedContract (`0xe9c893...1eee3c`, chain 1)
- UnnamedContract (`0xec9470...5cb8c2`, chain 1)
- UnnamedContract (`0xf228bf...f1ed6b`, chain 1)
- UnnamedContract (`0xfd6ff3...be60c3`, chain 1)
- UnnamedContract (`0x392389...b0bea9`, chain 8453)
- UnnamedContract (`0x3ab231...78eef4`, chain 8453)
- UnnamedContract (`0x508c74...c3b6aa`, chain 8453)
- UnnamedContract (`0x81787f...87069b`, chain 8453)
- UnnamedContract (`0x9a79ea...6f95d1`, chain 8453)
- UnnamedContract (`0xcbbd93...69ecf4`, chain 8453)
- UnnamedContract (`0xcdb60d...990cf7`, chain 8453)
- UnnamedContract (`0xe367b7...cfdef4`, chain 8453)
- AccessControl (`0x134d8e...240fe6`, chain 1)
- BackerMerkleDirectDistributor (`0x3188c8...695ecb`, chain 1)
- BackerMerkleDistributor (`0xc442b5...dd0f82`, chain 1)
- CallableLoan (`0x384fb6...ef5205`, chain 1)
- CallableLoanImplementationRepository (`0x775195...de81de`, chain 1)
- CapitalLedger (`0x94e0bc...7c5029`, chain 1)
- CommunityRewards (`0x0cd73c...af3460`, chain 1)
- ConfigOptions (`0x19bfbf...066b71`, chain 1)
- Context (`0x8fd960...8436c5`, chain 1)
- DynamicLeverageRatioStrategy (`0x97b3f9...f0f253`, chain 1)
- ERC20Splitter (`0xe2da0c...0718a4`, chain 1)
- FixedLeverageRatioStrategy (`0x71cff4...dc901a`, chain 1)
- GFI (`0xdab396...008d2b`, chain 1)
- GFILedger (`0x8d0c4e...c135e0`, chain 1)
- GoldfinchFactory (`0x7954d6...9c063e`, chain 1)
- MembershipCollector (`0x49eab7...989d63`, chain 1)
- MembershipDirector (`0x7e9140...2ced21`, chain 1)
- MembershipLedger (`0x408332...90476c`, chain 1)
- MembershipVault (`0x375b90...bf9c18`, chain 1)
- MerkleDirectDistributor (`0x7766e8...9a8c22`, chain 1)
- MerkleDistributor (`0x0f306e...972d9a`, chain 1)
- MigratedTranchedPool (`0x187e45...423869`, chain 1)
- PoolTokens (`0x576866...bd01df`, chain 1)
- Router (`0x0a540c...ecffe2`, chain 1)
- TranchedPool (`0x1bb013...56643e`, chain 1)
- TranchedPoolImplementationRepository (`0x84b43e...6f943a`, chain 1)
- V2Migrator (`0xd44fe8...d506a5`, chain 1)
- Zapper (`0xd7b528...91a521`, chain 1)

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 71/153 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/28 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 71 own, 81 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 71 of 171 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 171
- Raw deployments: 180
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| AccessControl | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387040 | 2 deployments: ethereum `0x134d8e...240fe6`; ethereum `0x8783e2...c70657` | ⚠️ Unaudited |
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3483db...4d0bfa` | ⚠️ Unaudited |
| BackerMerkleDirectDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386867 | `0x3188c8...695ecb` | ⚠️ Unaudited |
| BackerMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386918 | `0xc442b5...dd0f82` | ⚠️ Unaudited |
| BackerRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cbf9...a7863a` | ⚠️ Unaudited |
| Borrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae260...fd4b07` | ⚠️ Unaudited |
| CallableLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386870 | `0x384fb6...ef5205` | ⚠️ Unaudited |
| CallableLoanImplementationRepository | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387041 | 2 deployments: ethereum `0x775195...de81de`; ethereum `0x892880...4d2b44` | ⚠️ Unaudited |
| CapitalLedger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387043 | 2 deployments: ethereum `0x94e0bc...7c5029`; ethereum `0xbd431e...628ec5` | ⚠️ Unaudited |
| CommunityRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387037 | 2 deployments: ethereum `0x0cd73c...af3460`; ethereum `0x2cc8bf...545a61` | ⚠️ Unaudited |
| ConfigOptions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386865 | `0x19bfbf...066b71` | ⚠️ Unaudited |
| Context | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386894 | `0x8fd960...8436c5` | ⚠️ Unaudited |
| CreditDesk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a6b0e...adfafc` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df1e7...d995d8` | ⚠️ Unaudited |
| CreditLineFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3060f3...33062c` | ⚠️ Unaudited |
| DynamicLeverageRatioStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386901 | `0x97b3f9...f0f253` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02cd34...23325d` | ⚠️ Unaudited |
| ERC20Splitter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387044 | 2 deployments: ethereum `0xe2da0c...0718a4`; ethereum `0xe7ab44...d84dfa` | ⚠️ Unaudited |
| Fidu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090868...dd1748` | ⚠️ Unaudited |
| FixedLeverageRatioStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386880 | `0x71cff4...dc901a` | ⚠️ Unaudited |
| GFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386933 | `0xdab396...008d2b` | ⚠️ Unaudited |
| GFILedger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386892 | `0x8d0c4e...c135e0` | ⚠️ Unaudited |
| Go | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063751...fe30c9` | ⚠️ Unaudited |
| GoldfinchConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076a0d...45a273` | ⚠️ Unaudited |
| GoldfinchFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386881 | `0x7954d6...9c063e` | ⚠️ Unaudited |
| GoldfinchPrime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b29d7...5c2bcd` | ⚠️ Unaudited |
| MembershipCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386874 | `0x49eab7...989d63` | ⚠️ Unaudited |
| MembershipDirector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386883 | `0x7e9140...2ced21` | ⚠️ Unaudited |
| MembershipLedger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386873 | `0x408332...90476c` | ⚠️ Unaudited |
| MembershipOrchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0296fd...4ed403` | ⚠️ Unaudited |
| MembershipVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387042 | 2 deployments: ethereum `0x375b90...bf9c18`; ethereum `0xba7b8e...b6dc21` | ⚠️ Unaudited |
| MerkleDirectDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387045 | 2 deployments: ethereum `0x7766e8...9a8c22`; ethereum `0xec9470...5cb8c2` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386861 | `0x0f306e...972d9a` | ⚠️ Unaudited |
| MigratedTranchedPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386863 | `0x187e45...423869` | ⚠️ Unaudited |
| MonthlyScheduleRepo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7423...fb947f` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a0a9...06a814` | ⚠️ Unaudited |
| PoolTokens | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387038 | 2 deployments: ethereum `0x412d7d...79bd4c`; ethereum `0x576866...bd01df` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386860 | `0x0a540c...ecffe2` | ⚠️ Unaudited |
| SeniorPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422bf4...d9beb7` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a36b...8da1b2` | ⚠️ Unaudited |
| TestForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c3f1...4a77fe` | ⚠️ Unaudited |
| TranchedPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386866 | `0x1bb013...56643e` | ⚠️ Unaudited |
| TranchedPoolImplementationRepository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386889 | `0x84b43e...6f943a` | ⚠️ Unaudited |
| TranchingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01bfa2...70b649` | ⚠️ Unaudited |
| UniqueIdentity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da94d...95717c` | ⚠️ Unaudited |
| V2Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386929 | `0xd44fe8...d506a5` | ⚠️ Unaudited |
| Zapper | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387039 | 2 deployments: ethereum `0x41bbc5...11e7e0`; ethereum `0xd7b528...91a521` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (124)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386862 | `0x100656...411066` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386864 | `0x18d53b...74dc3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386868 | `0x361212...5a5f28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386869 | `0x384860...94d0a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386871 | `0x3d0c92...7cb8fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386872 | `0x3d62ae...454de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386875 | `0x4e5d9b...508838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386876 | `0x5ccfa5...9ea7a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386877 | `0x68008e...e38830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386878 | `0x6a445e...f700bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386879 | `0x6ce937...dfe008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386882 | `0x7bcb28...efb6a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386885 | `0x8481a6...31f822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386887 | `0x84ac02...787c3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386890 | `0x86db00...bf7197` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386896 | `0x95afe0...9384a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386899 | `0x978911...31a22e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386903 | `0x9a16a9...8ae79b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386904 | `0xaa425f...98fda1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386906 | `0xb01b31...d39e75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386909 | `0xb7bee8...abe9c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386911 | `0xba0439...5cbb41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386913 | `0xbc1081...98a077` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386915 | `0xc35c28...42b8ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386920 | `0xc84d4a...2bd523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386922 | `0xd16bc9...674c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386924 | `0xd1a2de...caa00e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386927 | `0xd20508...bd87f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386931 | `0xd52dc1...007220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386935 | `0xe1635f...fdd7d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386937 | `0xe75b8e...0aabdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386939 | `0xe8e780...b090b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386941 | `0xe9c893...1eee3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386943 | `0xf228bf...f1ed6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386945 | `0xfd6ff3...be60c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387021 | `0x392389...b0bea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387022 | `0x3ab231...78eef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387023 | `0x508c74...c3b6aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387024 | `0x81787f...87069b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387025 | `0x9a79ea...6f95d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387026 | `0xcbbd93...69ecf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387027 | `0xcdb60d...990cf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387028 | `0xe367b7...cfdef4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386947 | `0x016587...42eb8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386948 | `0x05aa22...6aa555` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386949 | `0x093e8f...187bed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386950 | `0x0afdac...e7c9c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386951 | `0x0b48af...5bad52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386952 | `0x0cf17d...725f65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386953 | `0x0d4ff7...635942` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386954 | `0x0f5d1e...0a6afe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386955 | `0x1275d0...882487` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386956 | `0x130a46...190e90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386957 | `0x17c8b7...c8caf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386958 | `0x199c27...82cad1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386959 | `0x1a6a3e...9ba4e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386960 | `0x1d99a3...77ecd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386961 | `0x1dbdba...53b503` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386962 | `0x1e2f44...29c770` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386963 | `0x20fbd4...a312ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386964 | `0x2279b7...d2ebe6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386965 | `0x23d351...219a1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386966 | `0x2de080...fdf16d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386967 | `0x2fc631...84abab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386968 | `0x34ee84...a489a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386969 | `0x35d2f5...9fedb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386970 | `0x381445...edbf7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386971 | `0x3c705d...1a4b7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386972 | `0x446e76...48bf62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386973 | `0x49fcbc...7a0ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386974 | `0x505d59...20d742` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386975 | `0x5370f7...ec9cc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386976 | `0x55cb3b...e3b06a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386977 | `0x59f2f1...3eb8d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386978 | `0x5c7c90...916f6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386979 | `0x5fbdb2...180aa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386980 | `0x5fc8d3...875707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386981 | `0x63cf2c...45259d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386982 | `0x677df0...6d8df6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386983 | `0x712516...54b03e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386984 | `0x71c959...43292e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386985 | `0x7290f7...e90d3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386986 | `0x73eccd...166c1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386987 | `0x7798a4...055413` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386988 | `0x842271...57360d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386989 | `0x846413...c318bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386990 | `0x85c5dd...49e248` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386991 | `0x8613a4...51bf2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386992 | `0x8990c5...a17d61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386993 | `0x8a7916...fdc318` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386994 | `0x90118d...810d2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386995 | `0x9fe467...7fa6e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386996 | `0xa513e6...d5c853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386997 | `0xa82ed5...65da8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386998 | `0xa85b02...df89de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386999 | `0xad5d57...9cc46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387000 | `0xafe1b5...65d44b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387001 | `0xba3e08...adca30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387002 | `0xbe241d...2f7603` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387003 | `0xc63d2a...5e8544` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387004 | `0xc6ba8c...62edd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387005 | `0xc76a71...d12193` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387006 | `0xca03dc...c00d44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387007 | `0xcec91d...4e7f2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387008 | `0xd499f5...16b6e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387009 | `0xdadd11...061dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387010 | `0xdc64a1...0cf6c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387011 | `0xddeec1...a60261` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387012 | `0xe0b393...ca0166` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387013 | `0xe4f89f...f0a736` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387014 | `0xe5bd5b...c2ea28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387015 | `0xe6b98f...eb8367` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387016 | `0xe7f172...3f0512` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387017 | `0xed1754...a3c3c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387018 | `0xf69e1d...31cfeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387019 | `0xf818a7...24e46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387020 | `0xfbab4a...7372dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387029 | `0x11c64c...373a73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387030 | `0x27ad05...04fef1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387031 | `0x392389...b0bea9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387032 | `0x508c74...c3b6aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387033 | `0x81787f...87069b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387034 | `0x8ee5a4...252a75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387035 | `0x9a79ea...6f95d1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dev.goldfinch.finance/docs/security/audit-reports](https://dev.goldfinch.finance/docs/security/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20718] dev.goldfinch.finance/docs/security/audit-reports — no match: The text is a navigation page listing audit reports by version, but does not contain any contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x134d8e...240fe6` | AccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3188c8...695ecb` | BackerMerkleDirectDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc442b5...dd0f82` | BackerMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x384fb6...ef5205` | CallableLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x775195...de81de` | CallableLoanImplementationRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94e0bc...7c5029` | CapitalLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cd73c...af3460` | CommunityRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19bfbf...066b71` | ConfigOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8fd960...8436c5` | Context | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97b3f9...f0f253` | DynamicLeverageRatioStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2da0c...0718a4` | ERC20Splitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71cff4...dc901a` | FixedLeverageRatioStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdab396...008d2b` | GFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d0c4e...c135e0` | GFILedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7954d6...9c063e` | GoldfinchFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49eab7...989d63` | MembershipCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e9140...2ced21` | MembershipDirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x408332...90476c` | MembershipLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x375b90...bf9c18` | MembershipVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7766e8...9a8c22` | MerkleDirectDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f306e...972d9a` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x187e45...423869` | MigratedTranchedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a540c...ecffe2` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bb013...56643e` | TranchedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84b43e...6f943a` | TranchedPoolImplementationRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd44fe8...d506a5` | V2Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 126 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [20718] dev.goldfinch.finance/docs/security/audit-reports

Fork inheritance lineage and inherited audits are included when available.
