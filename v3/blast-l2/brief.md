# Agentic Audit Brief: Blast L2

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 38.8% over 90 days

## Project Overview

- Project: Blast L2 (`blast-l2`)
- Website: [https://blast.io/](https://blast.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, ethereum, sepolia
- Contract surface: 323 unique implementations (424 raw deployments)
- Coverage basis: 9/18 confirmed own live verified implementations (50.0%); conservative 45.0% with 2 needs-review implementation(s)
- DeFi Llama TVL: $47,965,904.00
- On-chain TVL (included contracts): $569.61
- TVL by chain: Blast $569.61

## Project Description

This brief describes the observed EVM deployment and audit surface for Blast L2. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across blast, ethereum, sepolia. Structural roles: 12 supporting, 5 core, 3 unclassified. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: supporting (12), core (5), unclassified (3)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (8), erc20 (2), erc165 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (13), solmate (13)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4316a0...1af7db`, chain 1)
- UnnamedContract (`0x13b0d8...e9bef2`, chain 81457)
- UnnamedContract (`0x420000...000014`, chain 81457)
- UnnamedContract (`0x420000...000017`, chain 81457)
- UnnamedContract (`0x420000...000022`, chain 81457)
- UnnamedContract (`0x420000...000024`, chain 81457)
- UnnamedContract (`0x430000...000002`, chain 81457)
- UnnamedContract (`0x430000...000003`, chain 81457)
- UnnamedContract (`0x430000...000004`, chain 81457)
- UnnamedContract (`0x4e59b4...b4956c`, chain 81457)
- UnnamedContract (`0x7a0d94...406d12`, chain 81457)
- UnnamedContract (`0x96f6b7...23139c`, chain 81457)
- UnnamedContract (`0x9d020b...eb9af7`, chain 81457)
- UnnamedContract (`0xc0d3c0...d30002`, chain 81457)
- UnnamedContract (`0xcfa3a7...315196`, chain 81457)
- CreateX (`0xba5ed0...8ba5ed`, chain 81457)
- DSRYieldProvider (`0x0733f6...3681a8`, chain 1)
- GovernanceToken (`0xb1a570...88e2ad`, chain 81457)
- ImmutableCreate2Factory (`0x000000...439497`, chain 81457)
- L1ChugSplashProxy (`0x3a05e5...a49115`, chain 1)
- L1ChugSplashProxy (`0x697402...bfc524`, chain 1)
- L1ChugSplashProxy (`0x98078d...e1c8fe`, chain 1)
- L1ChugSplashProxy (`0xa23028...828438`, chain 1)
- Multicall3 (`0xca11bd...76ca11`, chain 81457)
- OptimismMintableERC20 (`0xf7bc58...1d2692`, chain 81457)
- Proxy (`0x0ec68c...0db6cb`, chain 1)
- Proxy (`0x826d1b...215c76`, chain 1)
- Proxy (`0x420000...000007`, chain 81457)
- Proxy (`0x420000...000010`, chain 81457)
- Proxy (`0x420000...000012`, chain 81457)
- Proxy (`0x420000...000016`, chain 81457)
- Proxy (`0x420000...000023`, chain 81457)
- Proxy (`0x430000...000005`, chain 81457)
- ResolvedDelegateProxy (`0x5d4472...a8e9d0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/18 (50.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 33 own, 9 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 279 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 35 of 323 unique; 288 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/84
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 239
- Unique implementations: 323
- Raw deployments: 424
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $569.61
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 50.0% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $569.61 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 9 | 10.7% | 2022-09 |
| Trail of Bits | Tier 1 | 3 | 3.6% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230691 | `0x5d4472...a8e9d0` | ✅ Audited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230689 | `0xa45a0c...9c8975` | ✅ Audited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230693 | `0x697402...bfc524` | ✅ Audited |
| L2CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | blast | unit-230696 | `0x420000...000007` | ✅ Audited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-230688 | `0x826d1b...215c76` | ✅ Audited |
| L2StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-230697 | `0x420000...000010` | ✅ Audited |
| L2ToL1MessagePasser | unknown | project_anchor | own_supporting | 1 | blast | unit-230699 | `0x420000...000016` | ✅ Audited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | blast | unit-230687 | `0xf7bc58...1d2692` | ✅ Audited |
| OptimismPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230692 | `0x0ec68c...0db6cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GovernanceToken | token | project_anchor | own_supporting | 0 | blast | unit-230679 | `0xb1a570...88e2ad` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe064b5...7380c0` | ⚠️ Unaudited |
| AuthGemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x636242...522b35`; ethereum `0xad37fd...136e6b` | ⚠️ Unaudited |
| CatFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f07f4...ed752f` | ⚠️ Unaudited |
| CodeHash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f211...265221` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0d8...e9bef2` | ⚠️ Unaudited |
| CreateX | unknown | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba5ed0...8ba5ed`; blast `0xba5ed0...8ba5ed` | ⚠️ Unaudited |
| DaiJoinFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x64a84e...f27177`; ethereum `0xcf930f...d29b32` | ⚠️ Unaudited |
| DisableLiquidationSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77223a...695165` | ⚠️ Unaudited |
| DsrManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373238...081ddb` | ⚠️ Unaudited |
| DSRYieldProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230627 | `0x0733f6...3681a8` | ⚠️ Unaudited |
| DssDecember27Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c19e...60a0e1` | ⚠️ Unaudited |
| DssDecember6Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf267ef...86b813` | ⚠️ Unaudited |
| DssDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x733be4...1e51a4`; ethereum `0xbaa652...80d3f4` | ⚠️ Unaudited |
| DssDeployPauseProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6bda13...1a1370`; ethereum `0x92d317...b779b3` | ⚠️ Unaudited |
| DssFebruary7Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5f3a...7dd170` | ⚠️ Unaudited |
| DssFlopReplaceSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x30cfdb...b90863`; ethereum `0x902f00...e51a02` | ⚠️ Unaudited |
| DssIncreaseDelay24Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a7d50...c01401`; ethereum `0xdd4aa9...34eae9` | ⚠️ Unaudited |
| DssJanuary10Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a87ac...bd4fc5` | ⚠️ Unaudited |
| DssJanuary24Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf880d4...caee08` | ⚠️ Unaudited |
| DssJanuary31Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48916a...3b1677` | ⚠️ Unaudited |
| DssJanuary3Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x333c05...38e272` | ⚠️ Unaudited |
| DssLaunchSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa710c9...224c6d`; ethereum `0xf44113...6e202e` | ⚠️ Unaudited |
| DSSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x365fb0...8ae114`; ethereum `0xbb7070...41e2c9` | ⚠️ Unaudited |
| DssProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x82ecd1...fd5038`; ethereum `0xee0d5c...9de5d7` | ⚠️ Unaudited |
| DssProxyActionsDsr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07ae5d...0f38b1`; ethereum `0x07ee93...e54f26` | ⚠️ Unaudited |
| DssProxyActionsEnd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x069b2f...8f1008`; ethereum `0x689e53...779a34`; ethereum `0x7aff9f...74bc57` | ⚠️ Unaudited |
| DssSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 49 deployments: ethereum `0x049e4d...529a32`; ethereum `0x057d35...3dbd4c`; ethereum `0x0ac7bd...eff495`; ethereum `0x0f449c...c48784`; ethereum `0x127b47...d4bb30`; ethereum `0x1d51ca...341d9b`; ethereum `0x1f3229...5a4d38`; ethereum `0x261086...850362`; ethereum `0x261cac...a72bdc`; ethereum `0x3526a5...baebb8`; ethereum `0x43aac7...b8c006`; ethereum `0x4b46e3...7ed61d`; ethereum `0x4bf6e7...1e31d4`; ethereum `0x4ff025...eabd2c`; ethereum `0x529b8b...86ba00`; ethereum `0x569c1d...401df8`; ethereum `0x64976c...349c9d`; ethereum `0x658ec6...fcdd51`; ethereum `0x6941df...759ac1`; ethereum `0x69ec60...96ed8c`; ethereum `0x7852bb...7422d9`; ethereum `0x7b540c...88c929`; ethereum `0x7f6dcc...e37599`; ethereum `0x84f411...32ff2b`; ethereum `0x872c49...49246e`; ethereum `0x8afa02...a4e0be`; ethereum `0x91e556...9f7589`; ethereum `0x971318...120fb9`; ethereum `0x9ab3ae...05202f`; ethereum `0x9e361d...778140`; ethereum `0x9ef952...454a0d`; ethereum `0xa3fa69...469dec`; ethereum `0xa8692c...f4a75d`; ethereum `0xae6edd...49795a`; ethereum `0xc07d37...5381b0`; ethereum `0xca3b2e...390b52`; ethereum `0xcd989b...d59e33`; ethereum `0xd0dd71...f3a38e`; ethereum `0xd17abf...a3d6da`; ethereum `0xd74cc5...077bd4`; ethereum `0xd77ad9...3376cf`; ethereum `0xd7af28...b94015`; ethereum `0xdb20f2...851fe4`; ethereum `0xe8ccac...b06209`; ethereum `0xeb19d8...aab911`; ethereum `0xf13261...b3902a`; ethereum `0xf67de1...dff75d`; ethereum `0xf8085d...f676da`; ethereum `0xfddeef...9ba659` | ⚠️ Unaudited |
| DssSpell20200221 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2af6ef...47bdc6`; ethereum `0xd24fbb...dc2cad` | ⚠️ Unaudited |
| DSValue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3ec807...0fa602`; ethereum `0x54003d...44ab1e`; ethereum `0x77b688...6085a0`; ethereum `0xee1383...98f1e5` | ⚠️ Unaudited |
| EnableLiquidationSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36df1...3d90fd` | ⚠️ Unaudited |
| ETHYieldManager | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230695 | `0x98078d...e1c8fe` | ⚠️ Unaudited |
| FlapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f941...2c6740` | ⚠️ Unaudited |
| FlipFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4acdbe...974f2b`; ethereum `0x7166ee...4087b8`; ethereum `0xbab4fb...e46fc5`; ethereum `0xf9e436...0953d2` | ⚠️ Unaudited |
| FlipperMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9bddb9...570f75`; ethereum `0xc4be7f...97f472` | ⚠️ Unaudited |
| FlopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920ff2...928f99` | ⚠️ Unaudited |
| Flopper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d95a0...522e99` | ⚠️ Unaudited |
| Gas | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x430000...000001` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x15d34e...d755b7`; ethereum `0x2f0b23...6b042a`; ethereum `0x3d0b19...1772ca`; ethereum `0x475f1a...59e4a9`; ethereum `0x4bcd9b...09080b`; ethereum `0xa6ea3b...4c0ef9`; ethereum `0xc7e8cd...a7e5d0`; ethereum `0xfced11...b2427f` | ⚠️ Unaudited |
| GemJoin5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x260000...dd0428`; ethereum `0xa191e5...9e84b7`; ethereum `0xbf72da...8d5eb5` | ⚠️ Unaudited |
| GemJoin6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4454af...837f44` | ⚠️ Unaudited |
| GetCdps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36a724...8ff573`; ethereum `0xf69796...71e58b` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4f72ee...c58b05`; ethereum `0x67ca7c...af608c` | ⚠️ Unaudited |
| GovActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f5f09...589b6e`; ethereum `0x6e2795...8ba822` | ⚠️ Unaudited |
| IlkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b4ce5...e52c24`; ethereum `0xbe4f92...96bd07` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | project_anchor | own_supporting | 0 | ethereum | n/a | 3 deployments: ethereum `0x000000...439497`; ethereum `0xcfa3a7...315196`; blast `0x000000...439497` | ⚠️ Unaudited |
| Insurance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbbe2cd...5fbba6` | ⚠️ Unaudited |
| Insurance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcff70d...6ff873` | ⚠️ Unaudited |
| L1BlastBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230690 | `0x3a05e5...a49115` | ⚠️ Unaudited |
| L2BlastBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-230700 | `0x430000...000005` | ⚠️ Unaudited |
| LaunchBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5f6ae0...1da47d` | ⚠️ Unaudited |
| LaunchBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa01def...f14276` | ⚠️ Unaudited |
| MedianBATUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b463...294966` | ⚠️ Unaudited |
| MedianBTCUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0f30c...b5751f` | ⚠️ Unaudited |
| MedianETHUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64de91...410c85` | ⚠️ Unaudited |
| MedianKNCUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83076a...71ad97` | ⚠️ Unaudited |
| MedianZRXUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956ecd...02e55e` | ⚠️ Unaudited |
| MegaPoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6b8158...c5bc1c`; ethereum `0x9885c8...f96f7b`; ethereum `0xbec282...a808b5`; ethereum `0xde9457...bc6b3a`; ethereum `0xe4a37b...3ad7c2`; ethereum `0xf4771e...0d8be0` | ⚠️ Unaudited |
| MigrationProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x23c800...d980a1`; ethereum `0x2e1f60...2fb426`; ethereum `0xe4b22d...01b674` | ⚠️ Unaudited |
| MintManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xca2e5b...44af4f` | ⚠️ Unaudited |
| MkrAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6eeb68...6ddfb8`; ethereum `0xc725e5...8bf13d` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x34f6bb...bcf9dc`; ethereum `0x5e227a...c17796` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca11bd...76ca11`; blast `0xca11bd...76ca11` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6b916d...564847` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 1 | blast | unit-230698 | `0x420000...000012` | ⚠️ Unaudited |
| OSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x7382c0...f5cd3c`; ethereum `0x806725...078c13`; ethereum `0x81fe72...b85763`; ethereum `0xb4eb54...15abe6`; ethereum `0xf185d0...5c6c42`; ethereum `0xf36b79...c13069` | ⚠️ Unaudited |
| OsmMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x76416a...4aa14f`; ethereum `0xc96f5e...fef5bb` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2241b3...35e5f7` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x420000...000015` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | blast | unit-230659 | `0x420000...000023` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x364289...3ce883` | ⚠️ Unaudited |
| ScdMcdMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa91b5e...7101cd`; ethereum `0xc73e03...0ab849` | ⚠️ Unaudited |
| Shares | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x430000...000000` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5531dc...f805a9` | ⚠️ Unaudited |
| USDYieldManager | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230694 | `0xa23028...828438` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (239)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x004b75...e25480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00efe3...adf889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01792e...cb8cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0256c2...599ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b3fa...404a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x034f64...ac780e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b030...cfbd74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cba5...fcec62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ad28...a5b796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e76b...de4a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055353...e0d6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056032...44d2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0620d8...f68204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065b86...f3c213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06895e...0865c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0740c7...e575fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0780e9...078aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cc6a...89a2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082c9b...acc306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8ec3...2e2237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa2eb...89d356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6032...26cc9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1c8...5f5ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6291...64619f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1152f2...ce23e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11539d...264205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x117b90...48296c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d786...1a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1610cc...44002e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f4c0...8af74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1765d5...638c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1863c0...c052f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1978da...b77a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a361...30fc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5ee7...3427f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb6e6...35a8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201c00...e6e85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2099bc...ac5078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210851...90c23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f33c...29d08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d94d...c09e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24fe4a...3991dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2546c3...aa45b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256902...a85266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b1b9...6c7d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fad8...909d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2757e4...98c8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2955e2...da3264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bd95...50d268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a35fa...6b4a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3b28...68f93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7dec...7d08c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d76bb...5bedd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e278c...cd372d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fadcf...834c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311ff7...41bd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x320216...738817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322932...41d328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3417a5...c1ef82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34247b...f564f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bccd...59f507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3778e3...9cb99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7926...2f8338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deeb4...c9c274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x403689...d788e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4249f9...17c51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428b70...39f385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230628 | `0x4316a0...1af7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4447a2...e5e577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f0a9...945cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483ce5...02aae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa052...5308ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbe5f...6d9c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0232...5f8674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8834...e80458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e5a0...a65daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57843b...ed077c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5887dc...129547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599dbc...be11fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0c7c...cf7e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b79ee...edd190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9579...646615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610165...afeaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6157f6...470aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618b9f...b7d3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61cc20...666e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624f4e...840c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6374dc...88b94d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x638242...301f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a4b9...7af934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656540...efa7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68322c...ba423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683ee6...a81adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6897ec...aff0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697f01...5f616d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69be6c...35fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a94dc...99681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8721...7f0553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c42e6...edd885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df6b0...4d5caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2981...3fd20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f5...ccb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701311...914e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718df1...d7322f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72f7da...3fe0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x745669...f61c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6a8...28d501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77bef2...7348e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78604e...e9f8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af1cf...a8de22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b21c3...e031db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f11f7...43a385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812325...841ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81576c...0922c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x822d49...c06557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8269f0...f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842c99...2e81c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8487f0...722a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x849186...cfc056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f2b4...a4ee91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877fd5...8c3ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878228...8956ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d7b9...f55617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b50dd...931c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9edf...ab0e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc001...1f7273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cd969...b039be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901473...403961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90365c...c6d906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90bb56...c2f8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920f55...68ce06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9338f2...c96333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942e30...7ea1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x962d55...9aa468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966ab3...8d3ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993385...05ff37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c226c...b001e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4adf...0b61bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c89c8...93a7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3ad1...726825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f2944...321d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fef11...c72d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e992...013ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38a89...03ec94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b041...b99596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a786...1facdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa80e81...e29036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85b2a...7c36f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ee75...c9433e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5683...095c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9478...cd0bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9993...2b0b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45c64...c4e5fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5327f...f97ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b06a...7c58fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c3db...d5185a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cca0...4daabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80df2...c164e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4f05...595c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd1af...f3621b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe23ed...7927e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe2873...565466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3505...662f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7e4e...86c8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf29e4...ae301c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41c47...4f5d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc456c0...77cb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc644cc...37dca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687ad...da962c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc90730...2abd6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a7a6...fe632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb0e6b...6e2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd5c1a...6627d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcef92c...fef6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0fa7...387e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f8f6...054aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27a5f...c882e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37572...eb4cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3abc8...a766e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59fa5...94adc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd886dc...f071af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d327...514dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb7d25...b4511c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc202b...80d2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1069...3847e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeda8d...8e122f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdedd12...457410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfda04...840d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02db8...85b4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe32c45...e38dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5401e...478c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f57f...65120f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82a80...cfc169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe865e6...a03a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b6f2...976fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed530b...f89fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcbe7...106b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8f24...132c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ffd5...1b396a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15ca8...af4f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf204fd...1c82fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf238e4...6e03b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28d71...6ac226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2fb84...73a2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbf89b...f5d73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd647...3d0470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd34e2...30ba53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdaeb1...9a91b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe622c...6eabdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7bb1...94e392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd852...a900cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230651 | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230656 | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230657 | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230658 | `0x420000...000022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230660 | `0x420000...000024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230661 | `0x430000...000002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230662 | `0x430000...000003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230663 | `0x430000...000004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230665 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230669 | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230673 | `0x96f6b7...23139c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230676 | `0x9d020b...eb9af7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230681 | `0xc0d3c0...d30002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230684 | `0xcfa3a7...315196` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230629 | `0x26b1b9...6c7d08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230630 | `0x2757e4...98c8c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230631 | `0x311ff7...41bd8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230641 | `0x7f11f7...43a385` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230642 | `0x9338f2...c96333` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230643 | `0x993385...05ff37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230644 | `0xc644cc...37dca8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230645 | `0xdeda8d...8e122f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230646 | `0xed530b...f89fa5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | matched | 7 | 5 | 0 | 3 | low |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | matched | 9 | 8 | 0 | 10 | high |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | matched | 3 | 3 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20655] 2022_05-Bedrock_Contracts-Zeppelin.pdf — matched: The report text is garbled and incomplete. No clear scope section or date found. Contract names inferred from findings and references.
- [20658] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf — matched: All contracts listed in the Scope section of the audit report.
- [20661] 2023_01-Bedrock_Updates-TrailOfBits.pdf — matched: Extracted contracts from Project Targets and Project Coverage sections. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x697402...bfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x420000...000010` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismMintableERC20 | own contract | OptimismMintableERC20 (selected) `0xf7bc58...1d2692` — deployed 2024-03-19 23:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0xa45a0c...9c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2ERC721Bridge | own contract | 0x420000… (selected) `0x420000...000014` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ChugSplashProxy | ambiguous — not counted | L1ChugSplashProxy (proxy) (alternative) `0x3a05e5...a49115` — deployed 2024-02-25 01:15:23+03 — liveness: live (current_address_book_code)<br>L1ChugSplashProxy (proxy) (alternative) `0xa23028...828438` — deployed 2024-02-25 01:15:47+03 — liveness: live (code_present_context)<br>L1ChugSplashProxy (proxy) (alternative) `0x697402...bfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code)<br>L1ChugSplashProxy (proxy) (alternative) `0x98078d...e1c8fe` — deployed 2024-02-25 01:15:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1CrossDomainMessenger | own proxy deployment | ResolvedDelegateProxy (proxy) (selected) `0x5d4472...a8e9d0` — deployed 2024-02-25 01:16:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x697402...bfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2CrossDomainMessenger | own proxy deployment | Proxy (proxy) (selected) `0x420000...000007` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x420000...000010` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ToL1MessagePasser | own proxy deployment | Proxy (proxy) (selected) `0x420000...000016` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x430000...000005` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0xa45a0c...9c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x420000...000007` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code)<br>Proxy (alternative) `0x420000...000023` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x420000...000012` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x420000...000010` — liveness: live (code_present_context)<br>Proxy (proxy) (alternative) `0x420000...000016` — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Semver | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0xa45a0c...9c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ERC721Bridge | own contract | 0x420000… (selected) `0x420000...000014` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | SystemConfig | unmatched — not counted | — | listed in Project Coverage section as L1 SystemConfig contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | mentioned in Coverage Limitations as updated contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2ToL1MessagePasser | own proxy deployment | Proxy (proxy) (selected) `0x420000...000016` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | MerkleTrie | unmatched — not counted | — | mentioned in Coverage Limitations as refactored library | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in Coverage Limitations as minor changes | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L1Block | unmatched — not counted | — | mentioned in Project Coverage section as predeployed L2 contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0xb1a570...88e2ad` | GovernanceToken | token | $569.61 | Verified native implementation with $569.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0733f6...3681a8` | DSRYieldProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98078d...e1c8fe` | ETHYieldManager | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a05e5...a49115` | L1BlastBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x430000...000005` | L2BlastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x420000...000012` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa23028...828438` | USDYieldManager | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 13 |
| needs_review | 237 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (16 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 16 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=19

Fork inheritance lineage and inherited audits are included when available.
