# Agentic Audit Brief: dTRINITY

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: dTRINITY (`dtrinity`)
- Website: [https://dtrinity.org/](https://dtrinity.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, fraxtal
- Contract surface: 40 unique implementations (44 raw deployments)
- Coverage basis: 4/25 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,254,148.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for dTRINITY. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across ethereum, fraxtal. Structural roles: 22 unclassified, 6 supporting, 5 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (22), supporting (6), core (5)
- Contract kinds: contract (32), abstract (1)
- Detected standards: accesscontrol (6), erc165 (6), erc1967proxy (1), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 40 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3de01b...411ddf`, chain 1)
- UnnamedContract (`0x5cc741...30fd60`, chain 1)
- UnnamedContract (`0x8a9384...b9c930`, chain 1)
- UnnamedContract (`0xab035f...d02989`, chain 1)
- UnnamedContract (`0xedaf6c...610611`, chain 1)
- UnnamedContract (`0x12ed58...99cdef`, chain 252)
- UnnamedContract (`0x1f0755...a862f7`, chain 252)
- UnnamedContract (`0x29155d...799ee0`, chain 252)
- UnnamedContract (`0x29d025...46059b`, chain 252)
- UnnamedContract (`0x2d8ae7...36a0ab`, chain 252)
- UnnamedContract (`0x64188d...f10ede`, chain 252)
- UnnamedContract (`0x6b937d...f560de`, chain 252)
- UnnamedContract (`0x831504...7448de`, chain 252)
- UnnamedContract (`0xe91913...ee2edf`, chain 252)
- UnnamedContract (`0xf1082f...bf4c0e`, chain 252)
- ACLManager (`0xa5f9f6...a26a49`, chain 252)
- AmoManagerV2 (`0x29532f...6e6880`, chain 1)
- AmoManagerV2 (`0x57bbd5...0bebae`, chain 252)
- CollateralHolderVault (`0x84c580...9253f4`, chain 1)
- CollateralHolderVault (`0x624e12...f4febc`, chain 252)
- DStakeCollateralVault (`0x5432ed...8cc7be`, chain 252)
- DStakeCollateralVaultV2 (`0x4acbcf...30f6fe`, chain 1)
- GnosisSafeProxy (`0xa9c3cf...a03d65`, chain 252)
- GnosisSafeProxy (`0xabfbcf...067af9`, chain 252)
- GnosisSafeProxy (`0xdb104e...d85431`, chain 252)
- GnosisSafeProxy (`0xfc2f89...8bc8e9`, chain 252)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2b820f...5dff35`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x7f9098...9d7cf1`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x88a4ee...a1c748`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x947729...bfb59b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x979fb7...efaad8`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xa17571...dfe493`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xa5535f...a26eae`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb33276...a8029c`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc24773...0e9011`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdfaee6...a5877f`, chain 1)
- SafeProxy (`0x044015...e79804`, chain 1)
- SafeProxy (`0x38262e...02f3db`, chain 1)
- SafeProxy (`0x43b1bc...06c118`, chain 1)
- SafeProxy (`0xe83c18...f30262`, chain 1)

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (29 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/25 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/25
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 40
- Raw deployments: 44
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 2 | 8.0% | 2025-10 |
| Hats Finance | Tier 2 | 2 | 8.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DStakeCollateralVault | core_logic | project_anchor | own_supporting | 0 | fraxtal | unit-236625 | `0x5432ed...8cc7be` | ✅ Audited |
| DStakeCollateralVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236604 | `0x4acbcf...30f6fe` | ✅ Audited |
| DStakeToken | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-236642 | `0x58acc2...492409` | ✅ Audited |
| DStakeTokenV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236641 | `0x7cb205...6abf02` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACLManager | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236631 | `0xa5f9f6...a26a49` | ⚠️ Unaudited |
| AmoManagerV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-236601 | `0x29532f...6e6880` | ⚠️ Unaudited |
| AmoManagerV2 | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236626 | `0x57bbd5...0bebae` | ⚠️ Unaudited |
| CollateralHolderVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236607 | `0x84c580...9253f4` | ⚠️ Unaudited |
| CollateralHolderVault | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236627 | `0x624e12...f4febc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236640 | `0x07fff9...1ca236` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-236643 | `0x788d96...614d4a` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | fraxtal | unit-236644 (2 proxies) | 2 deployments: fraxtal `0xdb104e...d85431`; fraxtal `0xfc2f89...8bc8e9` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236632 | `0xa9c3cf...a03d65` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236633 | `0xabfbcf...067af9` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236602 | `0x2b820f...5dff35` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236606 | `0x7f9098...9d7cf1` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236608 | `0x88a4ee...a1c748` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236610 | `0x947729...bfb59b` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236611 | `0x979fb7...efaad8` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236612 | `0xa17571...dfe493` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236613 | `0xa5535f...a26eae` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236615 | `0xb33276...a8029c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236616 | `0xc24773...0e9011` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236617 | `0xdfaee6...a5877f` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 4 | ethereum | unit-236639 (4 proxies) | 4 deployments: ethereum `0x044015...e79804`; ethereum `0x38262e...02f3db`; ethereum `0x43b1bc...06c118`; ethereum `0xe83c18...f30262` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236603 | `0x3de01b...411ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236605 | `0x5cc741...30fd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236609 | `0x8a9384...b9c930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236614 | `0xab035f...d02989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236618 | `0xedaf6c...610611` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236620 | `0x12ed58...99cdef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236621 | `0x1f0755...a862f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236622 | `0x29155d...799ee0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236623 | `0x29d025...46059b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236624 | `0x2d8ae7...36a0ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236628 | `0x64188d...f10ede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236629 | `0x6b937d...f560de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236630 | `0x831504...7448de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236636 | `0xe91913...ee2edf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236637 | `0xf1082f...bf4c0e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view](https://drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view?usp=drive_link) | Verichains | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view](https://drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view?usp=sharing) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view](https://drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view?usp=sharing) | Cyberscope | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [report.md](https://github.com/hats-finance/dTRINITY-0xee5c6f15e8d0b55a5eff84bb66beeee0e6140ffe/blob/report-update-20250822T111243728Z/report.md) | Hats Finance | Contest | n/a | unknown | Direct | contract_name | matched | 2 | 1 | 0 | 37 | high |
| [drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view](https://drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view?usp=sharing) | Hashlock | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 1 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view — no match: Audit scope mentions forked repos but only dTrinity-specific contracts RewardsController and EmissionManager are explicitly referenced in findings. No other dTrinity contract names are given.
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view — no match: Scope section lists 8 contracts: DexOracleWrapper, OracleAggregator, OracleAware, AmoManager, CollateralVault, Issuer, Redeemer, UniV3AmoVault. Audit date is the end date of engagement: October 4th, 2024.
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view — no match: All 8 contracts listed in source files table and described in overview sections.
- [11576] report.md — matched: Extracted all contract names from the scope table in the audit report. No audit date found in the provided text.
- [11577] drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view — matched: Extracted 28 contract names from the Audit Scope section (pages 7-9) which lists 28 contracts with file paths. Audit date is given as 'October, 2025' in the scope table, interpreted as 2025-10-31 (last day of month).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view | RewardsController | unmatched — not counted | — | mentioned in finding position and code snippet | no |
| drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view | EmissionManager | unmatched — not counted | — | mentioned in finding code snippet | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | DexOracleWrapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | OracleAware | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | AmoManager | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | CollateralVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | Issuer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | Redeemer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | UniV3AmoVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | AmoManager | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | AmoVault | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | CollateralVault | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | Issuer | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | OracleAggregator | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | OracleAware | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | Redeemer | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | UniV3AmoVault | unmatched — not counted | — | listed in source files and overview | no |
| report.md | SupportsWithdrawalFee | unmatched — not counted | — | listed in scope table | no |
| report.md | RescuableVault | unmatched — not counted | — | listed in scope table | no |
| report.md | SwappableVault | unmatched — not counted | — | listed in scope table | no |
| report.md | OdosSwapUtils | unmatched — not counted | — | listed in scope table | no |
| report.md | AaveOracle | unmatched — not counted | — | listed in scope table | no |
| report.md | AmoVault | unmatched — not counted | — | listed in scope table | no |
| report.md | AmoManager | unmatched — not counted | — | listed in scope table | no |
| report.md | CollateralHolderVault | ambiguous — not counted | CollateralHolderVault (alternative) `0x84c580...9253f4` — deployed 2025-12-10 20:01:35+03 — liveness: live (code_present_context)<br>CollateralHolderVault (alternative) `0x624e12...f4febc` — deployed 2024-12-19 04:22:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report.md | CollateralVault | unmatched — not counted | — | listed in scope table | no |
| report.md | Issuer | unmatched — not counted | — | listed in scope table | no |
| report.md | OracleAware | unmatched — not counted | — | listed in scope table | no |
| report.md | RedeemerWithFees | unmatched — not counted | — | listed in scope table | no |
| report.md | ChainlinkDecimalConverter | unmatched — not counted | — | listed in scope table | no |
| report.md | BaseAPI3Wrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | BaseChainlinkWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | OracleAggregator | unmatched — not counted | — | listed in scope table | no |
| report.md | API3CompositeWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | HardPegOracleWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | API3Wrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | API3WrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkCompositeWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | ThresholdingUtils | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopCoreDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopCoreBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DataTypes | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopDepositorBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopRedeemerBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopDepositorOdos | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopRedeemerOdos | unmatched — not counted | — | listed in scope table | no |
| report.md | OdosSwapLogic | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeCollateralVault | own contract | DStakeCollateralVault (selected) `0x5432ed...8cc7be` — deployed 2025-07-30 12:57:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | WrappedDLendConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeRouterDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x58acc2...492409` — deployed 2025-07-30 12:57:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | DStakeRewardManagerDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| report.md | ERC20VestingNFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | IssuerV2_1 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | RedeemerV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AmoManagerV2 | ambiguous — not counted | AmoManagerV2 (alternative) `0x57bbd5...0bebae` — deployed 2025-11-28 05:45:33+03 — liveness: live (current_address_book_code)<br>AmoManagerV2 (alternative) `0x29532f...6e6880` — deployed 2025-12-11 07:28:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AmoDebtToken | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosSellAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosBuyAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosDebtSwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosLiquiditySwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosRepayAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosWithdrawSwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OracleValidation | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | PendleSwapLogic | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SafeOracleMath | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SwapExecutor | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosSwapUtils | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SupportsWithdrawalFee | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | ERC20VestingNFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeCollateralVaultV2 | own contract | DStakeCollateralVaultV2 (selected) `0x4acbcf...30f6fe` — deployed 2025-12-12 11:40:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeRouterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeTokenV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7cb205...6abf02` — deployed 2025-12-12 11:40:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | GenericERC4626ConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | MetaMorphoConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AllocationCalculator | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DeterministicVaultSelector | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeRewardManagerMetaMorpho | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeIdleVault | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| fraxtal | `0xa5f9f6...a26a49` | ACLManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29532f...6e6880` | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x57bbd5...0bebae` | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84c580...9253f4` | CollateralHolderVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x624e12...f4febc` | CollateralHolderVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07fff9...1ca236` | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x788d96...614d4a` | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 14 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 79 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=4

Zero-match audit list:

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view

Fork inheritance lineage and inherited audits are included when available.
