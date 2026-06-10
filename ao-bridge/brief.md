# Agentic Audit Brief: AO Bridge

## Project Overview

- Project: AO Bridge (`ao-bridge`)
- Website: [https://ao.arweave.net/](https://ao.arweave.net/)
- Lifecycle: active (Tier 0, 90.5% below peak)
- Generated: 2026-06-10T20:58:57.599Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 3 unique implementations (43 raw deployments)
- DeFi Llama TVL: $54,042,727.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AO Bridge is tracked by DefiLlama as a Canonical Bridge on Ethereum associated with the AO/Arweave ecosystem. The indexed Ethereum contract surface includes ERC1967 proxy deployments pointing to native Distribution implementations, along with Refunder and LinearDistributionIntervalDecrease contracts. Detailed bridge mechanics and deployer-cluster rollout claims should not be asserted without additional evidence.

### Architecture

The AO Bridge family consists of multiple Distribution contracts deployed behind ERC1967Proxy instances, all sharing the same upgradeable proxy pattern. These contracts are deployed by two distinct deployer clusters, indicating a phased rollout or separate operational components within the same bridge infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 43
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
| Distribution | proxy | ethereum | 26 deployments: ethereum [`0x033b27...ab8a0e`](./contracts/ethereum-1/0x033b274ff36837d72d4baf7b7fcf4f84f6ab8a0e/); ethereum `0x0e7f88...b6d31e`; ethereum `0x11f90f...493740`; ethereum `0x1a36f3...7ad2ce`; ethereum `0x1fa69d...b01cf1`; ethereum `0x2950fc...515e28`; ethereum `0x2f9bc3...a015d2`; ethereum `0x3df444...8dc0b5`; ethereum `0x6a1b58...dbfebf`; ethereum `0x6a9b90...34fe0b`; ethereum `0x742366...0c13be`; ethereum `0x764888...a012cc`; ethereum `0x78cc4f...98da12`; ethereum `0x7cd01d...3e08eb`; ethereum `0x93f993...76a418`; ethereum `0x9a91bd...d200d5`; ethereum `0xa65f94...ee72b0`; ethereum `0xa682fd...d20cb3`; ethereum `0xb7410d...b12e81`; ethereum `0xb965e4...53df46`; ethereum `0xc7b80c...dfe2c6`; ethereum `0xe07707...2f3d60`; ethereum `0xf9b8d0...38a538`; ethereum `0xfa20ac...38504f`; ethereum `0xfe08d4...02665c`; ethereum `0xfffe89...c13a4c` | ⚠️ Unaudited |
| LinearDistributionIntervalDecrease | operational_periphery | ethereum | [`0x7e209b...d1d482`](./contracts/ethereum-1/0x7e209b1833ae5313c2923116c78baedf14d1d482/) | ⚠️ Unaudited |
| Refunder | unknown | ethereum | 16 deployments: ethereum [`0x0278d0...906a32`](./contracts/ethereum-1/0x0278d076edccb596fca5de58e7e8e70d2a906a32/); ethereum `0x35afb1...c9ee86`; ethereum `0x395114...b900c9`; ethereum `0x40973b...d0c52c`; ethereum `0x4f7cf3...df0dce`; ethereum `0x5da0f6...d42bed`; ethereum `0x6bf172...e228e9`; ethereum `0x6ca43e...373262`; ethereum `0x88a868...2ffc60`; ethereum `0x8e4f09...84294d`; ethereum `0x94c6b5...0c2cb9`; ethereum `0xd250c0...975eb2`; ethereum `0xe4b2e1...bd263c`; ethereum `0xe82c9c...47352b`; ethereum `0xf1bd33...3529fa`; ethereum `0xff8a50...35a11e` | ⚠️ Unaudited |

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
| ethereum | [`0x7e209b...d1d482`](./contracts/ethereum-1/0x7e209b1833ae5313c2923116c78baedf14d1d482/) | LinearDistributionIntervalDecrease | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0278d0...906a32`](./contracts/ethereum-1/0x0278d076edccb596fca5de58e7e8e70d2a906a32/) | Refunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
