# Agentic Audit Brief: Flexa

⚠️ Lifecycle status: DECLINING - TVL dropped 70.6% over 90 days

## Project Overview

- Project: Flexa (`flexa`)
- Website: [https://amp.xyz/](https://amp.xyz/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T19:54:09.571Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $892,845.83
- On-chain TVL (included contracts): $550,891.00
- TVL by chain: Ethereum $550,891.00

## Project Description

Flexa is a payments-focused protocol built around Amp (AMP) as its core collateral token. The Flexa/Amp system uses collateralization to support payment settlement and merchant payment acceptance; AMP should be treated as the protocol's collateral token rather than as an unrelated upstream governance or staking component. Claims that Flexa is a collateralized stablecoin borrowing protocol, synthetic asset minting system, vault product, BAC/ARCx pool, or yield-staking protocol should be removed unless separately verified from Flexa documentation.

### Architecture

The AMP token contract is separate from the Flexa family but likely interacts via governance or staking. Within Flexa, bVaults serve as collateralized debt positions that mint synthetic assets, while the BAC pools provide liquidity for those synthetics; staking contracts like ArcProxy and MasterChef distribute rewards, and the FlexaCollateralManager oversees collateral operations.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 3 inactive, 15 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Unverified dependencies: 1/3.

## Audit Coverage Summary

- Verified implementations audited: 2/6 (33.3%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $550,891.00
- Latest audit: 2020-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 33.3% (ConsenSys Diligence, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $550,891.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 2 | 33.3% | 2020-06 |
| Trail of Bits | Tier 1 | 2 | 33.3% | 2020-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Amp | unknown | ethereum | n/a | [`0xff2081...1095c2`](./contracts/ethereum-1/0xff20817765cb7f73d4bde2e66e067e58d11095c2/) | ✅ Audited |
| FlexaCollateralManager | governance | ethereum | n/a | [`0x706d7f...e7c578`](./contracts/ethereum-1/0x706d7f8b3445d8dfc790c524e3990ef014e7c578/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralVault | core_logic | ethereum | n/a | [`0x5d2725...1d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | ⚠️ Unaudited |
| AnvilGovernorDelegate | governance | ethereum | unit-38743 | [`0x00e83d...4874c9`](./contracts/ethereum-1/0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9/) | ⚠️ Unaudited |
| Flexacoin | unknown | ethereum | n/a | [`0x4a57e6...adebde`](./contracts/ethereum-1/0x4a57e687b9126435a9b19e4a802113e266adebde/) | ⚠️ Unaudited |
| Reward | unknown | ethereum | n/a | [`0xc6a06f...da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | ⚠️ Unaudited |

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
| [DL audit link](https://diligence.security/audits/2020/06/amp) | Consensys Diligence | Audit | 2020-06 | stale | Direct | contract_name | 2 | high |
| [amp.pdf](https://github.com/trailofbits/publications/blob/master/reviews/amp.pdf) | Trail of Bits | Audit | 2020-08 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5d2725...1d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | CollateralVault | core_logic | $550,891.00 | Verified native implementation with $550,891.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e83d...4874c9`](./contracts/ethereum-1/0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9/) | AnvilGovernorDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a57e6...adebde`](./contracts/ethereum-1/0x4a57e687b9126435a9b19e4a802113e266adebde/) | Flexacoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6a06f...da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | Reward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
