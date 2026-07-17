# Agentic Audit Brief: Sai

## Project Overview

- Project: Sai (`sai`)
- Website: [https://sai.fun/](https://sai.fun/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.869Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $184,380.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConfluxOFT | unknown | ethereum | n/a | [`0xc16977205c53cd854136031bd2128f75d6ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ⚠️ Unaudited |
| CreditMessagingMintableBurnable | unknown | ethereum | n/a | [`0x807026a12e1a782426b538b98ca358a914cf07aa`](./contracts/ethereum-1/0x807026a12e1a782426b538b98ca358a914cf07aa/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | ethereum | n/a | [`0x0829f361a05d993d5ceb035ca6df3446b060970b`](./contracts/ethereum-1/0x0829f361a05d993d5ceb035ca6df3446b060970b/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5`](./contracts/ethereum-1/0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5/) | ⚠️ Unaudited |
| MultiCallUtils | unknown | ethereum | n/a | [`0x9895d81bb462a195b4922ed7de0e3acd007c32cb`](./contracts/ethereum-1/0x9895d81bb462a195b4922ed7de0e3acd007c32cb/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc16977205c53cd854136031bd2128f75d6ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ConfluxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x807026a12e1a782426b538b98ca358a914cf07aa`](./contracts/ethereum-1/0x807026a12e1a782426b538b98ca358a914cf07aa/) | CreditMessagingMintableBurnable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0829f361a05d993d5ceb035ca6df3446b060970b`](./contracts/ethereum-1/0x0829f361a05d993d5ceb035ca6df3446b060970b/) | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5`](./contracts/ethereum-1/0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9895d81bb462a195b4922ed7de0e3acd007c32cb`](./contracts/ethereum-1/0x9895d81bb462a195b4922ed7de0e3acd007c32cb/) | MultiCallUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
