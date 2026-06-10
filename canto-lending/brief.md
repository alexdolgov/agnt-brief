# Agentic Audit Brief: Canto Lending

⚠️ Lifecycle status: DECLINING - TVL dropped 0.5% over 90 days

## Project Overview

- Project: Canto Lending (`canto-lending`)
- Website: [https://canto.io/lending](https://canto.io/lending)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:01.250Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: canto, ethereum
- Contract surface: 84 unique implementations (84 raw deployments)
- DeFi Llama TVL: $3,025,530.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canto Lending is a decentralized lending protocol deployed and tracked on Canto. The Ethereum CantoOFTV2 and CNoteOFT entries are cross-chain token contracts listed separately and should not be described as Ethereum lending markets without supporting documentation. The project appears Compound-inspired, but unsupported claims about CantoOFTV2 being a lending market asset or deployer patterns proving a unified deployment should be omitted.

### Architecture

The Canto Lending family uses the CantoOFTV2 token (from the Tokens family) as one of its market assets, integrating the cross-chain token into the lending pool. Both families share the same deployer address pattern, indicating a unified protocol deployment.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 82
- Unique implementations: 84
- Raw deployments: 84
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CantoOFTV2 | unknown | ethereum | [`0x56c03b...b5b220`](./contracts/ethereum-1/0x56c03b8c4fa80ba37f5a7b60caaaef749bb5b220/) | ⚠️ Unaudited |
| CNoteOFT | unknown | ethereum | [`0xebe265...d6c36d`](./contracts/ethereum-1/0xebe265c9299d0c879bcc2a76948511ba6ed6c36d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (82)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | canto | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x0355e3...33c2f1` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x03f734...0b5e5f` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x04a724...648d9d` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x04e524...41900c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x0c6cc7...39f43c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x0e356b...40f2a3` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x1a4407...fe728c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x1d2063...a85aa9` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x210b88...3d18c6` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x216400...718c8b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x252631...7e31d5` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x260fcd...89a571` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x2bdf6c...bd964b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x2db30a...a5c775` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x2fd02c...e219c6` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x2fed02...75f57c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x308386...fb7b19` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x35db1f...7df833` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x395e6c...579fe3` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x3bee0a...80d0d8` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x3c96dc...49b16b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x40e41d...9678b2` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x45bafa...20589b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x463e7d...74417a` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x46970b...18c2b8` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x4777dc...49928c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x477eaf...57346f` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x4ced98...bd4228` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x4e71a2...e1e503` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x4f6dcf...5378aa` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x4fc300...e88b40` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x56c03b...b5b220` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x5e23dc...4bcc5c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x5fd55a...7ff687` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x617383...bd277a` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x637490...5a77c1` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x63c8fe...b03f67` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x648a5a...8e402d` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x6b46ba...7315a9` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x760a17...10570c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x79ecce...90ec08` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x80b5a3...87adcd` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x826551...d7a07b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x830b98...ec6030` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x831f74...fa44ed` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x85156b...9bd083` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x897709...a8d6f8` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x905d3d...06718b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x90fccb...eb961b` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x9160c5...97d5b7` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x9290c8...793618` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x94d288...bbcecd` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x9514c0...5c231f` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x957199...e7228c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xa252ee...825a8e` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xa51436...7fb77e` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xb2c551...d1dc81` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xb49a39...b503e3` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xb65ec5...0ca488` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xbed263...26e190` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xc03955...12af22` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xc0ce84...7432f3` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xc0d657...322557` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xc51534...df3566` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xca0323...96410a` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xca11bd...76ca11` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xd567b3...a05e75` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xd5dbf5...a4d4cf` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xd6a97e...580800` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xdb91f7...ead2db` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xde59f0...89ca2e` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xe38706...c1cfba` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xe536cf...1a2c1a` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xebe265...d6c36d` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xeceeef...898265` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xecf044...095b44` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xee6024...49504c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xf0cd6b...16b49f` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xf1f89d...24459c` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xf301c9...93f37f` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xfb8255...1df03b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [Canto open audit contest 1 ]()](https://code4rena.com/audits/2022-06-canto-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [* [Canto open audit contest 2]() based on mitigations from contest 1](https://code4rena.com/audits/2022-06-canto-v2-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [* [Canto audit 3: Solo audit by Ghoul.sol]() based on mitigations from contest 2](https://code4rena.com/reports/2022-07-canto) | Code4rena | Contest | 2022-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x56c03b...b5b220`](./contracts/ethereum-1/0x56c03b8c4fa80ba37f5a7b60caaaef749bb5b220/) | CantoOFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebe265...d6c36d`](./contracts/ethereum-1/0xebe265c9299d0c879bcc2a76948511ba6ed6c36d/) | CNoteOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2761] * [Canto open audit contest 1 ]()
- [2762] * [Canto open audit contest 2]() based on mitigations from contest 1
- [2763] * [Canto audit 3: Solo audit by Ghoul.sol]() based on mitigations from contest 2

Fork inheritance lineage and inherited audits are included when available.
