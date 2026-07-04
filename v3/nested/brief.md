# Agentic Audit Brief: Nested

## Project Overview

- Project: Nested (`nested`)
- Website: [https://nested.fi](https://nested.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.406Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: arbitrum, bsc, ethereum, optimism, polygon
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $125,324.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 17 project-authored contract(s) across 5 chain(s); 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (ownablefactoryhandler). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CREATE3Factory | unknown | bsc | n/a | [`0x55de72...b97eb9`](./contracts/bsc-56/0x55de7264fc5c847065c69a6240d3a6c05db97eb9/) | ⚠️ Unaudited |
| FeeSplitter | unknown | arbitrum | n/a | [`0x27f804...61ced9`](./contracts/arbitrum-42161/0x27f80488078bc485c9cf5a989fcbab27d561ced9/) | ⚠️ Unaudited |
| FlatOperator | unknown | arbitrum | n/a | [`0x2a3c3d...f26989`](./contracts/arbitrum-42161/0x2a3c3d80e93501e751e5b6f355f396e831f26989/) | ⚠️ Unaudited |
| NestedAsset | unknown | ethereum | n/a | [`0x0f0293...fe7d77`](./contracts/ethereum-1/0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77/) | ⚠️ Unaudited |
| NestedAssetBatcher | unknown | bsc | n/a | [`0x2b2eda...0eb815`](./contracts/bsc-56/0x2b2eda765282f6265101c0f72157d50f8f0eb815/) | ⚠️ Unaudited |
| NestedFactory | unknown | polygon | n/a | [`0x0c4578...b8ed81`](./contracts/polygon-137/0x0c457862a844f41381c5429b1cb6394192b8ed81/) | ⚠️ Unaudited |
| NestedRecords | unknown | optimism | n/a | [`0x27f804...61ced9`](./contracts/optimism-10/0x27f80488078bc485c9cf5a989fcbab27d561ced9/) | ⚠️ Unaudited |
| NestedReserve | unknown | ethereum | n/a | [`0x0535f1...46c65d`](./contracts/ethereum-1/0x0535f1f43ee274123291bbab284948caed46c65d/) | ⚠️ Unaudited |
| OperatorResolver | unknown | ethereum | n/a | [`0x04a730...ad376b`](./contracts/ethereum-1/0x04a7307e94fd83b2fe88537729640ea7a0ad376b/) | ⚠️ Unaudited |
| OperatorScripts | unknown | bsc | n/a | [`0x0c4578...b8ed81`](./contracts/bsc-56/0x0c457862a844f41381c5429b1cb6394192b8ed81/) | ⚠️ Unaudited |
| OwnerProxy | unknown | polygon | n/a | [`0x022f65...62af49`](./contracts/polygon-137/0x022f65aa70af76167dfa328fe27eecbe4162af49/) | ⚠️ Unaudited |
| SingleCall | unknown | arbitrum | n/a | [`0x449d08...c5200f`](./contracts/arbitrum-42161/0x449d088c9f184af598fe72d26742a58a11c5200f/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x78a720...8d829a`](./contracts/bsc-56/0x78a7207f221b1f376a73f52dd27087b7708d829a/) | ⚠️ Unaudited |
| TimelockControllerEmergency | unknown | ethereum | n/a | [`0x0e04e8...31ebcc`](./contracts/ethereum-1/0x0e04e8127cf11db51d4c8841f71833af1231ebcc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x74afad...3fd330`](./contracts/bsc-56/0x74afada131db545df782d196c8736d97593fd330/) | ⚠️ Unaudited |
| Withdrawer | unknown | bsc | n/a | [`0x0384f3...1f8058`](./contracts/bsc-56/0x0384f3b95faa3c2f48c40f15fe8bd8cd1f1f8058/) | ⚠️ Unaudited |
| ZeroExOperator | unknown | ethereum | n/a | [`0x1db811...0d6940`](./contracts/ethereum-1/0x1db81116467789b7dcc3b070ee8f5aa4d90d6940/) | ⚠️ Unaudited |
| ZeroExStorage | unknown | ethereum | n/a | [`0xa19d09...fabe65`](./contracts/ethereum-1/0xa19d093d24d345fa25424d15202cab00a5fabe65/) | ⚠️ Unaudited |

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
| [Code4rena_Nested_Analysis_Report_2021_12.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Code4rena_Nested_Analysis_Report_2021_12.pdf) | Code4rena | Contest | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [Code4rena_Nested_Analysis_Report_2022_04.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Code4rena_Nested_Analysis_Report_2022_04.pdf) | Code4rena | Contest | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Code4rena_Nested_Analysis_Report_2022_06.md](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Code4rena_Nested_Analysis_Report_2022_06.md) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Nested-v1.0.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/PeckShield-Audit-Report-Nested-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Red4Sec_Nested_Security_Audit_Report_v3.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Red4Sec_Nested_Security_Audit_Report_v3.pdf) | Red4Sec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24296] Code4rena_Nested_Analysis_Report_2021_12.pdf
- [24297] Code4rena_Nested_Analysis_Report_2022_04.pdf
- [24298] Code4rena_Nested_Analysis_Report_2022_06.md
- [24299] PeckShield-Audit-Report-Nested-v1.0.pdf
- [24300] Red4Sec_Nested_Security_Audit_Report_v3.pdf

Fork inheritance lineage and inherited audits are included when available.
