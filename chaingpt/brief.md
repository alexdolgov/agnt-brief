# Agentic Audit Brief: ChainGPT

## Project Overview

- Project: ChainGPT (`chaingpt`)
- Website: [https://pad.chaingpt.org/staking-pools](https://pad.chaingpt.org/staking-pools)
- Lifecycle: active (Tier 0, 92.6% below peak)
- Generated: 2026-06-10T20:59:01.377Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, polygon
- Contract surface: 87 unique implementations (92 raw deployments)
- DeFi Llama TVL: $4,610,938.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ChainGPT should be described as ChainGPT Pad, a launchpad/fundraising protocol with associated staking pools. Its topology and contract relationships should be treated as low-confidence unless supported by deployer, factory, event, or source-code evidence; do not assert that all observed or unnamed contracts are native modules tied to a single central ChainGPT contract.

### Architecture

All contracts belong to a single product family deployed by two main deployer clusters, indicating a unified launchpad system. The unnamed contracts likely serve as supporting modules or instances for different chains or sale types, all tied to the central ChainGPT contract.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 84
- Unique implementations: 87
- Raw deployments: 92
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ChainGPT | unknown | bsc | [`0x984065...f00f98`](./contracts/bsc-56/0x9840652dc04fb9db2c43853633f0f62be6f00f98/) | ⚠️ Unaudited |
| TokenSaleFactory | registry | base | 6 deployments: bsc `0x8c0ccc...017139`; bsc `0xb13adc...a9aa0e`; bsc `0xc0b589...4fc82b`; base [`0x29d6a0...f6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/); base `0x2c7544...9eede9`; base `0x9670f6...0669fa` | ⚠️ Unaudited |
| Web3CheckIn | unknown | bsc | [`0xde3204...d1416b`](./contracts/bsc-56/0xde3204c79ed43a0c282e10664a27ad285bd1416b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (84)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x9fc1a3...506573` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa433b2...36420e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x047656...610758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x04d608...ce3bab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x07b904...bf09a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0bb670...cbcb0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0d2238...9c8407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ed8f6...4354bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x133b18...fb7666` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c9c5b...bd04d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2c45f2...2a36b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x359993...d0c001` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46e9de...8a37a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4baf0f...eff4bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x570182...552b21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5ae752...4b5256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5b6b1c...044b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5fc223...55ed3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x65307c...fd2d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x65ad27...7339d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x710814...96b748` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x71d2e5...7943f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x73c244...f882ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7fedc8...d82e7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8dca8f...a8a373` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0fb7f...655b3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa2aadd...81de99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa58b13...216f97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa622e9...e369ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xabc831...1b173b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb4d0ce...10b30f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb5787...c76c2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfab58...97a6a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdaa386...52b280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea22b1...9f122e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf84403...b81339` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfdc70a...da0324` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x29d6a0...f6d7e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2c7544...9eede9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x32496c...d8f411` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x940541...325e99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9670f6...0669fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9a6f64...55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9ed70f...4a2b38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9fc1a3...506573` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa44b38...89b777` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa6ac05...b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa89eae...32b796` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd5df66...f1a02b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe09c2b...e42e46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0cd66d...318193` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x291889...2375f1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x32496c...d8f411` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3255bd...fbea83` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x76de82...ee4d35` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87307c...6aa68c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x96420f...53db1e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9a6f64...55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa6ac05...b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8affb...4601d3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe9349e...2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf967a4...2651d8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfb5cd8...098c79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0cd66d...318193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x291889...2375f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2d4731...473bb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9fc1a3...506573` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xacaff3...a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbb9667...0c5655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8affb...4601d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9349e...2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb5cd8...098c79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d4731...473bb6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3255bd...fbea83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9fc1a3...506573` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xacaff3...a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbb9667...0c5655` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd8affb...4601d3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe9349e...2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfb5cd8...098c79` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x984065...f00f98`](./contracts/bsc-56/0x9840652dc04fb9db2c43853633f0f62be6f00f98/) | ChainGPT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29d6a0...f6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/) | TokenSaleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xde3204...d1416b`](./contracts/bsc-56/0xde3204c79ed43a0c282e10664a27ad285bd1416b/) | Web3CheckIn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
