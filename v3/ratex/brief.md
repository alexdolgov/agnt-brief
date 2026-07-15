# Agentic Audit Brief: RateX

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

- Project: RateX (`ratex`)
- Website: [https://rate-x.io/](https://rate-x.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 202 unique implementations (401 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,872,151.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for RateX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RateX (RTX) OFT token (`0x4829a1...af9893`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 201 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 153
- Confirmed-live implementations: 1 of 202 unique; 201 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/127
- Verified + Unaudited implementations: 127
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 202
- Raw deployments: 401
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (127)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x35718b...05617d`; bsc `0x476884...b9c576`; bsc `0xadcc15...4e98fc` | ⚠️ Unaudited |
| BBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2ea16e...b8fb5a`; bsc `0x7ed71d...44eb2e` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1afa15...11fad5`; bsc `0xd113db...195a16` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a66f6...f887dc` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x550206...4a7f15`; bsc `0xe5248d...1dee78` | ⚠️ Unaudited |
| BnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd74508...ad2754`; bsc `0xda0e73...01be0a` | ⚠️ Unaudited |
| BorrowListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 17 | bsc | n/a | 18 deployments: bsc `0x419352...181d1a`; bsc `0x46c572...95be54`; bsc `0x564fa7...8b1ebb`; bsc `0x58fe0f...5c725a`; bsc `0x5debc8...ade245`; bsc `0x7247dd...20f59d`; bsc `0x73538c...da0093`; bsc `0x7ad627...16da80`; bsc `0x88620f...c4a2e6`; bsc `0x982d1d...ecf70c`; bsc `0x98a3ff...e84c54`; bsc `0xa3bce2...b0fd45`; bsc `0xa97aed...347900`; bsc `0xc952cc...e6e2d5`; bsc `0xca07db...f8ac38`; bsc `0xcb8f70...ccd2d6`; bsc `0xd1f81b...3b001e`; bsc `0xf8d1d8...83eafa` | ⚠️ Unaudited |
| BorrowLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0aed86...7f4f3b`; bsc `0xf1f4d6...bd8b22` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81c4f1...c8e6d5`; bsc `0x9ddd9b...be5ff2` | ⚠️ Unaudited |
| BtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2eedc4...2d5642`; bsc `0xa5e8ea...cfffbf` | ⚠️ Unaudited |
| BtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9534dd...d6a45f` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3b778d...1936bb`; bsc `0x969130...da4edf` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3b99a4...2e1bfc` | ⚠️ Unaudited |
| CerosETHRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaff57...2fb0c1` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x397a48...39004b`; bsc `0x4510aa...cc7f50`; bsc `0xc6f28a...ff0fe2` | ⚠️ Unaudited |
| ClearingHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x293a33...288a16`; bsc `0x456fb8...b6b28b`; bsc `0x58f2d3...b49566`; bsc `0x70836c...54bbcb`; bsc `0x801010...36009f` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 16 | bsc | n/a | 17 deployments: bsc `0x117b4a...651063`; bsc `0x334e4f...a1b704`; bsc `0x4192ff...1723b3`; bsc `0x4fd4b7...368ac3`; bsc `0x5784e6...449ce0`; bsc `0x5aabbb...493b26`; bsc `0x6dc0ab...119b5a`; bsc `0x9b8788...4ab7ea`; bsc `0xaf7133...90e08e`; bsc `0xb12ff6...4b1e92`; bsc `0xc4857c...59a998`; bsc `0xeb995f...54b1ea`; bsc `0xf21b35...31d057`; bsc `0xf57a8c...a659f3`; bsc `0xf6dadf...30313c`; bsc `0xf92001...c3f9e6`; bsc `0xfe2881...89525e` | ⚠️ Unaudited |
| clisBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x061178...80d195`; bsc `0x6c8787...09e98c` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x81a62b...5a46e8` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abb19...07ccda` | ⚠️ Unaudited |
| clisETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f487...77181f` | ⚠️ Unaudited |
| ClisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2544be...d355a8`; bsc `0x88a596...291c27`; bsc `0x8a3143...182cc6` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x57371f...8490f6`; bsc `0x74e17e...f69307` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4cfc5...6136b7` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 13 | bsc | n/a | 14 deployments: bsc `0x01a6fc...eb8281`; bsc `0x0bfb1b...d8dad1`; bsc `0x0c9a0f...8d15b5`; bsc `0x1716ac...b47c73`; bsc `0x3c1612...010eb0`; bsc `0x566278...27204c`; bsc `0x6c5285...13fc5e`; bsc `0x77c9b4...7c2572`; bsc `0x83f861...a2ae5b`; bsc `0xc4a8a6...edd830`; bsc `0xe3221b...7feb85`; bsc `0xf09fef...e22889`; bsc `0xf0fc2d...08e956`; bsc `0xff6f8c...63f955` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x0bebd7...b79478`; bsc `0x9a8195...8c7856`; bsc `0xb1da31...9a5af4`; bsc `0xe61f43...dee39a`; bsc `0xe786ec...05d6be` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0aeb6c...6571f0`; bsc `0x1bce74...418885` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x510264...6827d2`; bsc `0x873339...3256fa` | ⚠️ Unaudited |
| EarnImp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92723a...c4819e` | ⚠️ Unaudited |
| EarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x143c8b...164642`; bsc `0x66de07...1796f3` | ⚠️ Unaudited |
| EmissionVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5d52bc...693736`; bsc `0xfc136f...31336c` | ⚠️ Unaudited |
| EmissionVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76e001...eb3d00`; bsc `0xac6b7f...d05996` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x05570c...7115c3`; bsc `0x3b2393...5e6086`; bsc `0xa65c40...4a218e` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | bsc | n/a | 10 deployments: bsc `0x11bf11...59147a`; bsc `0x1cf9c6...336c4d`; bsc `0x39d099...39716a`; bsc `0x4b2d67...f9159c`; bsc `0x7c81da...424954`; bsc `0x9b4fcb...18be4a`; bsc `0x9f6c25...69eff4`; bsc `0xc23d34...c077c1`; bsc `0xe8f464...8b8dd2`; bsc `0xf6ab5c...dcf504` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd185c...77a054` | ⚠️ Unaudited |
| ERC20LpTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2725d7...65aa57`; bsc `0x946e5c...e74c05` | ⚠️ Unaudited |
| ERC721LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x16c39b...0622a5`; bsc `0x3665d7...94d9c9`; bsc `0x398df8...ec2596`; bsc `0x8453cd...16005f`; bsc `0x9e4dfb...d06cb4`; bsc `0xb69162...110ed4`; bsc `0xe43fe8...14f520`; bsc `0xe5c03c...43de08` | ⚠️ Unaudited |
| ERC721LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x225cbc...3194cf`; bsc `0x6dc552...b01de3` | ⚠️ Unaudited |
| EthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4f67...af1e96` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x209003...f7741b`; bsc `0xe859f3...90f45f` | ⚠️ Unaudited |
| FdUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x1b8b3f...89d308`; bsc `0x464bfb...8d5d57`; bsc `0x908047...7aaa94` | ⚠️ Unaudited |
| FdUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1dbc9a...792072`; bsc `0xcf9509...78ecd3` | ⚠️ Unaudited |
| FlashBuy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9ba88e...4063cb`; bsc `0xdace1c...875057` | ⚠️ Unaudited |
| FlashBuy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb7a58a...7f3978`; bsc `0xd5d976...c2aaa0` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 16 | bsc | n/a | 17 deployments: bsc `0x03db75...d63067`; bsc `0x157c9a...8ce299`; bsc `0x2202a4...fcd7e9`; bsc `0x2367f2...9a6918`; bsc `0x3cd434...f0fc43`; bsc `0x3e75d7...a0976d`; bsc `0x3f3e0a...68cc10`; bsc `0x605356...cc4404`; bsc `0x876cd9...6c3104`; bsc `0x98b167...e6739a`; bsc `0xa94aa7...2f7079`; bsc `0xad406c...059b1f`; bsc `0xad9eaa...5b6f65`; bsc `0xd7e339...f9bae8`; bsc `0xdcfe50...12007e`; bsc `0xe95eaf...82a0c6`; bsc `0xf8ca8d...b7a677` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1eb87...9ab904` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x891a60...e7df7f`; bsc `0xc5b9e1...a5e212`; bsc `0xf85d7c...d40a99` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2f9da6...0a509e`; bsc `0x3a0f55...208a9c`; bsc `0x4c545d...ad3bff`; bsc `0x5e9909...bd756a`; bsc `0x914190...6ffe05`; bsc `0xb16226...67a884`; bsc `0xf1e177...fb191a` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x383a35...5b2130` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5faa44...20552e` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xbaf8b4...e3cc03`; bsc `0xd209d1...d75283` | ⚠️ Unaudited |
| LiquidityImp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b3c75...b4933c` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f4c12...61d415` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xffd3a5...9908e6` | ⚠️ Unaudited |
| ListaOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x82f5bc...413f02`; bsc `0x837cb0...25e7b3` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1c56cc...9a7cc4`; bsc `0x92cfb7...7a6393` | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x34b504...7fa3da` | ⚠️ Unaudited |
| ListaStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x4d9ed5...a33430`; bsc `0xbc019e...b8d305`; bsc `0xe6c1be...6f79ed`; bsc `0xee3d69...efc3cc`; bsc `0xfd6b9c...aeb4ef` | ⚠️ Unaudited |
| ListaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0fee40...36e05c`; bsc `0x18fce5...2164c4`; bsc `0x36a7bd...944c84`; bsc `0x7dc9d0...0c5ba0`; bsc `0xb7d76f...90a4a4` | ⚠️ Unaudited |
| ListaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x307d13...30292a` | ⚠️ Unaudited |
| LisUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5bd9b...c4d7f8` | ⚠️ Unaudited |
| LisUSDPoolSet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x37db1a...95d0bf`; bsc `0x586034...c7bb0f` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x5a0e32...70ec01` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xac6d58...8d8460`; bsc `0xf87e70...377799` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64e30b...0cbd98` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x034f0a...929b37` | ⚠️ Unaudited |
| mBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x31d558...b87aaf`; bsc `0x8be958...222345`; bsc `0xd5e1b3...c66870` | ⚠️ Unaudited |
| mBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8a016f...e2bb0b` | ⚠️ Unaudited |
| mCAKEOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x01b39e...b44e23`; bsc `0x7db21c...1c3ce7` | ⚠️ Unaudited |
| MerkleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdeb598...39ceaa`; bsc `0xf625b8...39386d` | ⚠️ Unaudited |
| mwBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3605c7...db95b1`; bsc `0xaa4912...6d50d0` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x708252...cfb755`; bsc `0xee56ee...796dbb` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb894de...4f9c26`; bsc `0xc74efa...4fb7dd` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6f6a14...04932b`; bsc `0xb5c57d...1e4391` | ⚠️ Unaudited |
| OracleCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47dbca...784a41`; bsc `0x946a68...f7c53b` | ⚠️ Unaudited |
| PancakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x811591...1c866b` | ⚠️ Unaudited |
| PancakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb20a61...780e4f`; bsc `0xe31f0b...978f10` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xaa57f3...72ec0c`; bsc `0xf51c1d...1abb7f` | ⚠️ Unaudited |
| PTLinearDiscountOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x138288...9ddd59`; bsc `0xa34627...505281` | ⚠️ Unaudited |
| PToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x34f18e...80eafc`; bsc `0x660e36...5bc300`; bsc `0x79427f...94aec0`; bsc `0xbfc693...7f2750`; bsc `0xccbfd5...10241b` | ⚠️ Unaudited |
| PumpBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x420a16...dde28b`; bsc `0xd06233...544c6f` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdb46...09f4df` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xea44dd...2b9e6e` | ⚠️ Unaudited |
| RateX (RTX) OFT token | unknown | project_anchor | own_supporting | 0 | bsc | unit-391313 | `0x4829a1...af9893` | ⚠️ Unaudited |
| ResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x35c673...af4bbe`; bsc `0xf3afd8...e6c750` | ⚠️ Unaudited |
| SafeGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1b19bc...11b96e`; bsc `0x79cfad...30cc3f` | ⚠️ Unaudited |
| SlisBnbDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9881cf...7c7e12`; bsc `0xade6d9...8bea2f` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x44388e...89c584`; bsc `0x5fb5b2...804114`; bsc `0x732053...c96a8c`; bsc `0xddc89c...0ba274` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf982b7...c79415` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xfd31e1...97819b` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x64dbd2...6480c6`; bsc `0xf2d56e...53ebc4` | ⚠️ Unaudited |
| SnBnbYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1101ff...923dc3`; bsc `0x84c445...b27190`; bsc `0x89a9bc...d3f2cf`; bsc `0xf9b24c...49ebaa` | ⚠️ Unaudited |
| SnStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b83f2...6cfb6c` | ⚠️ Unaudited |
| SolvBTCBBNOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb35d0f...99055d` | ⚠️ Unaudited |
| SolvBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08bcb6...540c5f`; bsc `0xb7a753...48af85` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x82c6fb...8a4491`; bsc `0xfeb284...2bdbac` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xefebdd...9fcf14`; bsc `0xf2fa32...207026` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0541ee...a1806a`; bsc `0xf40d0d...2004ad` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2c3f3b...ad0339`; bsc `0x62dfec...f68153` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd1a6cc...366c18`; bsc `0xeed4af...556410` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ff4...59ffb1` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdf5a8e...539be8` | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc998f1...cee150`; bsc `0xff5ed1...12eb00` | ⚠️ Unaudited |
| ThenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xcda44d...2c34b3`; bsc `0xfa5b48...0ac719` | ⚠️ Unaudited |
| ThenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe93ce7...5f6173` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d274...735253` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0ffee0...ef8b0c`; bsc `0xedbcdd...4336d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x227716...f6c867`; bsc `0x2d24c9...96162d`; bsc `0x337a7a...c38249`; bsc `0x43a00b...75ea42`; bsc `0x4fece6...35ef65`; bsc `0x5be73a...cdb971`; bsc `0x5ecc1d...0627c4`; bsc `0x735f7a...e1e918`; bsc `0x7628a5...a7dcc0`; bsc `0xa11850...66b0eb`; bsc `0xa257a5...a748c1`; bsc `0xb18bf8...88605c`; bsc `0xbcb466...7a7245`; bsc `0xc6c6b6...9cd932`; bsc `0xd84eff...064d97`; bsc `0xfc0ef1...38edfd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x35a8e4...401692`; bsc `0x533fa4...a0ce4d` | ⚠️ Unaudited |
| UpdateImp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb844d6...b80f13` | ⚠️ Unaudited |
| USDTLpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x24e5de...0d0bd9`; bsc `0x9eb77a...fb38f7` | ⚠️ Unaudited |
| UsdtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x45575e...c1d92d`; bsc `0xdf2d4c...17ae63`; bsc `0xf19dc2...a26a72` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15fc4e...727ec2`; bsc `0x5763dd...972ec7` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xd0c380...7b87b3` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xee00de...e5319b`; bsc `0xf8d762...a9460a` | ⚠️ Unaudited |
| VeListaAutoCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x9a0530...c3bf5e` | ⚠️ Unaudited |
| VeListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x006835...4ccfd6`; bsc `0x45aac0...5ce40c` | ⚠️ Unaudited |
| VeListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1298...6f5145` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87e994...f9070f` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xca8d24...2b72e9` | ⚠️ Unaudited |
| VenusAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc1d3a2...3cacef`; bsc `0xf76d9c...29cda9` | ⚠️ Unaudited |
| VenusAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5dbfc...c13d8d` | ⚠️ Unaudited |
| VotingIncentive | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05ac03...8a4c9c`; bsc `0xbc380e...570b82` | ⚠️ Unaudited |
| WeEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8f8075...afeee1`; bsc `0xe51485...248b46` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77f452...070b95` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc9ca23...24ddd7` | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0ad764...669caa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01c95c...847e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03c5f8...d8cc81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x042b82...70dc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x044161...1e82eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cac35...94a76f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d3190...c7a3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e3ee2...9e0f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11b7db...999e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14c5b2...b5b912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x155300...f2be13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x182ce9...19b35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b262f...729d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba517...9aae8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22c250...e94209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25ca16...467123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2665ea...cf09f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27849b...b5d3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc736...d76a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ea5c7...e17c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x385a83...0e5b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa7e9...d898a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c3508...686d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44211d...2f5a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45596f...3f858c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x468ba2...e49b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x499148...bdb2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acca9...1632a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50250e...3a6f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50e2fe...83bc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50e9e2...65d172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54399a...b67453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x567485...54306d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57df90...b473a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d728c...441070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f651c...14ed2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fe35e...faef3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61682b...d0c0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x677bcd...abca14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x684058...cd515c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68a564...10b88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69d072...1899ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bc852...d89248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72f731...e28f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x732a42...77ab32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x792208...e3db22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a270c...bf01db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x861399...79bfb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89a32e...40cb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89aafc...80b6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92be02...ec15d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ecf7...7924d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x957b4f...f1e920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x977f80...38f830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fe1e9...7e0c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a170...5445c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae1951...5a4508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf34bc...f8053e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd13ab...47c5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc62e55...4570a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9540c...79d984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcac95a...e83d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3406f...358604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd358c5...744056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd75453...638837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe86657...c27877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb1d5e...9ca45a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeccaa7...793050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedeb8a...bdd353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf47110...03a874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6852f...1d18ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7685a...184b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7e178...b1923c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb9c89...5596ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbf173...cb7e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd8ef9...4e46b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [RateX-Sep-2024-OffsideLabs.final.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateX-Sep-2024-OffsideLabs.final.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2443] RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf — no match: The report does not list specific contract names in scope; it only mentions 'mooncake program' and files under programs/ratex-mooncake/src/*.rs without naming individual contracts.
- [2444] RateX-Sep-2024-OffsideLabs.final.pdf — no match: Extracted contract names from findings and code references. Audit date from executive summary: concluded on September 10, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| RateX-Sep-2024-OffsideLabs.final.pdf | User | unmatched — not counted | — | mentioned in findings and code references | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | MarginMarket | unmatched — not counted | — | mentioned in finding 4.3 | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | YieldPosition | unmatched — not counted | — | mentioned in finding 4.2 | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | DeleteUser | unmatched — not counted | — | mentioned in finding 4.9 | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | DeleteLp | unmatched — not counted | — | mentioned in finding 4.9 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 123 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [2443] RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf
- [2444] RateX-Sep-2024-OffsideLabs.final.pdf

Fork inheritance lineage and inherited audits are included when available.
