# Agentic Audit Brief: Polymarket

## Export Authority

- Production state: **published scope**
- Raw selected rows: 64 across 19 audit(s)
- Eligible audit results: 23 (19 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Polymarket (`polymarket`)
- Website: [https://polymarket.com/?r=defillamareal](https://polymarket.com/?r=defillamareal)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: 18/19 confirmed own live verified implementations (94.7%); conservative 94.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $467,043,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Polymarket. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum, polygon. Structural roles: 19 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (19)
- Contract kinds: contract (19)
- Detected standards: ownable (14), erc165 (10), erc1967proxy (8), erc1155 (2), erc20 (1), erc20permit (1), multicall (1)
- Frameworks: solady (14), openzeppelin (11), solmate (1)
- Upgradeable-pattern rows: 13

## Fork Analysis

1 of 29 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

**NegRiskAdapter** (`0xd91e80...a35296`, chain 137)
Origin: limitless-exchange (`0x6151ef...1e712d`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x30c038...2cb87e`, chain 137)
- UnnamedContract (`0x492fec...9b1bba`, chain 137)
- UnnamedContract (`0x6a9d22...6a4f74`, chain 137)
- UnnamedContract (`0x7a18ed...2ffc3a`, chain 137)
- UnnamedContract (`0xa12000...1b00af`, chain 137)
- UnnamedContract (`0xa61e7c...d448d7`, chain 137)
- UnnamedContract (`0xb529b2...c53dbb`, chain 137)
- UnnamedContract (`0xc011a7...e82dfb`, chain 137)
- UnnamedContract (`0xe2222d...310f59`, chain 137)
- UnnamedContract (`0xe33337...6c00aa`, chain 137)
- AutoRedeemer (`0x64860b...afb66c`, chain 137)
- BinaryModule (`0x100000...da00ba`, chain 137)
- CollateralOfframp (`0x295792...dc5854`, chain 137)
- CollateralOnramp (`0x93070a...f5b8ee`, chain 137)
- CollateralToken (`0x6bbcef...d0925f`, chain 137)
- CombinatorialModule (`0x300000...c031a8`, chain 137)
- ConditionalTokens (`0x4d97dc...476045`, chain 137)
- CtfCollateralAdapter (`0xada100...8fce1f`, chain 137)
- CTFExchange (`0xe11118...7b996b`, chain 137)
- DepositWalletFactory (`0x000000...23cc07`, chain 137)
- Exchange (`0x7345c6...20b5dc`, chain 137)
- NegRiskCtfCollateralAdapter (`0xada200...b6eaab`, chain 137)
- NegRiskModule (`0x200000...028933`, chain 137)
- PermissionedRamp (`0xebc245...2bcb08`, chain 137)
- PositionManager (`0x006f54...ae9fef`, chain 137)
- ProxyWalletFactory (`0xab45c5...254052`, chain 137)
- SafeProxyFactory (`0xaacfee...e3541b`, chain 137)
- UmaConditionalTokensBinaryAdapter (`0xcb1822...995130`, chain 137)

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 18/19 (94.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 29 of 43 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 18/19
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 19
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 16 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 18 match-unverified
- Tier 1 coverage: 63.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 15 | 78.9% | 2026-05 |
| Spearbit | Tier 1 | 12 | 63.2% | 2026-06 |
| Pashov Audit Group | Tier 2 | 11 | 57.9% | 2026-05 |
| Quantstamp | Tier 2 | 6 | 31.6% | 2026-05 |
| Zellic | Tier 2 | 1 | 5.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoRedeemer | unknown | project_anchor | own_supporting | 0 | polygon | unit-391189 | `0x64860b...afb66c` | ✅ Audited |
| BinaryModule | unknown | project_anchor | own_supporting | 0 | polygon | unit-391182 | `0x100000...da00ba` | ✅ Audited |
| CollateralOfframp | unknown | project_anchor | own_supporting | 0 | polygon | unit-391184 | `0x295792...dc5854` | ✅ Audited |
| CollateralOnramp | unknown | project_anchor | own_supporting | 0 | polygon | unit-391194 | `0x93070a...f5b8ee` | ✅ Audited |
| CollateralToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-391191 | `0x6bbcef...d0925f` | ✅ Audited |
| CombinatorialModule | unknown | project_anchor | own_supporting | 0 | polygon | unit-391185 | `0x300000...c031a8` | ✅ Audited |
| ConditionalTokens | unknown | project_anchor | own_supporting | 0 | polygon | unit-391188 | `0x4d97dc...476045` | ✅ Audited |
| CtfCollateralAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391199 | `0xada100...8fce1f` | ✅ Audited |
| CTFExchange | unknown | project_anchor | own_supporting | 0 | polygon | unit-391205 | `0xe11118...7b996b` | ✅ Audited |
| DepositWalletFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-391180 | `0x000000...23cc07` | ✅ Audited |
| Exchange | unknown | project_anchor | own_supporting | 0 | polygon | unit-391192 | `0x7345c6...20b5dc` | ✅ Audited |
| NegRiskAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391204 | `0xd91e80...a35296` | ✅ Audited |
| NegRiskCtfCollateralAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391200 | `0xada200...b6eaab` | ✅ Audited |
| NegRiskModule | unknown | project_anchor | own_supporting | 0 | polygon | unit-391183 | `0x200000...028933` | ✅ Audited |
| PermissionedRamp | unknown | project_anchor | own_supporting | 0 | polygon | unit-391208 | `0xebc245...2bcb08` | ✅ Audited |
| PositionManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-391181 | `0x006f54...ae9fef` | ✅ Audited |
| ProxyWalletFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-391198 | `0xab45c5...254052` | ✅ Audited |
| SafeProxyFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-391197 | `0xaacfee...e3541b` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d8c4e...d6b4fa` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5d563...20f80a` | ⚠️ Unaudited |
| NegRiskFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78769d...bff29e` | ⚠️ Unaudited |
| NegRiskOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000ce7...534def` | ⚠️ Unaudited |
| ProxyWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56687b...f55839` | ⚠️ Unaudited |
| UmaConditionalTokensBinaryAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391203 | `0xcb1822...995130` | ⚠️ Unaudited |
| UmaCtfAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21cf6b...a29be7` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f6732...75e11d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391186 | `0x30c038...2cb87e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391187 | `0x492fec...9b1bba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391190 | `0x6a9d22...6a4f74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391193 | `0x7a18ed...2ffc3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391195 | `0xa12000...1b00af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391196 | `0xa61e7c...d448d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391201 | `0xb529b2...c53dbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391202 | `0xc011a7...e82dfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391206 | `0xe2222d...310f59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391207 | `0xe33337...6c00aa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2020-01-20_accumulator_audit.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/2020-01-20_accumulator_audit.pdf) | unknown | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Combinatorial Module - Cantina - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Cantina%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 8 | high |
| [Combinatorial Module - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Combinatorial Module - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Cantina%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [DepositWallet - Certora - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [DepositWallet - Certora - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20March%202026.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [DepositWallet - Zellic - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Zellic%20-%20March%202026.pdf) | Zellic | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Polymarket V2 - Cantina - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Cantina%20-%20April%202026.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | matched | 7 | 0 | 0 | 17 | high |
| [Polymarket V2 - Certora - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Certora%20-%20April%202026.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | matched | 7 | 0 | 0 | 12 | high |
| [Polymarket V2 - Pashov - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Pashov%20-%20May%202026.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | contract_name | matched | 11 | 0 | 0 | 39 | high |
| [Polymarket V2 - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | matched | 5 | 0 | 0 | 39 | high |
| [Polymarket V2 Additional changes - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Additional%20changes%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | matched | 6 | 0 | 0 | 1 | high |
| [Polymarket V2 Diff Review - Cantina - June 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Diff%20Review%20-%20Cantina%20-%20June%202026.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | matched | 10 | 0 | 0 | 64 | high |
| [cs_conditional_tokens.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_conditional_tokens.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [cs_ctf_exchange.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_ctf_exchange.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 29 | high |
| [cs_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_neg_risk_adapter.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [cs_proxy_wallet_factories.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_proxy_wallet_factories.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 12 | high |
| [oz_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_neg_risk_adapter.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [oz_uma_ctf_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_uma_ctf_adapter.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [perps_cantina_20260424_20260501.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_cantina_20260424_20260501.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [perps_certora_20260427_20260428.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_certora_20260427_20260428.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [perps_quantstamp_20260408_20260410.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_quantstamp_20260408_20260410.pdf) | Quantstamp | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20946] 2020-01-20_accumulator_audit.pdf — no match: The report focuses solely on CTHelpers.sol. The date is given as 'December 2019' on the cover page.
- [20947] Combinatorial Module - Cantina - May 2026.pdf — matched: Scope section explicitly lists files under src/ directory. Additional contracts mentioned in findings are also included as they are part of the audited codebase.
- [20948] Combinatorial Module - Certora - May 2026.pdf — matched: Only one contract in scope: CombinatorialModule.sol. Audit date inferred from work period end date (May 4th, 2026).
- [20949] Combinatorial Module - Quantstamp - May 2026.pdf — matched: Scope section lists 5 files: CombinatorialModule.sol, ModuleIds.sol, Ids.sol, Exchange.sol, BridgeBase.sol. Audit date from final report date 2026-05-23.
- [20950] DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf — matched: All contracts listed in the scope section of the report.
- [20951] DepositWallet - Certora - Beacon Upgrade - May 2026.pdf — matched: Scope section lists 'src/*' as in scope. Contracts explicitly mentioned in findings and protocol overview are extracted. Audit date is May 2026, mapped to last day of month.
- [20952] DepositWallet - Certora - March 2026.pdf — matched: Scope explicitly lists deposit-wallet/src/*. Two main contracts: DepositWalletFactory and DepositWallet. Supporting libraries (Ownable, WalletLib, SessionSignerLib) are mentioned but not listed as separate files in scope; they are part of the src directory. Audit date from 'March 11th, 2026' in Project Overview.
- [20953] DepositWallet - Zellic - March 2026.pdf — matched: Scope table lists 8 Solidity files. Audit date from cover page and header/footer.
- [20954] Polymarket V2 - Cantina - April 2026.pdf — matched: Extracted contract names from scope sections, privileged roles, and findings. Audit date from cover page.
- [20955] Polymarket V2 - Certora - April 2026.pdf — matched: Extracted contracts from scope section and findings. Some contracts (CcipBridge, LzBridge, QuorumArbitratorModule, EOADisputerModule, EOAReporterModule) are explicitly not in scope but included for completeness. Audit date is the end date of the engagement (April 17, 2026).
- [20956] Polymarket V2 - Pashov - May 2026.pdf — matched: Extracted 50 contract names from the scope section on page 4-5 of the audit report. Audit date is the end date of the engagement: May 3rd 2026.
- [20957] Polymarket V2 - Quantstamp - May 2026.pdf — matched: Extracted 44 contract names from the scope section listing files included in the audit. Audit date derived from the timeline '2026-04-24 through 2026-05-06' using the end date.
- [20958] Polymarket V2 Additional changes - Certora - May 2026.pdf — matched: All contracts explicitly listed in scope section on page 3. Audit date inferred from work period May 18-22, 2026.
- [20959] Polymarket V2 Diff Review - Cantina - June 2026.pdf — matched: All contracts listed in the scope section (Section 2.1) were extracted. The audit date is explicitly stated on the cover page as 'June 3, 2026'.
- [20960] cs_conditional_tokens.pdf — matched: All contracts listed in the scope section of the report.
- [20961] cs_ctf_exchange.pdf — matched: All contracts listed in the scope section of the audit report.
- [20962] cs_neg_risk_adapter.pdf — matched: All contracts listed in scope table on page 5 of the report.
- [20963] cs_proxy_wallet_factories.pdf — matched: All contracts listed in scope section 2.1.1. Audit date from cover page.
- [20964] oz_neg_risk_adapter.pdf — matched: All contracts listed in the Scope section of the report.
- [20965] oz_uma_ctf_adapter.pdf — no match: Scope section explicitly lists 5 contracts in src directory. Audit date from cover page: 'August 16, 2023'.
- [20966] perps_cantina_20260424_20260501.pdf — no match: Scope section explicitly lists three files under src/v1/.
- [20967] perps_certora_20260427_20260428.pdf — no match: Only one contract file (ExchangeV1.sol) is in scope, as indicated by 'src/v1/*' and all findings reference this file.
- [20968] perps_quantstamp_20260408_20260410.pdf — matched: Scope section lists 'contracts/src/' as included path. Three Solidity files are identified: Exchange.sol, ExchangeStorage.sol, IExchange.sol. The audit date is the final report date (2026-04-17) from the changelog.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2020-01-20_accumulator_audit.pdf | CTHelpers | unmatched — not counted | — | The report is a security review of CTHelpers.sol, described as an essential tool in the conditional tokens contract. | no |
| Combinatorial Module - Cantina - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Cantina - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x300000...c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Cantina - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Cantina - May 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | ModuleProxyLib | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | PositionIdLib | unmatched — not counted | — | mentioned in findings context | no |
| Combinatorial Module - Cantina - May 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | mentioned in findings context | no |
| Combinatorial Module - Cantina - May 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | mentioned in findings context | no |
| Combinatorial Module - Cantina - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Certora - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x300000...c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Quantstamp - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x300000...c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Quantstamp - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Quantstamp - May 2026.pdf | Ids | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Quantstamp - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Quantstamp - May 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | DepositWalletBeacon | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x000000...23cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Events | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | TestHelper | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Vm | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | EIP712Helpers | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | ExchangeHelpers | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | ExchangeLib | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | SessionSignerLib | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | WalletHelpers | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | WalletLib | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | BeaconForwarder | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope and findings | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x000000...23cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | DepositWalletBeacon | unmatched — not counted | — | listed in scope and findings | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | BeaconForwarder | unmatched — not counted | — | mentioned in protocol overview as part of migration | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | IDepositWallet | unmatched — not counted | — | mentioned in I-01 as interface | no |
| DepositWallet - Certora - March 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x000000...23cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Certora - March 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope as part of deposit-wallet/src/* | no |
| DepositWallet - Zellic - March 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x000000...23cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Zellic - March 2026.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | WalletLib | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | SessionSignerLib | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | IDepositWallet | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | Events | unmatched — not counted | — | listed in scope table | no |
| Polymarket V2 - Cantina - April 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef...d0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | PolymarketCollateralToken | unmatched — not counted | — | listed in scope section 3.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope section 3.1 and privileged roles | no |
| Polymarket V2 - Cantina - April 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | Router | unmatched — not counted | — | listed in scope section 3.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope section 3.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.1.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.13 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.1.2 | no |
| Polymarket V2 - Cantina - April 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.9 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope section 3.1 and finding 4.1.4 | no |
| Polymarket V2 - Cantina - April 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.15 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.2 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.10 | no |
| Polymarket V2 - Cantina - April 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.4 | no |
| Polymarket V2 - Cantina - April 2026.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xd91e80...a35296` — deployed 2023-11-28 23:27:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860b...afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | QuorumArbitratorModule | unmatched — not counted | — | mentioned in finding 4.2.13 as out-of-scope but referenced | no |
| Polymarket V2 - Cantina - April 2026.pdf | EOADisputerModule | unmatched — not counted | — | mentioned in finding 4.2.13 as out-of-scope but referenced | no |
| Polymarket V2 - Cantina - April 2026.pdf | EOAReporterModule | unmatched — not counted | — | mentioned in finding 4.2.13 as out-of-scope but referenced | no |
| Polymarket V2 - Certora - April 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | CcipBridge | unmatched — not counted | — | not in scope but mentioned in findings | no |
| Polymarket V2 - Certora - April 2026.pdf | LzBridge | unmatched — not counted | — | not in scope but mentioned in findings | no |
| Polymarket V2 - Certora - April 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef...d0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | NegRiskCtfCollateralAdapter | own contract | NegRiskCtfCollateralAdapter (selected) `0xada200...b6eaab` — deployed 2026-04-29 19:23:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | CtfCollateralAdapter | own contract | CtfCollateralAdapter (selected) `0xada100...8fce1f` — deployed 2026-04-29 19:21:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | QuorumArbitratorModule | unmatched — not counted | — | not in scope but mentioned | no |
| Polymarket V2 - Certora - April 2026.pdf | EOADisputerModule | unmatched — not counted | — | not in scope but mentioned | no |
| Polymarket V2 - Certora - April 2026.pdf | EOAReporterModule | unmatched — not counted | — | not in scope but mentioned | no |
| Polymarket V2 - Certora - April 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IBridgeCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BridgePayloads | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | CrossChainTypes | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | PositionIdLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | IModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | INegRiskModuleCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | OracleAggregatorErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleAggregatorEvents | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleModuleBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IArbitratorModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IBinaryReporter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IDisputerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IOptimisticRequester | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IOracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OptimisticOraclePayoutLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IPositionManagerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860b...afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CtfCollateralAdapter | own contract | CtfCollateralAdapter (selected) `0xada100...8fce1f` — deployed 2026-04-29 19:21:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | NegRiskCtfCollateralAdapter | own contract | NegRiskCtfCollateralAdapter (selected) `0xada200...b6eaab` — deployed 2026-04-29 19:23:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CollateralOfframp | own contract | CollateralOfframp (selected) `0x295792...dc5854` — deployed 2026-03-31 05:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CollateralOnramp | own contract | CollateralOnramp (selected) `0x93070a...f5b8ee` — deployed 2026-03-31 05:38:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef...d0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | PermissionedRamp | own contract | PermissionedRamp (selected) `0xebc245...2bcb08` — deployed 2026-03-31 05:38:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IBridgeCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BridgePayloads | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | CrossChainTypes | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | PositionIdLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | IModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | INegRiskModuleCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleAggregatorErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleAggregatorEvents | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleModuleBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IArbitratorModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IBinaryReporter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IDisputerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IOptimisticRequester | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IOracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OptimisticOraclePayoutLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IPositionManagerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860b...afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x300000...c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860b...afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CcipBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IBridgeCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralOfframp | own contract | CollateralOfframp (selected) `0x295792...dc5854` — deployed 2026-03-31 05:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralOnramp | own contract | CollateralOnramp (selected) `0x93070a...f5b8ee` — deployed 2026-03-31 05:38:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef...d0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | PermissionedRamp | own contract | PermissionedRamp (selected) `0xebc245...2bcb08` — deployed 2026-03-31 05:38:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralSetup | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralSetup.t | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ICollateralToken | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ICollateralTokenCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Addresses | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | DeployLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | TestHelper | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Vm | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IAddressWhitelist | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IFinder | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskAdapterSetUp | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IConditionalTokens | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IConditionalTokensMethods | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | INegRiskAdapter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IUmaCtfAdapter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CTFHelpers | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CTHelpers | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BridgePayloads | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CrossChainTypes | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Ids | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x100000...da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x300000...c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000...028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ModuleProxyLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ICombinatorialModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | INegRiskModuleCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleAggregatorErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleAggregatorEvents | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleModuleBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IArbitratorModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IBinaryReporter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IDisputerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IOptimisticRequester | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IOracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OptimisticOraclePayoutLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | EOAReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IPositionManagerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54...ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | PositionManagerSetup | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | RouterSetup | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860b...afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_conditional_tokens.pdf | ERC1155 | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | IERC1155 | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | IERCTokenReceiver | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | ConditionalTokens | own contract | ConditionalTokens (selected) `0x4d97dc...476045` — deployed 2020-09-03 21:07:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_conditional_tokens.pdf | CTHelpers | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | BaseExchange | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | CTFExchange | own contract | CTFExchange (selected) `0xe11118...7b996b` — deployed 2026-03-31 05:39:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_ctf_exchange.pdf | IAssetOperations | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IAssets | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IAuth | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IConditionalTokens | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IFees | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IHashing | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | INonceManager | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | ISignatures | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | ITrading | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | AssetOperations | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Assets | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Fees | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | PolyFactoryHelper | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Registry | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Signatures | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Trading | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Calculator | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | PolyProxyLib | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | PolySafeLib | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | SilentECDSA | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| cs_neg_risk_adapter.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xd91e80...a35296` — deployed 2023-11-28 23:27:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_neg_risk_adapter.pdf | NegRiskCtfExchange | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | NegRiskFeeModule | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | NegRiskOperator | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | WrappedCollateral | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | CTHelpers | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | Helpers | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | Auth | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | MarketDataManager | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | MarketData | unmatched — not counted | — | listed in scope table | no |
| cs_proxy_wallet_factories.pdf | GSNLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | GNSModule01 | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | GNSModule03 | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | FactoryLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | MemcpyLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | RevertCaptureLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | RStoreLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | SliceLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | StringLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | ProxyWallet | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | ProxyWalletFactory | own contract | ProxyWalletFactory (selected) `0xab45c5...254052` — deployed 2020-09-03 20:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_proxy_wallet_factories.pdf | ProxyWalletLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | SafeProxyFactory | own contract | SafeProxyFactory (selected) `0xaacfee...e3541b` — deployed 2021-09-23 19:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_proxy_wallet_factories.pdf | Deps | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xd91e80...a35296` — deployed 2023-11-28 23:27:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| oz_neg_risk_adapter.pdf | NegRiskOperator | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | WrappedCollateral | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Admin | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | MarketDataManager | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | MarketData | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | UmaCtfAdapter | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | BulletinBoard | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | AncillaryDataLib | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| perps_cantina_20260424_20260501.pdf | ExchangeV1 | unmatched — not counted | — | listed in scope section | no |
| perps_cantina_20260424_20260501.pdf | IExchangeV1 | unmatched — not counted | — | listed in scope section | no |
| perps_cantina_20260424_20260501.pdf | StorageV1 | unmatched — not counted | — | listed in scope section | no |
| perps_certora_20260427_20260428.pdf | ExchangeV1 | unmatched — not counted | — | listed in scope and findings | no |
| perps_quantstamp_20260408_20260410.pdf | Exchange | own contract | Exchange (selected) `0x7345c6...20b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| perps_quantstamp_20260408_20260410.pdf | ExchangeStorage | unmatched — not counted | — | listed in appendix file signatures | no |
| perps_quantstamp_20260408_20260410.pdf | IExchange | unmatched — not counted | — | listed in appendix file signatures | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xcb1822...995130` | UmaConditionalTokensBinaryAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 64 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 288 unmatched
- Matched-own operational status: 64 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23
- Match method counts: unique_name=64

Zero-match audit list:

- [20946] 2020-01-20_accumulator_audit.pdf
- [20965] oz_uma_ctf_adapter.pdf
- [20966] perps_cantina_20260424_20260501.pdf
- [20967] perps_certora_20260427_20260428.pdf

Fork inheritance lineage and inherited audits are included when available.
