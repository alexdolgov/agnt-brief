# Agentic Audit Brief: Copump

## Project Overview

- Project: Copump (`copump`)
- Website: [https://copump.xyz/](https://copump.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.153Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: celo, linea, sonic
- Contract surface: 4 unique implementations (20 raw deployments)
- DeFi Llama TVL: $1,572.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 8 project-authored contract(s) across 3 chain(s); built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/4 (100.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/4
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 20
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 100.0% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Copump | unknown | celo | n/a | 14 deployments: celo [`0x045af9...22706d`](./contracts/celo-42220/0x045af95caabb5971183c411abd7c81f2e122706d/); celo `0x38fea0...feb590`; celo `0x644ee3...7f96ce`; celo `0x7657a1...3bd2bf`; celo `0x90b4b1...e5c607`; celo `0x95e483...56f5bb`; celo `0xc58788...a04362`; celo `0xcd463d...5a4322`; celo `0xf041b6...1533d7`; linea [`0x045af9...22706d`](./contracts/linea-59144/0x045af95caabb5971183c411abd7c81f2e122706d/); linea `0x38fea0...feb590`; linea `0xb2af16...6c2604`; linea `0xbef631...67115b`; linea `0xc58788...a04362` | ✅ Audited |
| CopumpCelo | unknown | celo | n/a | [`0x797357...af1655`](./contracts/celo-42220/0x797357f76042d76523848ef9abb5e2e5c1af1655/) | ✅ Audited |
| CopumpSyncSwap | unknown | linea | n/a | 4 deployments: linea [`0x2b2339...a45e4e`](./contracts/linea-59144/0x2b23394b8583f8829fcf3880f00ceebc82a45e4e/); linea `0x38ab36...ce134e`; linea `0x44e7a3...56c06e`; linea `0xa74e55...205036` | ✅ Audited |
| CopumpUniswap | unknown | sonic | n/a | [`0xbef631...67115b`](./contracts/sonic-146/0xbef63121a00916d88c4558f2a92f7d931c67115b/) | ✅ Audited |

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
| [aura.pdf](https://copump.xyz/audits/aura.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [hashlock.pdf](https://copump.xyz/audits/hashlock.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 4 | n/a |
| [docs.google.com/document/d/1uPOgfxeo3xUsdXogh6SqOCuIHXHMa3ZFsxKyGCGwee4/edit](https://docs.google.com/document/d/1uPOgfxeo3xUsdXogh6SqOCuIHXHMa3ZFsxKyGCGwee4/edit) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Zero-match audit list:

- [12943] docs.google.com/document/d/1uPOgfxeo3xUsdXogh6SqOCuIHXHMa3ZFsxKyGCGwee4/edit

Fork inheritance lineage and inherited audits are included when available.
