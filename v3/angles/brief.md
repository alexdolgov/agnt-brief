# Agentic Audit Brief: Angles

⚠️ Lifecycle status: DECLINING - TVL dropped 58.3% over 90 days

## Project Overview

- Project: Angles (`angles`)
- Website: [https://angles.fi/](https://angles.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:27.224Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: sonic
- Contract surface: 25 unique implementations (47 raw deployments)
- DeFi Llama TVL: $471,730.00
- On-chain TVL (included contracts): $219,426.20
- TVL by chain: Sonic $219,426.20

## Project Description

Onchain Capital Allocator. Structurally: 28 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on solady.

### Architecture

The protocol comprises 9 functional families. Its contracts share 2 common project-authored base contract(s) (initializegovernedupgradeabilityproxy, governable). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 80; live-surface contracts included: 45 (30 live, 15 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 25
- Raw deployments: 47
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $219,426.20
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $219,426.20 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnglesVault | core_logic | sonic | n/a | 2 deployments: sonic [`0xd4012c...63e1f2`](./contracts/sonic-146/0xd4012c5f3cbcc383d358c5086da694757463e1f2/); sonic `0xe5203b...ef4269` | ⚠️ Unaudited |
| PoolV2 | core_logic | sonic | n/a | 2 deployments: sonic [`0x033f4a...b3c722`](./contracts/sonic-146/0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722/); sonic `0x4bf2d4...ce9eea` | ⚠️ Unaudited |
| Pool | core_logic | sonic | n/a | 5 deployments: sonic [`0x6c2a52...41c452`](./contracts/sonic-146/0x6c2a529921f70eaf44d689ef882d96f09041c452/); sonic `0x71e558...3d6a54`; sonic `0xc8291d...db3dd8`; sonic `0xc85ada...0b928f`; sonic `0xef7073...1237eb` | ⚠️ Unaudited |
| Aggregator | unknown | sonic | n/a | 4 deployments: sonic [`0x6d06b7...b0ac35`](./contracts/sonic-146/0x6d06b7fac4f6393672fd038083370d38f3b0ac35/); sonic `0x8417bd...00552f`; sonic `0xa342a0...3b9070`; sonic `0xfb644c...1d41cd` | ⚠️ Unaudited |
| AnglesSmartRouter | adapter | sonic | n/a | [`0x0af78f...189a00`](./contracts/sonic-146/0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00/) | ⚠️ Unaudited |
| ManualRegistry | registry | sonic | n/a | [`0x9786db...07be7b`](./contracts/sonic-146/0x9786db1486a2f67977ef1e3dfbd0eb01e407be7b/) | ⚠️ Unaudited |
| PoolToken | core_logic | sonic | n/a | 7 deployments: sonic [`0x2f45b6...ef51fd`](./contracts/sonic-146/0x2f45b61b90b821efdb4525f89162cfd857ef51fd/); sonic `0x2f6679...b39b45`; sonic `0x3bcb4f...1d5f8b`; sonic `0x451d00...62666e`; sonic `0x88cf50...c3bb7d`; sonic `0xa93c94...d48c4d`; sonic `0xe0c7af...24eb48` | ⚠️ Unaudited |
| SFC | unknown | sonic | n/a | [`0xfc00fa...000000`](./contracts/sonic-146/0xfc00face00000000000000000000000000000000/) | ⚠️ Unaudited |
| Vault | core_logic | sonic | n/a | 7 deployments: sonic [`0x097df3...1bfb0f`](./contracts/sonic-146/0x097df3dfb8c5b090e661296563f1fe24701bfb0f/); sonic `0x15e96c...92e69d`; sonic `0x1c8a00...8c5635`; sonic `0x1edbcc...51945e`; sonic `0x7a1f5f...736465`; sonic `0xcafd81...e14d41`; sonic `0xedea26...08bca5` | ⚠️ Unaudited |
| wanS | unknown | sonic | n/a | 2 deployments: sonic [`0xba3bb1...207a64`](./contracts/sonic-146/0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64/); sonic `0xfa85fe...5abd70` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x02b472...2cee57` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x093045...22d7bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x16fdf1...089993` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f88ea...2a5884` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x34fe76...228945` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x510d02...3e4ba4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5b52fa...2dc073` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5dbba7...cba78f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7f7eb9...ed4c31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa7b87c...08029e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb52a8d...e7207a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe7cc6...d6fe53` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd68c5c...ec840b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe904a7...c6f23d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf46b21...740497` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/llPyhrg6nxGZCqiOX61A/uploads/bSKwCaHEqGfKBo6FUXtL/SpearBit x Angles.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FllPyhrg6nxGZCqiOX61A%2Fuploads%2FbSKwCaHEqGfKBo6FUXtL%2FSpearBit%20x%20Angles.pdf?alt=media) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x033f4a...b3c722`](./contracts/sonic-146/0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722/) | PoolV2 | core_logic | $3.72 | Verified native implementation with $3.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6c2a52...41c452`](./contracts/sonic-146/0x6c2a529921f70eaf44d689ef882d96f09041c452/) | Pool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6d06b7...b0ac35`](./contracts/sonic-146/0x6d06b7fac4f6393672fd038083370d38f3b0ac35/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0af78f...189a00`](./contracts/sonic-146/0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00/) | AnglesSmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9786db...07be7b`](./contracts/sonic-146/0x9786db1486a2f67977ef1e3dfbd0eb01e407be7b/) | ManualRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2f45b6...ef51fd`](./contracts/sonic-146/0x2f45b61b90b821efdb4525f89162cfd857ef51fd/) | PoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x097df3...1bfb0f`](./contracts/sonic-146/0x097df3dfb8c5b090e661296563f1fe24701bfb0f/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3224] spaces/llPyhrg6nxGZCqiOX61A/uploads/bSKwCaHEqGfKBo6FUXtL/SpearBit x Angles.pdf

Fork inheritance lineage and inherited audits are included when available.
