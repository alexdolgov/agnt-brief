# Agentic Audit Brief: Gauntlet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gauntlet (`gauntlet`)
- Website: [https://www.gauntlet.xyz](https://www.gauntlet.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 185 unique implementations (185 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,397,148,324.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gauntlet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, bsc, ethereum, optimism. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: erc20 (1), pausable (1)
- Frameworks: solmate (5), openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00000000d283e5f8294e7e2dc06b55d43e060f49`, chain 1)
- UnnamedContract (`0x00000000d8f3d6c5dfeb2d2b5ed2276095f3af44`, chain 1)
- UnnamedContract (`0x02b6bfd9561ac669305a0af0e5b88d9cf850bf67`, chain 1)
- UnnamedContract (`0x21994912f1d286995c4d4961303cbb8e44939944`, chain 1)
- UnnamedContract (`0x3bd9248048df95db4fbd748c6cd99c1baa40bad0`, chain 1)
- UnnamedContract (`0x74c4a66ce4f4779b11e7c63d42e51eeef3a80d11`, chain 1)
- UnnamedContract (`0x811c6f0ef2e8f8a409306dae242ba70bd4f2467d`, chain 1)
- UnnamedContract (`0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb`, chain 1)
- UnnamedContract (`0x8f3ffa11cd5915f0e869192663b905504a2ef4a5`, chain 1)
- UnnamedContract (`0xa582d1b9c74892100986b7f2913468faf350ba41`, chain 1)
- UnnamedContract (`0xa9cdbbafd61bc29c80989e5805c41f611ba7a5da`, chain 1)
- UnnamedContract (`0xc97961eb53430cf6f159cf10692d44a7983c543c`, chain 1)
- UnnamedContract (`0xd580c26f7bd8a8a66fd32a97df2308c083b65d9c`, chain 1)
- UnnamedContract (`0xeff0ae5b39271b33f448cd408b51dc8aa72a672b`, chain 1)
- UnnamedContract (`0xf814c56d1323d79875f2ddbb1daf935a8d8e6b78`, chain 1)
- UnnamedContract (`0x000000001dc8bd45d7e7829fb1c969cbe4d0d1ec`, chain 10)
- UnnamedContract (`0xafdc4876c7a6d69c196cac078c97d6357e718762`, chain 10)
- UnnamedContract (`0xbe351e10c68b6d08b057529eee9cae0dcecc96d2`, chain 10)
- UnnamedContract (`0xcc923371f0d3a9ca75d98e767df9de1cdf5799ef`, chain 10)
- UnnamedContract (`0xd1883062629157ff6eae51ca355aca4f52d2bd4e`, chain 10)
- UnnamedContract (`0xfb6de307b11c50d8b8a0790cd5c82c620d574440`, chain 10)
- UnnamedContract (`0x0cdaefbda316eda913dc96d580ec0331e4cfe591`, chain 8453)
- UnnamedContract (`0x1a8e10a9503e747aeb81da5941bcda6c6a9741b9`, chain 8453)
- UnnamedContract (`0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f`, chain 8453)
- UnnamedContract (`0x418c3c6b54246fb43ebd4953724a00dfb1c3fb02`, chain 8453)
- UnnamedContract (`0x53cb347901b38dbc848185c4a6d1cdad06df8213`, chain 8453)
- UnnamedContract (`0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb`, chain 8453)
- UnnamedContract (`0xc597deb367d2b5886fac8f6262bf282b26a73568`, chain 8453)
- UnnamedContract (`0x000000001dc8bd45d7e7829fb1c969cbe4d0d1ec`, chain 42161)
- UnnamedContract (`0xafdc4876c7a6d69c196cac078c97d6357e718762`, chain 42161)
- UnnamedContract (`0xbe351e10c68b6d08b057529eee9cae0dcecc96d2`, chain 42161)
- UnnamedContract (`0xd1883062629157ff6eae51ca355aca4f52d2bd4e`, chain 42161)
- UnnamedContract (`0xd61ecfb5ced67ef4f01e0dfae591c838bfa33932`, chain 42161)
- UnnamedContract (`0xdd4a42603e6d8e515c3468789375a98c376821b3`, chain 42161)
- BaseVaultFactory (`0x1a8e10a9503e747aeb81da5941bcda6c6a9741b9`, chain 1)
- MultiDepositorVault (`0x000000000001cdb57e58fa75fe420a0f4d6640d5`, chain 8453)
- MultiDepositorVaultFactory (`0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f`, chain 1)
- PriceAndFeeCalculator (`0x69dd4d44eed6bbc33b8a0bdfe17897ab9044372e`, chain 8453)
- Provisioner (`0x18cf8d963e1a727f9bbf3aeffa0bd04fb4dbda07`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 146 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 27 standard proxy/library)
- Proxy deployments represented within implementation groups: 27
- Confirmed-live implementations: 39 of 185 unique; 146 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/151
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 185
- Raw deployments: 185
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 40.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 1.3% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiDepositorVault | unknown | project_anchor | own_supporting | 0 | base | unit-386777 | `0x000000000001cdb57e58fa75fe420a0f4d6640d5` | ✅ Audited |
| PriceAndFeeCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-386784 | `0x69dd4d44eed6bbc33b8a0bdfe17897ab9044372e` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeraFlashLoanRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03fde00d6654f6c07fa7b33e3b6a7cc0d3972fad` | ⚠️ Unaudited |
| AeraV2ERC721ReceiverFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1395c314782bba704ca984ad41e57275f6e77b09` | ⚠️ Unaudited |
| AeraVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c79c24b2a82ce36e3f3d693aeea17e268f5a98` | ⚠️ Unaudited |
| AeraVaultV2ERC721Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f3ef866e769624d9a7a687a669d226c1e327b4d` | ⚠️ Unaudited |
| AerodromePortfolioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3396ec797b7ecfda7e53bfd48689609e8cbe9925` | ⚠️ Unaudited |
| ArrakisV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11b64616130b72646bff7331a7eb0f9c6afd12f2` | ⚠️ Unaudited |
| AsBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13542f7e49e9852e5c333beaf8617c4cb00704d` | ⚠️ Unaudited |
| AsterRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fbf35f9da8c5c1e16247afa02770a01f4f68705` | ⚠️ Unaudited |
| AsterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f97a18f317abe825cf1023ff61452e4d387a12b` | ⚠️ Unaudited |
| AtlasOracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x095989a71792ccf2ae5f34401fdede71461dca8b` | ⚠️ Unaudited |
| ATokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10f6d5526a9ebc892b35ff306b3b1bcf63f798b5` | ⚠️ Unaudited |
| AutoRefunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d16591537f939a341ca2a221781586b15f46cea` | ⚠️ Unaudited |
| BaseVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386751 | `0x1a8e10a9503e747aeb81da5941bcda6c6a9741b9` | ⚠️ Unaudited |
| BatchManagementUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10548a32ad10ba55b1bbf082a1ac5e912036e00f` | ⚠️ Unaudited |
| BNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2def76abf07ee5b1b12865578f7bd9514bafb35d` | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x262dd5e34d03605e6c7f76705497349e74abbd54` | ⚠️ Unaudited |
| BrokerLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb5b91e24fed296feec2bec8d09b653e327d8a7` | ⚠️ Unaudited |
| CDPLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5` | ⚠️ Unaudited |
| CreditBrokerInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ea8ff10d3d9e487570011c6c107a44aac4af93` | ⚠️ Unaudited |
| CreditBrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315b29b9e12b0c93f610a46c8995684db7c4c1a4` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1` | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07e1e05274fee68d10484adc8405786c2c9cf40d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01ccc0f0ae8907bd3efa947b2ce841082bcce29f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x091e6ed7794d74b73081d32cab59fa47ff15418d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x098a0c419915bffa99983abee5d960c193cc9bfb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19c3295fd1c1956663b1a784e87eea3c02facf2b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1a438f71bc56514f47142c96a8f580ab5767ac17` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f819b91e29e3d28ca63f8370a0b367b7c73f7d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f9831626ce85909794eeaa5c35bf34db3eb52d8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2073ddce6d268ebbfc541d7f5d418de9ca9d9f1f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2959c423bfe5cc6e41516599d982a29c0773f11a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b3e5b695722756130a553e9bb5a45e16d21d0a4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2bb41616323994b4ada381ea40cb2d135f7b2462` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4837fb5c9c84524cc0c93f066c1ac708a758e5fd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5021319c1b8245e0680f19b7aa84a0f0f3d91aa9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x80e663ba9ef857d3f377f814c2f3d00187b2641e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x86e09296aeda129d3b0b4c134b3202b84cd8945c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8ebfa9e687af71ec2e87a0380f73b9f57fdf3ec0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x96146ef4c6e1c42e05439ab037fc3d60188959a2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb4678c3e8b49d2b95da48458f98805da193a8498` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe4153eb04417be05b8d6b2222e4cdd8ae674ee76` | ⚠️ Unaudited |
| FeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0698aba37602522582c18f2ab8276cc2c0aefc27` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc684c6587712e5e7bdf9fd64415f23bd2b05faec` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a4e19842e09000a582c20a4f524c26fb48dd4d0` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x5a4e19842e09000a582c20a4f524c26fb48dd4d0` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa16bb61c80b29f7458d677009b3b5f4b868e6ad9` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11` | ⚠️ Unaudited |
| IdleCollateralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39d0107635686e6613dcd08018520c2fd763fa3` | ⚠️ Unaudited |
| IdleOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259ee9cb561dfb5dca010b29b57f12341ff8733` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dcc1182f3bc8a968927faeedf5e32a0d716d3d7` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34f8345b9ec201f8ba6144516fc3a213aedc8141` | ⚠️ Unaudited |
| LendingBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x039c4a60c53ff684b5113f0303a91f1d5336bbe9` | ⚠️ Unaudited |
| LendingFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01e88f69c798adf75120f4972539ac77fd35e208` | ⚠️ Unaudited |
| LendingRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe004efc1753ef845628b95d16058af1a9f86fa21` | ⚠️ Unaudited |
| LendingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e49efd13693822507a8dfc0f9aa13ca14091959` | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11691e3235541daace55c419fbea5ff12282a504` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x534ae76dd9fccb0aa483f309b1a350d4f61973d0` | ⚠️ Unaudited |
| LisAster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4183b7045cac1b56bc9cb3e694d1f551a84314b7` | ⚠️ Unaudited |
| LisAsterDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c11b62fdabffa770cd14645305a0da7c2b55444` | ⚠️ Unaudited |
| LisAsterStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0a2d15ce64afa586fceca4e8156087b6e4c3eb` | ⚠️ Unaudited |
| ListaAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087b9843155597bd447088c4eccde485357d5089` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x362d279284ed18fdc3e04bf0edd8bc453e9446ea` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95cacf296483efafbc924c8c30f72f9f51b14635` | ⚠️ Unaudited |
| ListaStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf5c3b5f5c29dbc647d2557cc22b00ed29f301c` | ⚠️ Unaudited |
| ListaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29202d64986097a099575807ed8284b0fd457167` | ⚠️ Unaudited |
| lisUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x989af6aa3db449e49f1b3210b8750446bed7c2c0` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0` | ⚠️ Unaudited |
| LpUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a23817c68a234425f7ebec215d4e8ea528802de` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bb76cd6a2a1ccf2ac2cff64072fed6d8a128e3` | ⚠️ Unaudited |
| mBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad745bcb555746317e3c2bc6aa583f43ad731521` | ⚠️ Unaudited |
| MerkleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7` | ⚠️ Unaudited |
| MockResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f14975179419c0982a5cabed783ed5a81ae6a43` | ⚠️ Unaudited |
| Moolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0af5cd9555bc52c34a5f7b20042109d0136bc34f` | ⚠️ Unaudited |
| MoolahVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e52472cc585f8e28322ca4536ebd7094431c610` | ⚠️ Unaudited |
| MoolahVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52` | ⚠️ Unaudited |
| MultiDepositorVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386753 | `0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f` | ⚠️ Unaudited |
| mXRPPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba7c9581c00b5629cbeb6d1074475a664b4ab3f` | ⚠️ Unaudited |
| OracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00066f933bf16014143c284be85847a3a2e06fd4` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104e7b187a6455ebf79158a8d7140ea193d42058` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da4f7c6b5dc3c7b35fba746001542a4844b5606` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0998cd70b60ee5cf5a41a69d7d121d065d71941d` | ⚠️ Unaudited |
| PausableMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0` | ⚠️ Unaudited |
| ProductOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4322915aff1b163baba5ecadeacfb22b2916b3` | ⚠️ Unaudited |
| Provisioner | unknown | project_anchor | own_supporting | 0 | base | unit-386779 | `0x18cf8d963e1a727f9bbf3aeffa0bd04fb4dbda07` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97458ae48fc8362077c30930bc6c004b46a9312f` | ⚠️ Unaudited |
| PublicLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50c542774620da722c90cc2ce709c4c1d2e42572` | ⚠️ Unaudited |
| PufETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x303cb4c83f98d806d5a5c1190908540999efc61b` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe701f1a3064c3c06f2a6092c921e2a9946d10b1e` | ⚠️ Unaudited |
| RateCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a84315d6e14291dace3fbc62d24f52c3505c5de` | ⚠️ Unaudited |
| RewardHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0050e7d0ba04a7e80aa47d900241f48559e5742` | ⚠️ Unaudited |
| RWAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b116d1944e05348003479b517355b1ccee350eb` | ⚠️ Unaudited |
| RWAEarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505829773ebda34d6f627bb493cf993a1e357a33` | ⚠️ Unaudited |
| SafeGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59828a98b4ba4e69a12718bbdd831f10a2770ef6` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e33faae38ff641094fa68c65c2ce600b3410585` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x9e33faae38ff641094fa68c65c2ce600b3410585` | ⚠️ Unaudited |
| SingleDepositorVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x088a54b20239077572a27672bb7e19343f1843a2` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11474297387d096ae101a272ff6ad79b7280819b` | ⚠️ Unaudited |
| SlisBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125bcea7ae8ff45083e513faf4913a14bc1dc1a3` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aefec58e6339c663e80306e38ffebbae0820c70` | ⚠️ Unaudited |
| slisBNBx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f987fe1fd3597abcf95b8790351d00ff64c5aa` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb03518022f7845e901f35ea39c64b0904cd36da8` | ⚠️ Unaudited |
| SmartProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f48d539f1900ceb9901988087eee499c76ea87f` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5342ff1ae0621be72c11ecb620a5cec0aa60042` | ⚠️ Unaudited |
| StableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63dc1c139a62dea7bcc7736f9465c283dac6378d` | ⚠️ Unaudited |
| StableSwapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c` | ⚠️ Unaudited |
| StableSwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126` | ⚠️ Unaudited |
| StableSwapPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3957208ba04b83796e1d9394baf2a6796467fd70` | ⚠️ Unaudited |
| StableUsdtPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e64923a9c1dc94e2b746c5dc58abebd2d2e0b56` | ⚠️ Unaudited |
| StockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be38f5d3b84cec3854f9fc4a9930594fabce3d5` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76d830581d0e73014a944d919411c1f410a4a8bf` | ⚠️ Unaudited |
| StonePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6860a2e20d7b158aac422a4030648bf2655c4d8` | ⚠️ Unaudited |
| sUSD1PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54e8810cdde88f531485d2f04321a28e7db380b3` | ⚠️ Unaudited |
| sUSDePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7ccb0e6061d3a3bada5d97eedd252e39fa6d9b` | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1526249ef1501bb4207e1431c285ffc2e17c81c0` | ⚠️ Unaudited |
| sUSDXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7da003f123c48f42a2149bfff107ac5d531265e0` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x660c94cef2914b1235cc1e38b1699b4d48750c6e` | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2162c6f603e178ce219798da20b2451a66b05da8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x031a6f543449d5fbf9c3e77f907043f7be7c1461` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0383d85f4169897a02aed14bda2ae5db38af7a0f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x53c7024411e5d12c0b17d412943c3dd5939a2fb1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x63393e8a6fa3dab6874729ae680b370c0ca96b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x68b9a9ea70f4391c016746be240037e5d4f63807` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8b7d334d243b74d63c4b963893267a0f5240f990` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0303417325022bcd17a7d3351ee1646f864f510` | ⚠️ Unaudited |
| uniBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150d8f804ebfd30202f59bc374301512e6bbb936` | ⚠️ Unaudited |
| Usd1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40d695986c4dd086c4e3a94392ab6c12781b39fa` | ⚠️ Unaudited |
| UsdfOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0709755a26b78ce8e1f4cab598ac7477858c4aa2` | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d` | ⚠️ Unaudited |
| VaultAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eba9befd7e0ed7e41f0b644be2b2e3be48fc7c2` | ⚠️ Unaudited |
| VaultDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b1b172e2278a09d2b3bc116659d9d887573f6c` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08145eb0132a219aad1b78a85bad8666a97cb94` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x765d17e43be4fa44b1cf75a01dc10ab95470274e` | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40c34acecfc302a1dc3c3592ecea52e17a0818fe` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321abb57a8355818211d460fc91ca9b79019caee` | ⚠️ Unaudited |
| WBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3da9ee8965ef22228a103df4719a74b7384584` | ⚠️ Unaudited |
| WBETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3ac57d6af35519db62bd150bef7388f892f5a6` | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf86155a27b5cd958732a29829d80017727de4262` | ⚠️ Unaudited |
| wsrUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee2c5ad734e64c8a63105187a5b465c3176a46f` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07399c1ca8e3e2aadd3858376cd7adaa16ee04b0` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950620918c66b080990b18635f1d7d4f70d23fc5` | ⚠️ Unaudited |
| wstUSRNewPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc3360252a4f94c1e0d93816ff1335440e324104` | ⚠️ Unaudited |
| wstUSRPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5439ec87e111b1ac0ae676dbf561cd66164722c8` | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e6cb9dd8ee997d341e80cddb448beee526527c` | ⚠️ Unaudited |
| xSolvBtcPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e` | ⚠️ Unaudited |
| yUSDFixedPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365` | ⚠️ Unaudited |
| yUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386748 | `0x00000000d283e5f8294e7e2dc06b55d43e060f49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386749 | `0x00000000d8f3d6c5dfeb2d2b5ed2276095f3af44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386750 | `0x02b6bfd9561ac669305a0af0e5b88d9cf850bf67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386752 | `0x21994912f1d286995c4d4961303cbb8e44939944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386754 | `0x3bd9248048df95db4fbd748c6cd99c1baa40bad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386755 | `0x74c4a66ce4f4779b11e7c63d42e51eeef3a80d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386756 | `0x811c6f0ef2e8f8a409306dae242ba70bd4f2467d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386757 | `0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386758 | `0x8f3ffa11cd5915f0e869192663b905504a2ef4a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386759 | `0xa582d1b9c74892100986b7f2913468faf350ba41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386760 | `0xa9cdbbafd61bc29c80989e5805c41f611ba7a5da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386761 | `0xc97961eb53430cf6f159cf10692d44a7983c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386762 | `0xd580c26f7bd8a8a66fd32a97df2308c083b65d9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386763 | `0xeff0ae5b39271b33f448cd408b51dc8aa72a672b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386764 | `0xf814c56d1323d79875f2ddbb1daf935a8d8e6b78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386765 | `0x000000001dc8bd45d7e7829fb1c969cbe4d0d1ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386766 | `0xafdc4876c7a6d69c196cac078c97d6357e718762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386767 | `0xbe351e10c68b6d08b057529eee9cae0dcecc96d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386768 | `0xcc923371f0d3a9ca75d98e767df9de1cdf5799ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386769 | `0xd1883062629157ff6eae51ca355aca4f52d2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386770 | `0xfb6de307b11c50d8b8a0790cd5c82c620d574440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386778 | `0x0cdaefbda316eda913dc96d580ec0331e4cfe591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386780 | `0x1a8e10a9503e747aeb81da5941bcda6c6a9741b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386781 | `0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386782 | `0x418c3c6b54246fb43ebd4953724a00dfb1c3fb02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386783 | `0x53cb347901b38dbc848185c4a6d1cdad06df8213` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386785 | `0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386786 | `0xc597deb367d2b5886fac8f6262bf282b26a73568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386771 | `0x000000001dc8bd45d7e7829fb1c969cbe4d0d1ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386772 | `0xafdc4876c7a6d69c196cac078c97d6357e718762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386773 | `0xbe351e10c68b6d08b057529eee9cae0dcecc96d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386774 | `0xd1883062629157ff6eae51ca355aca4f52d2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386775 | `0xd61ecfb5ced67ef4f01e0dfae591c838bfa33932` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386776 | `0xdd4a42603e6d8e515c3468789375a98c376821b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Access your report here!](https://cdn.prod.website-files.com/648bdc0d4b8ce322f27da0af/68e69619549468027afb3a1a_36cd33a1b52a2f1491318ffa56f72273_USDC-10-8-5MB.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Spearbit-June-2025.pdf](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 26 | high |
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16](https://cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16) | Spearbit | Contest | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20416] Access your report here! — no match: The document is a research report about USDC idle capital and yield opportunities, not a smart contract audit report. No contracts in scope were identified.
- [20417] Spearbit-June-2025.pdf — matched: Extracted contract names from findings context and file references. No explicit scope section found; date from report cover page.
- [20418] 2023-09-22.pdf — no match: The report does not have a dedicated scope section, but the contracts AeraVaultV2, AeraVaultAssetRegistry, AeraVaultHooks, and AeraVaultV2Factory are consistently referenced in findings and context, indicating they are the audited contracts. The audit date is from the report cover page: September 22, 2023.
- [20419] 2024-05-15.pdf — no match: All contracts listed in the Scope section of the report.
- [20420] cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16 — no match: The provided text is a competition description, not an audit report. It mentions a repository URL and a vault address but does not list specific contracts in scope. No contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Spearbit-June-2025.pdf | BaseSlippageHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | BaseVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | CallbackHandler | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | CCTPHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | OracleRegistry | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Provisioner | ambiguous — not counted | 0xd580c2… (alternative) `0xd580c26f7bd8a8a66fd32a97df2308c083b65d9c` — liveness: live (current_address_book_code)<br>Provisioner (alternative) `0x18cf8d963e1a727f9bbf3aeffa0bd04fb4dbda07` — deployed 2025-06-03 04:05:27+03 — liveness: live (code_present_context)<br>0x219949… (alternative) `0x21994912f1d286995c4d4961303cbb8e44939944` — liveness: live (current_address_book_code)<br>0xdd4a42… (alternative) `0xdd4a42603e6d8e515c3468789375a98c376821b3` — liveness: live (current_address_book_code)<br>0xa582d1… (alternative) `0xa582d1b9c74892100986b7f2913468faf350ba41` — liveness: live (current_address_book_code)<br>0x74c4a6… (alternative) `0x74c4a66ce4f4779b11e7c63d42e51eeef3a80d11` — liveness: live (current_address_book_code)<br>0xcc9233… (alternative) `0xcc923371f0d3a9ca75d98e767df9de1cdf5799ef` — liveness: live (current_address_book_code)<br>0xa9cdbb… (alternative) `0xa9cdbbafd61bc29c80989e5805c41f611ba7a5da` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Spearbit-June-2025.pdf | SingleDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | BaseFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | PriceAndFeeCalculator | own contract | PriceAndFeeCalculator (selected) `0x69dd4d44eed6bbc33b8a0bdfe17897ab9044372e` — deployed 2025-05-28 21:47:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Spearbit-June-2025.pdf | DelayedFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | MultiDepositorVault | own contract | MultiDepositorVault (selected) `0x000000000001cdb57e58fa75fe420a0f4d6640d5` — deployed 2025-06-03 04:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Spearbit-June-2025.pdf | Auth2Step | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Auth | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Whitelist | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | TransferWhitelistHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | TransferBlacklistHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | BasicMerkleRootProvider | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | CalldataReaderLib | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | OracleDataLibrary | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Constants | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | IBaseVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | IOracle | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | IMetaAggregationRouterV2 | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | UniswapV3DexHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | KyberSwapHook | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | ODOSHook | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultV2 | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultHooks | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultV2Factory | unmatched — not counted | — | mentioned in findings context | no |
| 2024-05-15.pdf | ILlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IAeraV2Oracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | ILlamaPayRouterOracleTypes | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | LlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | AbstractAssetOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a8e10a9503e747aeb81da5941bcda6c6a9741b9` | BaseVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f` | MultiDepositorVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18cf8d963e1a727f9bbf3aeffa0bd04fb4dbda07` | Provisioner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 119 |
| upstream | 0 |
| standard_library | 32 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 36 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=2

Zero-match audit list:

- [20416] Access your report here!
- [20418] 2023-09-22.pdf
- [20419] 2024-05-15.pdf
- [20420] cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16

Fork inheritance lineage and inherited audits are included when available.
