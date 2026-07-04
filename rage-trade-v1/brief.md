# Agentic Audit Brief: Rage Trade v1

## Project Overview

- Project: Rage Trade v1 (`rage-trade-v1`)
- Website: [https://www.rage.trade/](https://www.rage.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.529Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum
- Contract surface: 13 unique implementations (17 raw deployments)
- DeFi Llama TVL: $6.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 18 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (extsload, governable, erc4626upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 13 (10 live, 3 unknown).
- Excluded by liveness: 37 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/8 (12.5%)
- Deployed-live implementations: 10 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 13
- Raw deployments: 17
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 20.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveYieldStrategy | core_logic | arbitrum | n/a | [`0x1d4278...30a068`](./contracts/arbitrum-42161/0x1d42783e7eeacae12ebc315d1d2d0e3c6230a068/) | ✅ Audited |
| DnGmxJuniorVault | core_logic | arbitrum | n/a | [`0x8478ab...5f041e`](./contracts/arbitrum-42161/0x8478ab5064ebac770ddce77e7d31d969205f041e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DnGmxBatchingManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x519eb0...cef63d`](./contracts/arbitrum-42161/0x519eb01fa6ed3d72e96e40770a45b13531cef63d/); arbitrum `0xf2bb80...700913` | ⚠️ Unaudited |
| DnGmxBatchingManagerGlp | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x56ab0c...7832a0`](./contracts/arbitrum-42161/0x56ab0c7038fa586c37ae8f539075c876d07832a0/); arbitrum `0x7bcc45...b3749e` | ⚠️ Unaudited |
| DnGmxRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x29860c...2ed2d9`](./contracts/arbitrum-42161/0x29860c65c6155a7a46d9acb9fd15dd9bbc2ed2d9/); arbitrum `0x96ca30...175d5b` | ⚠️ Unaudited |
| DnGmxSeniorVault | unknown | arbitrum | n/a | [`0xf93050...c2cf36`](./contracts/arbitrum-42161/0xf9305009fba7e381b3337b5fa157936d73c2cf36/) | ⚠️ Unaudited |
| DnGmxTraderHedgeStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x39dfa1...7d07b9`](./contracts/arbitrum-42161/0x39dfa1568e3c9eef6794a328d59dae4a127d07b9/); arbitrum `0x5c2a61...d6b1be` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x90066f...bc28de`](./contracts/arbitrum-42161/0x90066f5eeabd197433411e8dec935a2d28bc28de/) | ⚠️ Unaudited |
| RageTradeFactory | unknown | arbitrum | n/a | [`0x14fcc6...052c12`](./contracts/arbitrum-42161/0x14fcc60f9be14087fac729df48ff33f2b3052c12/) | ⚠️ Unaudited |
| SettlementTokenOracle | unknown | arbitrum | n/a | [`0x426087...5b3a6d`](./contracts/arbitrum-42161/0x426087ce9911c1e009a6abbce7a86789ae5b3a6d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x6ff1a2...ac535d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8490a...36a226` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf01d13...5fa4cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/RageTrade/core/blob/159a94ca9fa75a7c1b3acf7191c2c87ebd746691/audits/cmichelio/audit.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |
| [drive.google.com/file/d/1rgTgB3Zs1A6YhssF4jIsVS5l0Lr8sl1r/view](https://drive.google.com/file/d/1rgTgB3Zs1A6YhssF4jIsVS5l0Lr8sl1r/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [docs.google.com/document/d/1joxRpf1D-KoACf7h1xnB72YkPYKxd27oDX-9axTbIQw/edit](https://docs.google.com/document/d/1joxRpf1D-KoACf7h1xnB72YkPYKxd27oDX-9axTbIQw/edit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x519eb0...cef63d`](./contracts/arbitrum-42161/0x519eb01fa6ed3d72e96e40770a45b13531cef63d/) | DnGmxBatchingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x56ab0c...7832a0`](./contracts/arbitrum-42161/0x56ab0c7038fa586c37ae8f539075c876d07832a0/) | DnGmxBatchingManagerGlp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x29860c...2ed2d9`](./contracts/arbitrum-42161/0x29860c65c6155a7a46d9acb9fd15dd9bbc2ed2d9/) | DnGmxRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf93050...c2cf36`](./contracts/arbitrum-42161/0xf9305009fba7e381b3337b5fa157936d73c2cf36/) | DnGmxSeniorVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39dfa1...7d07b9`](./contracts/arbitrum-42161/0x39dfa1568e3c9eef6794a328d59dae4a127d07b9/) | DnGmxTraderHedgeStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14fcc6...052c12`](./contracts/arbitrum-42161/0x14fcc60f9be14087fac729df48ff33f2b3052c12/) | RageTradeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x426087...5b3a6d`](./contracts/arbitrum-42161/0x426087ce9911c1e009a6abbce7a86789ae5b3a6d/) | SettlementTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [13735] drive.google.com/file/d/1rgTgB3Zs1A6YhssF4jIsVS5l0Lr8sl1r/view
- [13736] docs.google.com/document/d/1joxRpf1D-KoACf7h1xnB72YkPYKxd27oDX-9axTbIQw/edit

Fork inheritance lineage and inherited audits are included when available.
