# Agentic Audit Brief: Giveth

## Project Overview

- Project: Giveth (`giveth`)
- Website: [https://giveth.io](https://giveth.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.290Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum, gnosis
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $117,788.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GIV | unknown | ethereum | n/a | [`0x900db999074d9277c5da2a43f252d74366230da0`](./contracts/ethereum-1/0x900db999074d9277c5da2a43f252d74366230da0/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75`](./contracts/gnosis-100/0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | gnosis | n/a | 3 deployments: ethereum `0xbeba1666c62c65e58770376de332891b09461eeb`; gnosis [`0x08ea9f608656a4a775ef73f5b187a2f1ae2ae10e`](./contracts/gnosis-100/0x08ea9f608656a4a775ef73f5b187a2f1ae2ae10e/); gnosis `0xb7189a7ea38fa31210a79fe282aec5736ad5fa57` | ⚠️ Unaudited |

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
| [Giveth GIVeconomy Contracts Code Review.pdf](https://github.com/lastperson/code-reviews/blob/main/Giveth%20GIVeconomy%20Contracts%20Code%20Review.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x900db999074d9277c5da2a43f252d74366230da0`](./contracts/ethereum-1/0x900db999074d9277c5da2a43f252d74366230da0/) | GIV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75`](./contracts/gnosis-100/0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13183] Giveth GIVeconomy Contracts Code Review.pdf

Fork inheritance lineage and inherited audits are included when available.
