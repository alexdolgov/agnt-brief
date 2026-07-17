# Agentic Audit Brief: CHATEAU

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: CHATEAU (`chateau`)
- Website: [https://www.chateau.capital](https://www.chateau.capital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: hyperliquid, plasma
- Contract surface: 42 unique implementations (52 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,030,829.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CHATEAU. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across hyperliquid, plasma. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (4), erc20permit (3), ownable (3), ownable2step (3), accesscontrol (1), erc165 (1), erc4626 (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x14e445182c2e281cf839eb0e9a12359653525658`, chain 9745)
- UnnamedContract (`0xea6709c29d4d4b5162d8c55d0c28c5ced6cd7296`, chain 9745)
- chUSD (`0x2222227d90046f1483b3fb37990dea31fcabea02`, chain 999)
- chUSD (`0x22222215d4edc5510d23d0886133e7ece7f5fdc1`, chain 9745)
- StakedchUSDOFT (`0x888888facb316879129e1eee2451260e44b93aa8`, chain 999)
- StakedchUSDV2 (`0x888888bab58a7bd3068110749bc7b63b62ce874d`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 6 of 42 unique; 36 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/21
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 42
- Raw deployments: 52
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 4.8% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| chUSD | unknown | project_anchor | own_supporting | 0 | plasma | unit-231851 | `0x22222215d4edc5510d23d0886133e7ece7f5fdc1` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| chUSD | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231854 | `0x2222227d90046f1483b3fb37990dea31fcabea02` | ⚠️ Unaudited |
| DeadDVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6788f52439aca6bff597d3eec2dc9a44b8fee842` | ⚠️ Unaudited |
| DVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x282b3386571f7f794450d5789911a9804fa346b4` | ⚠️ Unaudited |
| Endpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb6319cc6c8c27a8f5daf0dd3df91ea35c4720dd7` | ⚠️ Unaudited |
| EndpointV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x4208d6e27538189bb48e603d6123a94b8abe0a0b`; plasma `0xcce466a522984415bc91338c232d98869193d46e` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x1998594e4f1007b685bc4fafa87e21c859e7a9c6`; plasma `0x25dcd7adc3ab4c00b8bcf78f33d95a19211eab48` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x377530cda84dfb2673bf4d145dcf0c4d7fdcb5b6`; plasma `0xc1b621b18187f74c8f6d52a6f709dd2780c09821` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x3a73033c0b1407574c76bdbac67f126f6b4a9aa9`; plasma `0xaab5a48cfc03efa9cc34a2c1aacccb84b4b770e4` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x3c2269811836af69497e5f486a85d7316753cf62`; plasma `0x4ee2f9b7cf3a68966c370f3eb2c16613d3235245` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x41bdb4aa4a63a5b2efc531858d3118392b1a1c3d`; plasma `0xa20db4ffe74a31d17fc24bd32a7dd7555441058e` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c`; plasma `0xa658742d33ebd2ce2f0bdff73515aa797fd161d9` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x7cacbe439ead55fa1c22790330b12835c6884a91`; plasma `0xfd76d9cb0bac839725ab79127e7411fe71b1e3ca` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x95cd45c5a57f11c5beee130b3d226c3cb8246476`; plasma `0xf36d3fcde3271530637959ab5e3811824e49411a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcb566e3b6934fa77258d68ea18e931fa75e1aaaa` | ⚠️ Unaudited |
| ReadLib1002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x3742b8f7198b9362437dc0efefa188653cb3aa6e`; plasma `0xda9b06132dd3b5cda3cab2d1516038a8625fef08` | ⚠️ Unaudited |
| ReceiveUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe1844c5d63a9543023008d332bd3d2e6f1fe1043` | ⚠️ Unaudited |
| SendUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc39161c743d0307eb9bcc9fef03eeb9dc4802de7` | ⚠️ Unaudited |
| StakedchUSDOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-231855 | `0x888888facb316879129e1eee2451260e44b93aa8` | ⚠️ Unaudited |
| StakedchUSDV2 | token | project_anchor | own_supporting | 0 | plasma | unit-231852 | `0x888888bab58a7bd3068110749bc7b63b62ce874d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-231850 | `0x14e445182c2e281cf839eb0e9a12359653525658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x15e51701f245f6d5bd0fee87bcaf55b0841451b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1a327a4de4c70c37b91835c3b1b3f0564b032e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1dcdacadb4cb5e9846ca1b667398acdca0203795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2222227d90046f1483b3fb37990dea31fcabea02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2367325334447c5e1e0f1b3a6fb947b262f58312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x37aaaf95887624a363effb7762d489e3c05c2a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x38de71124f7a447a01d67945a51edce9ff491251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4514fc667a944752ee8a29f544c1b20b1a315f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x888888facb316879129e1eee2451260e44b93aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8bc1e36f015b9902b54b1387a4d733cebc2f5a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9740ff91f1985d8d2b71494ae1a2f723bb3ed9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x980205d352f198748b626f6f7c38a8a5663ec981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9c061c9a4782294eef65ef28cb88233a987f4bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc097ab8cd7b053326dfe9fb3e3a31a0cce3b526f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc1b15d3b262beec0e3565c11c9e0f6134bdacb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xce8358bc28dd8296ce8caf1cd2b44787abd65887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-231853 | `0xea6709c29d4d4b5162d8c55d0c28c5ced6cd7296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfe7c30860d01e28371d40434806f4a8fcdd3a098` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Chateau - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Chateau%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3236] Chateau - Zenith Audit Report.pdf — matched: Scope section lists repository and files under contracts/contracts/*. Findings target specific contracts: CHT, RateLimiter, ChateauMinting, chUSD, and chUSDOFT.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Chateau - Zenith Audit Report.pdf | CHT | unmatched — not counted | — | Target in finding M-1 | no |
| Chateau - Zenith Audit Report.pdf | RateLimiter | unmatched — not counted | — | Target in finding M-2 | no |
| Chateau - Zenith Audit Report.pdf | ChateauMinting | own contract | 0xea6709… (selected) `0xea6709c29d4d4b5162d8c55d0c28c5ced6cd7296` — deployed 2025-10-02 11:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Chateau - Zenith Audit Report.pdf | chUSD | own contract | chUSD (selected) `0x22222215d4edc5510d23d0886133e7ece7f5fdc1` — deployed 2025-10-02 11:35:11+03 — liveness: live (current_address_book_code)<br>chUSD (alternative) `0x2222227d90046f1483b3fb37990dea31fcabea02` — deployed 2025-12-20 06:00:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 41d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Chateau - Zenith Audit Report.pdf | chUSDOFT | unmatched — not counted | — | Mentioned in findings M-2 and L-2 as a contract with rate limiter | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x2222227d90046f1483b3fb37990dea31fcabea02` | chUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x888888facb316879129e1eee2451260e44b93aa8` | StakedchUSDOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x888888bab58a7bd3068110749bc7b63b62ce874d` | StakedchUSDV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=1, unique_name=1

Fork inheritance lineage and inherited audits are included when available.
