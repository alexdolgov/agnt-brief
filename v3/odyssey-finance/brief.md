# Agentic Audit Brief: Odyssey Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Odyssey Finance (`odyssey-finance`)
- Website: [https://app.odyssey.finance/en](https://app.odyssey.finance/en)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, optimism
- Contract surface: 133 unique implementations (133 raw deployments)
- Coverage basis: 5/91 confirmed own live verified implementations (5.5%); conservative 5.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,354,010.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Odyssey Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 91 contract row(s) across base, ethereum, optimism. Structural roles: 67 core, 17 unclassified, 4 supporting, 3 infra. 28 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 91
- Structural roles: core (67), unclassified (17), supporting (4), infra (3)
- Contract kinds: contract (91)
- Detected standards: ownable (36), erc1967proxy (24), ownable2step (24)
- Frameworks: openzeppelin (73), openzeppelin-upgradeable (28)
- Upgradeable-pattern rows: 28

## Fork Analysis

0 of 113 contracts are derived from known codebases. 113 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05495f...106589`, chain 1)
- UnnamedContract (`0x1f2cb3...7b2ac5`, chain 1)
- UnnamedContract (`0x3f6da0...3b488d`, chain 1)
- UnnamedContract (`0x78002d...8e3f3b`, chain 1)
- UnnamedContract (`0x98fba5...33fad2`, chain 1)
- UnnamedContract (`0xce5bc7...b3d206`, chain 1)
- UnnamedContract (`0xd7be1c...22cd96`, chain 1)
- UnnamedContract (`0xe8c3cc...5c4ead`, chain 1)
- UnnamedContract (`0xee156d...0e9534`, chain 1)
- UnnamedContract (`0x05495f...106589`, chain 10)
- UnnamedContract (`0x1f2cb3...7b2ac5`, chain 10)
- UnnamedContract (`0x3f6da0...3b488d`, chain 10)
- UnnamedContract (`0x78002d...8e3f3b`, chain 10)
- UnnamedContract (`0x98fba5...33fad2`, chain 10)
- UnnamedContract (`0xce5bc7...b3d206`, chain 10)
- UnnamedContract (`0xd7be1c...22cd96`, chain 10)
- UnnamedContract (`0xe8c3cc...5c4ead`, chain 10)
- UnnamedContract (`0xee156d...0e9534`, chain 10)
- UnnamedContract (`0x05495f...106589`, chain 8453)
- UnnamedContract (`0x1f2cb3...7b2ac5`, chain 8453)
- UnnamedContract (`0x3f6da0...3b488d`, chain 8453)
- UnnamedContract (`0x78002d...8e3f3b`, chain 8453)
- UnnamedContract (`0x98fba5...33fad2`, chain 8453)
- UnnamedContract (`0xce5bc7...b3d206`, chain 8453)
- UnnamedContract (`0xd7be1c...22cd96`, chain 8453)
- UnnamedContract (`0xe8c3cc...5c4ead`, chain 8453)
- UnnamedContract (`0xee156d...0e9534`, chain 8453)
- AaveV2 (`0xb5a44c...b98445`, chain 1)
- AaveV2BorrowStrategy (`0xfcb475...f1d0ed`, chain 1)
- AaveV2FlashLoan (`0x2d2985...d9c720`, chain 1)
- AaveV3 (`0x206eba...9a2821`, chain 1)
- AaveV3 (`0x206eba...9a2821`, chain 10)
- AaveV3 (`0x206eba...9a2821`, chain 8453)
- AaveV3BorrowStrategy (`0x3efcee...58d79b`, chain 1)
- AaveV3BorrowStrategy (`0x8d4dfa...1aee36`, chain 10)
- AaveV3BorrowStrategy (`0x3efcee...58d79b`, chain 8453)
- AaveV3FlashLoan (`0x743618...5c312b`, chain 1)
- AaveV3FlashLoan (`0x78d791...ad9762`, chain 10)
- AaveV3FlashLoan (`0x743618...5c312b`, chain 8453)
- Ajna (`0x82e6b5...6ac3a2`, chain 1)
- Ajna (`0x82e6b5...6ac3a2`, chain 10)
- Ajna (`0x82e6b5...6ac3a2`, chain 8453)
- AjnaBorrowStrategy (`0xde433f...9c9736`, chain 1)
- AjnaBorrowStrategy (`0x0dba14...7ec890`, chain 10)
- AjnaBorrowStrategy (`0xde433f...9c9736`, chain 8453)
- CallOrderExecutor (`0xf70aca...0da5d9`, chain 1)
- CallOrderExecutor (`0xf70aca...0da5d9`, chain 10)
- CallOrderExecutor (`0xf70aca...0da5d9`, chain 8453)
- CompoundV2 (`0x186c91...59a820`, chain 1)
- CompoundV2BorrowStrategy (`0x77fa78...84bb3c`, chain 1)
- CompoundV2VesperStrategy (`0xce3267...15780e`, chain 1)
- CompoundV3 (`0x13f9f7...ee6d40`, chain 1)
- CompoundV3 (`0x13f9f7...ee6d40`, chain 10)
- CompoundV3 (`0x13f9f7...ee6d40`, chain 8453)
- CompoundV3BorrowStrategy (`0xc27630...c8b9c5`, chain 1)
- CompoundV3BorrowStrategy (`0x4966d4...0eaa68`, chain 10)
- CompoundV3BorrowStrategy (`0xc27630...c8b9c5`, chain 8453)
- CompoundV3VesperStrategy (`0xab890e...0827c3`, chain 1)
- CompoundV3VesperStrategy (`0x249a62...a08bbb`, chain 10)
- CompoundV3VesperStrategy (`0xab890e...0827c3`, chain 8453)
- DyDxFlashLoan (`0x1cb204...604169`, chain 1)
- ERC4626 (`0x6a7c1d...3b2ef4`, chain 1)
- ERC4626 (`0x6a7c1d...3b2ef4`, chain 10)
- ERC4626 (`0x6a7c1d...3b2ef4`, chain 8453)
- ERC4626Strategy (`0xf4868c...ea0543`, chain 1)
- ERC4626Strategy (`0xf4868c...ea0543`, chain 10)
- ERC4626Strategy (`0xf4868c...ea0543`, chain 8453)
- FlashLoanExecutor (`0x6e30df...7fb2c4`, chain 1)
- FlashLoanExecutor (`0x4391ae...d35978`, chain 10)
- FlashLoanExecutor (`0x6e30df...7fb2c4`, chain 8453)
- LimitOrderExecutor (`0x1807c6...604ef4`, chain 1)
- LimitOrderExecutor (`0x1807c6...604ef4`, chain 10)
- LimitOrderExecutor (`0x1807c6...604ef4`, chain 8453)
- Morpho (`0xf8dea5...e06892`, chain 1)
- Morpho (`0xf8dea5...e06892`, chain 10)
- Morpho (`0xf8dea5...e06892`, chain 8453)
- MorphoBorrowStrategy (`0x87acd9...366910`, chain 1)
- MorphoBorrowStrategy (`0x87acd9...366910`, chain 10)
- MorphoBorrowStrategy (`0x87acd9...366910`, chain 8453)
- MorphoFlashLoan (`0x6aa69c...9031b8`, chain 1)
- MorphoFlashLoan (`0x6aa69c...9031b8`, chain 8453)
- PerformanceFeePolicy (`0xaa5900...e8622e`, chain 1)
- PerformanceFeePolicy (`0xa6798b...adab14`, chain 10)
- PerformanceFeePolicy (`0x307874...074fcf`, chain 8453)
- PositionRegistry (`0x341631...01e4f9`, chain 1)
- PositionRegistry (`0xf67e65...1cc9ea`, chain 10)
- PositionRegistry (`0xa3ceec...ac4da2`, chain 8453)
- ProtocolTieredFeePolicy (`0xeb1df7...fa5684`, chain 1)
- ProtocolTieredFeePolicy (`0xe0af15...3d3017`, chain 10)
- ProxyAdmin (`0xc0bc99...68370e`, chain 1)
- ProxyAdmin (`0xceb64b...5c83e8`, chain 1)
- ProxyAdmin (`0xfca22b...ddbaaa`, chain 1)
- ProxyAdmin (`0xc0bc99...68370e`, chain 10)
- ProxyAdmin (`0xceb64b...5c83e8`, chain 10)
- ProxyAdmin (`0xfca22b...ddbaaa`, chain 10)
- ProxyAdmin (`0xc0bc99...68370e`, chain 8453)
- ProxyAdmin (`0xceb64b...5c83e8`, chain 8453)
- ProxyAdmin (`0xfca22b...ddbaaa`, chain 8453)
- RecurringSwapExecutor (`0x3b2cd4...2941d5`, chain 1)
- RecurringSwapExecutor (`0x3b2cd4...2941d5`, chain 10)
- RecurringSwapExecutor (`0x3b2cd4...2941d5`, chain 8453)
- SwapAggregator (`0xc67abc...d6ed14`, chain 1)
- SwapAggregator (`0x7b9c45...3b0efa`, chain 10)
- SwapAggregator (`0x7b9c45...3b0efa`, chain 8453)
- Synth (`0x0d0ac1...9aa4b7`, chain 1)
- Synth (`0x0d0ac1...9aa4b7`, chain 10)
- Synth (`0x0d0ac1...9aa4b7`, chain 8453)
- SynthStrategy (`0x19b72d...867c37`, chain 1)
- SynthStrategy (`0x5f0a84...7a1e8f`, chain 10)
- SynthStrategy (`0x19b72d...867c37`, chain 8453)
- Vesper (`0xccf1f2...639f3c`, chain 1)
- Vesper (`0xccf1f2...639f3c`, chain 10)
- Vesper (`0xccf1f2...639f3c`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 91 (91 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 118/125 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/91 (5.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 118 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 118 of 133 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/91
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 133
- Raw deployments: 133
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 5 | 5.5% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390018 | `0xb5a44c...b98445` | ✅ Audited |
| AaveV2BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390036 | `0xfcb475...f1d0ed` | ✅ Audited |
| CompoundV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389997 | `0x186c91...59a820` | ✅ Audited |
| CompoundV2BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390011 | `0x77fa78...84bb3c` | ✅ Audited |
| CompoundV2VesperStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390024 | `0xce3267...15780e` | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2FlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390002 | `0x2d2985...d9c720` | ⚠️ Unaudited |
| AaveV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390001 | `0x206eba...9a2821` | ⚠️ Unaudited |
| AaveV3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390045 | `0x206eba...9a2821` | ⚠️ Unaudited |
| AaveV3 | unknown | project_anchor | own_supporting | 0 | base | unit-390087 | `0x206eba...9a2821` | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390005 | `0x3efcee...58d79b` | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390063 | `0x8d4dfa...1aee36` | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390091 | `0x3efcee...58d79b` | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390010 | `0x743618...5c312b` | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | project_anchor | own_supporting | 0 | optimism | unit-390059 | `0x78d791...ad9762` | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | project_anchor | own_supporting | 0 | base | unit-390097 | `0x743618...5c312b` | ⚠️ Unaudited |
| Ajna | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390013 | `0x82e6b5...6ac3a2` | ⚠️ Unaudited |
| Ajna | unknown | project_anchor | own_supporting | 0 | optimism | unit-390061 | `0x82e6b5...6ac3a2` | ⚠️ Unaudited |
| Ajna | unknown | project_anchor | own_supporting | 0 | base | unit-390100 | `0x82e6b5...6ac3a2` | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390028 | `0xde433f...9c9736` | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390040 | `0x0dba14...7ec890` | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390111 | `0xde433f...9c9736` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390022 | `0xcb6daf...01ee0d` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | optimism | unit-390050 | `0x3d4ccd...f72fc3` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | base | unit-390093 | `0x5ef26d...016faa` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390033 | `0xf70aca...0da5d9` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390077 | `0xf70aca...0da5d9` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390115 | `0xf70aca...0da5d9` | ⚠️ Unaudited |
| CompoundV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389995 | `0x13f9f7...ee6d40` | ⚠️ Unaudited |
| CompoundV3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390041 | `0x13f9f7...ee6d40` | ⚠️ Unaudited |
| CompoundV3 | unknown | project_anchor | own_supporting | 0 | base | unit-390083 | `0x13f9f7...ee6d40` | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390020 | `0xc27630...c8b9c5` | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390054 | `0x4966d4...0eaa68` | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390106 | `0xc27630...c8b9c5` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390017 | `0xab890e...0827c3` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390046 | `0x249a62...a08bbb` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390104 | `0xab890e...0827c3` | ⚠️ Unaudited |
| DyDxFlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389999 | `0x1cb204...604169` | ⚠️ Unaudited |
| ERC4626 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390007 | `0x6a7c1d...3b2ef4` | ⚠️ Unaudited |
| ERC4626 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390056 | `0x6a7c1d...3b2ef4` | ⚠️ Unaudited |
| ERC4626 | unknown | project_anchor | own_supporting | 0 | base | unit-390094 | `0x6a7c1d...3b2ef4` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390032 | `0xf4868c...ea0543` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390075 | `0xf4868c...ea0543` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390114 | `0xf4868c...ea0543` | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390009 | `0x6e30df...7fb2c4` | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390052 | `0x4391ae...d35978` | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390096 | `0x6e30df...7fb2c4` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389996 | `0x1807c6...604ef4` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390042 | `0x1807c6...604ef4` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390084 | `0x1807c6...604ef4` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390034 | `0xf8dea5...e06892` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | optimism | unit-390078 | `0xf8dea5...e06892` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | base | unit-390116 | `0xf8dea5...e06892` | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390014 | `0x87acd9...366910` | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390062 | `0x87acd9...366910` | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390101 | `0x87acd9...366910` | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390008 | `0x6aa69c...9031b8` | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | project_anchor | own_supporting | 0 | base | unit-390095 | `0x6aa69c...9031b8` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390016 | `0xaa5900...e8622e` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | project_anchor | own_supporting | 0 | optimism | unit-390065 | `0xa6798b...adab14` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | project_anchor | own_supporting | 0 | base | unit-390089 | `0x307874...074fcf` | ⚠️ Unaudited |
| PositionRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390003 | `0x341631...01e4f9` | ⚠️ Unaudited |
| PositionRegistry | unknown | project_anchor | own_supporting | 0 | optimism | unit-390076 | `0xf67e65...1cc9ea` | ⚠️ Unaudited |
| PositionRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-390103 | `0xa3ceec...ac4da2` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390030 | `0xeb1df7...fa5684` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | optimism | unit-390072 | `0xe0af15...3d3017` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | base | unit-390088 | `0x2f14c8...080894` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-390019 | `0xc0bc99...68370e` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-390026 | `0xceb64b...5c83e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-390035 | `0xfca22b...ddbaaa` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | optimism | unit-390066 | `0xc0bc99...68370e` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | optimism | unit-390070 | `0xceb64b...5c83e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | optimism | unit-390080 | `0xfca22b...ddbaaa` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-390105 | `0xc0bc99...68370e` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-390109 | `0xceb64b...5c83e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-390117 | `0xfca22b...ddbaaa` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390004 | `0x3b2cd4...2941d5` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390049 | `0x3b2cd4...2941d5` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390090 | `0x3b2cd4...2941d5` | ⚠️ Unaudited |
| SwapAggregator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390021 | `0xc67abc...d6ed14` | ⚠️ Unaudited |
| SwapAggregator | unknown | project_anchor | own_supporting | 0 | optimism | unit-390060 | `0x7b9c45...3b0efa` | ⚠️ Unaudited |
| SwapAggregator | unknown | project_anchor | own_supporting | 0 | base | unit-390099 | `0x7b9c45...3b0efa` | ⚠️ Unaudited |
| Synth | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389994 | `0x0d0ac1...9aa4b7` | ⚠️ Unaudited |
| Synth | unknown | project_anchor | own_supporting | 0 | optimism | unit-390039 | `0x0d0ac1...9aa4b7` | ⚠️ Unaudited |
| Synth | unknown | project_anchor | own_supporting | 0 | base | unit-390082 | `0x0d0ac1...9aa4b7` | ⚠️ Unaudited |
| SynthStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-389998 | `0x19b72d...867c37` | ⚠️ Unaudited |
| SynthStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390055 | `0x5f0a84...7a1e8f` | ⚠️ Unaudited |
| SynthStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390085 | `0x19b72d...867c37` | ⚠️ Unaudited |
| VelodromeSlipstreamAdapter | unknown | project_anchor | own_supporting | 0 | optimism | unit-390047 | `0x2a643a...607068` | ⚠️ Unaudited |
| Vesper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390023 | `0xccf1f2...639f3c` | ⚠️ Unaudited |
| Vesper | unknown | project_anchor | own_supporting | 0 | optimism | unit-390068 | `0xccf1f2...639f3c` | ⚠️ Unaudited |
| Vesper | unknown | project_anchor | own_supporting | 0 | base | unit-390107 | `0xccf1f2...639f3c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389993 | `0x05495f...106589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8adb...25a420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dba14...7ec890` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390000 | `0x1f2cb3...7b2ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249a62...a08bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a643a...607068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4ccd...f72fc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390006 | `0x3f6da0...3b488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4391ae...d35978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x491aab...4e9515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4966d4...0eaa68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f0a84...7a1e8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390012 | `0x78002d...8e3f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d791...ad9762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b9c45...3b0efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d4dfa...1aee36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390015 | `0x98fba5...33fad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6798b...adab14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390025 | `0xce5bc7...b3d206` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390027 | `0xd7be1c...22cd96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390029 | `0xe8c3cc...5c4ead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390031 | `0xee156d...0e9534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67e65...1cc9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1481...0f6ebe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390037 | `0x05495f...106589` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390044 | `0x1f2cb3...7b2ac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390051 | `0x3f6da0...3b488d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390058 | `0x78002d...8e3f3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390064 | `0x98fba5...33fad2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390069 | `0xce5bc7...b3d206` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390071 | `0xd7be1c...22cd96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390073 | `0xe8c3cc...5c4ead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390074 | `0xee156d...0e9534` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390081 | `0x05495f...106589` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390086 | `0x1f2cb3...7b2ac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390092 | `0x3f6da0...3b488d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390098 | `0x78002d...8e3f3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390102 | `0x98fba5...33fad2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390108 | `0xce5bc7...b3d206` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390110 | `0xd7be1c...22cd96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390112 | `0xe8c3cc...5c4ead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390113 | `0xee156d...0e9534` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report-SWA_REVIEW.pdf](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit_Report-SWA_REVIEW.pdf) | SWA | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Audit_Report_Odyssey_REVIEW.pdf](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit_Report_Odyssey_REVIEW.pdf) | Unknown | Audit | 2024-07 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17714] Audit_Report-SWA_REVIEW.pdf — no match: Scope section lists repository 'bloqpriv/odyssey-contracts/src' with commit hash. Contract names extracted from code sections in findings.
- [17715] Audit_Report_Odyssey_REVIEW.pdf — matched: Extracted contract names from the 'Target' section and findings code sections. The audit date is the end date of the engagement (July 17, 2024) as stated in the Executive Summary.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report-SWA_REVIEW.pdf | SwapAggregator | ambiguous — not counted | SwapAggregator (alternative) `0x7b9c45...3b0efa` — deployed 2025-01-29 23:32:11+03 — liveness: live (code_present_context)<br>SwapAggregator (alternative) `0x7b9c45...3b0efa` — deployed 2025-01-29 23:26:17+03 — liveness: live (code_present_context)<br>SwapAggregator (alternative) `0xc67abc...d6ed14` — deployed 2025-01-29 23:13:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report-SWA_REVIEW.pdf | Strategy | unmatched — not counted | — | Code sections in findings RES-02 and RES-03: src/strategies/Strategy.sol#L254-L270 and #L298 | no |
| Audit_Report_Odyssey_REVIEW.pdf | AjnaBorrowStrategy | ambiguous — not counted | AjnaBorrowStrategy (alternative) `0xde433f...9c9736` — deployed 2025-01-29 23:29:13+03 — liveness: live (current_address_book_code)<br>AjnaBorrowStrategy (alternative) `0x0dba14...7ec890` — deployed 2025-01-29 23:45:23+03 — liveness: live (current_address_book_code)<br>AjnaBorrowStrategy (alternative) `0xde433f...9c9736` — deployed 2025-01-29 23:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CallOrderExecutor | ambiguous — not counted | CallOrderExecutor (alternative) `0xf70aca...0da5d9` — deployed 2025-02-19 00:17:57+03 — liveness: live (current_address_book_code)<br>CallOrderExecutor (alternative) `0xf70aca...0da5d9` — deployed 2025-02-19 00:04:07+03 — liveness: live (current_address_book_code)<br>CallOrderExecutor (alternative) `0xf70aca...0da5d9` — deployed 2025-02-19 00:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | FlashLoanExecutor | ambiguous — not counted | FlashLoanExecutor (alternative) `0x6e30df...7fb2c4` — deployed 2025-01-29 23:17:11+03 — liveness: live (current_address_book_code)<br>FlashLoanExecutor (alternative) `0x6e30df...7fb2c4` — deployed 2025-01-29 23:28:21+03 — liveness: live (current_address_book_code)<br>FlashLoanExecutor (alternative) `0x4391ae...d35978` — deployed 2025-01-29 23:44:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV2 | own contract | AaveV2 (selected) `0xb5a44c...b98445` — deployed 2025-01-29 23:13:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV3 | ambiguous — not counted | AaveV3 (alternative) `0x206eba...9a2821` — deployed 2025-01-29 23:26:27+03 — liveness: live (code_present_context)<br>AaveV3 (alternative) `0x206eba...9a2821` — deployed 2025-01-29 23:14:11+03 — liveness: live (code_present_context)<br>AaveV3 (alternative) `0x206eba...9a2821` — deployed 2025-01-29 23:32:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Ajna | ambiguous — not counted | Ajna (alternative) `0x82e6b5...6ac3a2` — deployed 2025-01-29 23:26:37+03 — liveness: live (code_present_context)<br>Ajna (alternative) `0x82e6b5...6ac3a2` — deployed 2025-01-29 23:43:19+03 — liveness: live (code_present_context)<br>Ajna (alternative) `0x82e6b5...6ac3a2` — deployed 2025-01-29 23:14:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV2 | own contract | CompoundV2 (selected) `0x186c91...59a820` — deployed 2025-01-29 23:14:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV3 | ambiguous — not counted | CompoundV3 (alternative) `0x13f9f7...ee6d40` — deployed 2025-01-29 23:26:47+03 — liveness: live (code_present_context)<br>CompoundV3 (alternative) `0x13f9f7...ee6d40` — deployed 2025-01-29 23:43:29+03 — liveness: live (code_present_context)<br>CompoundV3 (alternative) `0x13f9f7...ee6d40` — deployed 2025-01-29 23:14:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Synth | ambiguous — not counted | Synth (alternative) `0x0d0ac1...9aa4b7` — deployed 2025-01-29 23:43:37+03 — liveness: live (current_address_book_code)<br>Synth (alternative) `0x0d0ac1...9aa4b7` — deployed 2025-01-29 23:14:59+03 — liveness: live (current_address_book_code)<br>Synth (alternative) `0x0d0ac1...9aa4b7` — deployed 2025-01-29 23:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Vesper | ambiguous — not counted | Vesper (alternative) `0xccf1f2...639f3c` — deployed 2025-01-29 23:15:11+03 — liveness: live (code_present_context)<br>Vesper (alternative) `0xccf1f2...639f3c` — deployed 2025-01-29 23:43:41+03 — liveness: live (code_present_context)<br>Vesper (alternative) `0xccf1f2...639f3c` — deployed 2025-01-29 23:27:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | RecurringSwapExecutor | ambiguous — not counted | RecurringSwapExecutor (alternative) `0x3b2cd4...2941d5` — deployed 2025-02-19 00:11:23+03 — liveness: live (current_address_book_code)<br>RecurringSwapExecutor (alternative) `0x3b2cd4...2941d5` — deployed 2025-02-19 00:18:17+03 — liveness: live (current_address_book_code)<br>RecurringSwapExecutor (alternative) `0x3b2cd4...2941d5` — deployed 2025-02-19 00:01:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | LimitOrderExecutor | ambiguous — not counted | LimitOrderExecutor (alternative) `0x1807c6...604ef4` — deployed 2025-02-19 00:18:07+03 — liveness: live (current_address_book_code)<br>LimitOrderExecutor (alternative) `0x1807c6...604ef4` — deployed 2025-02-19 00:04:17+03 — liveness: live (current_address_book_code)<br>LimitOrderExecutor (alternative) `0x1807c6...604ef4` — deployed 2025-02-19 00:01:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | FlatDepositFeePolicy | unmatched — not counted | — | listed in findings | no |
| Audit_Report_Odyssey_REVIEW.pdf | ApyTieredFeePolicy | ambiguous — not counted | ApyTieredFeePolicy (alternative) `0x5ef26d...016faa` — deployed 2025-01-29 23:27:31+03 — liveness: live (current_address_book_code)<br>ApyTieredFeePolicy (alternative) `0xcb6daf...01ee0d` — deployed 2025-01-29 23:15:47+03 — liveness: live (current_address_book_code)<br>ApyTieredFeePolicy (alternative) `0x3d4ccd...f72fc3` — deployed 2025-01-29 23:44:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV2BorrowStrategy | own contract | AaveV2BorrowStrategy (selected) `0xfcb475...f1d0ed` — deployed 2025-01-29 23:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV3BorrowStrategy | ambiguous — not counted | AaveV3BorrowStrategy (alternative) `0x8d4dfa...1aee36` — deployed 2025-01-29 23:45:07+03 — liveness: live (current_address_book_code)<br>AaveV3BorrowStrategy (alternative) `0x3efcee...58d79b` — deployed 2025-01-29 23:18:23+03 — liveness: live (current_address_book_code)<br>AaveV3BorrowStrategy (alternative) `0x3efcee...58d79b` — deployed 2025-01-29 23:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV2BorrowStrategy | own contract | CompoundV2BorrowStrategy (selected) `0x77fa78...84bb3c` — deployed 2025-01-29 23:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV3BorrowStrategy | ambiguous — not counted | CompoundV3BorrowStrategy (alternative) `0xc27630...c8b9c5` — deployed 2025-01-29 23:19:59+03 — liveness: live (current_address_book_code)<br>CompoundV3BorrowStrategy (alternative) `0x4966d4...0eaa68` — deployed 2025-01-29 23:45:37+03 — liveness: live (current_address_book_code)<br>CompoundV3BorrowStrategy (alternative) `0xc27630...c8b9c5` — deployed 2025-01-29 23:29:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV2VesperStrategy | own contract | CompoundV2VesperStrategy (selected) `0xce3267...15780e` — deployed 2025-01-29 23:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV3VesperStrategy | ambiguous — not counted | CompoundV3VesperStrategy (alternative) `0xab890e...0827c3` — deployed 2025-01-29 23:20:23+03 — liveness: live (current_address_book_code)<br>CompoundV3VesperStrategy (alternative) `0x249a62...a08bbb` — deployed 2025-01-29 23:45:53+03 — liveness: live (current_address_book_code)<br>CompoundV3VesperStrategy (alternative) `0xab890e...0827c3` — deployed 2025-01-29 23:29:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Strategy | unmatched — not counted | — | listed in findings | no |
| Audit_Report_Odyssey_REVIEW.pdf | SynthStrategy | ambiguous — not counted | SynthStrategy (alternative) `0x19b72d...867c37` — deployed 2025-01-29 23:20:47+03 — liveness: live (current_address_book_code)<br>SynthStrategy (alternative) `0x5f0a84...7a1e8f` — deployed 2025-01-29 23:46:11+03 — liveness: live (current_address_book_code)<br>SynthStrategy (alternative) `0x19b72d...867c37` — deployed 2025-01-29 23:30:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | PositionRegistry | ambiguous — not counted | PositionRegistry (alternative) `0x341631...01e4f9` — deployed 2025-01-29 23:13:23+03 — liveness: live (current_address_book_code)<br>PositionRegistry (alternative) `0xf67e65...1cc9ea` — deployed 2025-01-29 23:31:55+03 — liveness: live (current_address_book_code)<br>PositionRegistry (alternative) `0xa3ceec...ac4da2` — deployed 2025-01-29 23:25:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x82e6b5...6ac3a2` | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x82e6b5...6ac3a2` | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x82e6b5...6ac3a2` | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde433f...9c9736` | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0dba14...7ec890` | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xde433f...9c9736` | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb6daf...01ee0d` | ApyTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3d4ccd...f72fc3` | ApyTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5ef26d...016faa` | ApyTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf70aca...0da5d9` | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf70aca...0da5d9` | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf70aca...0da5d9` | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1cb204...604169` | DyDxFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a7c1d...3b2ef4` | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6a7c1d...3b2ef4` | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6a7c1d...3b2ef4` | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4868c...ea0543` | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf4868c...ea0543` | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf4868c...ea0543` | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6e30df...7fb2c4` | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4391ae...d35978` | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6e30df...7fb2c4` | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1807c6...604ef4` | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1807c6...604ef4` | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1807c6...604ef4` | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaa5900...e8622e` | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa6798b...adab14` | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x307874...074fcf` | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x341631...01e4f9` | PositionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf67e65...1cc9ea` | PositionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa3ceec...ac4da2` | PositionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb1df7...fa5684` | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe0af15...3d3017` | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2f14c8...080894` | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b2cd4...2941d5` | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3b2cd4...2941d5` | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3b2cd4...2941d5` | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc67abc...d6ed14` | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7b9c45...3b0efa` | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7b9c45...3b0efa` | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d0ac1...9aa4b7` | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d0ac1...9aa4b7` | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0d0ac1...9aa4b7` | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19b72d...867c37` | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5f0a84...7a1e8f` | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x19b72d...867c37` | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2a643a...607068` | VelodromeSlipstreamAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xccf1f2...639f3c` | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xccf1f2...639f3c` | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xccf1f2...639f3c` | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 32 |
| standard_library | 9 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 17 ambiguous, 3 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=5

Zero-match audit list:

- [17714] Audit_Report-SWA_REVIEW.pdf

Fork inheritance lineage and inherited audits are included when available.
