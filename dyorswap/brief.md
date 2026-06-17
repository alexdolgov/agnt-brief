# Agentic Audit Brief: DyorSwap

## Project Overview

- Project: DyorSwap (`dyorswap`)
- Website: [https://dyorswap.finance/?chainId=34443](https://dyorswap.finance/?chainId=34443)
- Lifecycle: active (Tier 0, 71.7% below peak)
- Generated: 2026-06-17T07:00:42.839Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: blast, ink, merlin, mode, plasma, sonic, unichain
- Contract surface: 47 unique implementations (51 raw deployments)
- DeFi Llama TVL: $1,675,972.00
- On-chain TVL (included contracts): $270,034,078.56
- TVL by chain: Plasma $270,034,078.56

## Project Description

DyorSwap is primarily a decentralized exchange/automated market maker (DEX/AMM) protocol enabling token swaps across multiple chains. DefiLlama also lists a DyorSwap launchpad child, but it has no current TVL and no identified launchpad-specific contracts in this inventory, so launchpad or token-sale functionality should not be treated as part of the verified active contract surface.

### Architecture

The DyorSwap AMM family relies on factory contracts to deploy and manage liquidity pools, with supporting contracts handling routing and token interactions. The launchpad functionality is not explicitly represented in the contract inventory but likely integrates with the AMM for token liquidity.

## Contract Surface Quality

- Indexed contracts: 100; live-surface contracts included: 51 (48 live, 3 unknown).
- Excluded by liveness: 49 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/3.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 47
- Raw deployments: 51
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $270,034,078.56
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DyorPumpToken | token | plasma | n/a | 3 deployments: plasma [`0x11e0f9...7a92e7`](./contracts/plasma-9745/0x11e0f991cad15a5b3cc69c84d33a91fc977a92e7/); plasma `0x469e66...4a14c4`; plasma `0xb43766...294a60` | ⚠️ Unaudited |
| BEP20 | unknown | mode | n/a | [`0x097de1...d310a2`](./contracts/mode-34443/0x097de1ade6d7b46540637935c88b489860d310a2/) | ⚠️ Unaudited |
| DYORRouter | adapter | mode | n/a | 2 deployments: mode [`0xcf9dc9...9e169a`](./contracts/mode-34443/0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a/); blast `0xe47069...8fdeef` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | sonic | n/a | 2 deployments: sonic [`0x591cf6...a72f61`](./contracts/sonic-146/0x591cf6942c422fa53e8d81c62a9692d7bea72f61/); plasma `0xfc9869...a493cc` | ⚠️ Unaudited |
| QuoterV3 | periphery | plasma | n/a | [`0x5dd041...fa1983`](./contracts/plasma-9745/0x5dd0416835b27325917677f974a256e67dfa1983/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | unichain | n/a | `0x0a9fdc...a48561` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2eb64f...ebebb6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6b52d9...c54ef4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6bdb3b...3da050` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x827028...a98af8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xccdba0...7b3285` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xfeb89b...427ff8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0a9fdc...a48561` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2845fe...fdbf52` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3f815e...a71e3f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56ea5b...4fb0f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x583fab...7b2745` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7ac8ac...d65fd4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe2e9d4...eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfa95f8...962471` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x2ccadb...f04c09` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xa1da7a...b58413` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0edeea...c753f3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x103b99...f5693d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x16581f...b4b7fc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x24691a...744130` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x53869f...5cb719` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x5a9650...cdabec` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x61a425...0e7c62` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x68a769...fb6b35` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x77888e...dcbaf6` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7b7984...12b261` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x942bd5...ab5c10` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa9f2c3...b482ac` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb3e80e...c890b9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc474ae...e553fa` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xcc9c42...d491ce` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xd4b362...fd808e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xdb2625...9eb842` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xdb3e73...7ee8c3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xe5d4f8...5951a0` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf05f68...502b82` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf60070...1a3353` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc794e...f556cb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xffe70d...a09b86` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb1730...73ce45` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x6c86ab...9a2806` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x11e0f9...7a92e7`](./contracts/plasma-9745/0x11e0f991cad15a5b3cc69c84d33a91fc977a92e7/) | DyorPumpToken | token | $270,034,078.56 | Verified native implementation with $270,034,078.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xcf9dc9...9e169a`](./contracts/mode-34443/0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a/) | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x591cf6...a72f61`](./contracts/sonic-146/0x591cf6942c422fa53e8d81c62a9692d7bea72f61/) | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
