# Agentic Audit Brief: Angles

## Project Overview

- Project: Angles (`angles`)
- Website: [https://angles.fi/](https://angles.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:29:26.096Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: sonic
- Contract surface: 40 unique implementations (80 raw deployments)
- DeFi Llama TVL: $1,009,126.00
- On-chain TVL (included contracts): $441,020.28
- TVL by chain: Sonic $441,020.28

## Project Description

Angles is primarily a Sonic liquid staking protocol centered on anS, enabling users to participate in Sonic staking while retaining a liquid staking token. Any vault, wanS, or capital-allocation components should be treated as secondary products or wrappers unless explicitly supported by protocol documentation.

### Architecture

Angles Stake vaults likely mint or interact with Angles Liquid's wanS token, creating a flow where staked assets are represented as liquid tokens. Both families share the Sonic chain infrastructure and may use common registries or proxy patterns for upgradeability.

## Audit Coverage Summary

- Verified implementations audited: 1/25 (4.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 40
- Raw deployments: 80
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $7.53
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: 4.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 4.0% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AnglesVault | core_logic | sonic | 2 deployments: sonic [`0xd4012c...63e1f2`](./contracts/sonic-146/0xd4012c5f3cbcc383d358c5086da694757463e1f2/); sonic `0xe5203b...ef4269` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolV2 | core_logic | sonic | 2 deployments: sonic [`0x033f4a...b3c722`](./contracts/sonic-146/0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722/); sonic `0x4bf2d4...ce9eea` | ⚠️ Unaudited |
| Pool | core_logic | sonic | 5 deployments: sonic [`0x6c2a52...41c452`](./contracts/sonic-146/0x6c2a529921f70eaf44d689ef882d96f09041c452/); sonic `0x71e558...3d6a54`; sonic `0xc8291d...db3dd8`; sonic `0xc85ada...0b928f`; sonic `0xef7073...1237eb` | ⚠️ Unaudited |
| Aggregator | unknown | sonic | 4 deployments: sonic [`0x6d06b7...b0ac35`](./contracts/sonic-146/0x6d06b7fac4f6393672fd038083370d38f3b0ac35/); sonic `0x8417bd...00552f`; sonic `0xa342a0...3b9070`; sonic `0xfb644c...1d41cd` | ⚠️ Unaudited |
| AnglesLiquidVaultRateProvider | core_logic | sonic | 2 deployments: sonic [`0x5c6e05...fd35b0`](./contracts/sonic-146/0x5c6e05d97af61637fdf5144ad4ed81a12bfd35b0/); sonic `0x9b2e90...3e206e` | ⚠️ Unaudited |
| AnglesSmartRouter | adapter | sonic | 2 deployments: sonic [`0x0af78f...189a00`](./contracts/sonic-146/0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00/); sonic `0xe4b84f...103175` | ⚠️ Unaudited |
| anS | unknown | sonic | 3 deployments: sonic [`0x0c4e18...9ec987`](./contracts/sonic-146/0x0c4e186eae8acaa7f7de1315d5ad174be39ec987/); sonic `0x3eac5e...43ce7a`; sonic `0x71f589...1b4472` | ⚠️ Unaudited |
| AtomicQueue | unknown | sonic | [`0x22f749...5a348c`](./contracts/sonic-146/0x22f74995f88d4fd631bb8f64fa523af0da5a348c/) | ⚠️ Unaudited |
| BeetsLpAddHelper | periphery | sonic | 3 deployments: sonic [`0x87b294...a672a4`](./contracts/sonic-146/0x87b2948046431022d2633d5e8107ed70d4a672a4/); sonic `0xbe4d17...18595a`; sonic `0xc83d8a...3225bd` | ⚠️ Unaudited |
| BeetsLpRateProvider | unknown | sonic | [`0x3df5a1...3a077a`](./contracts/sonic-146/0x3df5a1f8e1742f225e485afb99ccfe910d3a077a/) | ⚠️ Unaudited |
| Deployer | unknown | sonic | [`0xde4452...520033`](./contracts/sonic-146/0xde4452a4a4851356e72db53ebfbc9b5b6d520033/) | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | sonic | 2 deployments: sonic [`0x4cc72c...863a9e`](./contracts/sonic-146/0x4cc72cafb1d87068cae2da03243317f96e863a9e/); sonic `0xfd1ba5...d2b010` | ⚠️ Unaudited |
| ManualRegistry | registry | sonic | [`0x9786db...07be7b`](./contracts/sonic-146/0x9786db1486a2f67977ef1e3dfbd0eb01e407be7b/) | ⚠️ Unaudited |
| PoolOwner | core_logic | sonic | 5 deployments: sonic [`0x01ddde...493b1a`](./contracts/sonic-146/0x01ddde7f3b29fe9571f8bee23a48daab39493b1a/); sonic `0x2210a9...6cb6d6`; sonic `0x228075...a4079a`; sonic `0xa9e4c9...9e1788`; sonic `0xd965e9...a727ef` | ⚠️ Unaudited |
| PoolToken | core_logic | sonic | 7 deployments: sonic [`0x2f45b6...ef51fd`](./contracts/sonic-146/0x2f45b61b90b821efdb4525f89162cfd857ef51fd/); sonic `0x2f6679...b39b45`; sonic `0x3bcb4f...1d5f8b`; sonic `0x451d00...62666e`; sonic `0x88cf50...c3bb7d`; sonic `0xa93c94...d48c4d`; sonic `0xe0c7af...24eb48` | ⚠️ Unaudited |
| RingsVaultRateProvider | core_logic | sonic | 5 deployments: sonic [`0x117b60...11c9b8`](./contracts/sonic-146/0x117b60ddd662c9165cbe7f442f5d79e98311c9b8/); sonic `0x142e7a...03fbb3`; sonic `0xa633c1...9deeb3`; sonic `0xa96ac7...0a685e`; sonic `0xd822b4...409f30` | ⚠️ Unaudited |
| RolesAuthority | governance | sonic | [`0x135cb0...f98c47`](./contracts/sonic-146/0x135cb0ebeacb89738a17d3ee6b3caf392af98c47/) | ⚠️ Unaudited |
| SFC | unknown | sonic | [`0xfc00fa...000000`](./contracts/sonic-146/0xfc00face00000000000000000000000000000000/) | ⚠️ Unaudited |
| SiloBorrowableWsRateProvider | core_logic | sonic | [`0x1e3600...7ad01f`](./contracts/sonic-146/0x1e360058e211dd88d695926ba0683034477ad01f/) | ⚠️ Unaudited |
| SonicUsdcRateProvider | unknown | sonic | [`0xf14aee...b5a416`](./contracts/sonic-146/0xf14aeeb00e51d8447f5064f73c519e23a9b5a416/) | ⚠️ Unaudited |
| SonicUsdtRateProvider | token | sonic | 2 deployments: sonic [`0x0140f9...fa6f3f`](./contracts/sonic-146/0x0140f9b548565bf913020f186402ced1e8fa6f3f/); sonic `0x8a3b3a...dd2d39` | ⚠️ Unaudited |
| Timelock | governance | sonic | 3 deployments: sonic [`0x035b1c...3e3f20`](./contracts/sonic-146/0x035b1c84051e8c6988e3e7ed39991b6e683e3f20/); sonic `0x94869d...c288da`; sonic `0xe14e14...1282e7` | ⚠️ Unaudited |
| Vault | core_logic | sonic | 7 deployments: sonic [`0x097df3...1bfb0f`](./contracts/sonic-146/0x097df3dfb8c5b090e661296563f1fe24701bfb0f/); sonic `0x15e96c...92e69d`; sonic `0x1c8a00...8c5635`; sonic `0x1edbcc...51945e`; sonic `0x7a1f5f...736465`; sonic `0xcafd81...e14d41`; sonic `0xedea26...08bca5` | ⚠️ Unaudited |
| wanS | unknown | sonic | 2 deployments: sonic [`0xba3bb1...207a64`](./contracts/sonic-146/0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64/); sonic `0xfa85fe...5abd70` | ⚠️ Unaudited |
| WsRateProvider | unknown | sonic | [`0x615ee0...156ed5`](./contracts/sonic-146/0x615ee09caa940a91ef4738fdea8935f659156ed5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x02b472...2cee57` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x093045...22d7bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x16fdf1...089993` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1f88ea...2a5884` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x34fe76...228945` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x510d02...3e4ba4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5b52fa...2dc073` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5dbba7...cba78f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7f7eb9...ed4c31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa7b87c...08029e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb52a8d...e7207a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xbe7cc6...d6fe53` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd68c5c...ec840b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe904a7...c6f23d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf46b21...740497` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FllPyhrg6nxGZCqiOX61A%2Fuploads%2FbSKwCaHEqGfKBo6FUXtL%2FSpearBit%20x%20Angles.pdf?alt=media) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 2 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x033f4a...b3c722`](./contracts/sonic-146/0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722/) | PoolV2 | core_logic | $7.53 | Verified native implementation with $7.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6c2a52...41c452`](./contracts/sonic-146/0x6c2a529921f70eaf44d689ef882d96f09041c452/) | Pool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6d06b7...b0ac35`](./contracts/sonic-146/0x6d06b7fac4f6393672fd038083370d38f3b0ac35/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5c6e05...fd35b0`](./contracts/sonic-146/0x5c6e05d97af61637fdf5144ad4ed81a12bfd35b0/) | AnglesLiquidVaultRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0af78f...189a00`](./contracts/sonic-146/0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00/) | AnglesSmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c4e18...9ec987`](./contracts/sonic-146/0x0c4e186eae8acaa7f7de1315d5ad174be39ec987/) | anS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22f749...5a348c`](./contracts/sonic-146/0x22f74995f88d4fd631bb8f64fa523af0da5a348c/) | AtomicQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xde4452...520033`](./contracts/sonic-146/0xde4452a4a4851356e72db53ebfbc9b5b6d520033/) | Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4cc72c...863a9e`](./contracts/sonic-146/0x4cc72cafb1d87068cae2da03243317f96e863a9e/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9786db...07be7b`](./contracts/sonic-146/0x9786db1486a2f67977ef1e3dfbd0eb01e407be7b/) | ManualRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x01ddde...493b1a`](./contracts/sonic-146/0x01ddde7f3b29fe9571f8bee23a48daab39493b1a/) | PoolOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2f45b6...ef51fd`](./contracts/sonic-146/0x2f45b61b90b821efdb4525f89162cfd857ef51fd/) | PoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x117b60...11c9b8`](./contracts/sonic-146/0x117b60ddd662c9165cbe7f442f5d79e98311c9b8/) | RingsVaultRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x135cb0...f98c47`](./contracts/sonic-146/0x135cb0ebeacb89738a17d3ee6b3caf392af98c47/) | RolesAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e3600...7ad01f`](./contracts/sonic-146/0x1e360058e211dd88d695926ba0683034477ad01f/) | SiloBorrowableWsRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0140f9...fa6f3f`](./contracts/sonic-146/0x0140f9b548565bf913020f186402ced1e8fa6f3f/) | SonicUsdtRateProvider | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x035b1c...3e3f20`](./contracts/sonic-146/0x035b1c84051e8c6988e3e7ed39991b6e683e3f20/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x097df3...1bfb0f`](./contracts/sonic-146/0x097df3dfb8c5b090e661296563f1fe24701bfb0f/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xba3bb1...207a64`](./contracts/sonic-146/0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64/) | wanS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x615ee0...156ed5`](./contracts/sonic-146/0x615ee09caa940a91ef4738fdea8935f659156ed5/) | WsRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
