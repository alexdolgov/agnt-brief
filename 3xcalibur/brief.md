# Agentic Audit Brief: 3xcalibur

⚠️ Lifecycle status: DEAD - TVL dropped 5.6% over 90 days

## Project Overview

- Project: 3xcalibur (`3xcalibur`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T19:16:31.636Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $2,582.17
- On-chain TVL (included contracts): $32,649.55
- TVL by chain: Arbitrum $32,649.55

## Project Description

3xcalibur is a decentralized exchange (DEX) protocol on Arbitrum One, enabling users to swap tokens and provide liquidity. It appears to be a Uniswap V2 fork, as indicated by its adapter registry reference.

### Architecture

The protocol consists of a single product family centered around its token contract, with no additional infrastructure contracts identified in the provided inventory.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $32,649.55
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $32,649.55 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | arbitrum | n/a | [`0xd2568a...d89fcb`](./contracts/arbitrum-42161/0xd2568accd10a4c98e87c44e9920360031ad89fcb/) | ⚠️ Unaudited |
| Claim | unknown | arbitrum | n/a | [`0xeb8fee...b68b11`](./contracts/arbitrum-42161/0xeb8feeb4589c64959d7cbf3c7ec377328ab68b11/) | ⚠️ Unaudited |
| Minter | operational_periphery | arbitrum | n/a | [`0x2513db...c573b0`](./contracts/arbitrum-42161/0x2513db1b4dac06ccb03931321292045fdbc573b0/) | ⚠️ Unaudited |
| SBT | unknown | arbitrum | n/a | [`0xbb6e57...77929d`](./contracts/arbitrum-42161/0xbb6e57f1c0b35298c121b5151d2c7411da77929d/) | ⚠️ Unaudited |
| Voter | unknown | arbitrum | n/a | [`0xe6ccdc...c5e628`](./contracts/arbitrum-42161/0xe6ccdc80c4838b670c94da07e8338589dec5e628/) | ⚠️ Unaudited |
| VoterAux | unknown | arbitrum | n/a | [`0xbe99eb...102e28`](./contracts/arbitrum-42161/0xbe99eb17fe79f98e5865df4f0e0ccff003102e28/) | ⚠️ Unaudited |
| VotingDist | unknown | arbitrum | n/a | [`0x399e66...8ba25f`](./contracts/arbitrum-42161/0x399e66e8d2b9c83351531bdcabb827f73e8ba25f/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | arbitrum | n/a | [`0x50aace...57a4f7`](./contracts/arbitrum-42161/0x50aaced9396405d1410dcb8974a6c30b9757a4f7/) | ⚠️ Unaudited |

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
| [DL audit link](https://2688442826-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdfX5W2ttoTF0UsavgZhT%2Fuploads%2FNiALqEGB39ep1N0BtMU2%2Fomniscia-report_1667586376.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xd2568a...d89fcb`](./contracts/arbitrum-42161/0xd2568accd10a4c98e87c44e9920360031ad89fcb/) | Token | token | $32,649.55 | Verified native implementation with $32,649.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb8fee...b68b11`](./contracts/arbitrum-42161/0xeb8feeb4589c64959d7cbf3c7ec377328ab68b11/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2513db...c573b0`](./contracts/arbitrum-42161/0x2513db1b4dac06ccb03931321292045fdbc573b0/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb6e57...77929d`](./contracts/arbitrum-42161/0xbb6e57f1c0b35298c121b5151d2c7411da77929d/) | SBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe6ccdc...c5e628`](./contracts/arbitrum-42161/0xe6ccdc80c4838b670c94da07e8338589dec5e628/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbe99eb...102e28`](./contracts/arbitrum-42161/0xbe99eb17fe79f98e5865df4f0e0ccff003102e28/) | VoterAux | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x399e66...8ba25f`](./contracts/arbitrum-42161/0x399e66e8d2b9c83351531bdcabb827f73e8ba25f/) | VotingDist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50aace...57a4f7`](./contracts/arbitrum-42161/0x50aaced9396405d1410dcb8974a6c30b9757a4f7/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12602] DL audit link

Fork inheritance lineage and inherited audits are included when available.
