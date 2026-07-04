# Agentic Audit Brief: Sonic Gateway

## Project Overview

- Project: Sonic Gateway (`sonic-gateway`)
- Website: [https://gateway.soniclabs.com/ethereum/sonic/s](https://gateway.soniclabs.com/ethereum/sonic/s)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:55.769Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: sonic
- Contract surface: 11 unique implementations (32 raw deployments)
- DeFi Llama TVL: $35,594,379.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 11 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 30 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 32
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x0c3443...b4322d`](./contracts/sonic-146/0x0c34438efe0e13ad2a64e9ced14bf6bb58b4322d/); sonic `0x9ef762...c895b3` | ⚠️ Unaudited |
| Liquidator | unknown | sonic | n/a | 2 deployments: sonic [`0x332a62...f9a926`](./contracts/sonic-146/0x332a6211b594fefed5a5d779e51dacd145f9a926/); sonic `0xd8c562...558402` | ⚠️ Unaudited |
| MessageBus | operational_periphery | sonic | n/a | [`0xb5b371...925308`](./contracts/sonic-146/0xb5b371b75f9850ddd6ccb6c436db54972a925308/) | ⚠️ Unaudited |
| MintedERC20 | unknown | sonic | n/a | 14 deployments: sonic [`0x0fdbce...4be3fd`](./contracts/sonic-146/0x0fdbce271bea0d9819034cd09021e0bbe94be3fd/); sonic `0x2fb960...e2eea1`; sonic `0x48540d...6fc335`; sonic `0x53f753...81e698`; sonic `0x616478...8f6194`; sonic `0x6c7d5e...f354f9`; sonic `0x7cb451...e8edb3`; sonic `0x7fff4c...ccd270`; sonic `0x8f1cbc...c6544c`; sonic `0x9cacb5...7e8c6b`; sonic `0xb026e4...8269fd`; sonic `0xb5f0ed...186fac`; sonic `0xc6915d...38030c`; sonic `0xf1ef7d...71a74b` | ⚠️ Unaudited |
| MintedERC20 | unknown | sonic | n/a | 2 deployments: sonic [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/); sonic `0x9605cc...abf386` | ⚠️ Unaudited |
| NativeTokenAdapter | unknown | sonic | n/a | 2 deployments: sonic [`0x4c5683...ad6c6c`](./contracts/sonic-146/0x4c5683a9ede3c8b4fb5ad2e980bbf88652ad6c6c/); sonic `0x6d9d62...e91a1e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | [`0x90409d...874be3`](./contracts/sonic-146/0x90409d5b57e77ca394167b781cfc79a2a0874be3/) | ⚠️ Unaudited |
| TetherTokenAdapter | unknown | sonic | n/a | 2 deployments: sonic [`0x188042...53d4e4`](./contracts/sonic-146/0x1880425307124ce875aac3e9eb47b5a87453d4e4/); sonic `0x667e06...aa304a` | ⚠️ Unaudited |
| TetherTokenV2 | unknown | sonic | n/a | 2 deployments: sonic [`0x604782...a5eaf9`](./contracts/sonic-146/0x6047828dc181963ba44974801ff68e538da5eaf9/); sonic `0xc80268...252fad` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x134e4c...00ba94`](./contracts/sonic-146/0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94/); sonic `0xabf0c9...5ebf25` | ⚠️ Unaudited |
| UpdateManager | governance | sonic | n/a | 2 deployments: sonic [`0x1d3c99...176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/); sonic `0x7160ec...e4ee53` | ⚠️ Unaudited |

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
| [fantom-audit-first.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-first.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |
| [fantom-audit-second.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-second.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11677] fantom-audit-first.pdf
- [11678] fantom-audit-second.pdf

Fork inheritance lineage and inherited audits are included when available.
