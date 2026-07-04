# Agentic Audit Brief: Canto Lending

## Project Overview

- Project: Canto Lending (`canto-lending`)
- Website: [https://canto.io/lending](https://canto.io/lending)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.426Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: canto, ethereum
- Contract surface: 2 unique implementations (83 raw deployments)
- DeFi Llama TVL: $3,029,500.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 83; live-surface contracts included: 83 (1 live, 82 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 83
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CantoOFTV2 | unknown | ethereum | n/a | [`0x56c03b...b5b220`](./contracts/ethereum-1/0x56c03b8c4fa80ba37f5a7b60caaaef749bb5b220/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | canto | n/a | 82 deployments: canto `0x000000...000000`; canto `0x0355e3...33c2f1`; canto `0x03f734...0b5e5f`; canto `0x04a724...648d9d`; canto `0x04e524...41900c`; canto `0x0c6cc7...39f43c`; canto `0x0e356b...40f2a3`; canto `0x1a4407...fe728c`; canto `0x1d2063...a85aa9`; canto `0x210b88...3d18c6`; canto `0x216400...718c8b`; canto `0x252631...7e31d5`; canto `0x260fcd...89a571`; canto `0x2bdf6c...bd964b`; canto `0x2db30a...a5c775`; canto `0x2fd02c...e219c6`; canto `0x2fed02...75f57c`; canto `0x308386...fb7b19`; canto `0x35db1f...7df833`; canto `0x395e6c...579fe3`; canto `0x3bee0a...80d0d8`; canto `0x3c96dc...49b16b`; canto `0x40e41d...9678b2`; canto `0x45bafa...20589b`; canto `0x463e7d...74417a`; canto `0x46970b...18c2b8`; canto `0x4777dc...49928c`; canto `0x477eaf...57346f`; canto `0x4ced98...bd4228`; canto `0x4e71a2...e1e503`; canto `0x4f6dcf...5378aa`; canto `0x4fc300...e88b40`; canto `0x56c03b...b5b220`; canto `0x5e23dc...4bcc5c`; canto `0x5fd55a...7ff687`; canto `0x617383...bd277a`; canto `0x637490...5a77c1`; canto `0x63c8fe...b03f67`; canto `0x648a5a...8e402d`; canto `0x6b46ba...7315a9`; canto `0x760a17...10570c`; canto `0x79ecce...90ec08`; canto `0x80b5a3...87adcd`; canto `0x826551...d7a07b`; canto `0x830b98...ec6030`; canto `0x831f74...fa44ed`; canto `0x85156b...9bd083`; canto `0x897709...a8d6f8`; canto `0x905d3d...06718b`; canto `0x90fccb...eb961b`; canto `0x9160c5...97d5b7`; canto `0x9290c8...793618`; canto `0x94d288...bbcecd`; canto `0x9514c0...5c231f`; canto `0x957199...e7228c`; canto `0xa252ee...825a8e`; canto `0xa51436...7fb77e`; canto `0xb2c551...d1dc81`; canto `0xb49a39...b503e3`; canto `0xb65ec5...0ca488`; canto `0xbed263...26e190`; canto `0xc03955...12af22`; canto `0xc0ce84...7432f3`; canto `0xc0d657...322557`; canto `0xc51534...df3566`; canto `0xca0323...96410a`; canto `0xca11bd...76ca11`; canto `0xd567b3...a05e75`; canto `0xd5dbf5...a4d4cf`; canto `0xd6a97e...580800`; canto `0xdb91f7...ead2db`; canto `0xde59f0...89ca2e`; canto `0xe38706...c1cfba`; canto `0xe536cf...1a2c1a`; canto `0xebe265...d6c36d`; canto `0xeceeef...898265`; canto `0xecf044...095b44`; canto `0xee6024...49504c`; canto `0xf0cd6b...16b49f`; canto `0xf1f89d...24459c`; canto `0xf301c9...93f37f`; canto `0xfb8255...1df03b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/audits/2022-06-canto-contest](https://code4rena.com/audits/2022-06-canto-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2022-06-canto-v2-contest](https://code4rena.com/audits/2022-06-canto-v2-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2022-07-canto](https://code4rena.com/reports/2022-07-canto) | Code4rena | Contest | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2021-08-gravitybridge](https://code4rena.com/reports/2021-08-gravitybridge) | Code4rena | Contest | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2761] code4rena.com/audits/2022-06-canto-contest
- [2762] code4rena.com/audits/2022-06-canto-v2-contest
- [2763] code4rena.com/reports/2022-07-canto
- [14465] code4rena.com/reports/2021-08-gravitybridge

Fork inheritance lineage and inherited audits are included when available.
