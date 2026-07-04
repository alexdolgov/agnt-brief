# Agentic Audit Brief: Interest Protocol

## Project Overview

- Project: Interest Protocol (`interest-protocol`)
- Website: [https://interestprotocol.io/#/](https://interestprotocol.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:03.153Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $1,181,379.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 35 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 136; live-surface contracts included: 8 (2 live, 6 unknown).
- Excluded by liveness: 128 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 1 | 50.0% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SlowRoll | unknown | ethereum | n/a | [`0xfbd306...cf1d1d`](./contracts/ethereum-1/0xfbd3060fe1ed10c34e236cee837d82f019cf1d1d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchoredViewRelay | unknown | ethereum | n/a | [`0xfde4c9...699bb2`](./contracts/ethereum-1/0xfde4c96c8593536e31f229ea8f37b2ada2699bb2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x107da3...c25e4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78fcf4...a8bd74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa490ce...ecfe54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0701a...0d815e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0cf31...7f5d85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd652db...557e6f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [GFX_IP_Protocol_Audit_Report.pdf](https://gfx.cafe/ip/contracts/-/blob/master/audit/GFX_IP_Protocol_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/gfx-labs/ip-contracts/blob/master/audit/Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2022-11 | stale | Direct | contract_name | 1 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [13289] GFX_IP_Protocol_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
