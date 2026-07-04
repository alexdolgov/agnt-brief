# Agentic Audit Brief: NerveBridge

## Project Overview

- Project: NerveBridge (`nervebridge`)
- Website: [https://nerve.network/](https://nerve.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.369Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum, optimism
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $523,698.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 5 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 5 contract(s).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20 | unknown | ethereum | n/a | [`0x8cd6e2...89313b`](./contracts/ethereum-1/0x8cd6e29d3686d24d3c2018cee54621ea0f89313b/) | ⚠️ Unaudited |
| ERC20Minter | unknown | bsc | n/a | [`0x029d42...4c1004`](./contracts/bsc-56/0x029d425438e489895f2dc18442c3df9c214c1004/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | ethereum | n/a | [`0x3758aa...13a6d5`](./contracts/ethereum-1/0x3758aa66cad9f2606f1f501c9cb31b94b713a6d5/) | ⚠️ Unaudited |
| NerveMultiSigWalletII | unknown | bsc | n/a | [`0x3758aa...13a6d5`](./contracts/bsc-56/0x3758aa66cad9f2606f1f501c9cb31b94b713a6d5/) | ⚠️ Unaudited |
| NerveMultiSigWalletIII | unknown | optimism | n/a | [`0x3758aa...13a6d5`](./contracts/optimism-10/0x3758aa66cad9f2606f1f501c9cb31b94b713a6d5/) | ⚠️ Unaudited |

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
| [drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo](https://drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20868] drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo

Fork inheritance lineage and inherited audits are included when available.
