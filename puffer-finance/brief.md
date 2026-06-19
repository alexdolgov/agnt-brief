# Agentic Audit Brief: Puffer Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 27.1% over 90 days

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:34.886Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum
- Contract surface: 21 unique implementations (28 raw deployments)
- DeFi Llama TVL: $46,525,430.47
- On-chain TVL (included contracts): $104,704.99
- TVL by chain: Ethereum $104,704.99

## Project Description

Puffer Finance is a broader Ethereum infrastructure protocol suite. Its current product families include Liquid Restaking for ETH/restaking exposure, UniFi as a based rollup/L2 product, Puffer Preconf as an EigenLayer-based preconfirmation service, and Puffer Institutional for staking/restaking infrastructure. Any vault, reward-management, token/governance, bridge, or UniFi-related contract surfaces should be scoped explicitly to these product families or excluded with rationale.

### Architecture

Puffer Stake's PufferVaultV5 interacts with Puffer Vaults' BoringVault and AccountantWithRateProviders to manage staked ETH and distribute rewards. Puffer UniFi's BoringVault may share similar infrastructure for restaking operations.

## Contract Surface Quality

- Indexed contracts: 148; live-surface contracts included: 28 (24 live, 4 unknown).
- Excluded by liveness: 85 inactive, 35 singleton, 0 uninitialized.
- Deployment units: 5/28 live.
- Detected codebases: none
- Unverified dependencies: 6/33.

## Audit Coverage Summary

- Verified implementations audited: 1/21 (4.8%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 28
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $104,704.99
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 4.8% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $104,704.99 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blocksec | Tier 2 | 1 | 4.8% | 2024-04 |
| Creed | Tier 2 | 1 | 4.8% | 2024-05 |
| Nethermind | Tier 2 | 1 | 4.8% | 2024-04 |
| SlowMist | Tier 1 | 1 | 4.8% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GuardianModule | governance | ethereum | n/a | [`0x628b18...a7ccf2`](./contracts/ethereum-1/0x628b183f248a142a598aa2dcccd6f7e480a7ccf2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/); ethereum `0x196ead...bd3dcc`; ethereum `0x82c40e...c7cab4` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa9fb7e...6dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/); ethereum `0xe0bdb7...b7e3be` | ⚠️ Unaudited |
| Clock | unknown | ethereum | unit-37599 | [`0x8bcdf6...cc26eb`](./contracts/ethereum-1/0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb/) | ⚠️ Unaudited |
| DAO | unknown | ethereum | unit-37595 | [`0x5dea8e...55b23f`](./contracts/ethereum-1/0x5dea8e499b05de8f86e7521f039770268055b23f/) | ⚠️ Unaudited |
| ExitQueue | operational_periphery | ethereum | unit-37607 | [`0xd9c2d3...e4a455`](./contracts/ethereum-1/0xd9c2d314e29f1940d2a65a691881f0950fe4a455/) | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | ethereum | n/a | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-37589 (3 proxies) | 3 deployments: ethereum [`0x1ba8e3...620df4`](./contracts/ethereum-1/0x1ba8e3aa853f73ae8093e26b7b8f2520c3620df4/); ethereum `0x446d4d...86cb2a`; ethereum `0xc0896a...55580d` | ⚠️ Unaudited |
| InstitutionalVault | core_logic | ethereum | n/a | [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | ⚠️ Unaudited |
| Lock | unknown | ethereum | unit-37588 | [`0x1b6ec2...29965e`](./contracts/ethereum-1/0x1b6ec227cebec25118270efbb4b67642fc29965e/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | unit-37602 | [`0xa303c4...f73a0d`](./contracts/ethereum-1/0xa303c435563a4544a84e26501f4666346ff73a0d/) | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | ethereum | n/a | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | ⚠️ Unaudited |
| pufETHAdapter | adapter | ethereum | n/a | [`0xa4931a...f97b18`](./contracts/ethereum-1/0xa4931a9f9aaf79057334371d6f62164743f97b18/) | ⚠️ Unaudited |
| PUFFER | unknown | ethereum | n/a | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | ⚠️ Unaudited |
| PUFFERAdapter | adapter | ethereum | n/a | [`0x3ea9bb...edd83f`](./contracts/ethereum-1/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f/) | ⚠️ Unaudited |
| QuadraticIncreasingEscrow | operational_periphery | ethereum | unit-37604 | [`0xaaab55...3a9196`](./contracts/ethereum-1/0xaaab5528aff964ceac972e39c2357c2d503a9196/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-37605 | [`0xb33f87...ca78c4`](./contracts/ethereum-1/0xb33f87f2486165c59b735b7c8b3f5489bfca78c4/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x074364...182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/); ethereum `0x08eb2e...8a1d53`; ethereum `0x5d3fb4...1b54dd` | ⚠️ Unaudited |
| vlPUFFER | unknown | ethereum | n/a | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | unit-37603 | [`0xa55ed5...363ce7`](./contracts/ethereum-1/0xa55ed5808aecdf23ae3782c1443185f5d2363ce7/) | ⚠️ Unaudited |
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
| ethereum | [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/) | BoringVault | core_logic | $104,704.99 | Verified native implementation with $104,704.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9fb7e...6dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | GaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | InstitutionalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | NonRestakingWithdrawalCredentialsFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4931a...f97b18`](./contracts/ethereum-1/0xa4931a9f9aaf79057334371d6f62164743f97b18/) | pufETHAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | PUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ea9bb...edd83f`](./contracts/ethereum-1/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f/) | PUFFERAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x074364...182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | vlPUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=185

Fork inheritance lineage and inherited audits are included when available.
