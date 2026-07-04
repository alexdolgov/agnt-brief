# Agentic Audit Brief: TokenStore

## Project Overview

- Project: TokenStore (`tokenstore`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.539Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 44 unique implementations (44 raw deployments)
- DeFi Llama TVL: $993,871.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (erc20interface, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 44 (2 live, 42 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 44
- Raw deployments: 44
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FreeToken | token | ethereum | n/a | [`0x2f141c...49e4fd`](./contracts/ethereum-1/0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd/) | ⚠️ Unaudited |
| TokenStore | token | ethereum | n/a | [`0x1ce7ae...ee33d8`](./contracts/ethereum-1/0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x048440...00eb7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14d368...a23491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1808ae...fbcf65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dee6e...4f6761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x218e63...1862d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23d49c...d7b553` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c893...15b49e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26b29d...386d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a2c98...c22faa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cc87b...e9765a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x357e9f...4a33a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37a978...e60bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450d03...17d389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4741e9...3d1059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x578a0e...c041fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58d9d4...8b6642` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac102...3cde05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b009f...176ffe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dc99c...744310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x773d6c...6a1c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79f17f...4bd9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d36e9...40075e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8efc67...8d96f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x948335...27d584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d1993...4d871b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9035e...7d150f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa958e1...978496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba319...e71172` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae3f72...e01026` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf4236...c16d76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdd086...55f66c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc73b...cca706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcddee1...1f884a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd28807...a2a64f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2b15e...214019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe175d6...f6b5db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6f6d6...01a7a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee9ed2...d539dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf551ca...ddf50b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa9601...e39e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfade8b...7b340b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfeb63f...94c9b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2f141c...49e4fd`](./contracts/ethereum-1/0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd/) | FreeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ce7ae...ee33d8`](./contracts/ethereum-1/0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8/) | TokenStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
