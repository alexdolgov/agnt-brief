# Agentic Audit Brief: BounceBit CeDeFi Yield

## Project Overview

- Project: BounceBit CeDeFi Yield (`bouncebit-cedefi-yield`)
- Website: [https://portal.bouncebit.io/](https://portal.bouncebit.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:36.941Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $284,855,549.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 8 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BBOFT | unknown | ethereum | n/a | [`0xd459ec...1073a3`](./contracts/ethereum-1/0xd459eceddafcc1d876a3be7290a2e16e801073a3/) | ⚠️ Unaudited |
| BBTC | unknown | ethereum | n/a | [`0x8b8d92...9d6863`](./contracts/ethereum-1/0x8b8d92bb45ec8225558096f99d6d75c2b49d6863/) | ⚠️ Unaudited |
| BBUSD | unknown | ethereum | n/a | [`0xbc8570...da6eb1`](./contracts/ethereum-1/0xbc8570ae1dae11d8b439fa1845753bef2eda6eb1/) | ⚠️ Unaudited |
| CefiTokenWrapper | unknown | ethereum | n/a | [`0x403f10...757475`](./contracts/ethereum-1/0x403f10c86b4d6f33b0d5163073784f6d9e757475/) | ⚠️ Unaudited |
| CefiTrove | unknown | ethereum | n/a | [`0x69b706...e40116`](./contracts/ethereum-1/0x69b706f1c78a42404f9f2a2d982fe33fc4e40116/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x13b037...4707b2`](./contracts/ethereum-1/0x13b037ab4b9056132cff7bd080b00bcae54707b2/) | ⚠️ Unaudited |
| TokenVestingWallet | unknown | ethereum | n/a | [`0x4756c4...cb580e`](./contracts/ethereum-1/0x4756c41be6212a8ebf1ee0fa951f47bd91cb580e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x035d73...316467`](./contracts/ethereum-1/0x035d73d9a563334bf35e08bfb49ea39ed4316467/) | ⚠️ Unaudited |

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
| [Smart Contract Audit Report](https://docs.bouncebit.io/assets/smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [First BounceBit TVL Audit Report](https://docs.bouncebit.io/assets/first-bouncebit-tvl-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BounceBit-Vault_audit_report_2024-02-09.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [BounceBit BTC TVL Report 20240207.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2F0oZ4vafYh0ye8HRPsgVU%2FBounceBit%20BTC%20TVL%20Report%2020240207.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19615] Smart Contract Audit Report
- [19616] First BounceBit TVL Audit Report
- [19617] BounceBit-Vault_audit_report_2024-02-09.pdf
- [19618] BounceBit BTC TVL Report 20240207.pdf

Fork inheritance lineage and inherited audits are included when available.
