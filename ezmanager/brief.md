# Agentic Audit Brief: EZManager

## Project Overview

- Project: EZManager (`ezmanager`)
- Website: [https://ezmanager.finance](https://ezmanager.finance)
- Lifecycle: active (Tier 0, 25.8% below peak)
- Generated: 2026-06-21T11:57:36.881Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, bsc, ethereum, hyperliquid
- Contract surface: 113 unique implementations (206 raw deployments)
- DeFi Llama TVL: $312,091.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

EZManager is a multi-chain liquidity management protocol that automates concentrated liquidity positions on decentralized exchanges. It uses a system of vaults, adapters, and governance contracts to manage and rebalance liquidity, optimize yields, and handle protocol reserves across Ethereum, BSC, HyperEVM, Base, and Arbitrum.

### Architecture

Each product family is a chain-specific deployment of the same core liquidity management system, sharing a common architecture of CLCore, CLManager, EZWrapper, RebalancePlanner, Valuation, and ProtocolReserve. Governance and referral infrastructure (TimelockController, ReferralManager) are also deployed per chain, while adapters (UniswapAdapter, AerodromeAdapter, ProjectXAdapter) provide chain-specific DEX integrations.

## Contract Surface Quality

- Indexed contracts: 479; live-surface contracts included: 206 (206 live, 0 unknown).
- Excluded by liveness: 47 inactive, 226 singleton, 0 uninitialized.
- Deployment units: 0/108 live.
- Detected codebases: none
- Unverified dependencies: 1/20.

## Audit Coverage Summary

- Verified implementations audited: 9/12 (75.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 2
- Unverified implementations: 101
- Unique implementations: 113
- Raw deployments: 206
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 58.3% | 2026-02 |
| Valves | Tier 2 | 3 | 25.0% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromeAdapter | adapter | base | n/a | 2 deployments: base [`0x66a4ac...fc0999`](./contracts/base-8453/0x66a4acd86986afce3c0119383d2869ca5cfc0999/); base `0x9efde1...a5fa28` | ✅ Audited |
| CLCore | unknown | bsc | n/a | 8 deployments: ethereum `0x3a5e78...a86e79`; ethereum `0xab2646...160312`; bsc [`0x10c6d3...a08eb2`](./contracts/bsc-56/0x10c6d38f0c19c09b7cefde5f42494e4feca08eb2/); bsc `0x78af86...e4b5b1`; bsc `0xc4aafe...30e05c`; hyperliquid `0x6f8179...63ae11`; base `0x61c36a...52770f`; arbitrum `0xd52170...86ae91` | ✅ Audited |
| EZWrapper | unknown | base | n/a | 5 deployments: ethereum `0x2e631a...db574f`; bsc `0xfdbeb9...81d48d`; hyperliquid `0x5afebf...8ec338`; base [`0x180670...bf1921`](./contracts/base-8453/0x180670ccb476624566e78618d467ef57ebbf1921/); arbitrum `0x91d0ac...16c449` | ✅ Audited |
| ProtocolReserve | unknown | arbitrum | n/a | 15 deployments: ethereum `0x38de5b...6f5323`; ethereum `0x7adce9...8659f2`; bsc `0x953b24...06b278`; bsc `0xa71df7...f08012`; bsc `0xf3af04...7b5889`; bsc `0xf3e9dc...73f23d`; hyperliquid `0x43ea78...d49799`; hyperliquid `0x7adce9...8659f2`; hyperliquid `0x898ec6...772650`; hyperliquid `0xbcab6c...9cbb27`; base `0x6c50a4...bfe973`; base `0xb55cb1...90edc8`; base `0xe24135...2e6811`; arbitrum [`0x149a9a...0d8ee6`](./contracts/arbitrum-42161/0x149a9a5b2472553253aa532842f358de9b0d8ee6/); arbitrum `0xc3e111...e7014a` | ✅ Audited |
| ReferralManager | governance | bsc | n/a | 5 deployments: ethereum `0x257555...dfebdc`; bsc [`0x1b5f42...ebfd35`](./contracts/bsc-56/0x1b5f42003e77ae9389a1688c64441ca5cbebfd35/); hyperliquid `0xa90b89...1031e0`; base `0xab31a2...f6ff28`; arbitrum `0xf89bae...07bc3b` | ✅ Audited |
| UniswapAdapter | adapter | ethereum | n/a | 5 deployments: ethereum [`0x0c10cb...900bd3`](./contracts/ethereum-1/0x0c10cb1fe66e0e452183d918e78b714026900bd3/); bsc `0xaebfc2...9cfd3f`; base `0x0e5d5a...c5be3b`; base `0x6e08ca...b4f749`; arbitrum `0xc0fac5...f6fc1d` | ✅ Audited |
| Valuation | unknown | ethereum | n/a | 10 deployments: ethereum [`0x43ea78...d49799`](./contracts/ethereum-1/0x43ea78157b39fbacc599162f63b855e4a8d49799/); ethereum `0x738db7...6727e3`; bsc `0x52ee65...329c3c`; bsc `0xbcdd73...2edc10`; bsc `0xe4ad95...ecbc51`; hyperliquid `0x5a049d...a04cc7`; base `0xae79b3...71a548`; base `0xb80b50...76035e`; arbitrum `0x54a02f...45de89`; arbitrum `0xf6d5ce...3d7d6c` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Lens | periphery | base | n/a | 10 deployments: base [`0x1d741a...a64a69`](./contracts/base-8453/0x1d741af84c01513564d838c7461218c685a64a69/); base `0x248d33...4ff395`; base `0x2aa8ca...c0c17f`; base `0x2dd39a...04d0ed`; base `0x6c133e...dc7fb4`; base `0x8ca465...42caee`; base `0xb55d11...e0f21c`; base `0xc9133c...410e73`; base `0xd41cc7...04ab2a`; base `0xf408ed...e81d82` | ⚠️ Unaudited |
| ProjectXAdapter | adapter | hyperliquid | n/a | [`0xc5cf6b...00cc0d`](./contracts/hyperliquid-999/0xc5cf6bc5db058b4330ab3687bdafc575f800cc0d/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | n/a | 9 deployments: ethereum `0x896389...eae985`; bsc [`0x03421c...38d325`](./contracts/bsc-56/0x03421c4598f9b1e20195b3abf0bdf6297e38d325/); bsc `0x16e38a...a01c6b`; bsc `0xc20e4b...3a71f2`; hyperliquid `0x389170...50c398`; base `0x93e4a1...88c872`; base `0x96b983...1a07c3`; base `0xdd6135...65b6dd`; arbitrum `0xab9e67...6d5611` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLManager | governance | ethereum | n/a | 19 deployments: ethereum [`0x029495...a68a70`](./contracts/ethereum-1/0x0294954263af527c725fcd9cac0e1f5ca3a68a70/); ethereum `0x3b2cfb...e742b6`; ethereum `0xcb9f75...87f3b3`; bsc `0x10178b...a9e15f`; bsc `0x43f44c...6a884d`; bsc `0x4d5a83...4be153`; bsc `0x6e1318...839a9c`; bsc `0xad5b7e...b5c413`; bsc `0xc5a634...6989b5`; hyperliquid `0x293230...cfcf64`; hyperliquid `0x84ff60...815fc2`; hyperliquid `0xa33471...f9c96f`; base `0x15689e...670af5`; base `0x52dcc4...bd48a2`; base `0x846fb8...791a7c`; base `0xb822f2...8fbd14`; arbitrum `0x57f5b2...2bc2aa`; arbitrum `0xbe682d...350269`; arbitrum `0xe9b946...c3ec0a` | ✅ Audited (bytecode match) |
| RebalancePlanner | unknown | ethereum | n/a | 16 deployments: ethereum [`0x06dff4...ca2e6c`](./contracts/ethereum-1/0x06dff44b626cd0fa34bd18ea061fb1b4d4ca2e6c/); ethereum `0x9a1fce...e19b7b`; ethereum `0xbcab6c...9cbb27`; bsc `0x0c22e5...3b8658`; bsc `0x61f3d9...7b0a45`; bsc `0xb36d9f...75f307`; hyperliquid `0x332edd...4ae0f9`; hyperliquid `0xc3687d...167804`; hyperliquid `0xc3edd9...7ff3af`; hyperliquid `0xec6a12...166098`; base `0x06f655...9799be`; base `0x4e7855...1f2e24`; base `0x84600d...88643a`; arbitrum `0x2281b6...ebc023`; arbitrum `0x49e4d4...1c7a58`; arbitrum `0xa7e6a3...ee09b4` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x44ab6d...1468ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x971e07...002a32` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc319cf...b6a1c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03dcf3...e00782` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0518ea...439e02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x05c74d...d6f9c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x070108...ac1775` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c7523...57ba30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x125903...a8025d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1553cc...70f984` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18d348...e41d71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19b15b...9a2d01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c85ed...47944f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20ef14...f9451d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21448e...e1fc49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28b139...1b6fa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d00fa...77b904` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x337e56...a87525` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x365d61...0fccba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x380200...4c037e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3afb0b...754702` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b878b...a5d4ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e1de6...9e9f83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ec3c8...f7df4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f1055...e904c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47052c...e27b3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4df2e7...aeee62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x500bf5...0b9714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x510627...e3317e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x573af9...71d060` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579021...a9a842` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a8d50...3d6735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c4b53...835bb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ea8fb...8985e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f75c6...24d4cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x641239...e453c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6477be...fc74c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65e64b...0cde09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x665d86...ab17dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67aa03...ce088e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73bd64...a61ca6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x744347...b01b95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x758278...adeb37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76fda9...d1dd89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x786349...1d9a6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7da54c...825713` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dc80b...297d66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x807fe5...a9cb07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82acfd...4f0e5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84ff60...815fc2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8af7a3...7f7262` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d45e1...6f180a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9074fe...92c445` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91a768...1ed525` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9230b0...c285be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x944b75...8db80a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96145c...bc555a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x968cf2...1e17c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e784d...31790b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f2613...36dd23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0f65c...f5b075` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa44ae0...d2a208` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4c89f...0489b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5cd7a...86f4f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa638b4...e57a97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xadbd17...40983e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeb642...b59a7f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb11d4f...8a893c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbcb7bb...9df7af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf81f6...346ad8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0c658...8399fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5cf6b...00cc0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f1a1...4b81f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca5bf1...f3bf82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca9749...a175d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbf562...9dda27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf83f7...048585` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd512bf...a7551e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd62610...0a90cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdae75f...ceacbd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc205e...bfc885` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf35e8...a26aee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe13bbc...52d1b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe53a48...a40cc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe76d3b...a1a514` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8d795...ed4683` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe933a8...d560f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeecf67...d4f879` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef6b45...f60c0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf026b1...40c42e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf04330...195bd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2352f...9857b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3c3f2...4b02d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf40f57...6059ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf502e9...2d72d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5b5dd...20c54d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7978c...25bd3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7b3fb...04f22f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7baba...47b205` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb305b...d09574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe4d3c...10ebf5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ezmanager/audit.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 64 | high |
| [Valves v1.5 View the published Valves v1.5 audit report for EZManager.](https://github.com/EZManagerCL/EZManagerContracts/blob/master/audits/Valves_v1_5.pdf) | Valves | Audit | 2026-05 | fresh | Direct | contract_name | 25 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1d741a...a64a69`](./contracts/base-8453/0x1d741af84c01513564d838c7461218c685a64a69/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=89

Fork inheritance lineage and inherited audits are included when available.
