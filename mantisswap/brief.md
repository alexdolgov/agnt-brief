# Agentic Audit Brief: MantisSwap

## Project Overview

- Project: MantisSwap (`mantisswap`)
- Website: [https://mantissa.finance](https://mantissa.finance)
- Lifecycle: active (Tier 0, 94.6% below peak)
- Generated: 2026-06-21T10:08:34.106Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: mode, polygon, polygon-zkevm
- Contract surface: 10 unique implementations (17 raw deployments)
- DeFi Llama TVL: $182,880.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MantisSwap is a decentralized exchange (DEX) protocol that enables users to swap tokens and provide liquidity through automated market maker (AMM) pools. It is governed by a token-based system and operates across multiple chains including Polygon, Mode, and Polygon zkEVM.

### Architecture

The Pool family relies on the Governance family for parameter adjustments and fee settings via MasterMantis. The Treasury family provides secure storage for protocol-owned liquidity and governance tokens, interacting with both Pool and Governance contracts.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 17 (11 live, 6 unknown).
- Excluded by liveness: 42 inactive, 23 singleton, 0 uninitialized.
- Deployment units: 1/10 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 10
- Raw deployments: 17
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | polygon | unit-42272 | [`0x56dc54...b95e71`](./contracts/polygon-137/0x56dc54ddc30bdc43db84b8e59087097805b95e71/) | ⚠️ Unaudited |
| MNT | unknown | polygon | n/a | [`0xe92175...eeae04`](./contracts/polygon-137/0xe92175ea10fc1f59f633c77153e81780a6eeae04/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | 8 deployments: mode [`0x12d41b...d98215`](./contracts/mode-34443/0x12d41b6df938c739f00c392575e3fd9292d98215/); mode `0x4af97f...db3e77`; mode `0x4b3bfc...23e64b`; mode `0x7bcad0...d73ccb`; mode `0x8997e7...d7b448`; mode `0x967f59...11def8`; mode `0xa56b52...caafb4`; mode `0xe8a1ea...ce1820` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x12d41b...d98215` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x375488...e736bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x3b92b5...7073f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x4af97f...db3e77` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x9b7bce...aefe4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xfe825c...3947a8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf45bf7...dfd33d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-MantisSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | 0 | n/a |
| [<table data-card-size="large" data-view="cards"><thead><tr><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Peckshield</strong></td><td><em>(22/11/2022)</em></td><td><a href="https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf">https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf</a></td><td><a href="/files/5Jw9KppreEdOBDDE5osK">/files/5Jw9KppreEdOBDDE5osK</a></td></tr><tr><td><strong>Omniscia</strong></td><td><em>(12/08/2023)</em></td><td><a href="">https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd/</a></td><td><a href="/files/4d9L375DJ6TIHbIJ3yy0">/files/4d9L375DJ6TIHbIJ3yy0</a></td></tr></tbody></table>](https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xe92175...eeae04`](./contracts/polygon-137/0xe92175ea10fc1f59f633c77153e81780a6eeae04/) | MNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=18

Zero-match audit list:

- [13459] PeckShield-Audit-Report-MantisSwap-v1.0.pdf
- [13460] <table data-card-size="large" data-view="cards"><thead><tr><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Peckshield</strong></td><td><em>(22/11/2022)</em></td><td><a href="https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf">https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf</a></td><td><a href="/files/5Jw9KppreEdOBDDE5osK">/files/5Jw9KppreEdOBDDE5osK</a></td></tr><tr><td><strong>Omniscia</strong></td><td><em>(12/08/2023)</em></td><td><a href="">https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd/</a></td><td><a href="/files/4d9L375DJ6TIHbIJ3yy0">/files/4d9L375DJ6TIHbIJ3yy0</a></td></tr></tbody></table>

Fork inheritance lineage and inherited audits are included when available.
