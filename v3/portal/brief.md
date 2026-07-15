# Agentic Audit Brief: Portal

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Portal (`portal`)
- Website: [https://portalbridge.com](https://portalbridge.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: acala, arbitrum, arbitrum-sepolia, aurora, avalanche, avalanche-fuji, base, base-sepolia, berachain, blast, bsc, bsc-testnet, celo, chain-17000, chain-21000000, chain-4002, chain-44787, chain-534351, creditcoin, ethereum, fantom, gnosis, goat, hyperliquid, ink, kaia, karura, lightlink, linea, linea-sepolia, mantle, megaeth, mezo, monad, monad-testnet, moonbase-alpha, moonbeam, oasis-emerald, optimism, optimism-sepolia, plume, polygon, polygon-amoy, rootstock, scroll, sei, sepolia, sonic, telos-evm, unichain, unichain-sepolia, world, x-layer, xrpl-evm
- Contract surface: 195 unique implementations (195 raw deployments)
- Coverage basis: 0/93 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,010,570,687.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Portal. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 93 contract row(s) across acala, arbitrum, arbitrum-sepolia, aurora, avalanche, avalanche-fuji, base, base-sepolia, berachain, blast, bsc, bsc-testnet, celo, chain-17000, chain-21000000, chain-4002, chain-44787, chain-534351, creditcoin, ethereum, fantom, gnosis, goat, hyperliquid, ink, kaia, karura, lightlink, linea, linea-sepolia, mantle, megaeth, mezo, monad, monad-testnet, moonbase-alpha, moonbeam, oasis-emerald, optimism, optimism-sepolia, plasma, plume, polygon, polygon-amoy, rootstock, scroll, sei, sepolia, sonic, telos-evm, unichain, unichain-sepolia, world, x-layer, xrpl-evm. Structural roles: 93 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 93
- Structural roles: unclassified (93)
- Contract kinds: contract (92), abstract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 128 contracts are derived from known codebases. 128 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CCTP - Arbitrum (`0x270348...f30e3c`, chain 42161)
- CCTP - Avalanche (`0x09fb06...265f13`, chain 43114)
- CCTP - Base (`0x03fabb...843f1d`, chain 8453)
- CCTP - Ethereum (`0xaada05...636f6a`, chain 1)
- CCTP - Optimism (`0x270348...f30e3c`, chain 10)
- CCTP - Polygon (`0x0ff282...65cdd6`, chain 137)
- Core Contracts - Arbitrum (`0xa5f208...9bca46`, chain 42161)
- Core Contracts - Avalanche (`0x54a8e5...03e26c`, chain 43114)
- Core Contracts - Base (`0xbebdb6...dd8ac6`, chain 8453)
- Core Contracts - Berachain (`0xca1d5a...9d146d`, chain 80094)
- Core Contracts - BNB Smart Chain (`0x98f3c9...64288b`, chain 56)
- Core Contracts - Celo (`0xa32144...cac48e`, chain 42220)
- Core Contracts - CreditCoin (`0xabf89d...750da8`, chain 102030)
- Core Contracts - Ethereum (`0x98f3c9...64288b`, chain 1)
- Core Contracts - Fantom (`0x126783...9a1485`, chain 250)
- Core Contracts - HyperEVM (`0x7c0faf...b53ab3`, chain 999)
- Core Contracts - Ink (`0xca1d5a...9d146d`, chain 57073)
- Core Contracts - Kaia (`0x0c2160...e90bb7`, chain 8217)
- Core Contracts - Linea (`0x0c56ae...f77b32`, chain 59144)
- Core Contracts - Mantle (`0xbebdb6...dd8ac6`, chain 5000)
- Core Contracts - MegaETH (`0xabf89d...750da8`, chain 4326)
- Core Contracts - Mezo (`0xabf89d...750da8`, chain 31612)
- Core Contracts - Monad (`0x194b12...41cac0`, chain 143)
- Core Contracts - Moonbeam (`0xc8e2b0...ce29f3`, chain 1284)
- Core Contracts - Optimism (`0xee91c3...ec9722`, chain 10)
- Core Contracts - Plume (`0xabf89d...750da8`, chain 98866)
- Core Contracts - Polygon (`0x7a4b5a...4ec4d7`, chain 137)
- Core Contracts - Scroll (`0xbebdb6...dd8ac6`, chain 534352)
- Core Contracts - SeiEVM (`0xca1d5a...9d146d`, chain 1329)
- Core Contracts - Unichain (`0xca1d5a...9d146d`, chain 130)
- Core Contracts - World Chain (`0xcbcee4...1eb506`, chain 480)
- Core Contracts - X Layer (`0x194b12...41cac0`, chain 196)
- Core Contracts - XRPL-EVM (`0xabf89d...750da8`, chain 1440000)
- Delegated Guardians - Ethereum (`0x146280...c4c209`, chain 1)
- Executor - Arbitrum (`0x3980f8...2eeab4`, chain 42161)
- Executor - Avalanche (`0x4661f0...b00381`, chain 43114)
- Executor - Base (`0x9e1936...3597ea`, chain 8453)
- Executor - Berachain (`0x0dd7a5...d5e2d3`, chain 80094)
- Executor - BNB Smart Chain (`0xec8ccc...bf4ee0`, chain 56)
- Executor - Celo (`0xe6ea50...28cf05`, chain 42220)
- Executor - CreditCoin (`0xd2e420...ca7bde`, chain 102030)
- Executor - Ethereum (`0x84eee8...fc6f8a`, chain 1)
- Executor - HyperEVM (`0xd77178...265f78`, chain 999)
- Executor - Ink (`0x3e44a5...211ddd`, chain 57073)
- Executor - Linea (`0x23af2b...5a9bd3`, chain 59144)
- Executor - MegaETH (`0xd405e0...8b2ecb`, chain 4326)
- Executor - Mezo (`0x0f9b8e...0c5606`, chain 31612)
- Executor - Monad (`0xc04de6...6a3f65`, chain 143)
- Executor - Moonbeam (`0x85d064...6f8d19`, chain 1284)
- Executor - Optimism (`0x85b704...2ac3e7`, chain 10)
- Executor - Polygon (`0x0b23ef...5a5e81`, chain 137)
- Executor - Scroll (`0xcfadde...41f075`, chain 534352)
- Executor - SeiEVM (`0x25f1c9...8e66e5`, chain 1329)
- Executor - Sonic (`0x3fdc36...c74812`, chain 146)
- Executor - Unichain (`0x764dd8...231aed`, chain 130)
- Executor - World Chain (`0x8689b4...e8804b`, chain 480)
- Executor - XRPL-EVM (`0x8345e9...30d896`, chain 1440000)
- Guardian Governance - Arbitrum (`0x36cf4c...06163f`, chain 42161)
- Guardian Governance - Avalanche (`0x169d91...03a423`, chain 43114)
- Guardian Governance - Base (`0x838a95...ec40f1`, chain 8453)
- Guardian Governance - BNB Smart Chain (`0x8e4dc6...30043e`, chain 56)
- Guardian Governance - Ethereum (`0x23fea5...f6ffcf`, chain 1)
- Guardian Governance - HyperEVM (`0x574b78...09e512`, chain 999)
- Guardian Governance - MegaETH (`0x574b78...09e512`, chain 4326)
- Guardian Governance - Monad (`0x574b78...09e512`, chain 143)
- Guardian Governance - Optimism (`0x0e09a3...9afbd8`, chain 10)
- Guardian Governance - Unichain (`0x574b78...09e512`, chain 130)
- Guardian Governance - XRPL-EVM (`0x574b78...09e512`, chain 1440000)
- Quoter Router - Arbitrum (`0x32eec1...56bdcc`, chain 42161)
- Quoter Router - Avalanche (`0xa3a2a6...abd2d0`, chain 43114)
- Quoter Router - Base (`0x265fd0...604658`, chain 8453)
- Quoter Router - BNB Smart Chain (`0xc921f2...624edb`, chain 56)
- Quoter Router - Ethereum (`0xf22f1c...9c4ef3`, chain 1)
- Quoter Router - Ink (`0xdec050...bd88d2`, chain 57073)
- Quoter Router - Monad (`0x3d9282...e75f34`, chain 143)
- Quoter Router - Optimism (`0xa3b655...ae75b3`, chain 10)
- Quoter Router - Plume (`0x85ba1b...32d230`, chain 98866)
- Quoter Router - Polygon (`0x2a8569...29f123`, chain 137)
- Read-Only Deployments - Acala (`0xa32144...cac48e`, chain 787)
- Read-Only Deployments - Aurora (`0x51b512...2f510f`, chain 1313161554)
- Read-Only Deployments - Blast (`0xbebdb6...dd8ac6`, chain 81457)
- Read-Only Deployments - Corn (`0xa683c6...a25785`, chain 21000000)
- Read-Only Deployments - Gnosis (`0xa32144...cac48e`, chain 100)
- Read-Only Deployments - Goat (`0x352a86...b67155`, chain 2345)
- Read-Only Deployments - Karura (`0xa32144...cac48e`, chain 686)
- Read-Only Deployments - LightLink (`0x352a86...b67155`, chain 1890)
- Read-Only Deployments - Oasis (`0xfe8cd4...f64585`, chain 42262)
- Read-Only Deployments - Rootstock (`0xbebdb6...dd8ac6`, chain 30)
- Read-Only Deployments - Sonic (`0x352a86...b67155`, chain 146)
- Read-Only Deployments - Telos (`0x352a86...b67155`, chain 40)
- Settlement Token Router - Arbitrum (`0x70287c...389c47`, chain 42161)
- Settlement Token Router - Avalanche (`0x70287c...389c47`, chain 43114)
- Settlement Token Router - Base (`0x70287c...389c47`, chain 8453)
- Settlement Token Router - Ethereum (`0x70287c...389c47`, chain 1)
- Settlement Token Router - Optimism (`0x70287c...389c47`, chain 10)
- Settlement Token Router - Polygon (`0x70287c...389c47`, chain 137)
- Wormhole Labs Quoter Implementation - Arbitrum (`0xa25862...468d60`, chain 42161)
- Wormhole Labs Quoter Implementation - Avalanche (`0xa25862...468d60`, chain 43114)
- Wormhole Labs Quoter Implementation - Base (`0xa25862...468d60`, chain 8453)
- Wormhole Labs Quoter Implementation - BNB Smart Chain (`0xa25862...468d60`, chain 56)
- Wormhole Labs Quoter Implementation - Ethereum (`0xa25862...468d60`, chain 1)
- Wormhole Labs Quoter Implementation - Ink (`0xa25862...468d60`, chain 57073)
- Wormhole Labs Quoter Implementation - Monad (`0xa25862...468d60`, chain 143)
- Wormhole Labs Quoter Implementation - Optimism (`0xa25862...468d60`, chain 10)
- Wormhole Labs Quoter Implementation - Plume (`0xa25862...468d60`, chain 98866)
- Wormhole Labs Quoter Implementation - Polygon (`0xa25862...468d60`, chain 137)
- Wrapped Token Transfers (WTT) - Arbitrum (`0x0b2402...1bd39c`, chain 42161)
- Wrapped Token Transfers (WTT) - Avalanche (`0x0e082f...1d8052`, chain 43114)
- Wrapped Token Transfers (WTT) - Base (`0x8d2de8...c79627`, chain 8453)
- Wrapped Token Transfers (WTT) - Berachain (`0x3ff727...700560`, chain 80094)
- Wrapped Token Transfers (WTT) - BNB Smart Chain (`0xb6f6d8...1da6e7`, chain 56)
- Wrapped Token Transfers (WTT) - Celo (`0x796dff...c93eed`, chain 42220)
- Wrapped Token Transfers (WTT) - Ethereum (`0x3ee18b...8fa585`, chain 1)
- Wrapped Token Transfers (WTT) - Fantom (`0x7c9fc5...8d79d2`, chain 250)
- Wrapped Token Transfers (WTT) - Ink (`0x3ff727...700560`, chain 57073)
- Wrapped Token Transfers (WTT) - Kaia (`0x5b08ac...d0193f`, chain 8217)
- Wrapped Token Transfers (WTT) - Mantle (`0x24850c...74fa9d`, chain 5000)
- Wrapped Token Transfers (WTT) - MegaETH (`0xf97b81...3096c5`, chain 4326)
- Wrapped Token Transfers (WTT) - Monad (`0x0b2719...a13ba7`, chain 143)
- Wrapped Token Transfers (WTT) - Moonbeam (`0xb1731c...f57d92`, chain 1284)
- Wrapped Token Transfers (WTT) - Optimism (`0x1d6812...9daa8b`, chain 10)
- Wrapped Token Transfers (WTT) - Polygon (`0x5a5850...e93fde`, chain 137)
- Wrapped Token Transfers (WTT) - Scroll (`0x24850c...74fa9d`, chain 534352)
- Wrapped Token Transfers (WTT) - SeiEVM (`0x3ff727...700560`, chain 1329)
- Wrapped Token Transfers (WTT) - Unichain (`0x3ff727...700560`, chain 130)
- Wrapped Token Transfers (WTT) - World Chain (`0xc30927...e3a1f6`, chain 480)
- Wrapped Token Transfers (WTT) - X Layer (`0x553785...34d904`, chain 196)
- Wrapped Token Transfers (WTT) - XRPL-EVM (`0x47f519...75e278`, chain 1440000)

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 93 (93 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 128/128 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/93 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 128 own, 67 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 128 of 195 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/93
- Verified + Unaudited implementations: 93
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 195
- Raw deployments: 195
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

### ⚠️ Verified + Unaudited (93)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CCTP - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252139 | `0x270348...f30e3c` | ⚠️ Unaudited |
| CCTP - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252150 | `0x09fb06...265f13` | ⚠️ Unaudited |
| CCTP - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252191 | `0x03fabb...843f1d` | ⚠️ Unaudited |
| CCTP - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252084 | `0xaada05...636f6a` | ⚠️ Unaudited |
| CCTP - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252088 | `0x270348...f30e3c` | ⚠️ Unaudited |
| CCTP - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252109 | `0x0ff282...65cdd6` | ⚠️ Unaudited |
| Core Contracts - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252145 | `0xa5f208...9bca46` | ⚠️ Unaudited |
| Core Contracts - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252154 | `0x54a8e5...03e26c` | ⚠️ Unaudited |
| Core Contracts - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252198 | `0xbebdb6...dd8ac6` | ⚠️ Unaudited |
| Core Contracts - Berachain | unknown | project_anchor | own_supporting | 0 | berachain | unit-252187 | `0xca1d5a...9d146d` | ⚠️ Unaudited |
| Core Contracts - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252171 | `0x98f3c9...64288b` | ⚠️ Unaudited |
| Core Contracts - Celo | unknown | project_anchor | own_supporting | 0 | celo | unit-252147 | `0xa32144...cac48e` | ⚠️ Unaudited |
| Core Contracts - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252082 | `0x98f3c9...64288b` | ⚠️ Unaudited |
| Core Contracts - HyperEVM | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252203 | `0x7c0faf...b53ab3` | ⚠️ Unaudited |
| Core Contracts - Linea | unknown | project_anchor | own_supporting | 0 | linea | unit-252181 | `0x0c56ae...f77b32` | ⚠️ Unaudited |
| Core Contracts - Mantle | unknown | project_anchor | own_supporting | 0 | mantle | unit-252166 | `0xbebdb6...dd8ac6` | ⚠️ Unaudited |
| Core Contracts - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252159 | `0xabf89d...750da8` | ⚠️ Unaudited |
| Core Contracts - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252116 | `0x194b12...41cac0` | ⚠️ Unaudited |
| Core Contracts - Moonbeam | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-252099 | `0xc8e2b0...ce29f3` | ⚠️ Unaudited |
| Core Contracts - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252093 | `0xee91c3...ec9722` | ⚠️ Unaudited |
| Core Contracts - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252113 | `0x7a4b5a...4ec4d7` | ⚠️ Unaudited |
| Core Contracts - Scroll | unknown | project_anchor | own_supporting | 0 | scroll | unit-252168 | `0xbebdb6...dd8ac6` | ⚠️ Unaudited |
| Core Contracts - SeiEVM | unknown | project_anchor | own_supporting | 0 | sei | unit-252107 | `0xca1d5a...9d146d` | ⚠️ Unaudited |
| Core Contracts - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252103 | `0xca1d5a...9d146d` | ⚠️ Unaudited |
| Core Contracts - World Chain | unknown | project_anchor | own_supporting | 0 | world | unit-252164 | `0xcbcee4...1eb506` | ⚠️ Unaudited |
| Delegated Guardians - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252077 | `0x146280...c4c209` | ⚠️ Unaudited |
| Executor - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252142 | `0x3980f8...2eeab4` | ⚠️ Unaudited |
| Executor - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252196 | `0x9e1936...3597ea` | ⚠️ Unaudited |
| Executor - Berachain | unknown | project_anchor | own_supporting | 0 | berachain | unit-252185 | `0x0dd7a5...d5e2d3` | ⚠️ Unaudited |
| Executor - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252175 | `0xec8ccc...bf4ee0` | ⚠️ Unaudited |
| Executor - Celo | unknown | project_anchor | own_supporting | 0 | celo | unit-252148 | `0xe6ea50...28cf05` | ⚠️ Unaudited |
| Executor - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252081 | `0x84eee8...fc6f8a` | ⚠️ Unaudited |
| Executor - Linea | unknown | project_anchor | own_supporting | 0 | linea | unit-252182 | `0x23af2b...5a9bd3` | ⚠️ Unaudited |
| Executor - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252160 | `0xd405e0...8b2ecb` | ⚠️ Unaudited |
| Executor - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252120 | `0xc04de6...6a3f65` | ⚠️ Unaudited |
| Executor - Moonbeam | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-252097 | `0x85d064...6f8d19` | ⚠️ Unaudited |
| Executor - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252090 | `0x85b704...2ac3e7` | ⚠️ Unaudited |
| Executor - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252108 | `0x0b23ef...5a5e81` | ⚠️ Unaudited |
| Executor - Scroll | unknown | project_anchor | own_supporting | 0 | scroll | unit-252169 | `0xcfadde...41f075` | ⚠️ Unaudited |
| Executor - SeiEVM | unknown | project_anchor | own_supporting | 0 | sei | unit-252105 | `0x25f1c9...8e66e5` | ⚠️ Unaudited |
| Executor - Sonic | unknown | project_anchor | own_supporting | 0 | sonic | unit-252126 | `0x3fdc36...c74812` | ⚠️ Unaudited |
| Executor - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252102 | `0x764dd8...231aed` | ⚠️ Unaudited |
| Executor - World Chain | unknown | project_anchor | own_supporting | 0 | world | unit-252162 | `0x8689b4...e8804b` | ⚠️ Unaudited |
| Guardian Governance - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252141 | `0x36cf4c...06163f` | ⚠️ Unaudited |
| Guardian Governance - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252152 | `0x169d91...03a423` | ⚠️ Unaudited |
| Guardian Governance - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252194 | `0x838a95...ec40f1` | ⚠️ Unaudited |
| Guardian Governance - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252170 | `0x8e4dc6...30043e` | ⚠️ Unaudited |
| Guardian Governance - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252078 | `0x23fea5...f6ffcf` | ⚠️ Unaudited |
| Guardian Governance - HyperEVM | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252202 | `0x574b78...09e512` | ⚠️ Unaudited |
| Guardian Governance - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252158 | `0x574b78...09e512` | ⚠️ Unaudited |
| Guardian Governance - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252118 | `0x574b78...09e512` | ⚠️ Unaudited |
| Guardian Governance - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252086 | `0x0e09a3...9afbd8` | ⚠️ Unaudited |
| Guardian Governance - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252101 | `0x574b78...09e512` | ⚠️ Unaudited |
| Quoter Router - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252140 | `0x32eec1...56bdcc` | ⚠️ Unaudited |
| Quoter Router - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252157 | `0xa3a2a6...abd2d0` | ⚠️ Unaudited |
| Quoter Router - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252192 | `0x265fd0...604658` | ⚠️ Unaudited |
| Quoter Router - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252174 | `0xc921f2...624edb` | ⚠️ Unaudited |
| Quoter Router - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252085 | `0xf22f1c...9c4ef3` | ⚠️ Unaudited |
| Quoter Router - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252092 | `0xa3b655...ae75b3` | ⚠️ Unaudited |
| Quoter Router - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252110 | `0x2a8569...29f123` | ⚠️ Unaudited |
| Read-Only Deployments - Aurora | unknown | project_anchor | own_supporting | 0 | aurora | unit-252104 | `0x51b512...2f510f` | ⚠️ Unaudited |
| Read-Only Deployments - Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-252188 | `0xbebdb6...dd8ac6` | ⚠️ Unaudited |
| Read-Only Deployments - Corn | unknown | project_anchor | own_supporting | 0 | chain-21000000 | unit-252130 | `0xa683c6...a25785` | ⚠️ Unaudited |
| Read-Only Deployments - Gnosis | unknown | project_anchor | own_supporting | 0 | gnosis | unit-252094 | `0xa32144...cac48e` | ⚠️ Unaudited |
| Read-Only Deployments - Sonic | unknown | project_anchor | own_supporting | 0 | sonic | unit-252125 | `0x352a86...b67155` | ⚠️ Unaudited |
| Settlement Token Router - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252143 | `0x70287c...389c47` | ⚠️ Unaudited |
| Settlement Token Router - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252193 | `0x70287c...389c47` | ⚠️ Unaudited |
| Settlement Token Router - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252080 | `0x70287c...389c47` | ⚠️ Unaudited |
| Settlement Token Router - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252089 | `0x70287c...389c47` | ⚠️ Unaudited |
| Settlement Token Router - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252112 | `0x70287c...389c47` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252144 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252156 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252197 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252172 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252083 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252091 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252114 | `0xa25862...468d60` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252138 | `0x0b2402...1bd39c` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252151 | `0x0e082f...1d8052` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252195 | `0x8d2de8...c79627` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Berachain | unknown | project_anchor | own_supporting | 0 | berachain | unit-252186 | `0x3ff727...700560` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252173 | `0xb6f6d8...1da6e7` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Celo | unknown | project_anchor | own_supporting | 0 | celo | unit-252146 | `0x796dff...c93eed` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252079 | `0x3ee18b...8fa585` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Mantle | unknown | project_anchor | own_supporting | 0 | mantle | unit-252165 | `0x24850c...74fa9d` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252161 | `0xf97b81...3096c5` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Moonbeam | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-252098 | `0xb1731c...f57d92` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252087 | `0x1d6812...9daa8b` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252111 | `0x5a5850...e93fde` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Scroll | unknown | project_anchor | own_supporting | 0 | scroll | unit-252167 | `0x24850c...74fa9d` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - SeiEVM | unknown | project_anchor | own_supporting | 0 | sei | unit-252106 | `0x3ff727...700560` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252100 | `0x3ff727...700560` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - World Chain | unknown | project_anchor | own_supporting | 0 | world | unit-252163 | `0xc30927...e3a1f6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Core Contracts - CreditCoin | unknown | project_anchor | own_supporting | 0 | creditcoin | unit-252095 | `0xabf89d...750da8` | ❓ Unverified |
| Core Contracts - Fantom | unknown | project_anchor | own_supporting | 0 | fantom | unit-252132 | `0x126783...9a1485` | ❓ Unverified |
| Core Contracts - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252179 | `0xca1d5a...9d146d` | ❓ Unverified |
| Core Contracts - Kaia | unknown | project_anchor | own_supporting | 0 | kaia | unit-252189 | `0x0c2160...e90bb7` | ❓ Unverified |
| Core Contracts - Mezo | unknown | project_anchor | own_supporting | 0 | mezo | unit-252136 | `0xabf89d...750da8` | ❓ Unverified |
| Core Contracts - Plume | unknown | project_anchor | own_supporting | 0 | plume | unit-252201 | `0xabf89d...750da8` | ❓ Unverified |
| Core Contracts - X Layer | unknown | project_anchor | own_supporting | 0 | x-layer | unit-252128 | `0x194b12...41cac0` | ❓ Unverified |
| Core Contracts - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252124 | `0xabf89d...750da8` | ❓ Unverified |
| Executor - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252153 | `0x4661f0...b00381` | ❓ Unverified |
| Executor - CreditCoin | unknown | project_anchor | own_supporting | 0 | creditcoin | unit-252096 | `0xd2e420...ca7bde` | ❓ Unverified |
| Executor - HyperEVM | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252204 | `0xd77178...265f78` | ❓ Unverified |
| Executor - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252176 | `0x3e44a5...211ddd` | ❓ Unverified |
| Executor - Mezo | unknown | project_anchor | own_supporting | 0 | mezo | unit-252135 | `0x0f9b8e...0c5606` | ❓ Unverified |
| Executor - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252123 | `0x8345e9...30d896` | ❓ Unverified |
| Guardian Governance - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252122 | `0x574b78...09e512` | ❓ Unverified |
| Quoter Router - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252180 | `0xdec050...bd88d2` | ❓ Unverified |
| Quoter Router - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252117 | `0x3d9282...e75f34` | ❓ Unverified |
| Quoter Router - Plume | unknown | project_anchor | own_supporting | 0 | plume | unit-252199 | `0x85ba1b...32d230` | ❓ Unverified |
| Read-Only Deployments - Acala | unknown | project_anchor | own_supporting | 0 | acala | unit-252184 | `0xa32144...cac48e` | ❓ Unverified |
| Read-Only Deployments - Goat | unknown | project_anchor | own_supporting | 0 | goat | unit-252131 | `0x352a86...b67155` | ❓ Unverified |
| Read-Only Deployments - Karura | unknown | project_anchor | own_supporting | 0 | karura | unit-252183 | `0xa32144...cac48e` | ❓ Unverified |
| Read-Only Deployments - LightLink | unknown | project_anchor | own_supporting | 0 | lightlink | unit-252127 | `0x352a86...b67155` | ❓ Unverified |
| Read-Only Deployments - Oasis | unknown | project_anchor | own_supporting | 0 | oasis-emerald | unit-252149 | `0xfe8cd4...f64585` | ❓ Unverified |
| Read-Only Deployments - Rootstock | unknown | project_anchor | own_supporting | 0 | rootstock | unit-252134 | `0xbebdb6...dd8ac6` | ❓ Unverified |
| Read-Only Deployments - Telos | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-252137 | `0x352a86...b67155` | ❓ Unverified |
| Settlement Token Router - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252155 | `0x70287c...389c47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0290fb...a10c16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x68605a...d74b4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x9dcf9d...712a09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc89ce4...b0d550` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xec8ccc...bf4ee0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | moonbase-alpha | n/a | `0xa5b7d8...e2f901` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | moonbase-alpha | n/a | `0xbc976d...955a96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | n/a | `0x764dd8...231aed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | n/a | `0xa10f2e...e63f7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | n/a | `0xbb73cb...a300dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | n/a | `0x1bb3b4...3c3bb7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | n/a | `0x599cea...0afbe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x81705b...a75855` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | monad-testnet | n/a | `0xabf89d...750da8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | monad-testnet | n/a | `0xe37d3e...43382f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | monad-testnet | n/a | `0xf97b81...3096c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | n/a | `0x76d093...a59ec6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | n/a | `0xa10f2e...e63f7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4661f0...b00381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x58f4c1...6a472e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a6c5a...bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x61e44e...729756` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7bbce2...7aac4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa3a2a6...abd2d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-44787 | n/a | `0x05ca60...74e153` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-44787 | n/a | `0x885051...d50d56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | linea-sepolia | n/a | `0x4f6c3a...b44111` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | linea-sepolia | n/a | `0x79a102...95f083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | linea-sepolia | n/a | `0xc7a204...3ff97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0x5a6c5a...bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0x6b9c86...ba6a35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0x705672...b721d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0xc7a204...3ff97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0xe00444...ca781c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x2507d6...065772` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x270348...f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x51b47d...ce4482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x5a6c5a...bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x720a59...56d0dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x79a102...95f083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x86f55a...88b239` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plume | n/a | `0x8fc2fb...35a455` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x270348...f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5a6c5a...bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5e8c14...108c6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x6b9c86...ba6a35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x81b65a...5b90c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xbf161d...f6f87b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xc7a204...3ff97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xe0418c...0b210e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | n/a | `0x055f47...7af2d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | n/a | `0x22427d...4e45bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x270348...f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4a8bc8...c11a78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5a6c5a...bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x9517f0...966dbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc0c35d...a4158f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd0fb39...86b66b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdb5492...e94bd9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x270348...f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x313778...7d58fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x585665...891b3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x5a6c5a...bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6a829d...c9fd2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6baa73...ae00d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x99737e...75c0ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xce1de1...fd0b5d` | ❓ Unverified |
| Wormhole Labs Quoter Implementation - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252178 | `0xa25862...468d60` | ❓ Unverified |
| Wormhole Labs Quoter Implementation - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252119 | `0xa25862...468d60` | ❓ Unverified |
| Wormhole Labs Quoter Implementation - Plume | unknown | project_anchor | own_supporting | 0 | plume | unit-252200 | `0xa25862...468d60` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Fantom | unknown | project_anchor | own_supporting | 0 | fantom | unit-252133 | `0x7c9fc5...8d79d2` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252177 | `0x3ff727...700560` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Kaia | unknown | project_anchor | own_supporting | 0 | kaia | unit-252190 | `0x5b08ac...d0193f` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252115 | `0x0b2719...a13ba7` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - X Layer | unknown | project_anchor | own_supporting | 0 | x-layer | unit-252129 | `0x553785...34d904` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252121 | `0x47f519...75e278` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 195 |

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
