# Agentic Audit Brief: Puffer Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 6.3% over 90 days

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: declining (Tier 0, 96.8% below peak)
- Generated: 2026-06-17T07:00:36.758Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 10 unique implementations (12 raw deployments)
- DeFi Llama TVL: $46,525,430.47
- On-chain TVL (included contracts): $97,586.08
- TVL by chain: Ethereum $97,586.08

## Project Description

Puffer Finance is a broader Ethereum infrastructure protocol suite. Its current product families include Liquid Restaking for ETH/restaking exposure, UniFi as a based rollup/L2 product, Puffer Preconf as an EigenLayer-based preconfirmation service, and Puffer Institutional for staking/restaking infrastructure. Any vault, reward-management, token/governance, bridge, or UniFi-related contract surfaces should be scoped explicitly to these product families or excluded with rationale.

### Architecture

Puffer Stake's PufferVaultV5 interacts with Puffer Vaults' BoringVault and AccountantWithRateProviders to manage staked ETH and distribute rewards. Puffer UniFi's BoringVault may share similar infrastructure for restaking operations.

## Contract Surface Quality

- Indexed contracts: 119; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 82 inactive, 25 singleton, 0 uninitialized.
- Deployment units: 1/14 live.
- Detected codebases: none
- Unverified dependencies: 25/80.

## Audit Coverage Summary

- Verified implementations audited: 1/10 (10.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 12
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $97,586.08
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 10.0% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $97,586.08 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blocksec | Tier 2 | 1 | 10.0% | 2024-04 |
| Creed | Tier 2 | 1 | 10.0% | 2024-05 |
| Nethermind | Tier 2 | 1 | 10.0% | 2024-04 |
| SlowMist | Tier 1 | 1 | 10.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GuardianModule | governance | ethereum | n/a | [`0x628b18...a7ccf2`](./contracts/ethereum-1/0x628b183f248a142a598aa2dcccd6f7e480a7ccf2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/); ethereum `0x196ead...bd3dcc` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa9fb7e...6dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/); ethereum `0xe0bdb7...b7e3be` | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | ethereum | n/a | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | ⚠️ Unaudited |
| InstitutionalVault | core_logic | ethereum | n/a | [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | ⚠️ Unaudited |
| L1RewardManager | governance | ethereum | unit-23143 | [`0x157788...3cf17b`](./contracts/ethereum-1/0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b/) | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | ethereum | n/a | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | ⚠️ Unaudited |
| PUFFER | unknown | ethereum | n/a | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | ⚠️ Unaudited |
| vlPUFFER | unknown | ethereum | n/a | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | ⚠️ Unaudited |
| XERC20Lockbox | token | ethereum | n/a | [`0xd44e91...b463d5`](./contracts/ethereum-1/0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5/) | ⚠️ Unaudited |

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
| [Blocksec_audit_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Blocksec_audit_April2024.pdf) | Blocksec | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Creed_Puffer_Finance_Audit_May2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Creed_Puffer_Finance_Audit_May2024.pdf) | Creed | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [Nethermind_PufferProtocol_NM0202_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Nethermind_PufferProtocol_NM0202_April2024.pdf) | Nethermind | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [SlowMist_PufferFinance_Phase2.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/SlowMist_PufferFinance_Phase2.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/) | BoringVault | core_logic | $97,586.08 | Verified native implementation with $97,586.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9fb7e...6dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | GaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | InstitutionalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | NonRestakingWithdrawalCredentialsFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | PUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | vlPUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=185

Fork inheritance lineage and inherited audits are included when available.
