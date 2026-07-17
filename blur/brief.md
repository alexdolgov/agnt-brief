# Agentic Audit Brief: Blur

## Project Overview

- Project: Blur (`blur`)
- Website: [https://blur.io/](https://blur.io/)
- Lifecycle: active (Tier 0, 93.9% below peak)
- Generated: 2026-07-04T14:53:07.625Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $13,582,183.00
- On-chain TVL (included contracts): $42,555,522.90
- TVL by chain: Ethereum $42,555,522.90

## Project Description

NFT Marketplace. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 22 (2 live, 20 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $42,555,522.90
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| BlurToken | token | ethereum | n/a | [`0x5283d291dbcf85356a21ba090e6db59121208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | ⚠️ Unaudited |
| BlurSwap | proxy | ethereum | n/a | [`0x39da41747a83aee658334415666f3ef92dd0d541`](./contracts/ethereum-1/0x39da41747a83aee658334415666f3ef92dd0d541/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x019d2474d6e7b9b6f33fb038ba3b15f28562e900` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10f6d74277468ce678c401b045dee3d3eeeea7de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e7e05af7de55b69b72953e569bfe99bed8bb68a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x259064eeb1acf4b7deef9619896fca095a325eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28f180f3fc7eb636164a51e7a0afeff16d90d087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fa4afc0dc9384c671535f1b91e89f9917747f05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a574bac669f3b1cb54b92ccbaefbafd07054d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545e06c1b43dc53a6520b5fdeab232002b478e60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561106a829b3148c044b642d25a730ebdb5bf5cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58ab8c6921a599403e0031636ab3ebc32f331651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b692d6e295c32c2cb1bd1b2cdbbcd66a94a40f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9670af5f8365e6b9b4b474f90d54437f85a6894e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b5850bab1cbc38431743c54dd8edf317c056dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacdbf83254c0342d5f589e8641d925955ca3bdea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc82bf6791ea9281be6b1c3fc0447bead9c99d152` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf39f170af729380a3bc7cc6c9f898b1ad2da4a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5996df7a4dae075fbcf02d29462286bc9189c4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe596a0329b1efc4282ab71d8c4a1eb679cff66de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cf0d3e77fdf08bb74da6400094a313064de58e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb6ae1d448a67e201941944db8a266e8f8223fd0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022](https://dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022) | Dedaub | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2022-10-blur](https://code4rena.com/reports/2022-10-blur) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view](https://drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view) | ChainLight (Theori) | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view](https://drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view) | ChainLight (Theori) | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5283d291dbcf85356a21ba090e6db59121208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | BlurToken | token | $42,555,522.90 | Verified native implementation with $42,555,522.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39da41747a83aee658334415666f3ef92dd0d541`](./contracts/ethereum-1/0x39da41747a83aee658334415666f3ef92dd0d541/) | BlurSwap | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21286] dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022
- [21287] code4rena.com/reports/2022-10-blur
- [21288] drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view
- [21289] drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view

Fork inheritance lineage and inherited audits are included when available.
