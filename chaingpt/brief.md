# Agentic Audit Brief: ChainGPT

## Project Overview

- Project: ChainGPT (`chaingpt`)
- Website: [https://pad.chaingpt.org/staking-pools](https://pad.chaingpt.org/staking-pools)
- Lifecycle: active (Tier 0, 92.6% below peak)
- Generated: 2026-06-17T07:00:42.711Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, polygon
- Contract surface: 33 unique implementations (38 raw deployments)
- DeFi Llama TVL: $3,825,213.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ChainGPT should be described as ChainGPT Pad, a launchpad/fundraising protocol with associated staking pools. Its topology and contract relationships should be treated as low-confidence unless supported by deployer, factory, event, or source-code evidence; do not assert that all observed or unnamed contracts are native modules tied to a single central ChainGPT contract.

### Architecture

All contracts belong to a single product family deployed by two main deployer clusters, indicating a unified launchpad system. The unnamed contracts likely serve as supporting modules or instances for different chains or sale types, all tied to the central ChainGPT contract.

## Contract Surface Quality

- Indexed contracts: 99; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 61 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 3/4 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 33
- Raw deployments: 38
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainGPT | unknown | bsc | n/a | [`0x984065...f00f98`](./contracts/bsc-56/0x9840652dc04fb9db2c43853633f0f62be6f00f98/) | ⚠️ Unaudited |
| DCBLiqLocker | unknown | bsc | unit-20305 | [`0x6ee8d7...0ca6c5`](./contracts/bsc-56/0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | unit-20303 | [`0x5b1e72...340cfb`](./contracts/bsc-56/0x5b1e724b79087dae13517612a1e6575e9d340cfb/) | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | bsc | n/a | [`0x3a5326...3662f7`](./contracts/bsc-56/0x3a53269cae3281155e51d06ffe14fde8dc3662f7/) | ⚠️ Unaudited |
| TokenSaleFactory | registry | base | n/a | 6 deployments: bsc `0x8c0ccc...017139`; bsc `0xb13adc...a9aa0e`; bsc `0xc0b589...4fc82b`; base [`0x29d6a0...f6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/); base `0x2c7544...9eede9`; base `0x9670f6...0669fa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-20304 | [`0x62a402...88ccee`](./contracts/bsc-56/0x62a402def6ca37e9ca7a544be34954748088ccee/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa433b2...36420e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04d608...ce3bab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07b904...bf09a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d2238...9c8407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4baf0f...eff4bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fc223...55ed3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2aadd...81de99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa622e9...e369ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb5787...c76c2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x29d6a0...f6d7e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c7544...9eede9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940541...325e99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9670f6...0669fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa44b38...89b777` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe09c2b...e42e46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cd66d...318193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x291889...2375f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87307c...6aa68c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96420f...53db1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf967a4...2651d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb5cd8...098c79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cd66d...318193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x291889...2375f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacaff3...a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9349e...2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb5cd8...098c79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d4731...473bb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x984065...f00f98`](./contracts/bsc-56/0x9840652dc04fb9db2c43853633f0f62be6f00f98/) | ChainGPT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29d6a0...f6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/) | TokenSaleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
