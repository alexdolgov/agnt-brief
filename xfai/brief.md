# Agentic Audit Brief: Xfai

## Project Overview

- Project: Xfai (`xfai`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.615Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: linea
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $891,262.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 21 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (strategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 15 (3 live, 12 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 14
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdPlusTokenV3 | token | linea | n/a | 2 deployments: linea [`0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd08ea68a908a97220c76d19a6aa9cbde4376` | ⚠️ Unaudited |
| XfaiINFT | token | linea | n/a | [`0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | linea | n/a | `0x2504ab8260217ca6c72132237086274f60a45f0f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7dea1f358def15eafab3466b906eb6872fb89501` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x84e88a4dc58d6e518b1f9f8c3d8a03f43eb58fd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9a8aeb02b90b67e23469bb01ecab86f3512a77f8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa5136ead459f0e61c99cec70fe8f5c24cf3eca26` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xabbe925cf6913a5af177fb735dd817b02da0883f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xabc372a7182951c6282217f2f670f51ed4690996` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb694ce4c96fb60db5ad8b25dff567c59f7a49a4e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb7702244270de655ea53d5e7bacc7a38c477b8f8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd538be6e9026c13d130c9e17d509e69c8bb0ef33` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd58bcb63b33d5f6984da687de2e5b8c61bb0c421` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xed050813a98fcd658ee7a490b2b5925e04fcf5b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://xfai.com/audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/) | UsdPlusTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/) | XfaiINFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3227] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
