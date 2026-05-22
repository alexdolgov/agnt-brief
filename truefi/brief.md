# Agentic Audit Brief: TrueFi

⚠️ Lifecycle status: DEAD - TVL dropped 4.2% over 90 days

## Project Overview

- Project: TrueFi (`truefi`)
- Website: [https://app.truefi.io/](https://app.truefi.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-22T20:09:37.978Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum
- Contract surface: 8 unique implementations (11 raw deployments)
- DeFi Llama TVL: $15,397,871.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TrueFi is a protocol for uncollateralized lending, enabling borrowers to access credit without posting collateral. It uses on-chain credit assessments and a decentralized governance system to manage lending pools and credit lines.

### Architecture

The TrueFi family's AutomatedLineOfCreditFactory is governed by the Explore Lending Vaults family's GnosisSafeProxy, which controls protocol configuration. The ProxyWrapper acts as a registry and proxy for the factory, linking governance decisions to credit line deployment.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AllowAllLenderVerifier | periphery | arbitrum | [`0x607ced...2fdd4f`](./contracts/arbitrum-42161/0x607cedb42442e206fae3e2cc12afddd7e12fdd4f/) | ⚠️ Unaudited |
| AutomatedLineOfCredit | unknown | arbitrum | 2 deployments: arbitrum [`0x45277f...a46d97`](./contracts/arbitrum-42161/0x45277f7d263c83f8223460621f31774c52a46d97/); arbitrum `0x8626a4...e95d98` | ⚠️ Unaudited |
| AutomatedLineOfCreditFactory | registry | arbitrum | 2 deployments: arbitrum [`0x24d00e...82cbb5`](./contracts/arbitrum-42161/0x24d00e171da01124052a4b13931631ba7482cbb5/); arbitrum `0xca1353...8f62e9` | ⚠️ Unaudited |
| DepositController | governance | arbitrum | [`0xb4c8bf...0fe372`](./contracts/arbitrum-42161/0xb4c8bfd082a47c008ce95dd13314105f6c0fe372/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xdc0175...5d476a`](./contracts/ethereum-1/0xdc0175978ae72383bbfdbe56fed69d3acd5d476a/) | ⚠️ Unaudited |
| OpenTransferController | governance | arbitrum | [`0xa12590...ae177f`](./contracts/arbitrum-42161/0xa1259068ea5252a307ced730d758c2e8d7ae177f/) | ⚠️ Unaudited |
| ProtocolConfig | governance | arbitrum | 2 deployments: arbitrum [`0x5c6753...781dd0`](./contracts/arbitrum-42161/0x5c67531524201d0a774405827ba4c2de15781dd0/); arbitrum `0xbc70fe...823482` | ⚠️ Unaudited |
| WithdrawController | operational_periphery | arbitrum | [`0xee3f9a...3c25e6`](./contracts/arbitrum-42161/0xee3f9add26de00fcc02d4bc0e6d0dbee0e3c25e6/) | ⚠️ Unaudited |

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
| arbitrum | [`0x607ced...2fdd4f`](./contracts/arbitrum-42161/0x607cedb42442e206fae3e2cc12afddd7e12fdd4f/) | AllowAllLenderVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x45277f...a46d97`](./contracts/arbitrum-42161/0x45277f7d263c83f8223460621f31774c52a46d97/) | AutomatedLineOfCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24d00e...82cbb5`](./contracts/arbitrum-42161/0x24d00e171da01124052a4b13931631ba7482cbb5/) | AutomatedLineOfCreditFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb4c8bf...0fe372`](./contracts/arbitrum-42161/0xb4c8bfd082a47c008ce95dd13314105f6c0fe372/) | DepositController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa12590...ae177f`](./contracts/arbitrum-42161/0xa1259068ea5252a307ced730d758c2e8d7ae177f/) | OpenTransferController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c6753...781dd0`](./contracts/arbitrum-42161/0x5c67531524201d0a774405827ba4c2de15781dd0/) | ProtocolConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee3f9a...3c25e6`](./contracts/arbitrum-42161/0xee3f9add26de00fcc02d4bc0e6d0dbee0e3c25e6/) | WithdrawController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
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
