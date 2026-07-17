# Agentic Audit Brief: Grvt

## Project Overview

- Project: Grvt (`grvt`)
- Website: [https://grvt.io/?ref=WCDISXW](https://grvt.io/?ref=WCDISXW)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.104Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 16 unique implementations (22 raw deployments)
- DeFi Llama TVL: $43,740,313.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, ownable2step). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/14 (14.3%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/16
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 14.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 12.5% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GRVTBridgeProxy | operational_periphery | ethereum | n/a | [`0xe17aed2fc55f4a876315376ffa49fe6358113a65`](./contracts/ethereum-1/0xe17aed2fc55f4a876315376ffa49fe6358113a65/) | ✅ Audited |
| GRVTBridgeProxy | unknown | ethereum | n/a | [`0xf7b67bddb74b5ed3de49e1a6da4d1d7460f00780`](./contracts/ethereum-1/0xf7b67bddb74b5ed3de49e1a6da4d1d7460f00780/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Strategy | unknown | ethereum | n/a | [`0x1ff873538e62ba19cd36ce97e48f6fc84d07a5e4`](./contracts/ethereum-1/0x1ff873538e62ba19cd36ce97e48f6fc84d07a5e4/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0x23878914efe38d27c4d67ab83ed1b93a74d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| Bridgehub | operational_periphery | ethereum | n/a | [`0x303a465b659cbb0ab36ee643ea362c509eeb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| GRVTBaseToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x633040f0ae46f2e9759c33cc552cda73c52d3af8`](./contracts/ethereum-1/0x633040f0ae46f2e9759c33cc552cda73c52d3af8/); ethereum `0xab3b124052f0389d1cbed221d912026ac995bb95` | ⚠️ Unaudited |
| GRVTL1TreasuryVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e`](./contracts/ethereum-1/0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e/); ethereum `0xc95fedb8bdc763e4ef093d14e8196afafbb48f45` | ⚠️ Unaudited |
| GRVTTransactionFilterer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3cd52b238ac856600b22756133eeb31ecb25109a`](./contracts/ethereum-1/0x3cd52b238ac856600b22756133eeb31ecb25109a/); ethereum `0x8319fede99061c6723c86d366a903e8fa3a0f541` | ⚠️ Unaudited |
| L1NativeTokenVault | core_logic | ethereum | n/a | [`0xbed1eb542f9a5aa6419ff3deb921a372681111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | ⚠️ Unaudited |
| NativeBridgeGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17cbac7631063d8a79ddb5c3fc7c2336f0161915`](./contracts/ethereum-1/0x17cbac7631063d8a79ddb5c3fc7c2336f0161915/); ethereum `0xf1d59a0d1ec7c0b66b9e04bcae0130302b3c599c` | ⚠️ Unaudited |
| NativeBridgeGateway | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x6e93c940830df3ae9a82937b96a9bf7108864473`](./contracts/ethereum-1/0x6e93c940830df3ae9a82937b96a9bf7108864473/); ethereum `0xa0b497d5fe1635a1246273b75e5c34d1f2761f8d`; ethereum `0xa20697e4219884128e0c880825280a4d29aebf65` | ⚠️ Unaudited |
| NativeVaultGateway | core_logic | ethereum | n/a | [`0x81ef29d82c5232627976d182c0a2be177412c7b9`](./contracts/ethereum-1/0x81ef29d82c5232627976d182c0a2be177412c7b9/) | ⚠️ Unaudited |
| PoolInstance | core_logic | ethereum | n/a | [`0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x4e29715b7ca2569678027c01627d936235ea36de`](./contracts/ethereum-1/0x4e29715b7ca2569678027c01627d936235ea36de/) | ⚠️ Unaudited |
| VaultBridgeLib | operational_periphery | ethereum | n/a | [`0xff61d6c6e8334d8cf73011c1069b411f4789a915`](./contracts/ethereum-1/0xff61d6c6e8334d8cf73011c1069b411f4789a915/) | ⚠️ Unaudited |
| VaultStrategyOpsLib | core_logic | ethereum | n/a | [`0xff41bb293a6eb4bda4f799137be5aa781dc8d86f`](./contracts/ethereum-1/0xff41bb293a6eb4bda4f799137be5aa781dc8d86f/) | ⚠️ Unaudited |

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
| [Audit - Spearbit Report December 14 2025.pdf](https://github.com/gravity-technologies/exchange-contract/blob/main/docs/Audit%20-%20Spearbit%20Report%20December%2014%202025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x23878914efe38d27c4d67ab83ed1b93a74d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x303a465b659cbb0ab36ee643ea362c509eeb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | Bridgehub | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x633040f0ae46f2e9759c33cc552cda73c52d3af8`](./contracts/ethereum-1/0x633040f0ae46f2e9759c33cc552cda73c52d3af8/) | GRVTBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e`](./contracts/ethereum-1/0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e/) | GRVTL1TreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cd52b238ac856600b22756133eeb31ecb25109a`](./contracts/ethereum-1/0x3cd52b238ac856600b22756133eeb31ecb25109a/) | GRVTTransactionFilterer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbed1eb542f9a5aa6419ff3deb921a372681111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | L1NativeTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17cbac7631063d8a79ddb5c3fc7c2336f0161915`](./contracts/ethereum-1/0x17cbac7631063d8a79ddb5c3fc7c2336f0161915/) | NativeBridgeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e93c940830df3ae9a82937b96a9bf7108864473`](./contracts/ethereum-1/0x6e93c940830df3ae9a82937b96a9bf7108864473/) | NativeBridgeGateway | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81ef29d82c5232627976d182c0a2be177412c7b9`](./contracts/ethereum-1/0x81ef29d82c5232627976d182c0a2be177412c7b9/) | NativeVaultGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | PoolInstance | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff61d6c6e8334d8cf73011c1069b411f4789a915`](./contracts/ethereum-1/0xff61d6c6e8334d8cf73011c1069b411f4789a915/) | VaultBridgeLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff41bb293a6eb4bda4f799137be5aa781dc8d86f`](./contracts/ethereum-1/0xff41bb293a6eb4bda4f799137be5aa781dc8d86f/) | VaultStrategyOpsLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
