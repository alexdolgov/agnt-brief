# Agentic Audit Brief: stand-cash

## Project Overview

- Project: stand-cash (`stand-cash`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.863Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 15 unique implementations (15 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 15 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 15 contract(s).

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
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
- Raw deployments: 15
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| Boardroom | unknown | ethereum | n/a | [`0x7f28d5...695b1e`](./contracts/ethereum-1/0x7f28d5a90b3a0be2e34accdef255ec13cf695b1e/) | ⚠️ Unaudited |
| Bond | unknown | ethereum | n/a | [`0xf2978d...14c747`](./contracts/ethereum-1/0xf2978df893b8f13d5d1244576f714c53b714c747/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | n/a | [`0xacd8f2...5ae2b8`](./contracts/ethereum-1/0xacd8f2523a4613eee78904354187c81bb05ae2b8/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x2bb43b...0d293e`](./contracts/ethereum-1/0x2bb43b2e0fea3fa2bbadbf03fbb5c1e5950d293e/) | ⚠️ Unaudited |
| SACAETHPool | unknown | ethereum | n/a | [`0x82fb0c...ef17c0`](./contracts/ethereum-1/0x82fb0cff19e2060e912805fe3496bc878eef17c0/) | ⚠️ Unaudited |
| SACBACPool | unknown | ethereum | n/a | [`0x4e4c96...740332`](./contracts/ethereum-1/0x4e4c96b68dd328ee3aaa4b7320dd86e21d740332/) | ⚠️ Unaudited |
| SACDAIPool | unknown | ethereum | n/a | [`0xbd3316...723cf4`](./contracts/ethereum-1/0xbd3316c31c48a3cd9a014a8315d05356c5723cf4/) | ⚠️ Unaudited |
| SACESDPool | unknown | ethereum | n/a | [`0xeae940...b5f850`](./contracts/ethereum-1/0xeae9402b0cdd6ef6a7d8f511f03a655ed6b5f850/) | ⚠️ Unaudited |
| SACUSDCPool | unknown | ethereum | n/a | [`0xfda192...c14e56`](./contracts/ethereum-1/0xfda19204c625dd82b0066a18f218179778c14e56/) | ⚠️ Unaudited |
| SACUSDTPool | unknown | ethereum | n/a | [`0xf9bb98...c86166`](./contracts/ethereum-1/0xf9bb984980e8b503cd9f365101c16e071ec86166/) | ⚠️ Unaudited |
| Share | unknown | ethereum | n/a | [`0x4c38d0...542043`](./contracts/ethereum-1/0x4c38d0e726b6c86f64c1b281348e725973542043/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xaaaaff...193796`](./contracts/ethereum-1/0xaaaaffb279674de45221c89caedffa5977193796/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0xa769e2...3b5c6f`](./contracts/ethereum-1/0xa769e25ffd8323c60175d446f2a7e407de3b5c6f/) | ⚠️ Unaudited |
| USDTSACLPTokenSharePool | unknown | ethereum | n/a | [`0x0f14a4...8ecf0e`](./contracts/ethereum-1/0x0f14a4880b7bc3fc926499df3ab32c72828ecf0e/) | ⚠️ Unaudited |
| USDTSASLPTokenSharePool | unknown | ethereum | n/a | [`0x05a27c...f1d5aa`](./contracts/ethereum-1/0x05a27c63adb54faee48da03d7d10f04dfff1d5aa/) | ⚠️ Unaudited |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
