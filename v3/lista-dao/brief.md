# Agentic Audit Brief: Lista DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 82 (4 matched; 78 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lista DAO (`lista-dao`)
- Website: [https://lista.org/](https://lista.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 196 unique implementations (197 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,288,434,262.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lista DAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2ed866ca9c33bf695c78af222d61bd4d9cb558d3`, chain 56)
- ListaToken (`0xfceb31a79f71ac9cbdcf853519c1b12d379edc46`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 194 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 43 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 2 of 196 unique; 194 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/195
- Verified + Unaudited implementations: 194
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 196
- Raw deployments: 197
- Audits discovered: 81 (81 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 40 fresh, 23 aging, 18 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 0.5% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ListaToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-388512 | `0xfceb31a79f71ac9cbdcf853519c1b12d379edc46` | ✅ Audited |

### ⚠️ Verified + Unaudited (194)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35718b08323e9a466b7378f91af63f9c8f05617d` | ⚠️ Unaudited |
| AsBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13542f7e49e9852e5c333beaf8617c4cb00704d` | ⚠️ Unaudited |
| AsterRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fbf35f9da8c5c1e16247afa02770a01f4f68705` | ⚠️ Unaudited |
| AsterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000ae314e2a2172a039b26378814c252734f556a` | ⚠️ Unaudited |
| AsterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f97a18f317abe825cf1023ff61452e4d387a12b` | ⚠️ Unaudited |
| AtlasOracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x095989a71792ccf2ae5f34401fdede71461dca8b` | ⚠️ Unaudited |
| AutoRefunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d16591537f939a341ca2a221781586b15f46cea` | ⚠️ Unaudited |
| BatchManagementUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10548a32ad10ba55b1bbf082a1ac5e912036e00f` | ⚠️ Unaudited |
| BnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd74508ab3bdbedaa6589f913e0f89d98b2ad2754` | ⚠️ Unaudited |
| BNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2def76abf07ee5b1b12865578f7bd9514bafb35d` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7` | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x262dd5e34d03605e6c7f76705497349e74abbd54` | ⚠️ Unaudited |
| BrokerLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb5b91e24fed296feec2bec8d09b653e327d8a7` | ⚠️ Unaudited |
| CDPLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5` | ⚠️ Unaudited |
| CerosETHRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaff578d16c9b0fc3a668408517bec1f9a2fb0c1` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397a486183cb6608a3ccd1c74b6a7f024439004b` | ⚠️ Unaudited |
| clisBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x061178fdfc399000c8023043f0f5b9578280d195` | ⚠️ Unaudited |
| clisETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f48754e85f2d24361741885098453e2077181f` | ⚠️ Unaudited |
| ClisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2544be623743897b06d57707cf3016cccfd355a8` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57371fb9311a7a0d6c712e9ee154dc8a718490f6` | ⚠️ Unaudited |
| CreditBrokerInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ea8ff10d3d9e487570011c6c107a44aac4af93` | ⚠️ Unaudited |
| CreditBrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315b29b9e12b0c93f610a46c8995684db7c4c1a4` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aeb6cd202b8482a71215c844341ea1f3f6571f0` | ⚠️ Unaudited |
| EarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1` | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07e1e05274fee68d10484adc8405786c2c9cf40d` | ⚠️ Unaudited |
| EmissionVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d52bcbf45c72f5fb8441959622c7e5dd4693736` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01ccc0f0ae8907bd3efa947b2ce841082bcce29f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x091e6ed7794d74b73081d32cab59fa47ff15418d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x098a0c419915bffa99983abee5d960c193cc9bfb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19c3295fd1c1956663b1a784e87eea3c02facf2b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1a438f71bc56514f47142c96a8f580ab5767ac17` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1afa1589a634be568d7872dcf1bbe6f79e11fad5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f819b91e29e3d28ca63f8370a0b367b7c73f7d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f9831626ce85909794eeaa5c35bf34db3eb52d8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2073ddce6d268ebbfc541d7f5d418de9ca9d9f1f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2725d7336027773d7a958e10819a923dcd65aa57`; bsc `0x946e5c3d32d33128543b785a446b81eedbe74c05` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2959c423bfe5cc6e41516599d982a29c0773f11a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b3e5b695722756130a553e9bb5a45e16d21d0a4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2bb41616323994b4ada381ea40cb2d135f7b2462` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4837fb5c9c84524cc0c93f066c1ac708a758e5fd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5021319c1b8245e0680f19b7aa84a0f0f3d91aa9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x80e663ba9ef857d3f377f814c2f3d00187b2641e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x86e09296aeda129d3b0b4c134b3202b84cd8945c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8ebfa9e687af71ec2e87a0380f73b9f57fdf3ec0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x96146ef4c6e1c42e05439ab037fc3d60188959a2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xaa57f36dd5ef2ac471863ec46277f976f272ec0c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb4678c3e8b49d2b95da48458f98805da193a8498` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe4153eb04417be05b8d6b2222e4cdd8ae674ee76` | ⚠️ Unaudited |
| EthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4f67fb43180085ea26e348200027670eaf1e96` | ⚠️ Unaudited |
| ETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0218e1542f41e94c784998928f94e2789fbf77c4` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x209003905c94a67f766cbea529d2d5e1b3f7741b` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa16bb61c80b29f7458d677009b3b5f4b868e6ad9` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11` | ⚠️ Unaudited |
| IdleCollateralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39d0107635686e6613dcd08018520c2fd763fa3` | ⚠️ Unaudited |
| IdleOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259ee9cb561dfb5dca010b29b57f12341ff8733` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9da64252015a36e595dc02e05bac65880a509e` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34f8345b9ec201f8ba6144516fc3a213aedc8141` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x383a3517c5d9259bcf43f4bf8612c6726b5b2130` | ⚠️ Unaudited |
| LendingBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x039c4a60c53ff684b5113f0303a91f1d5336bbe9` | ⚠️ Unaudited |
| LendingFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01e88f69c798adf75120f4972539ac77fd35e208` | ⚠️ Unaudited |
| LendingRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe004efc1753ef845628b95d16058af1a9f86fa21` | ⚠️ Unaudited |
| LendingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e49efd13693822507a8dfc0f9aa13ca14091959` | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11691e3235541daace55c419fbea5ff12282a504` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x534ae76dd9fccb0aa483f309b1a350d4f61973d0` | ⚠️ Unaudited |
| LisAster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4183b7045cac1b56bc9cb3e694d1f551a84314b7` | ⚠️ Unaudited |
| LisAsterDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c11b62fdabffa770cd14645305a0da7c2b55444` | ⚠️ Unaudited |
| LisAsterStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0a2d15ce64afa586fceca4e8156087b6e4c3eb` | ⚠️ Unaudited |
| ListaAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087b9843155597bd447088c4eccde485357d5089` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f4c128a811a0b0da2845634c736ff1d9f61d415` | ⚠️ Unaudited |
| ListaOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82f5bcd1473bda5794239d01073797093a413f02` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c56ccf0727bac9d08494603da5d2594229a7cc4` | ⚠️ Unaudited |
| ListaV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x081ce2e21d2a7e7563ba4a71304eb2378b53d133` | ⚠️ Unaudited |
| ListaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fee401a16837b8a8c6c8b9f8d88744b5e36e05c` | ⚠️ Unaudited |
| LisUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5bd9b192092517d60e90c9af17b69b134c4d7f8` | ⚠️ Unaudited |
| lisUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x989af6aa3db449e49f1b3210b8750446bed7c2c0` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0` | ⚠️ Unaudited |
| LpUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a23817c68a234425f7ebec215d4e8ea528802de` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bb76cd6a2a1ccf2ac2cff64072fed6d8a128e3` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x034f0ae5d952c2ffe4247d396010c50ce6929b37` | ⚠️ Unaudited |
| MerkleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7` | ⚠️ Unaudited |
| MockResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f14975179419c0982a5cabed783ed5a81ae6a43` | ⚠️ Unaudited |
| Moolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0af5cd9555bc52c34a5f7b20042109d0136bc34f` | ⚠️ Unaudited |
| MoolahVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e52472cc585f8e28322ca4536ebd7094431c610` | ⚠️ Unaudited |
| MoolahVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52` | ⚠️ Unaudited |
| mwBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3605c70f8512f6c257bbe144e365f1a564db95b1` | ⚠️ Unaudited |
| mXRPPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba7c9581c00b5629cbeb6d1074475a664b4ab3f` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7082528e908bfd0c42d2134fe7065457cfcfb755` | ⚠️ Unaudited |
| NpmImplDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0de3cd98e4cb0a17d647df7d54ce38920ae3a0e` | ⚠️ Unaudited |
| OracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00066f933bf16014143c284be85847a3a2e06fd4` | ⚠️ Unaudited |
| OracleCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41` | ⚠️ Unaudited |
| PancakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81159173185c411ed61f6eb332d1a653bb1c866b` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104e7b187a6455ebf79158a8d7140ea193d42058` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da4f7c6b5dc3c7b35fba746001542a4844b5606` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0998cd70b60ee5cf5a41a69d7d121d065d71941d` | ⚠️ Unaudited |
| PausableMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ce30a8d13d6d729708232aa415d7da46a4fa07b` | ⚠️ Unaudited |
| PublicLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2751568e40c24149d689524f8f9a70139ed4e544` | ⚠️ Unaudited |
| PufETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x303cb4c83f98d806d5a5c1190908540999efc61b` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdb46ba7b15ec01be368736bb7fe13ab209f4df` | ⚠️ Unaudited |
| RateCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a84315d6e14291dace3fbc62d24f52c3505c5de` | ⚠️ Unaudited |
| ResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe` | ⚠️ Unaudited |
| RewardHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0050e7d0ba04a7e80aa47d900241f48559e5742` | ⚠️ Unaudited |
| RWAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b116d1944e05348003479b517355b1ccee350eb` | ⚠️ Unaudited |
| RWAEarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505829773ebda34d6f627bb493cf993a1e357a33` | ⚠️ Unaudited |
| SafeGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b19bc6394246d4795d16ceee9edc76b4d11b96e` | ⚠️ Unaudited |
| SlisBnbDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9881cfce5a072a107dcce7fd24e2c99b857c7e12` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11474297387d096ae101a272ff6ad79b7280819b` | ⚠️ Unaudited |
| SlisBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125bcea7ae8ff45083e513faf4913a14bc1dc1a3` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aefec58e6339c663e80306e38ffebbae0820c70` | ⚠️ Unaudited |
| slisBNBx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f987fe1fd3597abcf95b8790351d00ff64c5aa` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64dbd29ab153e7cf8806fb635ef95285e16480c6` | ⚠️ Unaudited |
| SlisXAUE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2b8cc54e2151dd8c2633a0e80b50de5169af0a` | ⚠️ Unaudited |
| SmartProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d0b37dd3ff8e2ca557e91eea63cdf0cdd7b583` | ⚠️ Unaudited |
| SnBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf8dc8a33b60173693590bd867d571d88501cf81` | ⚠️ Unaudited |
| SnBnbYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1101ff0f0545f3e2ed54fd986814295356923dc3` | ⚠️ Unaudited |
| SnStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1144de70f02b516849486fa8fc8403637dbeb7dc` | ⚠️ Unaudited |
| SolvBTCBBNOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb35d0f744ddcd92763d37ab3c58716183a99055d` | ⚠️ Unaudited |
| SolvBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5342ff1ae0621be72c11ecb620a5cec0aa60042` | ⚠️ Unaudited |
| StableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63dc1c139a62dea7bcc7736f9465c283dac6378d` | ⚠️ Unaudited |
| StableSwapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c` | ⚠️ Unaudited |
| StableSwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126` | ⚠️ Unaudited |
| StableSwapPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c34920e01009b8970b2fecb3096b67869e1a767` | ⚠️ Unaudited |
| StableUsdtPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e64923a9c1dc94e2b746c5dc58abebd2d2e0b56` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c6fb65aa044bb8463068e30d1146beb08a4491` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0541eeef035709040728bedbfd7234298ba1806a` | ⚠️ Unaudited |
| StockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be38f5d3b84cec3854f9fc4a9930594fabce3d5` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ff473c2a10f7303230955a7fede931359ffb1` | ⚠️ Unaudited |
| StonePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6860a2e20d7b158aac422a4030648bf2655c4d8` | ⚠️ Unaudited |
| sUSD1PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54e8810cdde88f531485d2f04321a28e7db380b3` | ⚠️ Unaudited |
| sUSDePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7ccb0e6061d3a3bada5d97eedd252e39fa6d9b` | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1526249ef1501bb4207e1431c285ffc2e17c81c0` | ⚠️ Unaudited |
| sUSDXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7da003f123c48f42a2149bfff107ac5d531265e0` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x660c94cef2914b1235cc1e38b1699b4d48750c6e` | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308` | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc998f14f0692526824bfa3d299fd5cce04cee150` | ⚠️ Unaudited |
| ThenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcda44d50fa7a806372926e521e6dde34612c34b3` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d274a68393e8b8a2ccf19a2ce4ba3518735253` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01a6fcc74852088c72862c12c54f992720eb8281` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x031a6f543449d5fbf9c3e77f907043f7be7c1461` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x03db750d6212c6a0bca9258e8cb7cf46dfd63067` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05570c903a99f59e8f9913d4d628796bad7115c3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0ad764098ff68b100d0976a8bcf2294b67669caa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0aed860ca496600f6976219cb1acec435d7f4f3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x16c39b6ee97d3d92f570ad9403418e43ea0622a5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1b8b3ff07fefee784e3a5d208d34c12c6489d308` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227716e5f6c59f961e091d35345b16ce09f6c867` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x31677537685ebdf1b695eda46ec385845395f5dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x31d558b899461d6ea498c3c1664a150a19b87aaf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x420a16f03e7f623556ccee452d4caafe1fdde28b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x53c7024411e5d12c0b17d412943c3dd5939a2fb1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x81a62b329cc8939494d8613f614171a9955a46e8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9ba88e6b20041750fd4e6271fea455f5d44063cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb0b84d294e0c75a6abe60171b70edeb2efd14a1b` | ⚠️ Unaudited |
| uniBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150d8f804ebfd30202f59bc374301512e6bbb936` | ⚠️ Unaudited |
| Usd1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40d695986c4dd086c4e3a94392ab6c12781b39fa` | ⚠️ Unaudited |
| UsdfOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0709755a26b78ce8e1f4cab598ac7477858c4aa2` | ⚠️ Unaudited |
| USDTLpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9` | ⚠️ Unaudited |
| UsdtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d` | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d` | ⚠️ Unaudited |
| VaultAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eba9befd7e0ed7e41f0b644be2b2e3be48fc7c2` | ⚠️ Unaudited |
| VaultDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b1b172e2278a09d2b3bc116659d9d887573f6c` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15fc4e6417c74577dee27aaafb2e2c5806727ec2` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x765d17e43be4fa44b1cf75a01dc10ab95470274e` | ⚠️ Unaudited |
| VeListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0068358250759de8f50c83927c4a95847f4ccfd6` | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40c34acecfc302a1dc3c3592ecea52e17a0818fe` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321abb57a8355818211d460fc91ca9b79019caee` | ⚠️ Unaudited |
| VenusAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1d3a2f48f1c025f80e32a54a4000a73633cacef` | ⚠️ Unaudited |
| WBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3da9ee8965ef22228a103df4719a74b7384584` | ⚠️ Unaudited |
| WBETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0709755a26b78ce8e1f4cab598ac7477858c4aa2` | ⚠️ Unaudited |
| WeEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8075340ece10e74245d5f0e0e242500bafeee1` | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf86155a27b5cd958732a29829d80017727de4262` | ⚠️ Unaudited |
| wsrUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee2c5ad734e64c8a63105187a5b465c3176a46f` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07399c1ca8e3e2aadd3858376cd7adaa16ee04b0` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b0ae9841c68db46d8435760680134089ce166d` | ⚠️ Unaudited |
| wstUSRNewPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc3360252a4f94c1e0d93816ff1335440e324104` | ⚠️ Unaudited |
| wstUSRPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5439ec87e111b1ac0ae676dbf561cd66164722c8` | ⚠️ Unaudited |
| XAUEAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6a790e9e0c18c962cdb09ea62ccb0895270399` | ⚠️ Unaudited |
| XAUTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33101e788c18f11f87d53b91de2672c63618fa72` | ⚠️ Unaudited |
| xSolvBtcPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e` | ⚠️ Unaudited |
| yUSDFixedPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365` | ⚠️ Unaudited |
| yUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388511 | `0x2ed866ca9c33bf695c78af222d61bd4d9cb558d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bailsec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_SlisbnbProvider_Final_Report_241127.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_V3_LP_20Sept_2025.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_060824_AMO_DynamicDutyCalculator_v1.0-signed.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_OFT_190624.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_V3_LP_04Sept_2025.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [CertiK 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/CertiK_V3_LP_04Sept_2025.pdf) | CertiK | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [Certik_300522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Certik_300522.pdf) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [PeckShield_250522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_250522.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_300424.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_OFT_190624.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_slisBNBOracle_180424.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Salus_080824_AMO_DynamicDutyCalculator.pdf) | Salus | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [SlowMist_100522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SlowMist_100522.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [SlowMist_240522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SlowMist_240522.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Spearbit 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SpearBit_V3_LP_01Sept_2025.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Supremacy](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Supremacy-Audit-Report-ListaDAO_FlashBuy-v0.1.pdf) | Supremacy | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Veridise_270622.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Veridise_270622.pdf) | Veridise | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_emission_voting_211024.pdf) | PeckShield | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_lista_SlisbnbProvider-VotingIncentive_v1.0_signed_241127.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_lista_flashbuy_v1.0-signed.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_psm_241122.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_PSM_241122.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_emission_voting_211024.pdf) | PeckShield | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [salus_lista_emission_v1.0.pdf (also discovered via alternate URL)](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_lista_emission_v1.0.pdf) | Salus | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Bailsec-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-CollateralYieldVault-20260618.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec-Credit-Liquidation-20260303.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Credit-Liquidation-20260303.pdf) | Bailsec | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Credit-Loan-Jan2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Bailsec-FixedTerm-20260511.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260511.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bailsec-FixedTerm-20260628.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260628.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bailsec 2025-04](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-AuditReport-20250410.pdf) | CertiK | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Bailsec 2025-05](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Provider-20250522.pdf) | Bailsec | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-SlisBNBMinter-20260105.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bailsec 2025-11](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Smart-Collateral-and-Liquidators-20251124.pdf) | Bailsec | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-SmartPorvider-and-SlisBNBMinter-202601229.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bailsec 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Position-Migrator-20260318.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-YieldBuffer-AuditReport-20260611.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec__Fixed_Term_and_rate_Oct2025.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec__Fixed_Term_and_rate_Oct2025.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BlockSec 2025-04](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-AuditReport-20250410.pdf) | CertiK | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BlockSec 2025-05](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-Provider-20250522.pdf) | BlockSec | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BlockSec 2025-11](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-SlisBNBxMinter-AuditReport-20251101.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Cantina 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina-Position-Migrator-20260318.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Cantina 2026-02](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina_Credit_loan_04Feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Cantina_Fixed_Term_and_rate_12Nov2025.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina_Fixed_Term_and_rate_12Nov2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [CertiK-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-CollateralYieldVault-20260618.pdf) | CertiK | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CertiK-REP-Lista-Dao-PositionManager-20260410.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-REP-Lista-Dao-PositionManager-20260410.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [HashDit-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-CollateralYieldVault-20260618.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [HashDit-Idle-Market-20260526.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-Idle-Market-20260526.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [HashDit-ListaLending-BrokerBatchOps-20260526.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-ListaLending-BrokerBatchOps-20260526.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [HashDit-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-YieldBuffer-AuditReport-20260611.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [OpenZeppelin 2025-10](https://github.com/lista-dao/moolah/blob/master/docs/audits/OpenZeppelin-ListaLending-Smart-Collateral-20251020.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Spearbit 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Spearbit-Credit-Liquidation-20260303.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf) | WarRoom | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [cantina_PositionManager_20260410.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/cantina_PositionManager_20260410.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CertiK 2025-04](https://github.com/lista-dao/lista-token/blob/master/audits/certik-lp-mint-clisbnb-17apr25.pdf) | CertiK | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BlockSec 2025-04](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec-lp-mint-clisbnb-03apr25.pdf) | BlockSec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Lista-Dao_Lista-token_audit_report_2024-07-12.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/Lista-Dao_Lista-token_audit_report_2024-07-12.pdf) | Lista-Dao | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_velista_v2.0-signed.pdf) | BlockSec | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield](https://github.com/lista-dao/synclub-contracts/blob/master/audit/PeckShield-Audit-Report-ListaStakeManager-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [BlockSec](https://github.com/lista-dao/synclub-contracts/blob/master/audit/blocksec_listastakeManager_v1.0-signed.pdf) | BlockSec | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Bailsec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-lisAster-Audit-Report.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Sherlock](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Sherlock-lisAster-Audit-Report.pdf) | Sherlock | Contest | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield](https://github.com/lista-dao/lista-token/blob/master/audits/PeckShield-Audit-Report-ListaAirdrop-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Supremacy](https://github.com/lista-dao/lista-token/blob/master/audits/Supremacy-Audit-Report-ListaDAO_Airdrop-v1.0.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_ListaToken_v1.0-signed.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Supremacy](https://github.com/lista-dao/lista-token/blob/master/audits/Supremacy-Audit-Report-ListaDAO_token-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [PeckShield](https://github.com/lista-dao/lista-token/blob/master/audits/PeckShield-Audit-Report-Restake-v1.0.pdf) | PeckShield | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Salus](https://github.com/lista-dao/lista-token/blob/master/audits/Salus-Audit-Report-Restake-v1.0.pdf) | Salus | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Bailsec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-RWA-Audit%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/BlockSec-RWA-Audit%20Report.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf) | Bailsec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [260430-Cantina-Lista-V3-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260430-Cantina-Lista-V3-Final-Report.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 54 | high |
| [bailsec_lista_usdtLpdistributor_final_report.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/bailsec_lista_usdtLpdistributor_final_report.pdf) | Bailsec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_lista_emission_v1.0.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_emission_v1.0.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [blocksec_lista_usdtLpdistributor_v1.0-signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_usdtLpdistributor_v1.0-signed.pdf) | BlockSec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Bailsec-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-slisXAUE-Audit%20Report.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [CertiK-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/CertiK-slisXAUE-Audit%20Report.pdf) | CertiK | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [HashDit-AsterRewards-20260615.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/HashDit-AsterRewards-20260615.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [260430-HashDit-Lista-V3-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260430-HashDit-Lista-V3-Final-Report.pdf) | HashDit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [260515-Bailsec-Lista-V3-Differential-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260515-Bailsec-Lista-V3-Differential-Final-Report.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17490] Bailsec — no match: The report explicitly lists VotingIncentive and SlisBNBProvider in the scope section with GitHub URLs. BaseTokenProvider is audited as part of SlisBNBProvider. The audit date is inferred from 'November 2024' on the cover page, using the last day of the month.
- [17491] Bailsec 2025-09 — no match: All contracts explicitly listed in scope sections of the audit report.
- [17492] BlockSec — no match: Scope explicitly lists 5 files: Interaction.sol, DynamicDutyCalculator.sol, IDao.sol, IDynamicDutyCalculator.sol, FixedMath0x.sol. Audit date from cover page: August 06, 2024.
- [17493] BlockSec — no match: Scope section mentions 'ListaOFT' as target. Findings reference ListaOFT.sol, ListaOFTAdapter.sol, and TransferLimiter.sol.
- [17494] BlockSec 2025-09 — no match: Scope section 1.1 explicitly lists 11 contract files. Audit date is September 3, 2025 from the report header.
- [17495] CertiK 2025-09 — no match: Extracted from the appendix listing all files in scope. The audit date is from the cover page: 'CertiK Assessed on Sept 4th, 2025'.
- [17496] Certik_300522.pdf — no match: Extracted 32 contract names from the Audit Scope table and findings sections. Audit date found on cover page and delivery date.
- [17497] PeckShield_250522.pdf — no match: Contracts explicitly named as targets in findings. No file paths provided.
- [17498] PeckShield — no match: Scope explicitly lists API3Oracle.sol, BoundValidator.sol, ResilientOracle.sol, and OracleInterface.sol. Audit date is April 30, 2024 from cover page.
- [17499] PeckShield — matched: The report clearly states the audited contract is ListaToken (ERC20). ListaAirdrop is referenced in a finding as a target, but not explicitly listed in scope; however, it is part of the audit findings.
- [17500] PeckShield — no match: Only one contract, SlisBnbOracle, is in scope. The report explicitly states 'our audit only covers the following contract: contracts/oracle/SlisBnbOracle.sol'.
- [17501] Salus — no match: Three contracts explicitly listed in Appendix 1 - Files in Scope. Audit date from 'Dates Aug 08 2024' in ProjectDashboard.
- [17502] SlowMist_100522.pdf — no match: Contracts extracted from visibility tables and findings. Audit date is the end date of the audit period (2022.04.28 - 2022.05.10).
- [17503] SlowMist_240522.pdf — no match: Audit scope explicitly lists three contracts: CeVault.sol, CerosRouter.sol, HelioProvider.sol. Audit date is the end date of the audit period (2022.05.17 - 2022.05.24).
- [17504] Spearbit 2025-09 — no match: Contracts extracted from findings context and file paths mentioned in the report. No explicit scope table, but contracts are clearly audited targets.
- [17505] Supremacy — no match: Only one contract in scope: FlashBuy.sol. Audit date from cover page.
- [17506] Veridise_270622.pdf — no match: Extracted from audit report dated June 27, 2022. Scope includes Helio DAO, Ceros, and modified MakerDAO contracts.
- [17507] BlockSec — no match: Scope explicitly lists three files: ClisBNBLaunchPoolDistributor.sol, EmissionVoting.sol, ListaVault.sol. Audit date is October 16, 2024 from the report header.
- [17508] BlockSec — no match: Scope explicitly lists SlisBNBProvider and VotingIncentive. BaseTokenProvider is referenced in findings as a parent contract.
- [17509] BlockSec — no match: Only FlashBuy.sol is explicitly listed in scope. Other contracts mentioned (AuctionProxy, DEX) are noted as out of scope.
- [17510] BlockSec — no match: Scope section explicitly lists 5 contracts under contracts/psm/. Audit date is November 22, 2024 from the report header.
- [17511] Salus — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Dates Nov22 2024' in ProjectDashboard.
- [17512] Salus — no match: Three contracts in scope from Appendix 1. Audit date from 'Dates Oct212024' in ProjectDashboard.
- [17513] salus_lista_emission_v1.0.pdf — no match: Two contracts in scope: Interaction.sol and Jar.sol. Audit date from 'Dates Aug132024' in overview.
- [17514] Bailsec-CollateralYieldVault-20260618.pdf — no match: Audit report for Lista Dao Collateral Yield project. Scope includes CollateralYieldVault, SlisBNBProvider, SlisBNBXMinter, and RewardHarvester contracts. Date inferred from 'June 2026' on cover page.
- [17515] Bailsec-Credit-Liquidation-20260303.pdf — no match: The report explicitly lists MoolahOperateLib, CreditBroker, and Moolah as the contracts in scope. The date is given as 'February ‘2026' which is interpreted as February 2026, last day of month.
- [17516] Bailsec 2026-01 — no match: The report clearly lists five contracts in scope: CreditBroker, CreditBrokerMath, Moolah, CreditBrokerInterestRelayer, and CreditToken. The audit date is inferred from the cover page 'January ‘2026' which is interpreted as January 2026, and since no specific day is given, the last day of the month is used.
- [17517] Bailsec-FixedTerm-20260511.pdf — no match: The report is dated May 2026, so the audit date is set to the last day of that month.
- [17518] Bailsec-FixedTerm-20260628.pdf — no match: The report lists 7 contracts in scope: BrokerMath, BrokerInterestRelayer, LendingBroker, RateCalculator, PositionManager, BrokerLiquidator, and Moolah. The audit date is inferred from 'June ‘2026' in the header, interpreted as June 2026, with the last day of the month used.
- [17519] Bailsec 2025-04 — no match: Extracted 5 contracts from the audit report: Moolah, MoolahVault, Liquidator, VaultAllocator, InterestRateModel. The audit date is March 2025, interpreted as 2025-03-31.
- [17520] Bailsec 2025-05 — no match: Scope table lists four contracts: MoolahVault.sol, SlisBNBProvider.sol, BNBProvider.sol, and Moolah.sol. Audit date is March 2025, interpreted as end of month.
- [17521] Bailsec 2026-01 — no match: The report explicitly describes SlisBNBProvider and SlisBNBxMinter as the contracts in scope. The audit date is given as 'December ‘2025' which is interpreted as December 2025, last day of month.
- [17522] Bailsec 2025-11 — no match: The report covers two parts: Smart Collateral + Liquidators Extension. All contracts are explicitly listed in the scope sections. The date is inferred from 'September '2025' at the top, using the last day of the month.
- [17523] Bailsec 2026-01 — no match: Two contracts in scope: SlisBNBxMinter and SmartProvider. Audit date inferred from 'December ‘2025' as end of month.
- [17524] Bailsec 2026-03 — no match: Extracted 4 contracts from scope sections: PositionMigrator, Interaction, HelioProviderV2, SlisBNBProvider. Audit date inferred from 'March ‘2026' in header.
- [17525] Bailsec-YieldBuffer-AuditReport-20260611.pdf — no match: Four contracts explicitly listed in scope sections: BrokerInterestRelayer, CreditBrokerInterestRelayer, MoolahVault, BrokerInterestLockBuffer. Audit date inferred from 'June 2026' in header.
- [17526] Bailsec__Fixed_Term_and_rate_Oct2025.pdf — no match: Extracted contract names from report sections describing each contract. Date inferred from 'October 2025' in header, using last day of month.
- [17527] BlockSec 2025-04 — no match: Scope defined as src/ folder excluding mocks. Main contracts: Moolah, MoolahVault, VaultAllocator. Liquidator and InterestRateModel mentioned in notes but not in scope table.
- [17528] BlockSec 2025-05 — no match: Scope explicitly lists four files: MoolahVault.sol, Moolah.sol, SlisBNBProvider.sol, BNBProvider.sol. Audit date is May 12, 2025 from the report header.
- [17529] BlockSec 2025-11 — no match: Scope explicitly lists three contracts: SlisBNBProvider.sol, SmartProvider.sol, SlisBNBxMinter.sol. Audit date from cover page: December 1, 2025.
- [17530] Cantina 2026-03 — no match: Scope section explicitly lists four contracts with file paths. Audit date is March 24, 2026 from the cover page.
- [17531] Cantina 2026-02 — no match: Scope section explicitly lists all files under src/ with contract names extracted from file paths.
- [17532] Cantina_Fixed_Term_and_rate_12Nov2025.pdf — no match: Extracted contract names from findings context and file paths. Audit date from cover page.
- [17533] CertiK-CollateralYieldVault-20260618.pdf — no match: Two contracts in scope: CollateralYieldVault and RewardHarvester. Audit date from cover page and timeline.
- [17534] CertiK-REP-Lista-Dao-PositionManager-20260410.pdf — no match: Audit scope explicitly lists LendingBroker.sol and PositionManager.sol. BrokerMath and Moolah are also in scope as they are part of the codebase and referenced in findings.
- [17535] HashDit-CollateralYieldVault-20260618.pdf — no match: Scope table explicitly lists 6 contracts. Audit period ends June 15, 2026.
- [17536] HashDit-Idle-Market-20260526.pdf — no match: Extracted from Smart Contract List table and findings. Audit period end date used as audit date.
- [17537] HashDit-ListaLending-BrokerBatchOps-20260526.pdf — no match: Only one contract in scope: BatchManagementUtils.sol. Audit period ends May 26, 2027.
- [17538] HashDit-YieldBuffer-AuditReport-20260611.pdf — no match: Extracted 6 contracts from the scope table and findings. Audit period ends 11 Jun 2026.
- [17539] OpenZeppelin 2025-10 — no match: All contract names extracted from the Scope section and file paths. Audit date from cover page.
- [17540] Spearbit 2026-03 — no match: Scope section explicitly lists files under src/broker and src/moolah. Contract names extracted from file paths.
- [17541] WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf — no match: Only MoolahVaultManager.sol is explicitly listed in the scope table. Other contracts (MoolahVault, Moolah) are referenced but not in scope.
- [17542] cantina_PositionManager_20260410.pdf — no match: Scope section explicitly lists two contracts: LendingBroker and PositionManager. Audit date is April 10, 2026 from the cover page.
- [17543] CertiK 2025-04 — no match: Extracted 5 contracts from the audit scope table. Audit date from cover page.
- [17544] BlockSec 2025-04 — no match: Scope section explicitly lists 5 contracts with file paths. Audit date is April 3, 2025 from the report header.
- [17545] Lista-Dao_Lista-token_audit_report_2024-07-12.pdf — no match: Scope appendix lists two files: VeLista.sol and VeListaDistributor.sol. Audit date from 'Dates Jul 12 2024' in overview.
- [17546] BlockSec — no match: Scope explicitly lists VeLista.sol and VeListaDistributor.sol as the only files covered.
- [17547] PeckShield — no match: Only one contract, ListaStakeManager, is explicitly in scope. No file paths provided.
- [17548] BlockSec — no match: Only one contract file (ListaStakeManager.sol) is explicitly listed in the scope section.
- [17549] Bailsec — no match: The report explicitly lists five contracts in scope: LisAster, LisAsterStaking, AsterVault, LisAsterRewards, LisAsterDistributor. The audit date is inferred from 'May ‘2026' in the header, using the last day of the month.
- [17550] Sherlock — no match: Scope section lists 5 files under src/lisaster/. Audit date is May 7-May 10, 2026, so end date is May 10.
- [17551] PeckShield — matched: Scope table on page 4 lists 'Lista Airdrop' as target; findings also reference ListaToken. No file paths provided.
- [17552] Supremacy — no match: Two contracts in scope: ListaAirdrop and MerkleVerifier. Audit date from cover page.
- [17553] BlockSec — matched: Only one contract in scope: ListaToken.sol
- [17554] Supremacy — matched: Only one contract in scope: ListaToken.sol
- [17555] PeckShield — no match: Scope explicitly lists 10 contracts on page 4. Audit date is September 26, 2024 from cover page.
- [17556] Salus — no match: All contracts listed in Appendix 1 - Files in Scope. Audit dates: Sep 26 2024 (from ProjectDashboard Dates).
- [17557] Bailsec — no match: Three contracts explicitly in scope: RWAEarnPool, RWAAdapter, OTCManager. Date from cover page: October 2025.
- [17558] BlockSec — no match: Scope explicitly states 'src/rwa/*' directory. Three contracts identified: RWAEarnPool, RWAAdapter, OTCManager. Audit date from cover page.
- [17559] Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf — no match: Extracted three contracts from scope: VotingIncentive, BaseTokenProvider (audited in context of SlisBNBProvider), and SlisBNBProvider. Audit date inferred from 'November 2024' on cover page, using last day of month.
- [17560] 260430-Cantina-Lista-V3-Final-Report.pdf — no match: All contracts listed in the Scope section (Section 2.1) of the audit report. The audit date is from the cover page: April 30, 2026.
- [17561] bailsec_lista_usdtLpdistributor_final_report.pdf — no match: The report explicitly lists two contracts in scope: CommonListaDistributor and USDTLpListaDistributor. The audit date is December 2024, interpreted as 2024-12-31.
- [17562] blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf — no match: Extracted from report title and scope section. SlisBNBProvider and VotingIncentive are explicitly in scope. BaseTokenProvider is referenced in findings as a parent contract.
- [17563] blocksec_lista_emission_v1.0.pdf — no match: Extracted 16 contract names from the audit scope listing in Section 1.1. Audit date found on cover page.
- [17564] blocksec_lista_usdtLpdistributor_v1.0-signed.pdf — no match: Only one contract in scope: USDTLpListaDistributor. Audit date from cover page.
- [17566] Bailsec-slisXAUE-Audit Report.pdf — no match: Extracted three contracts from the audit report: slisXAUE, XAUEAdapter, XAUTStaking. The audit date is June 2026, interpreted as end of month.
- [17567] CertiK-slisXAUE-Audit Report.pdf — no match: Three contracts in scope: SlisXAUE.sol, XAUEAdapter.sol, XAUTStaking.sol. Audit date from cover page: 'CertiK Assessed on Jun 8th, 2026'.
- [17568] HashDit-AsterRewards-20260615.pdf — no match: Scope table lists AsterRewards.sol and IAsterRewards.sol; AsterVault.sol is referenced in findings as a related contract but not explicitly in scope table.
- [17569] hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf — no match: Only one contract in scope: AtlasOracleAdaptor.sol (misspelled as AltasOracleAdaptor in some places). Audit period ends 22 May 2026.
- [17570] 260430-HashDit-Lista-V3-Final-Report.pdf — no match: Scope table lists 'Core' and 'Periphery' as contract names, but findings reference specific files. Extracted all unique contract names from file paths mentioned in findings.
- [17571] 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf — no match: Extracted all contracts listed as NEW or MODIFIED in the scope section. The audit date is inferred from 'May ‘2026' in the header, using last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bailsec | VotingIncentive | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| Bailsec | BaseTokenProvider | unmatched — not counted | — | Mentioned as base contract for SlisBNBProvider and audited in correspondence with SlisBNBProvider. | no |
| Bailsec | SlisBNBProvider | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| Bailsec 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | Main contract described in scope section | no |
| Bailsec 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | LpUsd | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | Interaction | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | AuctionProxy | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | BaseTokenProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PumpBTCProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | mBTCProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | HelioETHProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | HelioProviderV2 | unmatched — not counted | — | Described in scope section | no |
| BlockSec | Interaction | unmatched — not counted | — | listed in scope | no |
| BlockSec | DynamicDutyCalculator | unmatched — not counted | — | listed in scope | no |
| BlockSec | IDao | unmatched — not counted | — | listed in scope | no |
| BlockSec | IDynamicDutyCalculator | unmatched — not counted | — | listed in scope | no |
| BlockSec | FixedMath0x | unmatched — not counted | — | listed in scope | no |
| BlockSec | ListaOFT | unmatched — not counted | — | mentioned in findings and scope | no |
| BlockSec | ListaOFTAdapter | unmatched — not counted | — | mentioned in findings | no |
| BlockSec | TransferLimiter | unmatched — not counted | — | mentioned in findings | no |
| BlockSec 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | LpUsd | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | BaseTokenProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PumpBTCProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | mBTCProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | AuctionProxy | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | Interaction | unmatched — not counted | — | listed in scope section 1.1 | no |
| CertiK 2025-09 | Interaction | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | AuctionProxy | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BaseTokenProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | API3Oracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | AsUsdfOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BBtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BusdOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | EthOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | EzEthOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | FdUsdOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PumpBtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PythOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | SlisBnbOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | SolvBTCBBNOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | SolvBtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | StoneOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | UsdfOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | UsdtOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | WBETHOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | asBnbOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mBTCOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mCAKEOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mwBETHOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | sUsdxOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | wstETHOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | vow | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | jug | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | join | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | jar | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | dog | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | clip | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | spot | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | vat | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mBTCProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PumpBTCProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | LisUSD | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | LpUsd | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | DynamicDutyCalculator | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BnbOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | HelioOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | ResilientOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | Usd1Oracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | WeEthOracle | unmatched — not counted | — | listed in scope appendix | no |
| Certik_300522.pdf | DssCdpManager | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | usb | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | clip | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | vat | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | CeToken | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | aBNBc | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | flap | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | ICerosRouter | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | mBNB | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | hMath | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | CeVault | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IVault | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | ICertToken | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | jug | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IHelioProvider | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | jar | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | join | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | HelioProvider | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | abaci | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | spot | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | pot | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IDex | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | CerosRouter | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | BnbOracle | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | dog | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | HelioToken | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | vow | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | DAOInteraction | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IDao | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | flop | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | HelioRewards | unmatched — not counted | — | listed in scope table | no |
| PeckShield_250522.pdf | HelioRewards | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield_250522.pdf | DAOInteraction | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield_250522.pdf | Jar | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield_250522.pdf | CerosRouter | unmatched — not counted | — | Target in findings PVE-007, PVE-008 | no |
| PeckShield | API3Oracle | unmatched — not counted | — | listed in scope table | no |
| PeckShield | BoundValidator | unmatched — not counted | — | listed in scope table | no |
| PeckShield | ResilientOracle | unmatched — not counted | — | listed in scope table | no |
| PeckShield | OracleInterface | unmatched — not counted | — | listed in scope table | no |
| PeckShield | ListaToken | own contract | ListaToken (selected) `0xfceb31a79f71ac9cbdcf853519c1b12d379edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield | ListaAirdrop | unmatched — not counted | — | Mentioned in finding PVE-001 as target | no |
| PeckShield | SlisBnbOracle | unmatched — not counted | — | listed in scope table and referenced throughout report | no |
| Salus | Interaction | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | DynamicDutyCalculator | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | FixedMath0x | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| SlowMist_100522.pdf | DAOInteraction | unmatched — not counted | — | listed in scope and findings | no |
| SlowMist_100522.pdf | Clipper | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Dog | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | DssCdpManager | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | GemJoin | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | UsbJoin | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Jug | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | mBNB | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Pot | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Spotter | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Usb | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Vat | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Vow | unmatched — not counted | — | visibility table in report | no |
| SlowMist_240522.pdf | CeVault | unmatched — not counted | — | listed in scope | no |
| SlowMist_240522.pdf | CerosRouter | unmatched — not counted | — | listed in scope | no |
| SlowMist_240522.pdf | HelioProvider | unmatched — not counted | — | listed in scope | no |
| Spearbit 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | BaseTokenProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | mBTCProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PumpBTCProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | MasterChefV3 | unmatched — not counted | — | Listed in scope and findings context | no |
| Supremacy | FlashBuy | unmatched — not counted | — | listed in scope table | no |
| Veridise_270622.pdf | Interaction | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | HelioRewards | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | AuctionProxy | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | HelioProvider | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | CerosRouter | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | CeVault | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | CeToken | unmatched — not counted | — | mentioned in findings | no |
| Veridise_270622.pdf | usb | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | vat | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | jug | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | dog | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | clip | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | vow | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | GemJoin | unmatched — not counted | — | mentioned in findings | no |
| Veridise_270622.pdf | ICertToken | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec | ClisBNBLaunchPoolDistributor | unmatched — not counted | — | listed in scope (Listing 1.1) | no |
| BlockSec | EmissionVoting | unmatched — not counted | — | listed in scope (Listing 1.1) | no |
| BlockSec | ListaVault | unmatched — not counted | — | listed in scope (Listing 1.1) | no |
| BlockSec | SlisBNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec | VotingIncentive | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec | BaseTokenProvider | unmatched — not counted | — | mentioned in findings (section 2.2.1) | no |
| BlockSec | FlashBuy | unmatched — not counted | — | listed in scope as FlashBuy.sol | no |
| BlockSec | EarnPool | unmatched — not counted | — | listed in scope | no |
| BlockSec | LisUSDPoolSet | unmatched — not counted | — | listed in scope | no |
| BlockSec | PSM | unmatched — not counted | — | listed in scope | no |
| BlockSec | VaultManager | unmatched — not counted | — | listed in scope | no |
| BlockSec | VenusAdapter | unmatched — not counted | — | listed in scope | no |
| Salus | EarnPool | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | LisUSDPoolSet | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | PSM | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VaultManager | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VenusAdapter | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | EmissionVoting | unmatched — not counted | — | listed in scope (Appendix 1) | no |
| Salus | ListaVault | unmatched — not counted | — | listed in scope (Appendix 1) | no |
| Salus | ClisBNBLaunchPoolDistributor | unmatched — not counted | — | listed in scope (Appendix 1) | no |
| salus_lista_emission_v1.0.pdf | Interaction | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| salus_lista_emission_v1.0.pdf | Jar | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| salus_lista_emission_v1.0.pdf | BorrowLisUSDListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | CommonListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | ERC20LpListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | ERC721LpListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | ListaVault | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | OracleCenter | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | SlisBnbDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | StakeLisUSDListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | TickMath | unmatched — not counted | — | listed in scope appendix | no |
| Bailsec-CollateralYieldVault-20260618.pdf | CollateralYieldVault | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-CollateralYieldVault-20260618.pdf | SlisBNBProvider | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-CollateralYieldVault-20260618.pdf | SlisBNBXMinter | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-CollateralYieldVault-20260618.pdf | RewardHarvester | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-Credit-Liquidation-20260303.pdf | MoolahOperateLib | unmatched — not counted | — | listed in scope as a library | no |
| Bailsec-Credit-Liquidation-20260303.pdf | CreditBroker | unmatched — not counted | — | listed in scope as a contract undergoing differential audit | no |
| Bailsec-Credit-Liquidation-20260303.pdf | Moolah | unmatched — not counted | — | listed in scope as a contract undergoing differential audit | no |
| Bailsec 2026-01 | CreditBroker | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | CreditBrokerMath | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | Moolah | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | CreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | CreditToken | unmatched — not counted | — | listed in scope | no |
| Bailsec-FixedTerm-20260511.pdf | BrokerMath | unmatched — not counted | — | listed in scope section 'Detection BrokerMath' | no |
| Bailsec-FixedTerm-20260511.pdf | BrokerInterestRelayer | unmatched — not counted | — | listed in scope section 'BrokerInterestRelayer' | no |
| Bailsec-FixedTerm-20260511.pdf | LendingBroker | unmatched — not counted | — | listed in scope section 'LendingBroker' | no |
| Bailsec-FixedTerm-20260511.pdf | RateCalculator | unmatched — not counted | — | listed in scope section 'RateCalculator' | no |
| Bailsec-FixedTerm-20260511.pdf | PositionManager | unmatched — not counted | — | listed in scope section 'PositionManager' | no |
| Bailsec-FixedTerm-20260511.pdf | BrokerLiquidator | unmatched — not counted | — | listed in scope section 'BrokerLiquidator' | no |
| Bailsec-FixedTerm-20260511.pdf | Moolah | unmatched — not counted | — | listed in scope section 'Moolah' | no |
| Bailsec-FixedTerm-20260628.pdf | BrokerMath | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | BrokerInterestRelayer | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | LendingBroker | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | RateCalculator | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | PositionManager | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | BrokerLiquidator | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | Moolah | unmatched — not counted | — | listed in scope section | no |
| Bailsec 2025-04 | Moolah | unmatched — not counted | — | Core contract described in report | no |
| Bailsec 2025-04 | MoolahVault | unmatched — not counted | — | Vault contract described in report | no |
| Bailsec 2025-04 | Liquidator | unmatched — not counted | — | Liquidator contract described in report | no |
| Bailsec 2025-04 | VaultAllocator | unmatched — not counted | — | Allocator contract described in report | no |
| Bailsec 2025-04 | InterestRateModel | unmatched — not counted | — | Interest rate model contract described in report | no |
| Bailsec 2025-05 | Moolah | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2025-05 | MoolahVault | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2025-05 | SlisBNBProvider | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2025-05 | BNBProvider | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2026-01 | SlisBNBProvider | unmatched — not counted | — | Listed in scope as the main contract being audited, with migration to new minter. | no |
| Bailsec 2026-01 | SlisBNBxMinter | unmatched — not counted | — | Listed in scope as the new contract handling accounting and minting. | no |
| Bailsec 2025-11 | SmartProvider | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | Moolah | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapFactory | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapPool | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapPoolInfo | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapLP | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapLPCollateral | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | Liquidator | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | PublicLiquidator | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2026-01 | SlisBNBxMinter | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | SmartProvider | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | PositionMigrator | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | Interaction | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | HelioProviderV2 | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | SlisBNBProvider | unmatched — not counted | — | listed in scope | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestRelayer | unmatched — not counted | — | Listed in scope section: 'BrokerInterestRelayer' | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | CreditBrokerInterestRelayer | unmatched — not counted | — | Listed in scope section: 'CreditBrokerInterestRelayer' | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | MoolahVault | unmatched — not counted | — | Listed in scope section: 'MoolahVault' | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestLockBuffer | unmatched — not counted | — | Listed in scope section: 'BrokerInterestLockBuffer' | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | LendingBroker | unmatched — not counted | — | Main contract handling loans, described in detail in report. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | RateCalculator | unmatched — not counted | — | Implements interest accrual for dynamic loans. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | BrokerMath | unmatched — not counted | — | Helper functions for LendingBroker, including oracle and accounting. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | BrokerInterestRelayer | unmatched — not counted | — | Supplies loan tokens to Moolah vault. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | Moolah | unmatched — not counted | — | Underlying lending protocol vault, changes in scope. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | PriceLib | unmatched — not counted | — | Fetches prices from oracle or broker. | no |
| BlockSec 2025-04 | Moolah | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec 2025-04 | MoolahVault | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec 2025-04 | VaultAllocator | unmatched — not counted | — | mentioned in findings | no |
| BlockSec 2025-04 | Liquidator | unmatched — not counted | — | mentioned in notes | no |
| BlockSec 2025-04 | InterestRateModel | unmatched — not counted | — | mentioned in notes | no |
| BlockSec 2025-05 | MoolahVault | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-05 | Moolah | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-05 | SlisBNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-05 | BNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-11 | SlisBNBProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-11 | SmartProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-11 | SlisBNBxMinter | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | Interaction | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | SlisBNBProvider | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | HelioProviderV2 | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | PositionMigrator | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditBroker | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | ICreditBroker | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | ICreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditBrokerMath | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | Moolah | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditToken | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | ICreditToken | unmatched — not counted | — | listed in scope | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | LendingBroker | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | Moolah | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | RateCalculator | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | BrokerMath | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | PriceLib | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | MoolahVault | unmatched — not counted | — | mentioned in scope and findings | no |
| CertiK-CollateralYieldVault-20260618.pdf | CollateralYieldVault | unmatched — not counted | — | listed in scope table | no |
| CertiK-CollateralYieldVault-20260618.pdf | RewardHarvester | unmatched — not counted | — | listed in scope table | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | LendingBroker | unmatched — not counted | — | listed in scope | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | BrokerMath | unmatched — not counted | — | referenced in findings as in-scope library | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | Moolah | unmatched — not counted | — | referenced in findings as core contract | no |
| HashDit-CollateralYieldVault-20260618.pdf | CollateralYieldVault | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | RewardHarvester | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | deploy_collateral_yield_vault | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | ICollateralYieldVault | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | IProvider | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | IStakeManager | unmatched — not counted | — | listed in scope table | no |
| HashDit-Idle-Market-20260526.pdf | IdleOracle | unmatched — not counted | — | listed in Smart Contract List table | no |
| HashDit-Idle-Market-20260526.pdf | IdleCollateralToken | unmatched — not counted | — | listed in Smart Contract List table | no |
| HashDit-Idle-Market-20260526.pdf | MoolahVault | unmatched — not counted | — | mentioned in findings [I04] and [I05] | no |
| HashDit-Idle-Market-20260526.pdf | Moolah | unmatched — not counted | — | mentioned in finding [I05] | no |
| HashDit-ListaLending-BrokerBatchOps-20260526.pdf | BatchManagementUtils | unmatched — not counted | — | listed in scope table | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestLockBuffer | unmatched — not counted | — | listed in scope table with verdict Medium | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | MoolahVault | unmatched — not counted | — | listed in scope table with verdict Low | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestRelayer | unmatched — not counted | — | listed in scope table with verdict Green | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | CreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope table with verdict Green | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | LendingBroker | unmatched — not counted | — | mentioned in finding M01 as affected contract | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | deploy_brokerInterestLockBuffer | unmatched — not counted | — | listed in scope table with verdict Informational | no |
| OpenZeppelin 2025-10 | StableSwapFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapLP | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapLPCollateral | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapPool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapPoolInfo | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | Moolah | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | SmartProvider | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | CreditBroker | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | ICreditBroker | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | Moolah | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | IMoolah | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf | MoolahVaultManager | unmatched — not counted | — | Listed in scope table and throughout findings | no |
| cantina_PositionManager_20260410.pdf | LendingBroker | unmatched — not counted | — | listed in scope | no |
| cantina_PositionManager_20260410.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| CertiK 2025-04 | ERC20LpTokenProvider | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | ILpToken | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | IERC20TokenProvider | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | IThenaErc20LpToken | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | IStableSwap | unmatched — not counted | — | listed in scope table | no |
| BlockSec 2025-04 | ERC20LpTokenProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | IERC20TokenProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | ILpToken | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | IThenaErc20LpToken | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | IStableSwap | unmatched — not counted | — | listed in scope | no |
| Lista-Dao_Lista-token_audit_report_2024-07-12.pdf | VeLista | unmatched — not counted | — | listed in scope appendix | no |
| Lista-Dao_Lista-token_audit_report_2024-07-12.pdf | VeListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| BlockSec | VeLista | unmatched — not counted | — | listed in scope | no |
| BlockSec | VeListaDistributor | unmatched — not counted | — | listed in scope | no |
| PeckShield | ListaStakeManager | unmatched — not counted | — | Listed in scope table and throughout report as the target contract | no |
| BlockSec | ListaStakeManager | unmatched — not counted | — | listed in scope as the only file covered | no |
| Bailsec | LisAster | unmatched — not counted | — | Listed in scope section as 'LisAster' | no |
| Bailsec | LisAsterStaking | unmatched — not counted | — | Listed in scope section as 'LisAsterStaking' | no |
| Bailsec | AsterVault | unmatched — not counted | — | Listed in scope section as 'AsterVault' | no |
| Bailsec | LisAsterRewards | unmatched — not counted | — | Listed in scope section as 'LisAsterRewards' | no |
| Bailsec | LisAsterDistributor | unmatched — not counted | — | Listed in scope section as 'LisAsterDistributor' | no |
| Sherlock | AsterVault | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAsterDistributor | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAsterRewards | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAster | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAsterStaking | unmatched — not counted | — | listed in scope | no |
| PeckShield | ListaAirdrop | unmatched — not counted | — | Listed in scope table and throughout report as target contract | no |
| PeckShield | ListaToken | own contract | ListaToken (selected) `0xfceb31a79f71ac9cbdcf853519c1b12d379edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Supremacy | ListaAirdrop | unmatched — not counted | — | listed in scope table | no |
| Supremacy | MerkleVerifier | unmatched — not counted | — | listed in scope table | no |
| BlockSec | ListaToken | own contract | ListaToken (selected) `0xfceb31a79f71ac9cbdcf853519c1b12d379edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Supremacy | ListaToken | own contract | ListaToken (selected) `0xfceb31a79f71ac9cbdcf853519c1b12d379edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield | CommonListaDistributor | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | VeListaAutoCompounder | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | VeLista | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | VeListaDistributor | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | ERC20LpListaDistributor | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | ListaVault | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | LpProxy | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | PancakeStaking | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | StakingVault | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | ThenaStaking | unmatched — not counted | — | listed in scope on page 4 | no |
| Salus | VeListaAutoCompounder | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VeLista | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VeListaDistributor | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | ERC20LpListaDistributor | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | CommonListaDistributor | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | ListaVault | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | LpProxy | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | PancakeStaking | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | StakingVault | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | ThenaStaking | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Bailsec | RWAEarnPool | unmatched — not counted | — | listed in scope | no |
| Bailsec | RWAAdapter | unmatched — not counted | — | listed in scope | no |
| Bailsec | OTCManager | unmatched — not counted | — | listed in scope | no |
| BlockSec | RWAEarnPool | unmatched — not counted | — | Listed in scope directory src/rwa/* | no |
| BlockSec | RWAAdapter | unmatched — not counted | — | Listed in scope directory src/rwa/* | no |
| BlockSec | OTCManager | unmatched — not counted | — | Listed in scope directory src/rwa/* | no |
| Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf | VotingIncentive | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf | BaseTokenProvider | unmatched — not counted | — | Mentioned as base contract for SlisBNBProvider and audited in correspondence with SlisBNBProvider. | no |
| Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf | SlisBNBProvider | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaV3Factory | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaV3Pool | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Position | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SwapRouter | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | V3Migrator | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | BlockTimestamp | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ERC721Permit | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ERC721PermitUpgradeable | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LiquidityManagement | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryImmutableState | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryPayments | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryValidation | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaInterfaceMulticall | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Quoter | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | QuoterV2 | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TickLens | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | BytesLib | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | CallbackValidation | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ChainId | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | HexStrings | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NFTDescriptor | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NFTSVG | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | OracleLibrary | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Path | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PoolAddress | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PositionKey | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PositionValue | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SqrtPriceMathPartial | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TokenRatioSortOrder | unmatched — not counted | — | listed in scope | no |
| bailsec_lista_usdtLpdistributor_final_report.pdf | CommonListaDistributor | unmatched — not counted | — | listed in scope | no |
| bailsec_lista_usdtLpdistributor_final_report.pdf | USDTLpListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf | SlisBNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf | VotingIncentive | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf | BaseTokenProvider | unmatched — not counted | — | mentioned in findings (2.2.1) | no |
| blocksec_lista_emission_v1.0.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | BorrowLisUSDListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | CommonListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | ERC20LpListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | ERC721LpListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | ListaVault | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | OracleCenter | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | SlisBnbDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | INonfungiblePositionManager | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | OracleInterface | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | Interaction | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | Jar | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IStakeLisUSDListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IBorrowLisUSDListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_usdtLpdistributor_v1.0-signed.pdf | USDTLpListaDistributor | unmatched — not counted | — | Listed in scope section and throughout findings | no |
| Bailsec-slisXAUE-Audit Report.pdf | slisXAUE | unmatched — not counted | — | described as upgradeable ERC20 token representing shares within XAUTStaking | no |
| Bailsec-slisXAUE-Audit Report.pdf | XAUEAdapter | unmatched — not counted | — | described as adapter contract between XAUTStaking and CoboFundToken | no |
| Bailsec-slisXAUE-Audit Report.pdf | XAUTStaking | unmatched — not counted | — | described as simple asynchronous vault for XAUT deposits | no |
| CertiK-slisXAUE-Audit Report.pdf | SlisXAUE | unmatched — not counted | — | listed in scope table | no |
| CertiK-slisXAUE-Audit Report.pdf | XAUEAdapter | unmatched — not counted | — | listed in scope table | no |
| CertiK-slisXAUE-Audit Report.pdf | XAUTStaking | unmatched — not counted | — | listed in scope table | no |
| HashDit-AsterRewards-20260615.pdf | AsterRewards | unmatched — not counted | — | listed in scope table | no |
| HashDit-AsterRewards-20260615.pdf | IAsterRewards | unmatched — not counted | — | listed in scope table | no |
| HashDit-AsterRewards-20260615.pdf | AsterVault | unmatched — not counted | — | mentioned in findings as related contract | no |
| hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf | AtlasOracleAdaptor | unmatched — not counted | — | listed in scope table and throughout findings | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | ListaV3Factory | unmatched — not counted | — | Listed in scope table and findings | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | Listed in scope table and findings | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | ListaV3Pool | unmatched — not counted | — | Findings reference ListaV3Pool.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | TransferHelper | unmatched — not counted | — | Finding [H01] references TransferHelper.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | SwapMath | unmatched — not counted | — | Finding [M03] references SwapMath.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | SqrtPriceMath | unmatched — not counted | — | Finding [I06] references SqrtPriceMath.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | TickMath | unmatched — not counted | — | Finding [I06] references TickMath.sol | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | ERC721PermitUpgradeable | unmatched — not counted | — | listed as NEW in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NoDelegateCall | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapV3Factory | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapV3Pool | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Oracle | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Position | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SqrtPriceMath | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SwapMath | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Tick | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | TickBitmap | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SwapRouter | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | V3Migrator | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | ERC721Permit | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | LiquidityManagement | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PeripheryPayments | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PoolInitializer | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SelfPermit | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Quoter | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | QuoterV2 | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | TickLens | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapInterfaceMulticall | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | CallbackValidation | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | LiquidityAmounts | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NFTDescriptor | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NFTSVG | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | OracleLibrary | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PoolAddress | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PoolTicksCounter | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PositionValue | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SqrtPriceMathPartial | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | TransferHelper | unmatched — not counted | — | listed as MODIFIED in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 0 |
| standard_library | 47 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 77
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 517 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=81
- Match method counts: unique_name=4

Zero-match audit list:

- [17490] Bailsec
- [17491] Bailsec 2025-09
- [17492] BlockSec
- [17493] BlockSec
- [17494] BlockSec 2025-09
- [17495] CertiK 2025-09
- [17496] Certik_300522.pdf
- [17497] PeckShield_250522.pdf
- [17498] PeckShield
- [17500] PeckShield
- [17501] Salus
- [17502] SlowMist_100522.pdf
- [17503] SlowMist_240522.pdf
- [17504] Spearbit 2025-09
- [17505] Supremacy
- [17506] Veridise_270622.pdf
- [17507] BlockSec
- [17508] BlockSec
- [17509] BlockSec
- [17510] BlockSec
- [17511] Salus
- [17512] Salus
- [17513] salus_lista_emission_v1.0.pdf
- [17514] Bailsec-CollateralYieldVault-20260618.pdf
- [17515] Bailsec-Credit-Liquidation-20260303.pdf
- [17516] Bailsec 2026-01
- [17517] Bailsec-FixedTerm-20260511.pdf
- [17518] Bailsec-FixedTerm-20260628.pdf
- [17519] Bailsec 2025-04
- [17520] Bailsec 2025-05
- [17521] Bailsec 2026-01
- [17522] Bailsec 2025-11
- [17523] Bailsec 2026-01
- [17524] Bailsec 2026-03
- [17525] Bailsec-YieldBuffer-AuditReport-20260611.pdf
- [17526] Bailsec__Fixed_Term_and_rate_Oct2025.pdf
- [17527] BlockSec 2025-04
- [17528] BlockSec 2025-05
- [17529] BlockSec 2025-11
- [17530] Cantina 2026-03
- [17531] Cantina 2026-02
- [17532] Cantina_Fixed_Term_and_rate_12Nov2025.pdf
- [17533] CertiK-CollateralYieldVault-20260618.pdf
- [17534] CertiK-REP-Lista-Dao-PositionManager-20260410.pdf
- [17535] HashDit-CollateralYieldVault-20260618.pdf
- [17536] HashDit-Idle-Market-20260526.pdf
- [17537] HashDit-ListaLending-BrokerBatchOps-20260526.pdf
- [17538] HashDit-YieldBuffer-AuditReport-20260611.pdf
- [17539] OpenZeppelin 2025-10
- [17540] Spearbit 2026-03
- [17541] WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf
- [17542] cantina_PositionManager_20260410.pdf
- [17543] CertiK 2025-04
- [17544] BlockSec 2025-04
- [17545] Lista-Dao_Lista-token_audit_report_2024-07-12.pdf
- [17546] BlockSec
- [17547] PeckShield
- [17548] BlockSec
- [17549] Bailsec
- [17550] Sherlock
- [17552] Supremacy
- [17555] PeckShield
- [17556] Salus
- [17557] Bailsec
- [17558] BlockSec
- [17559] Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf
- [17560] 260430-Cantina-Lista-V3-Final-Report.pdf
- [17561] bailsec_lista_usdtLpdistributor_final_report.pdf
- [17562] blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf
- [17563] blocksec_lista_emission_v1.0.pdf
- [17564] blocksec_lista_usdtLpdistributor_v1.0-signed.pdf
- [17566] Bailsec-slisXAUE-Audit Report.pdf
- [17567] CertiK-slisXAUE-Audit Report.pdf
- [17568] HashDit-AsterRewards-20260615.pdf
- [17569] hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf
- [17570] 260430-HashDit-Lista-V3-Final-Report.pdf
- [17571] 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
