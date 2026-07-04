# Agentic Audit Brief: ChainGPT

## Project Overview

- Project: ChainGPT (`chaingpt`)
- Website: [https://pad.chaingpt.org/staking-pools](https://pad.chaingpt.org/staking-pools)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.348Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, avalanche, base, bsc, ethereum, polygon
- Contract surface: 82 unique implementations (88 raw deployments)
- DeFi Llama TVL: $1,846,519.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 8 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 88; live-surface contracts included: 88 (9 live, 79 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 82
- Raw deployments: 88
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainGPT | unknown | bsc | n/a | [`0x984065...f00f98`](./contracts/bsc-56/0x9840652dc04fb9db2c43853633f0f62be6f00f98/) | ⚠️ Unaudited |
| DCBLiqLocker | unknown | bsc | n/a | [`0x6ee8d7...0ca6c5`](./contracts/bsc-56/0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | n/a | [`0x5b1e72...340cfb`](./contracts/bsc-56/0x5b1e724b79087dae13517612a1e6575e9d340cfb/) | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | bsc | n/a | [`0x3a5326...3662f7`](./contracts/bsc-56/0x3a53269cae3281155e51d06ffe14fde8dc3662f7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0xf276bf...7f5a4a`](./contracts/bsc-56/0xf276bf68dde58904439f11f6ed1511e89a7f5a4a/) | ⚠️ Unaudited |
| TokenSaleFactory | registry | base | n/a | 6 deployments: bsc `0x8c0ccc...017139`; bsc `0xb13adc...a9aa0e`; bsc `0xc0b589...4fc82b`; base [`0x29d6a0...f6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/); base `0x2c7544...9eede9`; base `0x9670f6...0669fa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x62a402...88ccee`](./contracts/bsc-56/0x62a402def6ca37e9ca7a544be34954748088ccee/); bsc `0xc6a52f...711911` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa433b2...36420e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x047656...610758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04d608...ce3bab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07b904...bf09a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bb670...cbcb0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d2238...9c8407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ed8f6...4354bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x133b18...fb7666` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c9c5b...bd04d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c45f2...2a36b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x359993...d0c001` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46e9de...8a37a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4baf0f...eff4bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x570182...552b21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ae752...4b5256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b6b1c...044b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fc223...55ed3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65307c...fd2d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65ad27...7339d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x710814...96b748` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71d2e5...7943f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73c244...f882ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fedc8...d82e7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dca8f...a8a373` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fc1a3...506573` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0fb7f...655b3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2aadd...81de99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58b13...216f97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa622e9...e369ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabc831...1b173b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4d0ce...10b30f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc26336...f4e917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb5787...c76c2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfab58...97a6a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdaa386...52b280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea22b1...9f122e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84403...b81339` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdc70a...da0324` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x29d6a0...f6d7e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c7544...9eede9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32496c...d8f411` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940541...325e99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9670f6...0669fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a6f64...55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ed70f...4a2b38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa44b38...89b777` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6ac05...b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa89eae...32b796` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5df66...f1a02b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe09c2b...e42e46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4d303...e9d71e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cd66d...318193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x291889...2375f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32496c...d8f411` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3255bd...fbea83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76de82...ee4d35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87307c...6aa68c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96420f...53db1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a6f64...55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6ac05...b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8affb...4601d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9349e...2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf967a4...2651d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb5cd8...098c79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cd66d...318193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x291889...2375f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d4731...473bb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacaff3...a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb9667...0c5655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8affb...4601d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9349e...2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb5cd8...098c79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d4731...473bb6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3255bd...fbea83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xacaff3...a2eec7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sample of Audit Report](https://app.chaingpt.org/assets/files/ExampleAudit.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/).](https://skynet.certik.com/projects/chaingpt) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19636] Sample of Audit Report
- [19637] Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/).

Fork inheritance lineage and inherited audits are included when available.
