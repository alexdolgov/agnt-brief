# Agentic Audit Brief: Unchain X

## Project Overview

- Project: Unchain X (`unchain-x`)
- Website: [https://unchainx.io](https://unchainx.io)
- Lifecycle: active (Tier 0, 67.5% below peak)
- Generated: 2026-06-17T07:01:00.718Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 12 unique implementations (16 raw deployments)
- DeFi Llama TVL: $1,085,062.80
- On-chain TVL (included contracts): $35,109,981.13
- TVL by chain: Bsc $35,109,981.13

## Project Description

Unchain X is a BSC AMM/DEX, apparently using a Uniswap V3-style concentrated liquidity model for token swapping and liquidity provision. The current contract inventory only includes the UNX token address and should not be treated as the complete protocol surface; additional DEX, staking/launchpad, liquidity mining/farming, governance/timelock, and related protocol contracts appear to be missing or unknown.

### Architecture

The protocol consists of a single product family centered around the UNX token, with no additional supporting contracts identified.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (0 live, 16 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 6; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/11 (9.1%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 16
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 9.1% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UNXToken | token | bsc | n/a | [`0x4f0572...bdea6f`](./contracts/bsc-56/0x4f0572ca0bf96f5ae17b7062d97cea3f35bdea6f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HalvingProtocol | unknown | bsc | n/a | [`0xa6820d...c05db8`](./contracts/bsc-56/0xa6820deaeb44c70bf42dbe0b561d399297c05db8/) | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x057d5b...0fa015`](./contracts/bsc-56/0x057d5bf977ce40a7c1c63b1b58609120350fa015/); bsc `0x0ea8f9...ce0550`; bsc `0x8d2f48...0ae245`; bsc `0xd7d98c...1a1240`; bsc `0xf28961...f911e8` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | bsc | n/a | [`0x854ec7...2703de`](./contracts/bsc-56/0x854ec70b78933fab3f95e5bc95d7af72b62703de/) | ⚠️ Unaudited |
| QuoterV2 | unknown | bsc | n/a | [`0x03dd4e...0811f5`](./contracts/bsc-56/0x03dd4ebe7120d05d7cf75cbdf7a5f375e40811f5/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0xc9d96c...061f7f`](./contracts/bsc-56/0xc9d96c797fb1ae135d56ccb96eae7f70be061f7f/) | ⚠️ Unaudited |
| UNXFaucet | unknown | bsc | n/a | [`0xdc0b82...28a879`](./contracts/bsc-56/0xdc0b82969e27d7d44be0bcf8a3839ad7eb28a879/) | ⚠️ Unaudited |
| UNXwapV3Factory | registry | bsc | n/a | [`0x82fa7b...d8d40c`](./contracts/bsc-56/0x82fa7b2ce2a76c7888a9d3b0a81e0b2ecfd8d40c/) | ⚠️ Unaudited |
| UNXwapV3LmFactory | registry | bsc | n/a | [`0xb4339c...832aed`](./contracts/bsc-56/0xb4339c24f4705bf3e3049ebcfb2ba2ae43832aed/) | ⚠️ Unaudited |
| UNXwapV3Manager | governance | bsc | n/a | [`0xb50024...a38d18`](./contracts/bsc-56/0xb50024ccb6fdeeb7a1bfb186184936a78ea38d18/) | ⚠️ Unaudited |
| XPlosion | unknown | bsc | n/a | [`0x9e309f...88d650`](./contracts/bsc-56/0x9e309f126882f467f28b67d5cc6b746a4988d650/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x47059c...53c56a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/unchain-x) | CertiK | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Launchpad security audit](https://github.com/UNCHAIN-X-Labs/launchpad-staking-contract/blob/main/audit/PeckShield-Audit-Report-UnchainX-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [3136] Launchpad security audit

Fork inheritance lineage and inherited audits are included when available.
