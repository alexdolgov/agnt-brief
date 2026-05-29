# Agentic Audit Brief: Grvt

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.3% over 90 days

## Project Overview

- Project: Grvt (`grvt`)
- Website: [https://grvt.io/?ref=WCDISXW](https://grvt.io/?ref=WCDISXW)
- Lifecycle: unknown (Tier 0, 52.3% below peak)
- Generated: 2026-05-29T08:15:16.899Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 7 unique implementations (12 raw deployments)
- DeFi Llama TVL: $55,387,476.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Grvt is a DeFi protocol on Ethereum that provides a bridge for cross-chain asset transfers and a derivatives platform for perpetual trading. It uses treasury vaults to manage bridged assets and integrates with lending strategies like Aave to generate yield.

### Architecture

The Grvt Bridge family relies on the NativeBridgeGateway to handle cross-chain messages and the GRVTL1TreasuryVault to secure assets. The AaveV3Strategy is used as a supporting contract to deploy vault funds into Aave for yield generation.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 12
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AaveV3Strategy | core_logic | ethereum | [`0x1ff873...07a5e4`](./contracts/ethereum-1/0x1ff873538e62ba19cd36ce97e48f6fc84d07a5e4/) | ⚠️ Unaudited |
| GRVTL1TreasuryVault | operational_periphery | ethereum | 2 deployments: ethereum [`0x11f6ee...a4ef2e`](./contracts/ethereum-1/0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e/); ethereum `0xc95fed...b48f45` | ⚠️ Unaudited |
| NativeBridgeGateway | operational_periphery | ethereum | 5 deployments: ethereum [`0x17cbac...161915`](./contracts/ethereum-1/0x17cbac7631063d8a79ddb5c3fc7c2336f0161915/); ethereum `0x6e93c9...864473`; ethereum `0xa0b497...761f8d`; ethereum `0xa20697...aebf65`; ethereum `0xf1d59a...3c599c` | ⚠️ Unaudited |
| NativeVaultGateway | core_logic | ethereum | [`0x81ef29...12c7b9`](./contracts/ethereum-1/0x81ef29d82c5232627976d182c0a2be177412c7b9/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x4e2971...ea36de`](./contracts/ethereum-1/0x4e29715b7ca2569678027c01627d936235ea36de/) | ⚠️ Unaudited |
| VaultBridgeLib | operational_periphery | ethereum | [`0xff61d6...89a915`](./contracts/ethereum-1/0xff61d6c6e8334d8cf73011c1069b411f4789a915/) | ⚠️ Unaudited |
| VaultStrategyOpsLib | core_logic | ethereum | [`0xff41bb...c8d86f`](./contracts/ethereum-1/0xff41bb293a6eb4bda4f799137be5aa781dc8d86f/) | ⚠️ Unaudited |

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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x11f6ee...a4ef2e`](./contracts/ethereum-1/0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e/) | GRVTL1TreasuryVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81ef29...12c7b9`](./contracts/ethereum-1/0x81ef29d82c5232627976d182c0a2be177412c7b9/) | NativeVaultGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff61d6...89a915`](./contracts/ethereum-1/0xff61d6c6e8334d8cf73011c1069b411f4789a915/) | VaultBridgeLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff41bb...c8d86f`](./contracts/ethereum-1/0xff41bb293a6eb4bda4f799137be5aa781dc8d86f/) | VaultStrategyOpsLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5665] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5666] 0002-metadata-manifest-and-pull-command.md
- [5667] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
