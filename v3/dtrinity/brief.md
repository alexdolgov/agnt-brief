# Agentic Audit Brief: dTRINITY

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: dTRINITY (`dtrinity`)
- Website: [https://dtrinity.org/](https://dtrinity.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, fraxtal, sonic
- Contract surface: 257 unique implementations (565 raw deployments)
- Coverage basis: 4/25 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,254,148.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for dTRINITY. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across ethereum, fraxtal, sonic. Structural roles: 22 unclassified, 6 supporting, 5 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (22), supporting (6), core (5)
- Contract kinds: contract (32), abstract (1)
- Detected standards: accesscontrol (6), erc165 (6), erc1967proxy (1), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3de01b...411ddf`, chain 1)
- UnnamedContract (`0x5cc741...30fd60`, chain 1)
- UnnamedContract (`0x8a9384...b9c930`, chain 1)
- UnnamedContract (`0xab035f...d02989`, chain 1)
- UnnamedContract (`0xedaf6c...610611`, chain 1)
- UnnamedContract (`0x12ed58...99cdef`, chain 252)
- UnnamedContract (`0x1f0755...a862f7`, chain 252)
- UnnamedContract (`0x29155d...799ee0`, chain 252)
- UnnamedContract (`0x29d025...46059b`, chain 252)
- UnnamedContract (`0x2d8ae7...36a0ab`, chain 252)
- UnnamedContract (`0x64188d...f10ede`, chain 252)
- UnnamedContract (`0x6b937d...f560de`, chain 252)
- UnnamedContract (`0x831504...7448de`, chain 252)
- UnnamedContract (`0xe91913...ee2edf`, chain 252)
- UnnamedContract (`0xf1082f...bf4c0e`, chain 252)
- ACLManager (`0xa5f9f6...a26a49`, chain 252)
- AmoManagerV2 (`0x29532f...6e6880`, chain 1)
- AmoManagerV2 (`0x57bbd5...0bebae`, chain 252)
- CollateralHolderVault (`0x84c580...9253f4`, chain 1)
- CollateralHolderVault (`0x624e12...f4febc`, chain 252)
- DStakeCollateralVault (`0x5432ed...8cc7be`, chain 252)
- DStakeCollateralVaultV2 (`0x4acbcf...30f6fe`, chain 1)
- DStakeToken (`0x0f51b1...1856c6`, chain 252)
- DStakeTokenV2 (`0x9c2780...a3bfd4`, chain 1)
- ERC20StablecoinUpgradeable (`0x6f83cb...814d1b`, chain 1)
- ERC20StablecoinUpgradeable (`0xaf2d75...2fddb6`, chain 252)
- GnosisSafeProxy (`0xa9c3cf...a03d65`, chain 252)
- GnosisSafeProxy (`0xabfbcf...067af9`, chain 252)
- GnosisSafeProxy (`0xdb104e...d85431`, chain 252)
- GnosisSafeProxy (`0xfc2f89...8bc8e9`, chain 252)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2b820f...5dff35`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x7f9098...9d7cf1`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x88a4ee...a1c748`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x947729...bfb59b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x979fb7...efaad8`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xa17571...dfe493`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xa5535f...a26eae`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb33276...a8029c`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc24773...0e9011`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdfaee6...a5877f`, chain 1)
- SafeProxy (`0x044015...e79804`, chain 1)
- SafeProxy (`0x38262e...02f3db`, chain 1)
- SafeProxy (`0x43b1bc...06c118`, chain 1)
- SafeProxy (`0xe83c18...f30262`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 33; live-surface rows included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/25 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 217 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Confirmed-live implementations: 40 of 257 unique; 217 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/123
- Verified + Unaudited implementations: 119
- Verified by bytecode match: 0
- Unverified implementations: 134
- Unique implementations: 257
- Raw deployments: 565
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 2 | 1.6% | 2025-10 |
| Hats Finance | Tier 2 | 2 | 1.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DStakeCollateralVault | core_logic | project_anchor | own_supporting | 0 | fraxtal | unit-236625 | `0x5432ed...8cc7be` | ✅ Audited |
| DStakeCollateralVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236604 | `0x4acbcf...30f6fe` | ✅ Audited |
| DStakeToken | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-236642 | 2 deployments: fraxtal `0x0f51b1...1856c6`; fraxtal `0x58acc2...492409` | ✅ Audited |
| DStakeTokenV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236641 | 2 deployments: ethereum `0x7cb205...6abf02`; ethereum `0x9c2780...a3bfd4` | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x831b8d...bacb6b` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | `0x99a434...eafb16` | ⚠️ Unaudited |
| ACLManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x80f702...589609`; sonic `0x973044...08e593`; sonic `0xa46d25...9114d1`; sonic `0xa5cae8...42e751`; sonic `0xd7fdd1...a2b9e3`; fraxtal `0x93d2e5...a3acdf`; fraxtal `0xfe36d4...888e3e` | ⚠️ Unaudited |
| ACLManager | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236631 | `0xa5f9f6...a26a49` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85492...50a1ba` | ⚠️ Unaudited |
| AmoDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: ethereum `0x55a626...6b098d`; ethereum `0x88e49f...aaaa38`; fraxtal `0x3e17fd...0e3c28` | ⚠️ Unaudited |
| AmoManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x0346e3...46973c`; sonic `0x090af6...3f429c`; sonic `0x20ceff...d89355`; sonic `0x259238...adf8aa`; sonic `0x29adcb...da87ab`; sonic `0x75f14f...164eb1`; sonic `0x788d96...614d4a`; sonic `0xfb9383...e89108`; fraxtal `0x160080...370505`; fraxtal `0x49a0c8...75271a`; fraxtal `0xd9ba54...bf76c7` | ⚠️ Unaudited |
| AmoManagerV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-236601 | `0x29532f...6e6880` | ⚠️ Unaudited |
| AmoManagerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5340...ea56a7` | ⚠️ Unaudited |
| AmoManagerV2 | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236626 | `0x57bbd5...0bebae` | ⚠️ Unaudited |
| API3CompositeWrapperWithThresholding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 13 deployments: sonic `0x51906c...a7cc53`; sonic `0x6a2506...9fb67c`; sonic `0xa1bf60...4128e8`; sonic `0xbbf9f7...c3e9b2`; sonic `0xbd73ec...86cf87`; sonic `0xbe90db...2c65be`; sonic `0xca52d0...f24dda`; sonic `0xe8b48a...504abd`; fraxtal `0x07fff9...1ca236`; fraxtal `0x664965...3b1b26`; fraxtal `0x6ea83b...8a8017`; fraxtal `0xd72ff4...8d3e49`; fraxtal `0xde8cce...a567b9` | ⚠️ Unaudited |
| API3Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 14 deployments: sonic `0x2db1e3...2aa1aa`; sonic `0x3ff41c...0b12d4`; sonic `0x414afe...dd5d08`; sonic `0x53b400...e80f6d`; sonic `0x573e97...d2cdaf`; sonic `0x5e52f1...94858d`; sonic `0xbd29ad...6e9d6b`; sonic `0xde8cce...a567b9`; fraxtal `0x011c49...97e373`; fraxtal `0x18ae2d...dfd5e1`; fraxtal `0x3c3651...c01a53`; fraxtal `0xd66c16...036cac`; fraxtal `0xf6ea02...6d2f42`; fraxtal `0xf9ed5f...089af0` | ⚠️ Unaudited |
| API3WrapperWithThresholding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x260f49...4cf209`; sonic `0x4e23ca...7b3a1c`; sonic `0x5cb4f9...066961`; sonic `0x9d286f...9352b1`; sonic `0xaeba31...508b4a`; sonic `0xe4dd47...87b310`; sonic `0xf4b584...dd84ca`; sonic `0xf9db03...178f49`; fraxtal `0x4c9685...276a75`; fraxtal `0x68e108...78a24e`; fraxtal `0x902c37...5f590b` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 7 deployments: ethereum `0x40caf3...2579e7`; sonic `0x6e05d1...0e0895`; sonic `0xa148fb...3ba3cd`; sonic `0xfb9821...787748`; fraxtal `0x2d2b81...618cfa`; fraxtal `0x44c69f...c5e7a2`; fraxtal `0x643361...e6ac90` | ⚠️ Unaudited |
| AtomicMarketListingHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67c3ad...ad2662` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0x810369...b72786`; sonic `0x1e06f1...c606ab`; sonic `0x9e302c...2b6dcc`; fraxtal `0x2a1d1b...319eeb` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xe1c986...c4e671`; sonic `0xb7cff0...0f8635`; sonic `0xca0a90...7e37bb`; fraxtal `0xba4d4b...8cc46a` | ⚠️ Unaudited |
| CalldataLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xd23431...e5776d`; sonic `0x393645...1fa3eb`; sonic `0xe1c986...c4e671`; fraxtal `0xa1bf60...4128e8` | ⚠️ Unaudited |
| CollateralHolderVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236607 | `0x84c580...9253f4` | ⚠️ Unaudited |
| CollateralHolderVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: ethereum `0x349ee0...56a2f2`; sonic `0x02165d...5b186c`; sonic `0x42aa69...2c0ae9`; sonic `0x569e98...26fd6e`; sonic `0x97efeb...25f771`; sonic `0xaf2d75...2fddb6`; sonic `0xbe8b1b...ea3113`; sonic `0xc1a09c...f4721b`; sonic `0xd6bbab...f0de7d`; fraxtal `0x7d3d46...3909bc` | ⚠️ Unaudited |
| CollateralHolderVault | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236627 | `0x624e12...f4febc` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0xc18b93...feb7ed`; sonic `0x683f18...ce9809`; sonic `0x9986dc...fe9f85`; fraxtal `0x6288d4...53e56f` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9886ad...172afd` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c2a70...f1cef9`; fraxtal `0x5ecfa6...c04577` | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5572d...444702` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 27 deployments: ethereum `0x426bb6...b0044a`; ethereum `0x614484...3ded12`; ethereum `0x64dc6d...ec6c7d`; ethereum `0x837c4a...07d270`; sonic `0x052dc4...ee585d`; sonic `0x08f3c3...596262`; sonic `0x1fbc97...4314c7`; sonic `0x328b0a...4b43fd`; sonic `0x38a8c0...54d2e1`; sonic `0x3f628a...ab02c0`; sonic `0x475bcf...cc3c25`; sonic `0x85c728...ec0f85`; sonic `0x863a66...f10fd2`; sonic `0x871f22...e01c7f`; sonic `0x8c5221...3236f8`; sonic `0x913412...e4696f`; sonic `0x91756a...944712`; sonic `0xaec328...1af003`; sonic `0xbc7419...87f309`; sonic `0xcc0e6f...1dfb13`; fraxtal `0x088693...5792b5`; fraxtal `0x09ddf5...52bb14`; fraxtal `0x6e15a8...9b7460`; fraxtal `0x8b7d6b...6e98c6`; fraxtal `0xd1d9d6...5ca496`; fraxtal `0xdd796c...e7ae60`; fraxtal `0xeef617...e4019c` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc46347...3dd9e8` | ⚠️ Unaudited |
| dLendBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x414afe...dd5d08`; fraxtal `0x614914...0bcb0e`; fraxtal `0xd3e3bf...23e805` | ⚠️ Unaudited |
| DStakeCollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x709c23...9be595`; sonic `0x925a5c...8eead9`; sonic `0xd4258d...1b4d8c` | ⚠️ Unaudited |
| DStakeCollateralVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93fb0...a1a5b9` | ⚠️ Unaudited |
| DStakeIdleVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x501ce6...e8a9a1`; ethereum `0x78a4da...5380bc` | ⚠️ Unaudited |
| DStakeProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x6eb812...51029c`; sonic `0xbcafae...57b18c`; sonic `0xff3df1...40e01b`; fraxtal `0xde914e...f4733b` | ⚠️ Unaudited |
| DStakeRewardManagerDLend | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf224e6...7a1367` | ⚠️ Unaudited |
| DStakeRouterDLend | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xefc15e...d4cd99` | ⚠️ Unaudited |
| DStakeRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2e89df...cf64a8`; ethereum `0xdd26c2...e9be5a` | ⚠️ Unaudited |
| DStakeRouterV2GovernanceModule | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8cf140...7b6703`; ethereum `0xedbccd...28a88b` | ⚠️ Unaudited |
| DStakeRouterV2RebalanceModule | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f3b7c...a61dde`; ethereum `0x7aefde...89c55f`; ethereum `0xc792f2...e18cc6` | ⚠️ Unaudited |
| DStakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x41a547...93304e`; sonic `0x5f0eca...fe6f8f` | ⚠️ Unaudited |
| DStakeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5a5ce9...882bae` | ⚠️ Unaudited |
| DStakeTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20b188...0a8590`; ethereum `0x414645...facb87` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xcea995...1d1396`; sonic `0x8aa67b...aada56`; sonic `0xb0499d...bd8d16`; sonic `0xe3ee2d...df479e`; fraxtal `0xda1a52...94c278` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x26326b...239b4b`; sonic `0x4b6760...e7a87e`; sonic `0xf84cc8...84ff85`; fraxtal `0xca5cb6...6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236640 | 2 deployments: ethereum `0x07fff9...1ca236`; ethereum `0x6f83cb...814d1b` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75998c...4afecc`; ethereum `0xb419ec...c6afdc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0043a4...714fe7`; sonic `0xb76144...4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x214421...252a45`; sonic `0xd80374...4550b9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3a3dd4...22abd4`; sonic `0xdb848e...3432d7` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x41076a...59d0c8`; sonic `0xf4a726...0d0d12` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x53a6ab...0da975`; sonic `0xa140c9...c0d327` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x614914...0bcb0e`; sonic `0xfa6085...ca8fa9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x8af8c1...0e396c`; sonic `0xa1104d...4fcfaf` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xba4d4b...8cc46a`; sonic `0xca5cb6...6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | 2 deployments: fraxtal `0x0043a4...714fe7`; fraxtal `0xb76144...4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | 2 deployments: fraxtal `0x70924f...168d6f`; fraxtal `0xc40f43...0a9d9c` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-236643 | 2 deployments: fraxtal `0x788d96...614d4a`; fraxtal `0xaf2d75...2fddb6` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | 2 deployments: fraxtal `0x889bf3...913f37`; fraxtal `0xb419ec...c6afdc` | ⚠️ Unaudited |
| ERC4626BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x09c418...5e44dd`; fraxtal `0x7a2949...2ab7d9` | ⚠️ Unaudited |
| ERC4626OracleWrapperV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x889bf3...913f37` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0x8d369c...9b7688`; sonic `0xd82b68...295628`; fraxtal `0x050453...fa4eb7`; fraxtal `0x2e92fc...83c4e5` | ⚠️ Unaudited |
| FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd607...44c936` | ⚠️ Unaudited |
| GenericERC4626ConversionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa51fa5...2c2b56`; ethereum `0xefd794...b5db7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | fraxtal | unit-236644 (2 proxies) | 2 deployments: fraxtal `0xdb104e...d85431`; fraxtal `0xfc2f89...8bc8e9` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236632 | `0xa9c3cf...a03d65` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236633 | `0xabfbcf...067af9` | ⚠️ Unaudited |
| HardPegOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x0fdf4d...cc9c4e`; sonic `0x1f739b...7ed77e`; sonic `0x3459ab...d4e9e2`; sonic `0x3f2d8a...5b8fd8`; sonic `0x738056...13b294`; sonic `0x74be9a...7a0764`; sonic `0xaa682f...0b18cd`; sonic `0xbf5298...c9de0b`; sonic `0xc40f43...0a9d9c`; sonic `0xd24ca3...e3ca10`; sonic `0xe7e77d...17d300`; sonic `0xf9aa9f...b700dd`; fraxtal `0x8e5031...4abc2a` | ⚠️ Unaudited |
| HardPegOracleWrapperV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1e5be5...36cc95`; ethereum `0x4ef480...2aa54a`; ethereum `0x788d96...614d4a`; ethereum `0x837c1c...fc638a` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x6ba79a...14332a`; sonic `0xe63b4d...4cae3a`; sonic `0xf749a3...ae6595` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236602 | `0x2b820f...5dff35` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236606 | `0x7f9098...9d7cf1` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236608 | `0x88a4ee...a1c748` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236610 | `0x947729...bfb59b` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236611 | `0x979fb7...efaad8` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236612 | `0xa17571...dfe493` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236613 | `0xa5535f...a26eae` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236615 | `0xb33276...a8029c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236616 | `0xc24773...0e9011` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236617 | `0xdfaee6...a5877f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf177ef...0d0bd1` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: sonic `0x090613...a15c59`; sonic `0x09f790...ab45cf`; sonic `0x1f3754...4e990e`; sonic `0x3b8c68...cb51f8`; sonic `0x5e8352...488d15`; sonic `0x72ef2d...b81fbf`; sonic `0x807aa6...b0bca1`; sonic `0x96a5a8...423b69`; fraxtal `0x1ec13e...99b7a2`; fraxtal `0x823fd0...d4715c` | ⚠️ Unaudited |
| IssuerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x36b535...76fa97`; sonic `0x9b93c3...725ddc`; fraxtal `0xd95f1c...f9fbca` | ⚠️ Unaudited |
| IssuerV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x70bfbe...8a5a8d`; ethereum `0xf84cc8...84ff85`; fraxtal `0x9e8d87...abdc3a` | ⚠️ Unaudited |
| L2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xfda3a0...e19e84`; sonic `0x179867...6bb8cc`; fraxtal `0x20a24d...91a6d7`; fraxtal `0xdfd607...44c936` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xce697c...7d9570`; sonic `0x19c6b5...f7dc48`; sonic `0x84c580...9253f4`; fraxtal `0xba82d5...e7dc8f` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91c95b...06447c` | ⚠️ Unaudited |
| OdosDebtSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: sonic `0x5e4f0e...36ee1f`; sonic `0x7364c9...6408bc`; sonic `0xedc5b6...a5920e`; fraxtal `0x16e7d5...9437bd` | ⚠️ Unaudited |
| OdosLiquiditySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x71e1f6...46fb42`; sonic `0x8087ff...5406ff`; sonic `0x88256f...3a38f9`; fraxtal `0xa860d1...4ab6f6` | ⚠️ Unaudited |
| OdosRepayAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: sonic `0xc44825...898918`; sonic `0xcb9b1e...7411dd`; sonic `0xe3ec36...5658d0`; fraxtal `0x78c443...90f847` | ⚠️ Unaudited |
| OdosSwapLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb029d6...4dd2ba` | ⚠️ Unaudited |
| OdosWithdrawSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x82efb1...3b4272`; sonic `0xacd97c...2ec949`; sonic `0xc72d79...482af1`; fraxtal `0xc7878a...52d247` | ⚠️ Unaudited |
| OracleAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x1295a5...2c3a9c`; sonic `0x6fa0af...7a3ac9`; sonic `0x9c99ef...122bf2`; sonic `0xc2572c...31b5be`; sonic `0xdfd607...44c936`; sonic `0xe38f8b...8361b3`; sonic `0xf32981...cef513`; sonic `0xf639ec...3de9ad`; fraxtal `0xfa7560...af5cdd` | ⚠️ Unaudited |
| OracleAggregatorV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x02165d...5b186c`; ethereum `0xc40f43...0a9d9c` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xa5cae8...42e751`; sonic `0x1f8d8a...1badcb`; sonic `0x598502...484df5`; sonic `0x664965...3b1b26`; sonic `0xfdb85f...336207`; fraxtal `0xd9c622...cb338d` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xfdb85f...336207`; sonic `0x1c7b9f...ce496b`; sonic `0x1f5a7b...3eac6b`; sonic `0x240a08...88f61e`; sonic `0xe984ec...8e8dc9`; fraxtal `0xfbeb55...2f7878` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x185e9c...ded6b9`; sonic `0xac90d7...e40153`; fraxtal `0xb1e4e1...60b8b1` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0x44c69f...c5e7a2`; sonic `0x33e010...7173f6`; sonic `0xe61141...c1fb21`; fraxtal `0x050323...3f7ecd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: ethereum `0xbe90db...2c65be`; sonic `0x0a0808...fb0bc5`; sonic `0xaf3bb4...694cb8`; sonic `0xc59e44...6a68f8`; sonic `0xfff14b...50a7ab`; fraxtal `0x1e5be5...36cc95`; fraxtal `0x75998c...4afecc`; fraxtal `0xaf3bb4...694cb8`; fraxtal `0xdcd396...fdfa5c` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x31bf6b...6e6316`; sonic `0x15a8d3...5aa85f`; sonic `0x58acc2...492409`; sonic `0xa002d1...9f7e08`; sonic `0xdba93c...f46e39`; fraxtal `0xaaee14...ed35a5` | ⚠️ Unaudited |
| RebasingTokenWrapperFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x85c728...ec0f85` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 10 deployments: sonic `0x4ef480...2aa54a`; sonic `0x57c8ee...4d21aa`; sonic `0x70bfbe...8a5a8d`; sonic `0x733e86...ccf5a1`; sonic `0xd72ff4...8d3e49`; sonic `0xe78185...daa5cf`; sonic `0xe7c49a...244a28`; sonic `0xf5a894...c386ff`; fraxtal `0x242921...4450a3`; fraxtal `0xd30c28...0af5ae` | ⚠️ Unaudited |
| RedeemerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0x093e9d...ba90cd`; ethereum `0x683f18...ce9809`; ethereum `0xd66c16...036cac`; ethereum `0xdc43d5...afae4b`; sonic `0x090598...d38b88`; sonic `0x6b0579...6f5935`; fraxtal `0xacd97c...2ec949` | ⚠️ Unaudited |
| RedeemerWithFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x12bccb...db561c`; sonic `0x1f5d6e...c2b221`; sonic `0x528872...6c4927`; fraxtal `0xb0499d...bd8d16` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 6 deployments: ethereum `0x18ae2d...dfd5e1`; sonic `0x16e32b...30d19c`; sonic `0x79b3f3...f76ca2`; sonic `0x7c2018...45122a`; sonic `0x95e9b3...10a447`; fraxtal `0x145555...7d2662` | ⚠️ Unaudited |
| RewardsController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x06f0c6...5a0ea8`; sonic `0x1c4be7...7867e2`; sonic `0x2a0f31...1b2768`; sonic `0x590df1...b3b54a`; sonic `0x63ff4a...d5e65a`; fraxtal `0x0b667e...0585ad` | ⚠️ Unaudited |
| RewardVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x464785...6f2e54` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 4 | ethereum | unit-236639 (4 proxies) | 4 deployments: ethereum `0x044015...e79804`; ethereum `0x38262e...02f3db`; ethereum `0x43b1bc...06c118`; ethereum `0xe83c18...f30262` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b4b5c...0d3ef6` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xe83c18...f30262` | ⚠️ Unaudited |
| SanitizableAToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x504d0e...483acc` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x391afc...eb8631`; sonic `0x4b8a6e...daf801`; sonic `0x7ebc06...82fc17`; sonic `0xd93c92...83751e`; fraxtal `0x43dc80...34dfdb` | ⚠️ Unaudited |
| StaticATokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xcb8f92...e1d877`; sonic `0x1cc03e...bd55a8`; sonic `0x777db2...ac81f1`; fraxtal `0x2a0f31...1b2768` | ⚠️ Unaudited |
| StaticATokenLM | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x576dd4...32d4c9`; ethereum `0xeb5260...c07776`; sonic `0x36e178...b8059e`; sonic `0x5c47b4...17adfa`; sonic `0xd92780...886a71`; sonic `0xe6dee6...34e0d9` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0xe58dec...817ddb`; sonic `0x48f096...068f9a`; sonic `0x837c1c...fc638a`; fraxtal `0x2d3f57...6d6f3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x2e093b...1ba642`; sonic `0x4ebab4...f50a83`; sonic `0x84670d...7e6a51` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: ethereum `0xe3ee2d...df479e`; sonic `0xb1c1d6...c6ac2d`; sonic `0xd4d111...ee474a`; sonic `0xdd3c66...a6d3c1`; fraxtal `0x21bd81...b68830` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c4be7...7867e2`; sonic `0x31e1f0...ec9261`; sonic `0xe505f8...afb37a`; sonic `0xe5ae87...00cbc4`; fraxtal `0xe284a7...d3eabc` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xf5e96f...da27ef`; sonic `0x0b0bd5...3b7240`; sonic `0x918130...369d08`; sonic `0xf65d51...5d364e`; fraxtal `0x2eae5a...621659` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xe5ae87...00cbc4`; sonic `0x220cf4...7f0b68`; sonic `0x36535f...f02dff`; sonic `0xe9bbd4...253d3c`; fraxtal `0x4920c9...0f51e9` | ⚠️ Unaudited |
| WrappedDLendConversionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1a5bb4...3e100f`; ethereum `0xd07072...48fb07`; sonic `0x317b5c...226297`; sonic `0xc5ac44...a3c505`; sonic `0xcd32cf...2112dc`; fraxtal `0xced414...860e08` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xb1c1d6...c6ac2d`; sonic `0x2b56bb...b05ec5`; sonic `0x40d1aa...d8a8b2`; sonic `0x64e173...7bd7fa`; fraxtal `0x598502...484df5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (134)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236603 | `0x3de01b...411ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236605 | `0x5cc741...30fd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5543...2a9e7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236609 | `0x8a9384...b9c930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93d2e5...a3acdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d286f...9352b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236614 | `0xab035f...d02989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236618 | `0xedaf6c...610611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x011c49...97e373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05281f...a2d972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x088693...5792b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b667e...0585ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e1bd1...4ae4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x101af0...4240d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x172971...8d3918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2b5ed9...1991a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2eae5a...621659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x353a84...b59801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43dc80...34dfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44c69f...c5e7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d561d...88936e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x604f81...b078e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x673c07...b7ae6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x68e108...78a24e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a60eb...ccc00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6d9216...bca36b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6df5f1...ef4f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e15a8...9b7460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83cf77...98c3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94613f...ed56b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x96b35f...072d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x972aad...e9633d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x98df53...a8b4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0e572...3d3afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa29913...f408b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6294e...58df92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe1610...2a1d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc18b93...feb7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcab481...40e451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcc3ee4...870161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcc4da1...9a7a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1d9d6...5ca496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda988a...518ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdbe361...aca375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc4e3f...17e28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdd796c...e7ae60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3eb4b...39c0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc2a2f...5898f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x02165d...5b186c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x06f0c6...5a0ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x074319...f01af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x077db2...afb37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0785f4...02c17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x07cd39...33bd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0ad050...e73786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0bd5b0...4f0203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x12978e...1dc2f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236620 | `0x12ed58...99cdef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1448a8...ac1686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1a5bb4...3e100f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1c4be7...7867e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1c7b9f...ce496b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236621 | `0x1f0755...a862f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x20b188...0a8590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x20ceff...d89355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x248019...a5bebe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236622 | `0x29155d...799ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x29532f...6e6880` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236623 | `0x29d025...46059b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2c5e9d...2b4874` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236624 | `0x2d8ae7...36a0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x31bf6b...6e6316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3602c7...c7c1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3b038b...507b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3f0c2f...484c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x414645...facb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x41cbec...5b9d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x43a1c8...420a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x47c388...280210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4f86bc...344159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x501ce6...e8a9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x539984...6ceca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x63f2fe...ac1bbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236628 | `0x64188d...f10ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x641956...a69447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x683f18...ce9809` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236629 | `0x6b937d...f560de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x724b25...725901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x77edd4...d51b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x79b3f3...f76ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7cb205...6abf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x81a01e...fce5ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236630 | `0x831504...7448de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8401f4...ff3dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x84c580...9253f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x86c560...5a04b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fb6ea...92f590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x918130...369d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x96a5a8...423b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9f0253...78fdef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa51fa5...2c2b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xab5fea...d8cd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb43673...b31577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb5cc58...9bc72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb76a00...019108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb7cff0...0f8635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbc5340...ea56a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbdfe9d...450cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc1a3e7...196a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc792f2...e18cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc85492...50a1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcb8f92...e1d877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcea995...1d1396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd23431...e5776d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd24ca3...e3ca10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdba93c...f46e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdd26c2...e9be5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe036a5...25e7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe3ee2d...df479e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe5ae87...00cbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe61141...c1fb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe7995e...e89ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe7c49a...244a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236636 | `0xe91913...ee2edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe9bbd4...253d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xeb5260...c07776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xefd794...b5db7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236637 | `0xf1082f...bf4c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf218d6...35e4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5e07e...c071e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf93fb0...a1a5b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfda3a0...e19e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfddcb4...86ec98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xff426f...285280` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view](https://drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view?usp=drive_link) | Verichains | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view](https://drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view?usp=sharing) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view](https://drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view?usp=sharing) | Cyberscope | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [report.md](https://github.com/hats-finance/dTRINITY-0xee5c6f15e8d0b55a5eff84bb66beeee0e6140ffe/blob/report-update-20250822T111243728Z/report.md) | Hats Finance | Contest | n/a | unknown | Direct | contract_name | matched | 2 | 1 | 0 | 37 | high |
| [drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view](https://drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view?usp=sharing) | Hashlock | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 1 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view — no match: Audit scope mentions forked repos but only dTrinity-specific contracts RewardsController and EmissionManager are explicitly referenced in findings. No other dTrinity contract names are given.
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view — no match: Scope section lists 8 contracts: DexOracleWrapper, OracleAggregator, OracleAware, AmoManager, CollateralVault, Issuer, Redeemer, UniV3AmoVault. Audit date is the end date of engagement: October 4th, 2024.
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view — no match: All 8 contracts listed in source files table and described in overview sections.
- [11576] report.md — matched: Extracted all contract names from the scope table in the audit report. No audit date found in the provided text.
- [11577] drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view — matched: Extracted 28 contract names from the Audit Scope section (pages 7-9) which lists 28 contracts with file paths. Audit date is given as 'October, 2025' in the scope table, interpreted as 2025-10-31 (last day of month).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view | RewardsController | unmatched — not counted | — | mentioned in finding position and code snippet | no |
| drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view | EmissionManager | unmatched — not counted | — | mentioned in finding code snippet | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | DexOracleWrapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | OracleAware | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | AmoManager | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | CollateralVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | Issuer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | Redeemer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | UniV3AmoVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | AmoManager | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | AmoVault | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | CollateralVault | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | Issuer | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | OracleAggregator | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | OracleAware | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | Redeemer | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | UniV3AmoVault | unmatched — not counted | — | listed in source files and overview | no |
| report.md | SupportsWithdrawalFee | unmatched — not counted | — | listed in scope table | no |
| report.md | RescuableVault | unmatched — not counted | — | listed in scope table | no |
| report.md | SwappableVault | unmatched — not counted | — | listed in scope table | no |
| report.md | OdosSwapUtils | unmatched — not counted | — | listed in scope table | no |
| report.md | AaveOracle | unmatched — not counted | — | listed in scope table | no |
| report.md | AmoVault | unmatched — not counted | — | listed in scope table | no |
| report.md | AmoManager | unmatched — not counted | — | listed in scope table | no |
| report.md | CollateralHolderVault | ambiguous — not counted | CollateralHolderVault (alternative) `0x84c580...9253f4` — deployed 2025-12-10 20:01:35+03 — liveness: live (code_present_context)<br>CollateralHolderVault (alternative) `0x624e12...f4febc` — deployed 2024-12-19 04:22:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report.md | CollateralVault | unmatched — not counted | — | listed in scope table | no |
| report.md | Issuer | unmatched — not counted | — | listed in scope table | no |
| report.md | OracleAware | unmatched — not counted | — | listed in scope table | no |
| report.md | RedeemerWithFees | unmatched — not counted | — | listed in scope table | no |
| report.md | ChainlinkDecimalConverter | unmatched — not counted | — | listed in scope table | no |
| report.md | BaseAPI3Wrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | BaseChainlinkWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | OracleAggregator | unmatched — not counted | — | listed in scope table | no |
| report.md | API3CompositeWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | HardPegOracleWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | API3Wrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | API3WrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkCompositeWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | ThresholdingUtils | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopCoreDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopCoreBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DataTypes | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopDepositorBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopRedeemerBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopDepositorOdos | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopRedeemerOdos | unmatched — not counted | — | listed in scope table | no |
| report.md | OdosSwapLogic | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeCollateralVault | own contract | DStakeCollateralVault (selected) `0x5432ed...8cc7be` — deployed 2025-07-30 12:57:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | WrappedDLendConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeRouterDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x58acc2...492409` — deployed 2025-07-30 12:57:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | DStakeRewardManagerDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| report.md | ERC20VestingNFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | IssuerV2_1 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | RedeemerV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AmoManagerV2 | ambiguous — not counted | AmoManagerV2 (alternative) `0x57bbd5...0bebae` — deployed 2025-11-28 05:45:33+03 — liveness: live (current_address_book_code)<br>AmoManagerV2 (alternative) `0x29532f...6e6880` — deployed 2025-12-11 07:28:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AmoDebtToken | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosSellAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosBuyAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosDebtSwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosLiquiditySwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosRepayAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosWithdrawSwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OracleValidation | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | PendleSwapLogic | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SafeOracleMath | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SwapExecutor | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosSwapUtils | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SupportsWithdrawalFee | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | ERC20VestingNFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeCollateralVaultV2 | own contract | DStakeCollateralVaultV2 (selected) `0x4acbcf...30f6fe` — deployed 2025-12-12 11:40:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeRouterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeTokenV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7cb205...6abf02` — deployed 2025-12-12 11:40:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | GenericERC4626ConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | MetaMorphoConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AllocationCalculator | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DeterministicVaultSelector | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeRewardManagerMetaMorpho | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeIdleVault | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| fraxtal | `0xa5f9f6...a26a49` | ACLManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29532f...6e6880` | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x57bbd5...0bebae` | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84c580...9253f4` | CollateralHolderVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x624e12...f4febc` | CollateralHolderVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07fff9...1ca236` | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x788d96...614d4a` | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 5 |
| standard_library | 21 |
| needs_review | 134 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 79 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=4

Zero-match audit list:

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view

Fork inheritance lineage and inherited audits are included when available.
