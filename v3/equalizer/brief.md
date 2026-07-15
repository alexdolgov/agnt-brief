# Agentic Audit Brief: Equalizer

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Equalizer (`equalizer`)
- Website: [https://equalizer.exchange/](https://equalizer.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, fantom, sonic
- Contract surface: 334 unique implementations (526 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $741,145.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Equalizer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across base, fantom, sonic. Structural roles: 19 supporting, 3 core, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: supporting (19), core (3), unclassified (1)
- Contract kinds: contract (22), unclassified (1)
- Detected standards: multicall (5), erc165 (3), erc721 (3), erc1967proxy (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 90 contracts are derived from known codebases. 90 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x17fa9d...cb10b4`, chain 146)
- UnnamedContract (`0x1c065b...d303fa`, chain 146)
- UnnamedContract (`0x304511...f7235a`, chain 146)
- UnnamedContract (`0x30f45d...e5ce3b`, chain 146)
- UnnamedContract (`0x3fd3a0...4865a6`, chain 146)
- UnnamedContract (`0x547db6...6e937e`, chain 146)
- UnnamedContract (`0xbf4bfe...fb4b4b`, chain 146)
- UnnamedContract (`0xddd984...528fcc`, chain 146)
- UnnamedContract (`0xddf26b...0d5f19`, chain 146)
- UnnamedContract (`0x03f7ad...029ec5`, chain 250)
- UnnamedContract (`0x05733d...905ac9`, chain 250)
- UnnamedContract (`0x0b5c7b...de8516`, chain 250)
- UnnamedContract (`0x0d90b1...9fccf0`, chain 250)
- UnnamedContract (`0x0fb84a...e354c4`, chain 250)
- UnnamedContract (`0x162378...0c9113`, chain 250)
- UnnamedContract (`0x2c9344...484fce`, chain 250)
- UnnamedContract (`0x380bd5...e2c7dc`, chain 250)
- UnnamedContract (`0x59f557...05db35`, chain 250)
- UnnamedContract (`0x6690ad...863eca`, chain 250)
- UnnamedContract (`0x8e2a63...dfd06f`, chain 250)
- UnnamedContract (`0x940407...65b2b3`, chain 250)
- UnnamedContract (`0x9ca980...02a979`, chain 250)
- UnnamedContract (`0x9e4fb3...171060`, chain 250)
- UnnamedContract (`0xb0f598...eb079f`, chain 250)
- UnnamedContract (`0xc4a987...e7506c`, chain 250)
- UnnamedContract (`0xd0f8d5...a1ed8b`, chain 250)
- UnnamedContract (`0xe17e46...055c4e`, chain 250)
- UnnamedContract (`0x28c9c7...d51c53`, chain 8453)
- UnnamedContract (`0x30f45d...e5ce3b`, chain 8453)
- UnnamedContract (`0x44621c...005685`, chain 8453)
- UnnamedContract (`0x54016a...d9c32c`, chain 8453)
- UnnamedContract (`0x547db6...6e937e`, chain 8453)
- UnnamedContract (`0x9b500c...e542e7`, chain 8453)
- UnnamedContract (`0xcb418f...30ae18`, chain 8453)
- UnnamedContract (`0xe4ba08...7500df`, chain 8453)
- UnnamedContract (`0xed8db6...b5ec04`, chain 8453)
- NonfungiblePositionManager (`0x79c26d...516de5`, chain 146)
- NonfungiblePositionManager (`0x79c26d...516de5`, chain 8453)
- QuoterV2 (`0xc701e9...8db678`, chain 146)
- QuoterV2 (`0xc701e9...8db678`, chain 8453)
- Router02 (`0x7635cd...d27e4b`, chain 146)
- Router03 (`0xcc6169...d23fad`, chain 146)
- ScaleRouter (`0x2f87bf...2be6fa`, chain 8453)
- SuperVoter (`0xb6dfc3...fad93f`, chain 146)
- SwapRouter02 (`0xe4ba08...7500df`, chain 146)
- TransparentUpgradeableProxy (`0x46abb8...592687`, chain 8453)
- TransparentUpgradeableProxy (`0xb136b4...db13d6`, chain 8453)
- UniswapInterfaceMulticall (`0x9b500c...e542e7`, chain 146)
- UniswapV3Factory (`0x7ca1dc...8f1c40`, chain 146)
- UniswapV3Factory (`0x7ca1dc...8f1c40`, chain 8453)
- UnnamedContract (`0x07378e...442e60`, chain 250)
- UnnamedContract (`0x180da8...f86180`, chain 250)
- UnnamedContract (`0x1a05eb...f5a447`, chain 250)
- UnnamedContract (`0x2aa079...23b285`, chain 250)
- UnnamedContract (`0x30f45d...e5ce3b`, chain 250)
- UnnamedContract (`0x33da53...aaa470`, chain 250)
- UnnamedContract (`0x3e8b14...c946f4`, chain 250)
- UnnamedContract (`0x3fd3a0...4865a6`, chain 250)
- UnnamedContract (`0x4bebeb...060d5b`, chain 250)
- UnnamedContract (`0x547db6...6e937e`, chain 250)
- UnnamedContract (`0x58be1f...d746b0`, chain 250)
- UnnamedContract (`0x5b3220...85c157`, chain 250)
- UnnamedContract (`0x5d4589...9d4308`, chain 250)
- UnnamedContract (`0x6ef2fa...c34130`, chain 250)
- UnnamedContract (`0x777928...54cad8`, chain 250)
- UnnamedContract (`0x79c26d...516de5`, chain 250)
- UnnamedContract (`0x7ba9b1...69eb6a`, chain 250)
- UnnamedContract (`0x7ca1dc...8f1c40`, chain 250)
- UnnamedContract (`0x8313f3...63ce94`, chain 250)
- UnnamedContract (`0x85e7f5...80c72d`, chain 250)
- UnnamedContract (`0x881713...7edb74`, chain 250)
- UnnamedContract (`0x8b3e5e...f0b4d9`, chain 250)
- UnnamedContract (`0x8f0235...f05f43`, chain 250)
- UnnamedContract (`0x8f6666...11b2dc`, chain 250)
- UnnamedContract (`0x93b973...5041f8`, chain 250)
- UnnamedContract (`0x9b500c...e542e7`, chain 250)
- UnnamedContract (`0x9e4105...c91cb8`, chain 250)
- UnnamedContract (`0xa83f31...7301b8`, chain 250)
- UnnamedContract (`0xaec6d3...22bea9`, chain 250)
- UnnamedContract (`0xbf65ca...0c57cb`, chain 250)
- UnnamedContract (`0xc6366e...10832a`, chain 250)
- UnnamedContract (`0xc701e9...8db678`, chain 250)
- UnnamedContract (`0xc8be3d...2be578`, chain 250)
- UnnamedContract (`0xcc82bf...4c8c48`, chain 250)
- UnnamedContract (`0xd311fd...70d511`, chain 250)
- UnnamedContract (`0xe3d1a1...18dac1`, chain 250)
- UnnamedContract (`0xe4ba08...7500df`, chain 250)
- UnnamedContract (`0xe8ca91...4b60e8`, chain 250)
- UnnamedContract (`0xf2bfb9...0cc7e1`, chain 250)
- UnnamedContract (`0xfb0c0c...156887`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (14 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 90/176 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 90 own, 31 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 213 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 90 of 334 unique; 244 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/71
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 263
- Unique implementations: 334
- Raw deployments: 526
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x0d4e88...212967`; sonic `0x15864c...b01dfc`; sonic `0x769e38...c6ccdd` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x0f0c34...067160`; sonic `0x3dd53e...cefc2e`; sonic `0xa07662...5de5c4`; sonic `0xded257...6d456e`; sonic `0xfeffd4...d9f60f`; base `0x90cda9...e93297` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe79ea8...f75f51` | ⚠️ Unaudited |
| ElitenessERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: sonic `0x31b59f...afc109`; sonic `0x5e9d25...d11c94`; sonic `0x86112b...e8da63`; sonic `0x88dd90...218c34`; sonic `0xcc835d...2b8fca`; sonic `0xd4aa38...592e22`; sonic `0xd600ec...eaa134`; sonic `0xd8a6f9...3028db`; sonic `0xdac174...951694`; sonic `0xdc2de2...d1a88b`; base `0x17b9b0...fe24eb`; base `0x223bfa...5838d7`; base `0x248bb3...ab7c61`; base `0x49d19c...173ac7`; base `0x549a36...da7d7e`; base `0x981b34...1d065b`; base `0xf704d9...d6f754` | ⚠️ Unaudited |
| elitenessERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8de568...ba1e22`; sonic `0xac4bb9...6c8877` | ⚠️ Unaudited |
| ElitenessFarmland | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x11cfb3...d75240`; sonic `0x21c99e...90e006`; sonic `0x381a53...81073e`; sonic `0xd58273...21faa0`; sonic `0xde24d6...966ec7`; sonic `0xfaa72e...b87f40` | ⚠️ Unaudited |
| eliteRingsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x22cfb3...68893f`; sonic `0x52ce45...fff2a6`; sonic `0x54ec1e...f1a397`; sonic `0x5af02b...d6f0ff`; sonic `0x5f3608...18141a`; sonic `0x6164b6...e9e950`; sonic `0xa5fea6...e190eb`; sonic `0xad27df...3ba57e`; sonic `0xad605d...8d0906`; sonic `0xae1a80...ab8735`; sonic `0xdabb71...8b8773` | ⚠️ Unaudited |
| eLOCK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x18f8ad...25b2db`; sonic `0x23bf56...7ed48f`; sonic `0x5a94c9...1fbe9f`; sonic `0x61bd43...d7f53b`; sonic `0x681f98...cfdc5b`; sonic `0x8f7df1...e59af5`; sonic `0xa25e8e...d6ce7e`; sonic `0xa7678e...1e1abb`; base `0xb212f3...ab5442` | ⚠️ Unaudited |
| eLOCKS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x26d70b...7e35da`; sonic `0x3518b5...ad89eb`; sonic `0x3e2866...6f308e`; sonic `0x7f7fc8...fffe99`; sonic `0x8ff927...51a430`; base `0xa9a3e3...0d6a6a` | ⚠️ Unaudited |
| ElToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1613ab...f58bef`; base `0x5301bc...1ffe5c`; base `0x74ebd0...fc3502`; base `0x7e55f9...6c8f62` | ⚠️ Unaudited |
| elTokenZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x7f142a...d14134`; sonic `0xba65aa...d10692`; sonic `0xcc4bae...5ae56c`; sonic `0xe339f4...265055` | ⚠️ Unaudited |
| Equal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: sonic `0x0dd7c0...51fe2c`; sonic `0x16641a...0b26c8`; sonic `0x21c785...8b3383`; sonic `0x591e02...11dac4`; sonic `0x5babd5...f52b63`; sonic `0xa821d1...20b5fd`; sonic `0xb934de...fe602c`; sonic `0xcfc8d2...c64f15`; sonic `0xefbf87...f330f2`; sonic `0xfa6d96...dbe89b`; base `0x7be024...101eab`; base `0xdf4869...1be136` | ⚠️ Unaudited |
| Equalens_supplyStats | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1b62eb...4b2f89`; sonic `0x6ce928...fde033`; sonic `0xd1cc94...2f13ae` | ⚠️ Unaudited |
| EqualizerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x10b1df...e47d10`; base `0x3ba64e...56a481`; base `0x75a1d7...053859` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5300db...631dd2`; sonic `0x83291f...3ac4d4` | ⚠️ Unaudited |
| fBOMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x807c19...08542d`; sonic `0xedf8b6...c284cb` | ⚠️ Unaudited |
| FeeSynthesizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: sonic `0x502321...56f04c`; sonic `0x9df999...26c317`; sonic `0xb5aed2...644127`; base `0x11b3dc...a1218e`; base `0x4031fc...4f4cc8`; base `0x8ad889...c78f13`; base `0x9bf40a...83bace`; base `0xbd52ef...fa11d1` | ⚠️ Unaudited |
| FeeTierManager_2Thick | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5126cb...77dc30` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x1c0f3c...6e37b9`; base `0x7b7faf...8ebd27`; base `0x999740...91885f`; base `0xa4d2b9...8b0c85`; base `0xcc835d...2b8fca` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | project_anchor | own_supporting | 1 | base | unit-239130 | `0xb136b4...db13d6` | ⚠️ Unaudited |
| impermaxBorrowableERC4626Wrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc7d318...00d083`; sonic `0xffa942...3dccf0` | ⚠️ Unaudited |
| LocklessReceiptMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0d571c...445ca2`; sonic `0x8b2d8e...445f6e` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x078c68...dc8ecb`; sonic `0x3fdd8a...68de1e`; sonic `0x7697cc...11147b`; sonic `0xb87119...86322a`; base `0x41c4d6...89a7e4`; base `0x731372...b8dd46`; base `0xa1b88e...ab54b4` | ⚠️ Unaudited |
| MultiNotify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x990d2c...7fab3b`; base `0xf7d8c4...07d792` | ⚠️ Unaudited |
| multiNotifyEqualToEltokenGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: sonic `0x1244a7...b9c92c`; sonic `0x4e552d...ec2463`; sonic `0x608469...baa077`; sonic `0x79f90d...236f49`; sonic `0x8a9690...d83e9a`; sonic `0xac4dbd...19e075`; sonic `0xb959fa...ec8c8b`; sonic `0xe377f2...7cf89c`; sonic `0xfb3e3d...7be6bc`; sonic `0xff1329...62856e` | ⚠️ Unaudited |
| NFP_Staker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x00a76d...df1306`; sonic `0x8273ae...780af1`; sonic `0x9a1874...3b8209`; sonic `0xafe7ac...103ad8`; sonic `0xcfa61d...13dca2`; sonic `0xd7a6f1...35c56c`; sonic `0xdc5847...5ee35f`; sonic `0xdf8057...828c09` | ⚠️ Unaudited |
| NFTDescriptor | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239112 | `0x97a7b2...d85073` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | sonic | unit-238979 | `0x79c26d...516de5` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc90526...23fa0b` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239085 | `0x2b5229...6d7c2f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | base | unit-239106 | `0x79c26d...516de5` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83240b...6aac84` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x312e1f...00572d`; sonic `0xb6a21a...52f637`; sonic `0xcdc292...6bf6a0`; sonic `0xfcfa93...4fdf2d`; base `0x39cc81...b1d91c`; base `0x653ce1...ad3414`; base `0x8104be...5a417f`; base `0xc295f6...197250`; base `0xd7627e...b222e1` | ⚠️ Unaudited |
| PriceGuru | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02c32e...d98666` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x0be40f...c1d1aa`; sonic `0x1d864a...ed1f2e`; sonic `0x3ba64e...56a481`; sonic `0x4fdd88...487c6c`; sonic `0x5cfdf3...627db6`; sonic `0x6d93a9...9f8356`; sonic `0x93b25c...891738`; sonic `0xa543f1...ea7324`; sonic `0xc55ebf...be0979`; sonic `0xcd4f9a...ae0304`; sonic `0xeaa0dc...92125a`; sonic `0xf2d79a...4846ca`; base `0x23c5e5...a4d71e`; base `0x7de814...e71c1e`; base `0xfab311...fa888b` | ⚠️ Unaudited |
| ProxyAdmin | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239101 | `0x687dad...3f571e` | ⚠️ Unaudited |
| ProxyAdmin4 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8eb10e...ebfa10` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-238992 | `0xc701e9...8db678` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3c938...366142` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | base | unit-239119 | `0xc701e9...8db678` | ⚠️ Unaudited |
| QuoterV2 | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239129 | `0xf5b718...beff98` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238977 | `0x7635cd...d27e4b` | ⚠️ Unaudited |
| Router03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x0929b8...d284de`; sonic `0x571b19...c0d431`; sonic `0x608776...f0189e`; sonic `0xb7861f...a9b268`; sonic `0xc477f0...7cb1e6` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238994 | `0xcc6169...d23fad` | ⚠️ Unaudited |
| sAMM_Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d809f...789048` | ⚠️ Unaudited |
| Scalepounder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x659aa8...12b9e9`; base `0x74a022...dbc272`; base `0xde0ec1...d61606` | ⚠️ Unaudited |
| ScaleRouter | adapter | project_anchor | own_supporting | 0 | base | unit-239086 | `0x2f87bf...2be6fa` | ⚠️ Unaudited |
| ScaleRouter | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239100 | `0x5e9d25...d11c94` | ⚠️ Unaudited |
| SolidlyExtendedRouter03 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x641135...66e9bb`; base `0x750281...9e422f`; base `0xa78618...97aaab` | ⚠️ Unaudited |
| solidlyRouterCalcs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x27a2bd...157a80`; sonic `0x442d31...b8db95` | ⚠️ Unaudited |
| SSR2Thick_Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x25374d...7a1af9`; sonic `0x6ea84b...32525c` | ⚠️ Unaudited |
| SuperVoter | unknown | project_anchor | own_supporting | 0 | sonic | unit-238988 | `0xb6dfc3...fad93f` | ⚠️ Unaudited |
| SuperVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: sonic `0x107240...a0d008`; sonic `0x2792f2...fa62cd`; base `0x022566...3c74a0` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1af947...608bcc` | ⚠️ Unaudited |
| SwapRouter02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238998 | `0xe4ba08...7500df` | ⚠️ Unaudited |
| SwapRouter02 | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239082 | `0x1f7a12...36d0e8` | ⚠️ Unaudited |
| ThickALMGaugeEquivalentFarmland | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 24 deployments: sonic `0x2cb66d...f1d65a`; sonic `0xd057ef...d965ff`; sonic `0xf3e31b...a8bda9`; base `0x02c88d...3ad6df`; base `0x159aef...919ef2`; base `0x17a0d9...112baa`; base `0x1dcdf0...25890c`; base `0x2735a7...f53191`; base `0x338b18...08b5f3`; base `0x3c93f6...f2035a`; base `0x3f4d38...16a13e`; base `0x427141...0eecb6`; base `0x56c90e...7916c2`; base `0x5b5027...f9de7b`; base `0x66a5df...45dcc6`; base `0x8d6afe...0f1733`; base `0x98adfe...44fd1e`; base `0xa7672a...c6ae8e`; base `0xb14862...56e8d3`; base `0xc8eaae...bf6a72`; base `0xdeba7a...7d6327`; base `0xf1580a...444354`; base `0xf26927...e2bf1d`; base `0xfcc85a...b69068` | ⚠️ Unaudited |
| TickLens | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239116 | `0xb80a72...e0d757` | ⚠️ Unaudited |
| TvlGuru_ThickALM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b54df...e46f75` | ⚠️ Unaudited |
| TvlGuru_ThickThickALM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a9499...fa59c9` | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ff98b...074f7e` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | sonic | unit-238986 | `0x9b500c...e542e7` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239094 | `0x4c2968...1681e3` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-238981 | `0x7ca1dc...8f1c40` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | base | unit-239108 | `0x7ca1dc...8f1c40` | ⚠️ Unaudited |
| UniswapV3Factory | registry | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239127 | `0xe6da85...bb9d24` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5ebd65...047437`; sonic `0xb654fa...9beead` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: sonic `0x064e1c...d5b3ae`; sonic `0x16448c...ffe52c`; sonic `0x240e58...87db9f`; sonic `0x5bce72...663bc3`; sonic `0x5cb8cb...4fc109`; sonic `0xc72d0d...c6858b`; sonic `0xc9a2e4...f26ec3`; sonic `0xe164f4...e1fb47`; base `0x050b42...d4e842`; base `0x18c7ad...68845a`; base `0x423278...a325a3`; base `0xa8bc72...849aa2`; base `0xf79518...5b9d31`; base `0xf88005...1cff21` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | base | unit-239131 | `0x46abb8...592687` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x0a4531...9fbbfd`; sonic `0x58df0d...bbeb03`; sonic `0x8a1eac...b6ff68`; sonic `0xac3323...33325d`; sonic `0xb69d5f...ed339b`; sonic `0xbdc4cc...e02581`; sonic `0xe90f1b...e9893b`; sonic `0xff002f...23b279`; base `0x1d6dc8...2e71d7`; base `0x3ce7ba...053549`; base `0x88c321...be7db1` | ⚠️ Unaudited |
| weightedMultiTokenBalance | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe41b49...587eae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (263)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x02ea3b...9187cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x062ebc...2faaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x069a95...344442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09e6c1...c5a4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b2e36...9ac204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c2b50...b220aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0cb18b...d8a818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1448d5...fd08c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x154762...4eb361` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238957 | `0x17fa9d...cb10b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a61f0...f2ddd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ae47e...b99293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b1c9a...cd32a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bf6ad...737ff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238959 | `0x1c065b...d303fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d50eb...4167dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f60ee...46d5fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238960 | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23072c...8a08f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2453b0...93d69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2696f9...4b9ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x284d3c...903179` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238962 | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2b5cb8...1c00e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c34a6...8efbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2cf503...910380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fc787...9e382e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x302e60...f3cbca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238963 | `0x304511...f7235a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238964 | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x311c25...56198e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31686c...24699f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x316e8b...d8c165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31e812...023392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x324408...2bcefc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x326b73...4564af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3466dc...54d0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x36fb2d...43b92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d37f2...399ae8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238966 | `0x3fd3a0...4865a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x430997...d86dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x430a47...1db6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43da59...c05f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45482b...46ab66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4696ff...21d8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b1754...b85db2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238968 | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238969 | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4cfcc9...1b5a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d9c51...77faf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50c244...0f6e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54080b...215c04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238970 | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55936f...ce5810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56f863...894f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x594230...4b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x59c3cb...7f6b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ae329...3889bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ea576...6de45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67b0cb...7c931c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67ce89...051979` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238974 | `0x687dad...3f571e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238975 | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ec438...68e272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70532d...f11262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7169b4...a9000d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x77081d...ef95d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x771a99...95a170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x797195...bede99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a45a5...5b1d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7c9ec9...94c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7dde13...41b3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ebf10...5b16bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7febd8...ff8d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x82f244...4a3de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x839494...60c6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83a4da...6e015e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85348c...02eff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87ca0b...b4600c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bedd6...7ed2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d111f...d470cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d3413...90e793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93590c...361615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x945763...aa21bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94920b...e566b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x955f99...6a83d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238985 | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x985802...029bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x994d38...369295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d9682...4663fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9dddb1...f1897c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0abf1...5d1174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa17435...41c6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2a6a1...916298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3ffc7...0721a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6faf9...4007e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa72258...b9a636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa87f22...15dd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8e5d9...fcd343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xab492b...855d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb32f2f...4c02f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb79f47...41ec9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238989 | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238990 | `0xbf4bfe...fb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc218d5...13a61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc28ca7...8f1dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc33c20...1aadf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xceb494...49926d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2ce72...18fc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3b05b...cef7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd58769...b7a994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd6d75f...6811b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd78d00...7bc3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda0b0e...949911` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238995 | `0xddd984...528fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238996 | `0xddf26b...0d5f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde33b8...868ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdf4869...1be136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe07c87...82b619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe188f2...947f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe38145...cb9fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe63dfb...1f26cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238999 | `0xe6da85...bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7313f...350a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8615b...d0a6d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeae104...daabaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef085d...bbcea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf08413...51453b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2858f...890f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf29754...a1b7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2e901...f7b120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3022e...570130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5b6cc...64925f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-239000 | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf726df...c85b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfaad65...68402c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfab311...fa888b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfe5544...ee7c15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239001 | `0x03f7ad...029ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239002 | `0x05733d...905ac9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239003 | `0x07378e...442e60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239004 | `0x0b5c7b...de8516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239005 | `0x0d90b1...9fccf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239006 | `0x0fb84a...e354c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239007 | `0x162378...0c9113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239009 | `0x180da8...f86180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239010 | `0x1a05eb...f5a447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239012 | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239013 | `0x2aa079...23b285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239014 | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239015 | `0x2c9344...484fce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239017 | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239018 | `0x33da53...aaa470` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239019 | `0x380bd5...e2c7dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239020 | `0x3e8b14...c946f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239021 | `0x3fd3a0...4865a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239022 | `0x4bebeb...060d5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239023 | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239024 | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239025 | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239026 | `0x58be1f...d746b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239027 | `0x59f557...05db35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239028 | `0x5b3220...85c157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239029 | `0x5d4589...9d4308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239030 | `0x6690ad...863eca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239031 | `0x687dad...3f571e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239032 | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239033 | `0x6ef2fa...c34130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239035 | `0x777928...54cad8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239036 | `0x79c26d...516de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239037 | `0x7ba9b1...69eb6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239038 | `0x7ca1dc...8f1c40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239039 | `0x8313f3...63ce94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239040 | `0x85e7f5...80c72d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239041 | `0x881713...7edb74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239042 | `0x8b3e5e...f0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239043 | `0x8e2a63...dfd06f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239044 | `0x8f0235...f05f43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239045 | `0x8f6666...11b2dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239046 | `0x93b973...5041f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239047 | `0x940407...65b2b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239048 | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239049 | `0x9b500c...e542e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239050 | `0x9ca980...02a979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239051 | `0x9e4105...c91cb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239052 | `0x9e4fb3...171060` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239053 | `0xa83f31...7301b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239054 | `0xaec6d3...22bea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239055 | `0xb0f598...eb079f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239057 | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239059 | `0xbf65ca...0c57cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239060 | `0xc4a987...e7506c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239061 | `0xc6366e...10832a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239062 | `0xc701e9...8db678` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239063 | `0xc8be3d...2be578` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239065 | `0xcc82bf...4c8c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239066 | `0xd0f8d5...a1ed8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239067 | `0xd311fd...70d511` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239070 | `0xe17e46...055c4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239071 | `0xe3d1a1...18dac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239072 | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239073 | `0xe6da85...bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239074 | `0xe8ca91...4b60e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239075 | `0xf2bfb9...0cc7e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239076 | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239077 | `0xfb0c0c...156887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01d550...f34072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d153a...136dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x163367...7e4884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x165f11...1bb977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16e3ca...19ff3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20cfe3...b8f448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24584b...13189a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239083 | `0x28c9c7...d51c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dcc87...bffa64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30e118...2f480c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239088 | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3979d8...f55b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39cc1c...f17536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f0458...275489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f34e0...7886c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f7307...9926e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4046c4...0a40c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239091 | `0x44621c...005685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x480a98...54fbdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bcb11...12aaf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239093 | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d0c30...6e2cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x502321...56f04c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239095 | `0x54016a...d9c32c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239096 | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x548551...730813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54967f...0c67ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6693bc...4e416d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68a5d2...f1299f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68ea7c...0eb023` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239102 | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c6018...d20945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x771a99...95a170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7898a0...0ceb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x861fe2...5811c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b7595...c4388d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ddd72...f6c60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x931389...327bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93b25c...891738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94ea66...acdb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97dd08...a1f55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239113 | `0x9b500c...e542e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d88ac...c58612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2a6a1...916298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5aed2...644127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe83cd...5f9876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbed5a2...2fc3ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239121 | `0xcb418f...30ae18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc1eff...5fee93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd45f5d...fccf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd467b1...574075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239126 | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239128 | `0xed8db6...b5ec04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee5263...fdfa9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf024aa...7e779b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3e31b...a8bda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4f5af...29c986` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xb136b4...db13d6` | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x79c26d...516de5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x79c26d...516de5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc701e9...8db678` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc701e9...8db678` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7635cd...d27e4b` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xcc6169...d23fad` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2f87bf...2be6fa` | ScaleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb6dfc3...fad93f` | SuperVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe4ba08...7500df` | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46abb8...592687` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 5 |
| standard_library | 3 |
| needs_review | 264 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
