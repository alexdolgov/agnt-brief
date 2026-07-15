# Agentic Audit Brief: Pharaoh Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Pharaoh Exchange (`pharaoh-exchange`)
- Website: [https://www.phar.gg/](https://www.phar.gg/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: 4/32 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $41,119,721.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pharaoh Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across avalanche. Structural roles: 21 supporting, 14 core, 3 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: supporting (21), core (14), infra (3)
- Contract kinds: contract (35), abstract (3)
- Detected standards: erc165 (5), ownable (4), accesscontrol (3), erc20 (3), multicall (2), erc20permit (1), erc4626 (1), erc721 (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (31), openzeppelin-upgradeable (8), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 12

## Fork Analysis

5 of 32 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

**ClGaugeFactory** (`0xe56531...07d04e`, chain 43114)
Origin: 40-acres (`0x15c50a...24d292`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DLMMFactory** (`0xeb4800...a23d4d`, chain 43114)
Origin: 40-acres (`0xeb4800...a23d4d`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DLMMRouter** (`0xff2bef...f5d93d`, chain 43114)
Origin: 40-acres (`0xff2bef...f5d93d`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**P33** (`0x26e9db...926ca9`, chain 43114)
Origin: 40-acres (`0xd8ee2b...4d4bd8`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xae6e5c...157d0d`, chain 43114)
Origin: autofinance (`0xae334f...cf80f1`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- DLMMFeeCollector (`0x684b34...42289c`, chain 43114)
- DLMMQuoter (`0xddae0a...5fef40`, chain 43114)
- DLMMRewarderFactory (`0xd28467...88548c`, chain 43114)
- FeeCollector (`0x1e1e2a...8437bc`, chain 43114)
- FeeDistributorFactory (`0x5af7fa...5125ac`, chain 43114)
- FeeRecipientFactory (`0x227fab...4de16f`, chain 43114)
- Minter (`0xd23f12...222fde`, chain 43114)
- MixedRouteQuoterV1 (`0x3265d6...99a8a0`, chain 43114)
- NonfungibleTokenPositionDescriptor (`0x6f17db...60a89a`, chain 43114)
- Pharaoh (`0x13a466...1f28e7`, chain 43114)
- ProxyAdmin (`0x3b9197...2b7ee6`, chain 43114)
- Quoter (`0xadae75...456465`, chain 43114)
- QuoterV2 (`0xb72973...ea2138`, chain 43114)
- RamsesV3PoolDeployer (`0x6a4113...7c66f9`, chain 43114)
- RamsesV3PositionManager (`0x0b4478...ab4f39`, chain 43114)
- Router (`0x9cee04...5e38cc`, chain 43114)
- SafeProxy (`0xd1b27c...92d843`, chain 43114)
- SwapRouter (`0xc8b8fc...d3915c`, chain 43114)
- TickLens (`0x3a7aeb...94a100`, chain 43114)
- TimeLock (`0x12d54a...c0ddcf`, chain 43114)
- TransparentUpgradeableProxy (`0x3176f6...4bf483`, chain 43114)
- TransparentUpgradeableProxy (`0x660862...e97882`, chain 43114)
- TransparentUpgradeableProxy (`0x922b9c...8a2aa7`, chain 43114)
- UniswapInterfaceMulticall (`0xf296bb...02b855`, chain 43114)
- UniversalRouter (`0x5acc35...8ec6c6`, chain 43114)
- VoteModule (`0x34f233...6f846b`, chain 43114)
- XPhar (`0xe8164e...736b9a`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (32 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 32/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/32 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 32 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 32 of 34 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/32
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 12.5% (Code4rena, ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 9.4% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 6.3% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266973 | `0x1e1e2a...8437bc` | ✅ Audited |
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-266998 | `0xe56531...07d04e` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-266988 | `0xae6e5c...157d0d` | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-266983 | `0x6a4113...7c66f9` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHubPhar | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267003 | `0x3176f6...4bf483` | ⚠️ Unaudited |
| DLMMFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-266995 | `0xeb4800...a23d4d` | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266982 | `0x684b34...42289c` | ⚠️ Unaudited |
| DLMMQuoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266993 | `0xddae0a...5fef40` | ⚠️ Unaudited |
| DLMMRewarder | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267002 | `0xd28467...88548c` | ⚠️ Unaudited |
| DLMMRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266997 | `0xff2bef...f5d93d` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266981 | `0x5af7fa...5125ac` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266974 | `0x227fab...4de16f` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-266992 | `0xd9a63c...5906b1` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266991 | `0xd23f12...222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266976 | `0x3265d6...99a8a0` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | project_anchor | own_supporting | 0 | avalanche | unit-266984 | `0x6f17db...60a89a` | ⚠️ Unaudited |
| P33 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266975 | `0x26e9db...926ca9` | ⚠️ Unaudited |
| Pharaoh | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266971 | `0x13a466...1f28e7` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-266979 | `0x3b9197...2b7ee6` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266987 | `0xadae75...456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266989 | `0xb72973...ea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267004 | `0x660862...e97882` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | project_anchor | own_supporting | 1 | avalanche | unit-266999 | `0x0b4478...ab4f39` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266986 | `0x9cee04...5e38cc` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267000 | `0xd1b27c...92d843` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266990 | `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266978 | `0x3a7aeb...94a100` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 0 | avalanche | unit-266970 | `0x12d54a...c0ddcf` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266996 | `0xf296bb...02b855` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266980 | `0x5acc35...8ec6c6` | ⚠️ Unaudited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266977 | `0x34f233...6f846b` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267001 | `0x922b9c...8a2aa7` | ⚠️ Unaudited |
| XPhar | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266994 | `0xe8164e...736b9a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbeb24...9ba9a2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11649] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c — no match: No scope section or contract names found in the provided text.
- [11650] diligence.security/audits/2024/08/ramses-v3 — matched: The audit report covers Ramses V3 smart contracts. The scope section lists the commit hash and references an appendix for files in scope. The system overview explicitly names six contracts/libraries: RamsesV3PoolDeployer, RamsesV3Factory, RamsesV3Pool, Oracle, Tick, and Position. The audit was conducted from July to September 2024, with the extension into September, so the end date is September 30, 2024.
- [11651] code4rena.com/reports/2024-10-ramses-exchange — matched: The report states the scope includes 10 smart contracts, but only 5 are explicitly named in the text. The audit date is from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x6a4113...7c66f9` — deployed 2025-09-14 02:10:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae6e5c...157d0d` — deployed 2025-09-14 02:10:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | listed in scope section | no |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0xe56531...07d04e` — deployed 2025-10-08 20:07:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0x1e1e2a...8437bc` — deployed 2025-10-08 20:52:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae6e5c...157d0d` — deployed 2025-09-14 02:10:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | unmatched — not counted | — | Listed in scope and referenced in findings. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x3176f6...4bf483` | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xeb4800...a23d4d` | DLMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x684b34...42289c` | DLMMFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xddae0a...5fef40` | DLMMQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd28467...88548c` | DLMMRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xff2bef...f5d93d` | DLMMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5af7fa...5125ac` | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x227fab...4de16f` | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd23f12...222fde` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3265d6...99a8a0` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6f17db...60a89a` | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x26e9db...926ca9` | P33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x13a466...1f28e7` | Pharaoh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xadae75...456465` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb72973...ea2138` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x660862...e97882` | RamsesTreasuryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0b4478...ab4f39` | RamsesV3PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9cee04...5e38cc` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc8b8fc...d3915c` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3a7aeb...94a100` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x12d54a...c0ddcf` | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5acc35...8ec6c6` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x34f233...6f846b` | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x922b9c...8a2aa7` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe8164e...736b9a` | XPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=5

Zero-match audit list:

- [11649] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
