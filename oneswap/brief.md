# Agentic Audit Brief: OneSwap

## Project Overview

- Project: OneSwap (`oneswap`)
- Website: [https://www.oneswap.net](https://www.oneswap.net)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.987Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc, ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $226,615.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (oneswappool, oneswaperc20).

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/7 (100.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/7
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 7 | 100.0% | 2020-09 |
| PeckShield | Tier 2 | 6 | 85.7% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockSend | unknown | ethereum | n/a | [`0x019779...eeac38`](./contracts/ethereum-1/0x01977983a85804f17835f5ea8232bbd9fbeeac38/) | ✅ Audited |
| OneSwapBuyback | unknown | ethereum | n/a | [`0x28a359...8a5f33`](./contracts/ethereum-1/0x28a359cb732bfb74e77d282ace88e43db28a5f33/) | ✅ Audited |
| OneSwapFactory | unknown | ethereum | n/a | [`0x5ed3c9...54c8c4`](./contracts/ethereum-1/0x5ed3c9089ed0355bc77cf439dc2ed28c4054c8c4/) | ✅ Audited |
| OneSwapGov | unknown | ethereum | n/a | [`0xf08255...c57c4f`](./contracts/ethereum-1/0xf0825577c259aa94728310875368f905afc57c4f/) | ✅ Audited |
| OneSwapPair | unknown | ethereum | n/a | [`0x4e3e08...4a9446`](./contracts/ethereum-1/0x4e3e0852d664b671222384d654d789b2434a9446/) | ✅ Audited |
| OneSwapRouter | unknown | bsc | n/a | [`0x5ed3c9...54c8c4`](./contracts/bsc-56/0x5ed3c9089ed0355bc77cf439dc2ed28c4054c8c4/) | ✅ Audited |
| OneSwapToken | unknown | ethereum | n/a | [`0x0b342c...04d5a4`](./contracts/ethereum-1/0x0b342c51d1592c41068d5d4b4da4a68c0a04d5a4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [BEOSIN-Smart contract security audit report-OneSwap.pdf](https://github.com/oneswap/contract_audit_report/blob/master/BEOSIN-Smart%20contract%20security%20audit%20report-OneSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-OneSwap-v1.0.pdf](https://github.com/oneswap/contract_audit_report/blob/master/PeckShield-Audit-Report-OneSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 6 | high |
| [SlowMist-Smart Contract Security Audit - OneSwap.pdf](https://github.com/oneswap/contract_audit_report/blob/master/SlowMist-Smart%20Contract%20Security%20Audit%20-%20OneSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=20

Fork inheritance lineage and inherited audits are included when available.
