# Agentic Audit Brief: HurricaneSwap

## Project Overview

- Project: HurricaneSwap (`hurricaneswap`)
- Website: [https://hurricaneswap.com](https://hurricaneswap.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.719Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche
- Contract surface: 22 unique implementations (24 raw deployments)
- DeFi Llama TVL: $11,402.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 16 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 24 (6 live, 18 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/5 (20.0%)
- Deployed-live implementations: 5 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 22
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 16.7% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HcSwapAvaxRouter | unknown | avalanche | n/a | 2 deployments: avalanche [`0x010d46...c67c72`](./contracts/avalanche-43114/0x010d464fe46aba2fb468a4bb251248d669c67c72/); avalanche `0xb6559d...ea0609` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AvaxPool | core_logic | avalanche | n/a | [`0x1c9f36...696b24`](./contracts/avalanche-43114/0x1c9f36fe608190d1fe99e001b596c31871696b24/) | ⚠️ Unaudited |
| HctBar | unknown | avalanche | n/a | [`0x75b797...a01140`](./contracts/avalanche-43114/0x75b797a0ed87f77bb546f3a3556f18fc35a01140/) | ⚠️ Unaudited |
| HctToken | token | avalanche | n/a | [`0x45c136...10fdbd`](./contracts/avalanche-43114/0x45c13620b55c35a5f539d26e88247011eb10fdbd/) | ⚠️ Unaudited |
| StakingRewards | unknown | avalanche | n/a | [`0xe4ae2e...22a350`](./contracts/avalanche-43114/0xe4ae2e8648b8e84c4a487a559b04e884b822a350/) | ⚠️ Unaudited |
| WETH9 | unknown | avalanche | n/a | [`0xc3aeaf...55a6a0`](./contracts/avalanche-43114/0xc3aeaf43b688f2e5081124d270a9dbdca655a6a0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xabfb6277242046ba6941a233cdd784133b677623) | unknown | avalanche | n/a | 2 deployments: avalanche `0x1cbf06...43f13e`; avalanche `0xabfb62...677623` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b6d1c...14e9a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ce2fc...1bc032` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dd813...ccfaee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x667f20...4394b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75b09f...2d2558` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2b7aa...640b2e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4569e...a7fbe8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab58f3...13341e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac7270...35d7c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb4ce5b...e00cd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9740e...ccc5ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd10ef9...b9702e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe81d3f...c7e43f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf7d12e...a447e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa4db3...a0b957` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-HurricanSwapV2-v1.0rc.pdf](https://github.com/HurricaneSam/AuditReport/blob/main/PeckShield-Audit-Report-HurricanSwapV2-v1.0rc.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
