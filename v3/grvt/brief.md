# Agentic Audit Brief: Grvt

## Project Overview

- Project: Grvt (`grvt`)
- Website: [https://grvt.io/?ref=WCDISXW](https://grvt.io/?ref=WCDISXW)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.123Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 15 unique implementations (21 raw deployments)
- DeFi Llama TVL: $43,740,313.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, ownable2step). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 21
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Strategy | unknown | ethereum | n/a | [`0x1ff873...07a5e4`](./contracts/ethereum-1/0x1ff873538e62ba19cd36ce97e48f6fc84d07a5e4/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| Bridgehub | operational_periphery | ethereum | n/a | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| GRVTBaseToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x633040...2d3af8`](./contracts/ethereum-1/0x633040f0ae46f2e9759c33cc552cda73c52d3af8/); ethereum `0xab3b12...95bb95` | ⚠️ Unaudited |
| GRVTBridgeProxy | operational_periphery | ethereum | n/a | [`0xe17aed...113a65`](./contracts/ethereum-1/0xe17aed2fc55f4a876315376ffa49fe6358113a65/) | ⚠️ Unaudited |
| GRVTL1TreasuryVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11f6ee...a4ef2e`](./contracts/ethereum-1/0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e/); ethereum `0xc95fed...b48f45` | ⚠️ Unaudited |
| GRVTTransactionFilterer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3cd52b...25109a`](./contracts/ethereum-1/0x3cd52b238ac856600b22756133eeb31ecb25109a/); ethereum `0x8319fe...a0f541` | ⚠️ Unaudited |
| L1NativeTokenVault | core_logic | ethereum | n/a | [`0xbed1eb...1111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | ⚠️ Unaudited |
| NativeBridgeGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17cbac...161915`](./contracts/ethereum-1/0x17cbac7631063d8a79ddb5c3fc7c2336f0161915/); ethereum `0xf1d59a...3c599c` | ⚠️ Unaudited |
| NativeBridgeGateway | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x6e93c9...864473`](./contracts/ethereum-1/0x6e93c940830df3ae9a82937b96a9bf7108864473/); ethereum `0xa0b497...761f8d`; ethereum `0xa20697...aebf65` | ⚠️ Unaudited |
| NativeVaultGateway | core_logic | ethereum | n/a | [`0x81ef29...12c7b9`](./contracts/ethereum-1/0x81ef29d82c5232627976d182c0a2be177412c7b9/) | ⚠️ Unaudited |
| PoolInstance | core_logic | ethereum | n/a | [`0x87870b...4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x4e2971...ea36de`](./contracts/ethereum-1/0x4e29715b7ca2569678027c01627d936235ea36de/) | ⚠️ Unaudited |
| VaultBridgeLib | operational_periphery | ethereum | n/a | [`0xff61d6...89a915`](./contracts/ethereum-1/0xff61d6c6e8334d8cf73011c1069b411f4789a915/) | ⚠️ Unaudited |
| VaultStrategyOpsLib | core_logic | ethereum | n/a | [`0xff41bb...c8d86f`](./contracts/ethereum-1/0xff41bb293a6eb4bda4f799137be5aa781dc8d86f/) | ⚠️ Unaudited |

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
| [Audit - Spearbit Report December 14 2025.pdf](https://github.com/gravity-technologies/exchange-contract/blob/main/docs/Audit%20-%20Spearbit%20Report%20December%2014%202025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21266] Audit - Spearbit Report December 14 2025.pdf

Fork inheritance lineage and inherited audits are included when available.
