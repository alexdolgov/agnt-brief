# Agentic Audit Brief: liquid-finance

## Project Overview

- Project: liquid-finance (`liquid-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.090Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 17 unique implementations (17 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 17 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (onlytimelock, onlyadmin, erc20burnable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlockNumber | unknown | arbitrum | n/a | [`0x26b781...82aa2c`](./contracts/arbitrum-42161/0x26b7811dea412de7b4b0f7ffe14d6e62c282aa2c/) | ⚠️ Unaudited |
| BondReserve | unknown | arbitrum | n/a | [`0xb7c6cb...30c285`](./contracts/arbitrum-42161/0xb7c6cbc49fea52d56aa93456e1ea81172a30c285/) | ⚠️ Unaudited |
| Bonds | unknown | arbitrum | n/a | [`0x74b353...d7259a`](./contracts/arbitrum-42161/0x74b353a2fd8608a7a0cb9977121793b78ed7259a/) | ⚠️ Unaudited |
| BondStrategy | unknown | arbitrum | n/a | [`0x8bbd84...004183`](./contracts/arbitrum-42161/0x8bbd8457829bfe14590e2ba0fa40fd8919004183/) | ⚠️ Unaudited |
| FASTChef | unknown | arbitrum | n/a | [`0x2582ff...48c007`](./contracts/arbitrum-42161/0x2582ffea547509472b3f12d94a558bb83a48c007/) | ⚠️ Unaudited |
| FASTStaking | unknown | arbitrum | n/a | [`0xa1a988...d585a9`](./contracts/arbitrum-42161/0xa1a988a22a03cbe0cf089e3e7d2e6fcf9bd585a9/) | ⚠️ Unaudited |
| FASTTreasury | unknown | arbitrum | n/a | [`0x61fb28...9886c2`](./contracts/arbitrum-42161/0x61fb28d32447ef7f4e85cf247cb9135b4e9886c2/) | ⚠️ Unaudited |
| MasterOracle | unknown | arbitrum | n/a | [`0x2ad992...d124df`](./contracts/arbitrum-42161/0x2ad992a3ac3cf6dff518932728b83a17ded124df/) | ⚠️ Unaudited |
| Pool | unknown | arbitrum | n/a | [`0x29b444...f3a2bf`](./contracts/arbitrum-42161/0x29b444362da2a0a9b14ed12db738e28398f3a2bf/) | ⚠️ Unaudited |
| presale | unknown | arbitrum | n/a | [`0x2498f8...1c695a`](./contracts/arbitrum-42161/0x2498f8c8f6b48c6420fbffc524ed87a9e31c695a/) | ⚠️ Unaudited |
| STBLTKN | unknown | arbitrum | n/a | [`0x73700a...7743d3`](./contracts/arbitrum-42161/0x73700aecfc4621e112304b6edc5ba9e36d7743d3/) | ⚠️ Unaudited |
| SwapStrategyPOL | unknown | arbitrum | n/a | [`0x50a930...23ff0e`](./contracts/arbitrum-42161/0x50a9300688e6e6225081b454a23cec1fc623ff0e/) | ⚠️ Unaudited |
| TeamAlloc | unknown | arbitrum | n/a | [`0x6d306e...1f3128`](./contracts/arbitrum-42161/0x6d306e5f9b0b1ae6e74e6a9357f78d10f21f3128/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | [`0x3814e4...f6935f`](./contracts/arbitrum-42161/0x3814e4893296fd88a92d449b6b26b1ac3df6935f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x5dcf47...5b5cf8`](./contracts/arbitrum-42161/0x5dcf474814515b58ca0ca5e80bbb00d18c5b5cf8/) | ⚠️ Unaudited |
| UTILTKN | unknown | arbitrum | n/a | [`0x93c15c...ab174f`](./contracts/arbitrum-42161/0x93c15cd7de26f07265f0272e0b831c5d7fab174f/) | ⚠️ Unaudited |
| UtilTknReserve | unknown | arbitrum | n/a | [`0xc7b3cc...54e038`](./contracts/arbitrum-42161/0xc7b3cc8320c716d60e723836da2064ed5754e038/) | ⚠️ Unaudited |

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
| arbitrum | [`0x26b781...82aa2c`](./contracts/arbitrum-42161/0x26b7811dea412de7b4b0f7ffe14d6e62c282aa2c/) | BlockNumber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb7c6cb...30c285`](./contracts/arbitrum-42161/0xb7c6cbc49fea52d56aa93456e1ea81172a30c285/) | BondReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74b353...d7259a`](./contracts/arbitrum-42161/0x74b353a2fd8608a7a0cb9977121793b78ed7259a/) | Bonds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8bbd84...004183`](./contracts/arbitrum-42161/0x8bbd8457829bfe14590e2ba0fa40fd8919004183/) | BondStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2582ff...48c007`](./contracts/arbitrum-42161/0x2582ffea547509472b3f12d94a558bb83a48c007/) | FASTChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa1a988...d585a9`](./contracts/arbitrum-42161/0xa1a988a22a03cbe0cf089e3e7d2e6fcf9bd585a9/) | FASTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x61fb28...9886c2`](./contracts/arbitrum-42161/0x61fb28d32447ef7f4e85cf247cb9135b4e9886c2/) | FASTTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ad992...d124df`](./contracts/arbitrum-42161/0x2ad992a3ac3cf6dff518932728b83a17ded124df/) | MasterOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x29b444...f3a2bf`](./contracts/arbitrum-42161/0x29b444362da2a0a9b14ed12db738e28398f3a2bf/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2498f8...1c695a`](./contracts/arbitrum-42161/0x2498f8c8f6b48c6420fbffc524ed87a9e31c695a/) | presale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x73700a...7743d3`](./contracts/arbitrum-42161/0x73700aecfc4621e112304b6edc5ba9e36d7743d3/) | STBLTKN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50a930...23ff0e`](./contracts/arbitrum-42161/0x50a9300688e6e6225081b454a23cec1fc623ff0e/) | SwapStrategyPOL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d306e...1f3128`](./contracts/arbitrum-42161/0x6d306e5f9b0b1ae6e74e6a9357f78d10f21f3128/) | TeamAlloc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3814e4...f6935f`](./contracts/arbitrum-42161/0x3814e4893296fd88a92d449b6b26b1ac3df6935f/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x93c15c...ab174f`](./contracts/arbitrum-42161/0x93c15cd7de26f07265f0272e0b831c5d7fab174f/) | UTILTKN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7b3cc...54e038`](./contracts/arbitrum-42161/0xc7b3cc8320c716d60e723836da2064ed5754e038/) | UtilTknReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
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
