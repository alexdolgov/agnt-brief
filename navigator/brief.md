# Agentic Audit Brief: Navigator

## Project Overview

- Project: Navigator (`navigator`)
- Website: [https://www.navigator.exchange/](https://www.navigator.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.600Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, sonic
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $644,309.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 12 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 12 contract(s).

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EIP173Proxy | unknown | sonic | n/a | [`0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f`](./contracts/sonic-146/0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | arbitrum | n/a | [`0xf75d3c6f20fb65cc0b8f84687e5cbac3d7f4221e`](./contracts/arbitrum-42161/0xf75d3c6f20fb65cc0b8f84687e5cbac3d7f4221e/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x41cd8cafc24a771031b9eb9c57cfc94d86045eb6`](./contracts/arbitrum-42161/0x41cd8cafc24a771031b9eb9c57cfc94d86045eb6/) | ⚠️ Unaudited |
| GlpManager | unknown | arbitrum | n/a | [`0x65dcb38637b526305be55f14b24a4ab2bd177780`](./contracts/arbitrum-42161/0x65dcb38637b526305be55f14b24a4ab2bd177780/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | [`0x2d270f66fee6ac9e27ff6551af5a8cfb5c8a7493`](./contracts/arbitrum-42161/0x2d270f66fee6ac9e27ff6551af5a8cfb5c8a7493/) | ⚠️ Unaudited |
| NAVI | unknown | sonic | n/a | [`0x6881b80ea7c858e4aeef63893e18a8a36f3682f3`](./contracts/sonic-146/0x6881b80ea7c858e4aeef63893e18a8a36f3682f3/) | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | [`0x3b2732c1e5a248bbdd0315e9e8845c64f5a6faf5`](./contracts/arbitrum-42161/0x3b2732c1e5a248bbdd0315e9e8845c64f5a6faf5/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | arbitrum | n/a | [`0xb2a477c6ba5e96f6decbced836cb7d3d32ef9ecd`](./contracts/arbitrum-42161/0xb2a477c6ba5e96f6decbced836cb7d3d32ef9ecd/) | ⚠️ Unaudited |
| RewardTracker | unknown | sonic | n/a | [`0xef8770e9506a8d1aae3d599327a39cf14b6b3dc4`](./contracts/sonic-146/0xef8770e9506a8d1aae3d599327a39cf14b6b3dc4/) | ⚠️ Unaudited |
| Router | unknown | arbitrum | n/a | [`0x01e9b35785ef3f7ef2677c371442976bd550f320`](./contracts/arbitrum-42161/0x01e9b35785ef3f7ef2677c371442976bd550f320/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x304951d7172bcada54ccac1e4674862b3d5b3d5b`](./contracts/arbitrum-42161/0x304951d7172bcada54ccac1e4674862b3d5b3d5b/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | arbitrum | n/a | [`0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f`](./contracts/arbitrum-42161/0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f`](./contracts/sonic-146/0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f/) | EIP173Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf75d3c6f20fb65cc0b8f84687e5cbac3d7f4221e`](./contracts/arbitrum-42161/0xf75d3c6f20fb65cc0b8f84687e5cbac3d7f4221e/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x41cd8cafc24a771031b9eb9c57cfc94d86045eb6`](./contracts/arbitrum-42161/0x41cd8cafc24a771031b9eb9c57cfc94d86045eb6/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65dcb38637b526305be55f14b24a4ab2bd177780`](./contracts/arbitrum-42161/0x65dcb38637b526305be55f14b24a4ab2bd177780/) | GlpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d270f66fee6ac9e27ff6551af5a8cfb5c8a7493`](./contracts/arbitrum-42161/0x2d270f66fee6ac9e27ff6551af5a8cfb5c8a7493/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6881b80ea7c858e4aeef63893e18a8a36f3682f3`](./contracts/sonic-146/0x6881b80ea7c858e4aeef63893e18a8a36f3682f3/) | NAVI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b2732c1e5a248bbdd0315e9e8845c64f5a6faf5`](./contracts/arbitrum-42161/0x3b2732c1e5a248bbdd0315e9e8845c64f5a6faf5/) | PositionRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb2a477c6ba5e96f6decbced836cb7d3d32ef9ecd`](./contracts/arbitrum-42161/0xb2a477c6ba5e96f6decbced836cb7d3d32ef9ecd/) | PriceFeedTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xef8770e9506a8d1aae3d599327a39cf14b6b3dc4`](./contracts/sonic-146/0xef8770e9506a8d1aae3d599327a39cf14b6b3dc4/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01e9b35785ef3f7ef2677c371442976bd550f320`](./contracts/arbitrum-42161/0x01e9b35785ef3f7ef2677c371442976bd550f320/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x304951d7172bcada54ccac1e4674862b3d5b3d5b`](./contracts/arbitrum-42161/0x304951d7172bcada54ccac1e4674862b3d5b3d5b/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f`](./contracts/arbitrum-42161/0x7b9e962dd8aed0db9a1d8a2d7a962ad8b871ce4f/) | VaultPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
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
