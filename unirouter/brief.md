# Agentic Audit Brief: UniRouter

## Project Overview

- Project: UniRouter (`unirouter`)
- Website: [https://www.unirouter.io](https://www.unirouter.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.839Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc, mode
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $195,297,469.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 7 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (pausable, accesscontrol, reentrancyguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (1 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| BridgeConfig | unknown | mode | n/a | [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/mode-34443/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | ⚠️ Unaudited |
| BridgeEndpoint | unknown | mode | n/a | [`0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`](./contracts/mode-34443/0x79d1c91053baceced5c796ab8a765e4d5ab38e8a/) | ⚠️ Unaudited |
| BridgeRegistry | unknown | mode | n/a | [`0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`](./contracts/mode-34443/0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c/) | ⚠️ Unaudited |
| BridgeToken | unknown | mode | n/a | [`0x0d3c781313b1d4abbb45459621f0168826a6cf07`](./contracts/mode-34443/0x0d3c781313b1d4abbb45459621f0168826a6cf07/) | ⚠️ Unaudited |
| MintableERC20 | unknown | bsc | n/a | [`0x2a3dc2d5daf9c8c46c954b8669f4643c6b1c081a`](./contracts/bsc-56/0x2a3dc2d5daf9c8c46c954b8669f4643c6b1c081a/) | ⚠️ Unaudited |
| MultisigWallet | unknown | mode | n/a | [`0x4869f4ec844cd3383f8261affcf29b23182f480c`](./contracts/mode-34443/0x4869f4ec844cd3383f8261affcf29b23182f480c/) | ⚠️ Unaudited |
| TimeLock | unknown | mode | n/a | [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/mode-34443/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | ⚠️ Unaudited |

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
| [spaces/m8dOQHT387PxkVLaoN6a/uploads/8Vvtim1HlGGbKN8HHhiT/UniRouter Audit Report.pdf](https://474160993-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fm8dOQHT387PxkVLaoN6a%2Fuploads%2F8Vvtim1HlGGbKN8HHhiT%2FUniRouter%20Audit%20Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/mode-34443/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | BridgeConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`](./contracts/mode-34443/0x79d1c91053baceced5c796ab8a765e4d5ab38e8a/) | BridgeEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`](./contracts/mode-34443/0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c/) | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0d3c781313b1d4abbb45459621f0168826a6cf07`](./contracts/mode-34443/0x0d3c781313b1d4abbb45459621f0168826a6cf07/) | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a3dc2d5daf9c8c46c954b8669f4643c6b1c081a`](./contracts/bsc-56/0x2a3dc2d5daf9c8c46c954b8669f4643c6b1c081a/) | MintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4869f4ec844cd3383f8261affcf29b23182f480c`](./contracts/mode-34443/0x4869f4ec844cd3383f8261affcf29b23182f480c/) | MultisigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/mode-34443/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | TimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21058] spaces/m8dOQHT387PxkVLaoN6a/uploads/8Vvtim1HlGGbKN8HHhiT/UniRouter Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
