# Agentic Audit Brief: DyorSwap

## Project Overview

- Project: DyorSwap (`dyorswap`)
- Website: [https://dyorswap.finance/?chainId=34443](https://dyorswap.finance/?chainId=34443)
- Lifecycle: active (Tier 0, 71.7% below peak)
- Generated: 2026-06-10T22:57:51.552Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: blast, ink, merlin, mode, plasma, sonic, unichain
- Contract surface: 93 unique implementations (97 raw deployments)
- DeFi Llama TVL: $2,243,589.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DyorSwap is primarily a decentralized exchange/automated market maker (DEX/AMM) protocol enabling token swaps across multiple chains. DefiLlama also lists a DyorSwap launchpad child, but it has no current TVL and no identified launchpad-specific contracts in this inventory, so launchpad or token-sale functionality should not be treated as part of the verified active contract surface.

### Architecture

The DyorSwap AMM family relies on factory contracts to deploy and manage liquidity pools, with supporting contracts handling routing and token interactions. The launchpad functionality is not explicitly represented in the contract inventory but likely integrates with the AMM for token liquidity.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 93
- Raw deployments: 97
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BEP20 | unknown | mode | [`0x097de1...d310a2`](./contracts/mode-34443/0x097de1ade6d7b46540637935c88b489860d310a2/) | ⚠️ Unaudited |
| DYORFactory | registry | blast | 2 deployments: mode `0xe47069...8fdeef`; blast [`0xa1da7a...b58413`](./contracts/blast-81457/0xa1da7a7eb5a858da410de8fbc5092c2079b58413/) | ⚠️ Unaudited |
| DYORRouter | adapter | mode | 2 deployments: mode [`0xcf9dc9...9e169a`](./contracts/mode-34443/0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a/); blast `0xe47069...8fdeef` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | sonic | 3 deployments: sonic [`0x55a75e...6b0ca5`](./contracts/sonic-146/0x55a75ee40c468984a1ea053e6e4bf2126b6b0ca5/); sonic `0x591cf6...a72f61`; plasma `0xfc9869...a493cc` | ⚠️ Unaudited |
| QuoterV3 | periphery | plasma | [`0x5dd041...fa1983`](./contracts/plasma-9745/0x5dd0416835b27325917677f974a256e67dfa1983/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | unichain | `0x026614...7cd826` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x038e0c...8ebfa5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x0a9fdc...a48561` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x19b786...94164d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x1c8be2...f66374` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x22998a...8b5858` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x2ba702...f778b3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x2eb64f...ebebb6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x359a53...6c372d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6b2bc6...c783de` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6b52d9...c54ef4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6bdb3b...3da050` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6c86ab...9a2806` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x803b4e...56877b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x827028...a98af8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x83ad0f...ec2f62` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x845ee6...47cbee` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x98a7b4...4e89b8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x9b1769...cd7a77` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xccdba0...7b3285` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe2e9d4...eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xfeb89b...427ff8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x038e0c...8ebfa5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0a9fdc...a48561` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1e5d4a...40de95` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2845fe...fdbf52` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2ba702...f778b3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2eaca0...fb4d7b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x39f6b0...d1354f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3f815e...a71e3f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x56ea5b...4fb0f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x583fab...7b2745` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5ac77b...dccf0e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6c86ab...9a2806` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7ac8ac...d65fd4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x83ad0f...ec2f62` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x845ee6...47cbee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9b1769...cd7a77` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xaf85ee...88b902` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb0b234...5345e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb1b805...1d6667` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xbf1e74...1a8da1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc174ee...1b8cc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc5386d...f5fca6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xca583b...e0d970` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd8863d...4e8815` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe1a931...b3b3ab` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe2e9d4...eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xef4320...5752c5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf08150...b296d8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfa95f8...962471` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0x2ccadb...f04c09` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xa1da7a...b58413` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x0edeea...c753f3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x103b99...f5693d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x16581f...b4b7fc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x24691a...744130` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x53869f...5cb719` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x5a9650...cdabec` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x61a425...0e7c62` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x68a769...fb6b35` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x77888e...dcbaf6` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x7b7984...12b261` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x942bd5...ab5c10` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xa9f2c3...b482ac` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xb3e80e...c890b9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xc474ae...e553fa` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xcc9c42...d491ce` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xd4b362...fd808e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xdb2625...9eb842` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xdb3e73...7ee8c3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xe5d4f8...5951a0` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xf05f68...502b82` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xf60070...1a3353` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xfc794e...f556cb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xffe70d...a09b86` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x7e2102...c64b57` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xa1da7a...b58413` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xdb1730...73ce45` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x6c86ab...9a2806` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7e2102...c64b57` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x898656...df44c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaf0505...c9700b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb44db0...d75a56` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb8f2e3...28808e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xcb4b7b...a031ef` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xcf9dc9...9e169a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xeffeb6...30a14d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xa1da7a...b58413`](./contracts/blast-81457/0xa1da7a7eb5a858da410de8fbc5092c2079b58413/) | DYORFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xcf9dc9...9e169a`](./contracts/mode-34443/0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a/) | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x55a75e...6b0ca5`](./contracts/sonic-146/0x55a75ee40c468984a1ea053e6e4bf2126b6b0ca5/) | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
