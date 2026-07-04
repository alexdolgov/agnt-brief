# Agentic Audit Brief: Obol

## Project Overview

- Project: Obol (`obol`)
- Website: [https://obol.org/](https://obol.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.036Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $553,018,074.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Staking Pool. Structurally: 6 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositContract | unknown | ethereum | n/a | [`0x000000...7705fa`](./contracts/ethereum-1/0x00000000219ab540356cbb839cbe05303d7705fa/) | ⚠️ Unaudited |
| ObolOverwhelmingSupportAutoDelegate | unknown | ethereum | n/a | [`0xca2885...579158`](./contracts/ethereum-1/0xca28852b6fc15ebd95b17c875d5eb14b08579158/) | ⚠️ Unaudited |
| ObolStaker | unknown | ethereum | n/a | [`0x306410...004259`](./contracts/ethereum-1/0x30641013934ec7625c9e73a4d63aab4201004259/) | ⚠️ Unaudited |
| ObolToken | unknown | ethereum | n/a | [`0x0b0100...29d5f7`](./contracts/ethereum-1/0x0b010000b7624eb9b3dfbc279673c76e9d29d5f7/) | ⚠️ Unaudited |
| RebasingStakedObol | unknown | ethereum | n/a | [`0x1932e8...0e8bea`](./contracts/ethereum-1/0x1932e815254c53b3ecd81cecf252a5ac7f0e8bea/) | ⚠️ Unaudited |
| TransferRewardNotifier | unknown | ethereum | n/a | [`0x384dd8...2d8802`](./contracts/ethereum-1/0x384dd81047f88ee35de75da1149943b8e62d8802/) | ⚠️ Unaudited |

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
| [Sayfer_2024-03_Penetration_Testing_CFD.pdf](https://github.com/ObolNetwork/obol-security/blob/main/audits/Sayfer_2024-03_Penetration_Testing_CFD.pdf) | Sayfer | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf (also discovered via alternate URL)](https://github.com/ObolNetwork/obol-security/blob/main/audits/Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [charon_quantstamp_audit.pdf](https://github.com/ObolNetwork/obol-security/blob/main/audits/charon_quantstamp_audit.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [obront_solidity_assessment.pdf](https://github.com/ObolNetwork/obol-security/blob/main/audits/obront_solidity_assessment.pdf) | obront | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [charon_quantstamp_assessment.pdf](https://obol.org/charon_quantstamp_assessment.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2025 - Obol Splits V2 Audit - Nethermind.pdf](https://github.com/ObolNetwork/obol-splits/blob/main/audit/2025%20-%20Obol%20Splits%20V2%20Audit%20-%20Nethermind.pdf) | Nethermind Security | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [2025 - Obol Splits V3 Audit - Nethermind.pdf](https://github.com/ObolNetwork/obol-splits/blob/main/audit/2025%20-%20Obol%20Splits%20V3%20Audit%20-%20Nethermind.pdf) | Nethermind Security | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DKG_issues_lido_clusters.pdf](https://github.com/ObolNetwork/obol-security/blob/main/postmortems/DKG_issues_lido_clusters.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [charon_sigma_prime_assessment.pdf](https://obol.org/charon_sigma_prime_assessment.pdf) | Quantstamp | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [2023 - Obol Splits V1 Audit - Zach Obront.pdf](https://github.com/ObolNetwork/obol-splits/blob/main/audit/2023%20-%20Obol%20Splits%20V1%20Audit%20-%20Zach%20Obront.pdf) | Zach Obront | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [cantina-solady-report.pdf](https://github.com/Vectorized/solady/blob/main/audits/cantina-solady-report.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21166] Sayfer_2024-03_Penetration_Testing_CFD.pdf
- [21167] Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf
- [21168] charon_quantstamp_audit.pdf
- [21169] obront_solidity_assessment.pdf
- [21171] charon_quantstamp_assessment.pdf
- [21172] 2025 - Obol Splits V2 Audit - Nethermind.pdf
- [21173] 2025 - Obol Splits V3 Audit - Nethermind.pdf
- [21174] DKG_issues_lido_clusters.pdf
- [21175] charon_sigma_prime_assessment.pdf
- [21176] 2023 - Obol Splits V1 Audit - Zach Obront.pdf
- [21177] cantina-solady-report.pdf

Fork inheritance lineage and inherited audits are included when available.
