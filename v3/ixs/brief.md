# Agentic Audit Brief: IXS

## Project Overview

- Project: IXS (`ixs`)
- Website: [https://www.ixs.finance/](https://www.ixs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:14.220Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base, ethereum, polygon
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $160,172.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 9 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (9 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeProxy | unknown | polygon | n/a | [`0x9546a2...cb3ddd`](./contracts/polygon-137/0x9546a22c244497b6fb5338e4ff7c74c5accb3ddd/) | ⚠️ Unaudited |
| IxsGovernanceToken | unknown | ethereum | n/a | [`0xf65dd1...b1f20c`](./contracts/ethereum-1/0xf65dd1b5de5655b56ae8beae49bb2bcb95b1f20c/) | ⚠️ Unaudited |
| IxsSale | unknown | base | n/a | [`0x4f4c18...6fefb6`](./contracts/base-8453/0x4f4c185dee9f069bc0f6a5d51ad39f33fb6fefb6/) | ⚠️ Unaudited |
| IxsToken | unknown | base | n/a | [`0x41d8eb...1a9680`](./contracts/base-8453/0x41d8eb8b8d69c28a3879e93cbb3c4c6b8d1a9680/) | ⚠️ Unaudited |
| IxsTokenAdapter | unknown | base | n/a | [`0x83f081...748a39`](./contracts/base-8453/0x83f08144e7383a81b0efeb87e421cf0da2748a39/) | ⚠️ Unaudited |
| Presale | unknown | ethereum | n/a | [`0x98dc0b...7749e7`](./contracts/ethereum-1/0x98dc0b47ba9338d10b46ef419ef3589b9b7749e7/) | ⚠️ Unaudited |
| SimpleBatch | unknown | polygon | n/a | [`0x11ba4f...6baf87`](./contracts/polygon-137/0x11ba4ff86ba4a0d7cbf3f80f0200e043936baf87/) | ⚠️ Unaudited |
| TitaniumTech | unknown | polygon | n/a | [`0x52a296...02b76f`](./contracts/polygon-137/0x52a29640447db7bae033b349006607829b02b76f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x32714d...558bb9`](./contracts/base-8453/0x32714df9ee6ae513e04902c803e34eef7b558bb9/) | ⚠️ Unaudited |
| WrappedToken | unknown | polygon | n/a | [`0x1ba17c...43a1b8`](./contracts/polygon-137/0x1ba17c639bdaecd8dc4aac37df062d17ee43a1b8/) | ⚠️ Unaudited |

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
| [{% embed url="<>" %}](https://drive.google.com/file/d/1Q8pgZoqs0hju6Cw-27foFLPkr0AHFxVy/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1CTCqCypztxQMvSx4WMTxPNXbLfYc_xqc/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1wd_CsHQBQnfZ-mwAlVBE8hWQC71X-Zwc/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Smart Contract Audits](https://ixs.gitbook.io/ixs-gitbook/other-documentation/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20591] {% embed url="<>" %}
- [20592] {% embed url="<>" %}
- [20593] {% embed url="<>" %}
- [20594] Smart Contract Audits

Fork inheritance lineage and inherited audits are included when available.
