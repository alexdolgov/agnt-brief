# Agentic Audit Brief: MORE Markets

## Project Overview

- Project: MORE Markets (`more-markets`)
- Website: [https://www.more.markets](https://www.more.markets)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.854Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 24 unique implementations (25 raw deployments)
- DeFi Llama TVL: $9,829,470.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 21 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (contextupgradeable, proxy, pausableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (22 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 21 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 24
- Raw deployments: 25
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Facet | unknown | ethereum | n/a | [`0x3172c3...362fbd`](./contracts/ethereum-1/0x3172c30821d61b97ed0c9b21c0fe42ff0b362fbd/) | ⚠️ Unaudited |
| AccessControlFacet | governance | ethereum | n/a | [`0xfdf1c2...eed38c`](./contracts/ethereum-1/0xfdf1c242e8e9847f2edebab3c0f3be5f85eed38c/) | ⚠️ Unaudited |
| BridgeFacet | operational_periphery | ethereum | n/a | [`0xd08cab...cd37bb`](./contracts/ethereum-1/0xd08cab25309dfea0a48db8e9ef3d5afa58cd37bb/) | ⚠️ Unaudited |
| ConfigurationFacet | governance | ethereum | n/a | [`0x475d69...891441`](./contracts/ethereum-1/0x475d696b75fd49f48cd1d8a4389c7ad755891441/) | ⚠️ Unaudited |
| CurveFacet | unknown | ethereum | n/a | [`0x00f8ab...08c897`](./contracts/ethereum-1/0x00f8abfe17b4c096440a647bb0549f326e08c897/) | ⚠️ Unaudited |
| CurveLiquidityGaugeV6Facet | operational_periphery | ethereum | n/a | [`0x4fc8df...ff3aa1`](./contracts/ethereum-1/0x4fc8dfc9a4ace779e78591b17b83ea1988ff3aa1/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | ethereum | n/a | [`0x0629d6...f38ee7`](./contracts/ethereum-1/0x0629d67cba46438458e96e7fd7bd46afe6f38ee7/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0xbfb5bf...34e708`](./contracts/ethereum-1/0xbfb5bf7129d80c582681e5f59aa21ba23834e708/) | ⚠️ Unaudited |
| ERC4626Facet | unknown | ethereum | n/a | [`0xc5c684...a1f1b5`](./contracts/ethereum-1/0xc5c6844fe3a550748caaeaf8592d68386ca1f1b5/) | ⚠️ Unaudited |
| ERC7540Facet | unknown | ethereum | n/a | [`0x5b49fb...b5633b`](./contracts/ethereum-1/0x5b49fb340ee2a92ac9b5ae9a6920a54911b5633b/) | ⚠️ Unaudited |
| LzAdapter | adapter | ethereum | n/a | [`0xc3268c...297117`](./contracts/ethereum-1/0xc3268c843a7704cc7c476edb6b38480038297117/) | ⚠️ Unaudited |
| MoreLeverageFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x589ccd...da5fc3`](./contracts/ethereum-1/0x589ccdaf387e265423c1d2f95cdc903fdfda5fc3/); ethereum `0xc04ea0...a6292a` | ⚠️ Unaudited |
| MoreVaultsComposer | core_logic | ethereum | n/a | [`0x8d8be0...cbdfc1`](./contracts/ethereum-1/0x8d8be034ecfd018d67f9a1a25e27f99f52cbdfc1/) | ⚠️ Unaudited |
| MulticallFacet | periphery | ethereum | n/a | [`0x4c25db...d998e3`](./contracts/ethereum-1/0x4c25db05c999081cdb24adfdd9cd871f70d998e3/) | ⚠️ Unaudited |
| MultiRewardsFacet | unknown | ethereum | n/a | [`0x65c89a...d6cd0f`](./contracts/ethereum-1/0x65c89a8aef485d3da46ed3ee20bf9d59e4d6cd0f/) | ⚠️ Unaudited |
| OFTAdapterFactory | adapter | ethereum | n/a | [`0xfa3f78...7ea659`](./contracts/ethereum-1/0xfa3f78123da6c25548ced8e2e194483a067ea659/) | ⚠️ Unaudited |
| OracleRegistry | operational_periphery | ethereum | n/a | [`0xa7b968...a2041a`](./contracts/ethereum-1/0xa7b968ca75eb0224a396ca5cd482d18d4ca2041a/) | ⚠️ Unaudited |
| UniswapV3Facet | unknown | ethereum | n/a | [`0x3df592...59b5ad`](./contracts/ethereum-1/0x3df5923afb843fdc530c144844c994db8e59b5ad/) | ⚠️ Unaudited |
| VaultFacet | core_logic | ethereum | n/a | [`0xe405e2...db8878`](./contracts/ethereum-1/0xe405e2fec812bd73548e75c2544cfd176bdb8878/) | ⚠️ Unaudited |
| VaultsFactory | registry | ethereum | n/a | [`0x7bdb8b...56bb0c`](./contracts/ethereum-1/0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c/) | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | n/a | [`0x6a0b37...553890`](./contracts/ethereum-1/0x6a0b3724af49ce6f14669d07823650ec26553890/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultsFactory | registry | base | n/a | `0x7bdb8b...56bb0c` | ❓ Unverified |
| VaultsFactory | registry | arbitrum | n/a | `0x7bdb8b...56bb0c` | ❓ Unverified |
| VaultsFactory | registry | avalanche | n/a | `0x7bdb8b...56bb0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xfdf1c2...eed38c`](./contracts/ethereum-1/0xfdf1c242e8e9847f2edebab3c0f3be5f85eed38c/) | AccessControlFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd08cab...cd37bb`](./contracts/ethereum-1/0xd08cab25309dfea0a48db8e9ef3d5afa58cd37bb/) | BridgeFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x475d69...891441`](./contracts/ethereum-1/0x475d696b75fd49f48cd1d8a4389c7ad755891441/) | ConfigurationFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0629d6...f38ee7`](./contracts/ethereum-1/0x0629d67cba46438458e96e7fd7bd46afe6f38ee7/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfb5bf...34e708`](./contracts/ethereum-1/0xbfb5bf7129d80c582681e5f59aa21ba23834e708/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5c684...a1f1b5`](./contracts/ethereum-1/0xc5c6844fe3a550748caaeaf8592d68386ca1f1b5/) | ERC4626Facet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b49fb...b5633b`](./contracts/ethereum-1/0x5b49fb340ee2a92ac9b5ae9a6920a54911b5633b/) | ERC7540Facet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3268c...297117`](./contracts/ethereum-1/0xc3268c843a7704cc7c476edb6b38480038297117/) | LzAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x589ccd...da5fc3`](./contracts/ethereum-1/0x589ccdaf387e265423c1d2f95cdc903fdfda5fc3/) | MoreLeverageFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d8be0...cbdfc1`](./contracts/ethereum-1/0x8d8be034ecfd018d67f9a1a25e27f99f52cbdfc1/) | MoreVaultsComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c25db...d998e3`](./contracts/ethereum-1/0x4c25db05c999081cdb24adfdd9cd871f70d998e3/) | MulticallFacet | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65c89a...d6cd0f`](./contracts/ethereum-1/0x65c89a8aef485d3da46ed3ee20bf9d59e4d6cd0f/) | MultiRewardsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa3f78...7ea659`](./contracts/ethereum-1/0xfa3f78123da6c25548ced8e2e194483a067ea659/) | OFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7b968...a2041a`](./contracts/ethereum-1/0xa7b968ca75eb0224a396ca5cd482d18d4ca2041a/) | OracleRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe405e2...db8878`](./contracts/ethereum-1/0xe405e2fec812bd73548e75c2544cfd176bdb8878/) | VaultFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bdb8b...56bb0c`](./contracts/ethereum-1/0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c/) | VaultsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a0b37...553890`](./contracts/ethereum-1/0x6a0b3724af49ce6f14669d07823650ec26553890/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
