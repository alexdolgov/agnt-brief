# Agentic Audit Brief: OneSwap

## Project Overview

- Project: OneSwap (`oneswap`)
- Website: [https://www.oneswap.net](https://www.oneswap.net)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.642Z
- Pipeline run: v2-2026-07-03-59f8b9
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

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockSend | unknown | ethereum | n/a | [`0x019779...eeac38`](./contracts/ethereum-1/0x01977983a85804f17835f5ea8232bbd9fbeeac38/) | ⚠️ Unaudited |
| OneSwapBuyback | unknown | ethereum | n/a | [`0x28a359...8a5f33`](./contracts/ethereum-1/0x28a359cb732bfb74e77d282ace88e43db28a5f33/) | ⚠️ Unaudited |
| OneSwapFactory | unknown | ethereum | n/a | [`0x5ed3c9...54c8c4`](./contracts/ethereum-1/0x5ed3c9089ed0355bc77cf439dc2ed28c4054c8c4/) | ⚠️ Unaudited |
| OneSwapGov | unknown | ethereum | n/a | [`0xf08255...c57c4f`](./contracts/ethereum-1/0xf0825577c259aa94728310875368f905afc57c4f/) | ⚠️ Unaudited |
| OneSwapPair | unknown | ethereum | n/a | [`0x4e3e08...4a9446`](./contracts/ethereum-1/0x4e3e0852d664b671222384d654d789b2434a9446/) | ⚠️ Unaudited |
| OneSwapRouter | unknown | bsc | n/a | [`0x5ed3c9...54c8c4`](./contracts/bsc-56/0x5ed3c9089ed0355bc77cf439dc2ed28c4054c8c4/) | ⚠️ Unaudited |
| OneSwapToken | unknown | ethereum | n/a | [`0x0b342c...04d5a4`](./contracts/ethereum-1/0x0b342c51d1592c41068d5d4b4da4a68c0a04d5a4/) | ⚠️ Unaudited |

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
| [BEOSIN-Smart contract security audit report-OneSwap.pdf](https://github.com/oneswap/contract_audit_report/blob/master/BEOSIN-Smart%20contract%20security%20audit%20report-OneSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-OneSwap-v1.0.pdf](https://github.com/oneswap/contract_audit_report/blob/master/PeckShield-Audit-Report-OneSwap-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist-Smart Contract Security Audit - OneSwap.pdf](https://github.com/oneswap/contract_audit_report/blob/master/SlowMist-Smart%20Contract%20Security%20Audit%20-%20OneSwap.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24304] BEOSIN-Smart contract security audit report-OneSwap.pdf
- [24305] PeckShield-Audit-Report-OneSwap-v1.0.pdf
- [24306] SlowMist-Smart Contract Security Audit - OneSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
