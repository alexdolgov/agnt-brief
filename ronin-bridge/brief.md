# Agentic Audit Brief: Ronin Bridge

⚠️ Lifecycle status: DEAD - TVL changed 5.5% over 90 days

## Project Overview

- Project: Ronin Bridge (`ronin-bridge`)
- Website: [https://app.roninchain.com/bridge](https://app.roninchain.com/bridge)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-14T00:01:31.105Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: ethereum
- Contract surface: 15 unique implementations (18 raw deployments)
- DeFi Llama TVL: $3,720,579.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

The Ronin Bridge is a canonical bridge enabling asset transfers between the Ronin sidechain and Ethereum mainnet. It uses a gateway contract on Ethereum to lock and release tokens, secured by a validator set.

### Architecture

The Ronin Bridge family relies on the RoninValidator contract for validator set management and signature verification. The CREATE2 factory is a shared infrastructure component for deploying contracts deterministically.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 15
- Raw deployments: 18
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ARMProxy | unknown | ethereum | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ⚠️ Unaudited |
| BridgeMigration | operational_periphery | ethereum | [`0x972e56...dd5c1b`](./contracts/ethereum-1/0x972e563f4768047baef02cc0bc5d18b2cbdd5c1b/) | ⚠️ Unaudited |
| GovernanceAdmin | unknown | ethereum | [`0x661e14...6cbc8c`](./contracts/ethereum-1/0x661e14a43173191d65951fbf7285749f416cbc8c/) | ⚠️ Unaudited |
| MainchainGatewayV2 | unknown | ethereum | 2 deployments: ethereum [`0x2dba72...39af73`](./contracts/ethereum-1/0x2dba725f0a3485382a7f125a31cbf4361539af73/); ethereum `0x71356e...24cd05` | ⚠️ Unaudited |
| MainchainGatewayV3 | unknown | ethereum | 2 deployments: ethereum [`0x5019d4...9e4e69`](./contracts/ethereum-1/0x5019d41b0737e39b51fd6da4859f3e27579e4e69/); ethereum `0x641928...a9af08` | ⚠️ Unaudited |
| RoninValidator | unknown | ethereum | 2 deployments: ethereum [`0x9ecbb8...4875ba`](./contracts/ethereum-1/0x9ecbb8dbff5d32643fe308b399cef26d384875ba/); ethereum `0xd5c2fb...b3c3b1` | ⚠️ Unaudited |
| Router | adapter | ethereum | [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenPoolFactory | registry | ethereum | [`0x17d8a4...28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1002ce...268777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23c3f4...52ac92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28af65...3c945c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb44f35...222933` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd8907...dbe786` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x972e56...dd5c1b`](./contracts/ethereum-1/0x972e563f4768047baef02cc0bc5d18b2cbdd5c1b/) | BridgeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x661e14...6cbc8c`](./contracts/ethereum-1/0x661e14a43173191d65951fbf7285749f416cbc8c/) | GovernanceAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dba72...39af73`](./contracts/ethereum-1/0x2dba725f0a3485382a7f125a31cbf4361539af73/) | MainchainGatewayV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5019d4...9e4e69`](./contracts/ethereum-1/0x5019d41b0737e39b51fd6da4859f3e27579e4e69/) | MainchainGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | TokenAdminRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8a4...28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | TokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
