# Agentic Audit Brief: JulSwap

## Project Overview

- Project: JulSwap (`julswap`)
- Website: [https://julswap.com/#/swap](https://julswap.com/#/swap)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:17.592Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $346,754.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 8 project-authored contract(s) across 4 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCswapPair | unknown | bsc | n/a | [`0x57108b...88b0ea`](./contracts/bsc-56/0x57108ba5a6ce93da2e5503f531ca9bfd1288b0ea/) | ⚠️ Unaudited |
| BSCswapRouter | unknown | bsc | n/a | [`0xbd67d1...c788b2`](./contracts/bsc-56/0xbd67d157502a23309db761c41965600c2ec788b2/) | ⚠️ Unaudited |
| JulProtocolV3_BSC | unknown | bsc | n/a | [`0x4edfbd...a08037`](./contracts/bsc-56/0x4edfbdcc6b7bc3596f625137be4f211ea5a08037/) | ⚠️ Unaudited |
| JulSwap | unknown | bsc | n/a | [`0x5a41f6...6577ea`](./contracts/bsc-56/0x5a41f637c3f7553dba6ddc2d3ca92641096577ea/) | ⚠️ Unaudited |
| JulSwapCrossChainNode | unknown | polygon | n/a | [`0x16a7b3...a8a864`](./contracts/polygon-137/0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864/) | ⚠️ Unaudited |
| MultiCall | unknown | avalanche | n/a | [`0x0e6dd9...d7d83e`](./contracts/avalanche-43114/0x0e6dd9603f4bc56296ee3b9ab33122fecbd7d83e/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x16a7b3...a8a864`](./contracts/ethereum-1/0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x5dffc9...95a63c`](./contracts/polygon-137/0x5dffc99f807963954c83cc3dff9de610ad95a63c/) | ⚠️ Unaudited |

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
| [10102020_Jul_Protocol_SC_Third_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/10102020_Jul_Protocol_SC_Third_Audit_Report.pdf) | unknown | Audit | 2020 | stale | Direct | n/a | 0 | n/a |
| [15052021_JulPad_SecondReview_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/15052021_JulPad_SecondReview_SC_Audit_Report.pdf) | unknown | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [17112020_JulLimitOrder_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/17112020_JulLimitOrder_SC_Audit_Report.pdf) | unknown | Audit | 2020 | stale | Direct | n/a | 0 | n/a |
| [25022021 JULSWAP_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/25022021%20JULSWAP_SC_Audit_Report.pdf) | unknown | Audit | 2021 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20595] 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf
- [20596] 15052021_JulPad_SecondReview_SC_Audit_Report.pdf
- [20597] 17112020_JulLimitOrder_SC_Audit_Report.pdf
- [20598] 25022021 JULSWAP_SC_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
