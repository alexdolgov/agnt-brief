# Agentic Audit Brief: Rip.xyz

## Project Overview

- Project: Rip.xyz (`rip.xyz`)
- Website: [https://www.rip.xyz/](https://www.rip.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:47.072Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: hyperliquid
- Contract surface: 9 unique implementations (11 raw deployments)
- DeFi Llama TVL: $907,833.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Automated Strategies. Structurally: 5 project-authored contract(s) across 1 chain(s); 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (erc721enumerable, erc165, erc721uristorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (7 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 5 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 9
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Three Sigma | Tier 2 | 1 | 20.0% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| rHYPURR | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0df4f69cf9417b1817ab9579bf099537a694667b`](./contracts/hyperliquid-999/0x0df4f69cf9417b1817ab9579bf099537a694667b/); hyperliquid `0x533811ca630cba23aedd9a0b044a0f904b79bee7` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Nft | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3c7fd353d32344476d964deda8ea112a9d83b123`](./contracts/hyperliquid-999/0x3c7fd353d32344476d964deda8ea112a9d83b123/); hyperliquid `0x9125e2d6827a00b0f8330d6ef7bef07730bac685` | ⚠️ Unaudited |
| RelayApprovalProxyV3 | unknown | hyperliquid | n/a | [`0xccc88a9d1b4ed6b0eaba998850414b24f1c315be`](./contracts/hyperliquid-999/0xccc88a9d1b4ed6b0eaba998850414b24f1c315be/) | ⚠️ Unaudited |
| Seaport | unknown | hyperliquid | n/a | [`0x0000000000000068f116a894984e2db1123eb395`](./contracts/hyperliquid-999/0x0000000000000068f116a894984e2db1123eb395/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | hyperliquid | n/a | [`0x1f6b7b53623b3039720a186b31ef7f50f0e34420`](./contracts/hyperliquid-999/0x1f6b7b53623b3039720a186b31ef7f50f0e34420/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x6e5f663887826612240e52148d646489d8a1bf77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaa2674954dd6d71bec7a953689c80cd3d168791c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb128271210351cc4d80740f1bf6a65682e8cb154` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc1943026b4238c21e28437abc0089a6f776e1645` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [rHYPURR.pdf](https://rip.xyz/audits/hypurrvault/rHYPURR.pdf) | Three Sigma | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x3c7fd353d32344476d964deda8ea112a9d83b123`](./contracts/hyperliquid-999/0x3c7fd353d32344476d964deda8ea112a9d83b123/) | Nft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xccc88a9d1b4ed6b0eaba998850414b24f1c315be`](./contracts/hyperliquid-999/0xccc88a9d1b4ed6b0eaba998850414b24f1c315be/) | RelayApprovalProxyV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0000000000000068f116a894984e2db1123eb395`](./contracts/hyperliquid-999/0x0000000000000068f116a894984e2db1123eb395/) | Seaport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
