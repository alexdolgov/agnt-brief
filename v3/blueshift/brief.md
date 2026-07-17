# Agentic Audit Brief: Blueshift

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Blueshift (`blueshift`)
- Website: [https://blueshift.fi/](https://blueshift.fi/)
- Lifecycle: active (Tier 0, 73.8% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kava, polygon
- Contract surface: 37 unique implementations (43 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,306,736.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Blueshift. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across kava, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x35701f18e5303c965ce5877ffea5e3150ec96f3f`, chain 137)
- UnnamedContract (`0xe03d836717b356911b41d53f21e64fb8de2a2a5a`, chain 137)
- UnnamedContract (`0x0f5c75d1d23f8d1b05b2f87c2592a2dcf5b7cbc4`, chain 2222)
- UnnamedContract (`0x151888e9a0634f0cbec18539146bb7341985d697`, chain 2222)
- UnnamedContract (`0x15a61376c4b89b064a829248713032c4f6d05f30`, chain 2222)
- UnnamedContract (`0x39f220f50f67bc6d7ced35affba82191c43668b5`, chain 2222)
- UnnamedContract (`0x552a1dbdc4a48fc211c945a00ec0b73648d9fb1c`, chain 2222)
- UnnamedContract (`0x667fd83e24ca1d935d36717d305d54fa0cac991c`, chain 2222)
- UnnamedContract (`0x8d7a76cb2ce26136b86f311e3422e939493608c9`, chain 2222)
- UnnamedContract (`0x9817fc85aee7b88f83be474b1327595a8b298b0b`, chain 2222)
- UnnamedContract (`0xa2f7a17872c5a02097970de636eda8a088aec9ab`, chain 2222)
- UnnamedContract (`0xdc633d8464e998b67816cff65e23346f2e2544c8`, chain 2222)
- TransparentUpgradeableProxy (`0x2080a319a4b11d097050722b6b65d09f754edc83`, chain 137)
- UnnamedContract (`0x49399653f651a25924b3d8718276b5b4372577b1`, chain 2222)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 13 of 37 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 37
- Raw deployments: 43
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xdc05bacc1f97f874d9d09860a8a93365372a3186`; polygon `0xf8c71776449cfafb108a3ef6f42a4206988065f5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x12fd7e24628a164d1f69a22d8808f8956dc3789b`; polygon `0xeb7b352eb80b61913dc36cdb8c29233b4f3e9550` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | polygon | unit-230884 | 2 deployments: polygon `0x2080a319a4b11d097050722b6b65d09f754edc83`; polygon `0x35701f18e5303c965ce5877ffea5e3150ec96f3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b44b21d287db74375d5139a78af17512297f251`; polygon `0xa5eddb240376491b0b1657b336a299b46434959a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb6b3b594e707072abd475a4c8a48235eca13c9cb`; polygon `0xce108380c39e4fe9dace9d5597e048bcc5ef743b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xcfbf083a7749c23391296c65adbdd8a4118b861f`; polygon `0xf799001542b2b48af1e316d1d3912dcc0937a4e1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e4245512756e77f7c46a2cf73f7c30e4f755310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27e55249ed8cda161d9483bf58dfad259b1faa2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3abd79823c595c0778e51246c491126e77367b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x589e3edd93a22fb316cff53eaba6bb958ff601cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b83436c761e26e475fe2c6a54cf4d0e3fca2bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x800618b612b4c1602e8a96b39c16420df5a6653c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96c95d44f93162e511a4bcd8a5967a177a7e7242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4f0e3c80c77b347250b9d3999478e305ff814a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7555b3f658f71b33fe3eada33c47b7462b44f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac6e4f7125c4f79af728a8e65fe32ef9557c9c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadbd83bfc4ff8a4f0bbf1d1b8d4780717a4e8fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb470e97ef18720ec42f4a855812a51d9acadf2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbabbed808284ab2a86ffcba815d3309d7fcc44f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbeb9421b485e81a3b12af84df6f2d3ef9fddb49c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-230872 | `0xe03d836717b356911b41d53f21e64fb8de2a2a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5399ba209c70f9210c3b52a162fb8e3c6323a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff485b08a64046b9a23342d6098f26e7c237c19a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230873 | `0x0f5c75d1d23f8d1b05b2f87c2592a2dcf5b7cbc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230874 | `0x151888e9a0634f0cbec18539146bb7341985d697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230875 | `0x15a61376c4b89b064a829248713032c4f6d05f30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230876 | `0x39f220f50f67bc6d7ced35affba82191c43668b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230877 | `0x49399653f651a25924b3d8718276b5b4372577b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230878 | `0x552a1dbdc4a48fc211c945a00ec0b73648d9fb1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230879 | `0x667fd83e24ca1d935d36717d305d54fa0cac991c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | `0x784156f8729c64bad3cc79fc20d1e8cde8d42e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | `0x7a60918bd5c83ef7e2aba87d13e3fd704f6a77e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230880 | `0x8d7a76cb2ce26136b86f311e3422e939493608c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230881 | `0x9817fc85aee7b88f83be474b1327595a8b298b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | `0xa2351aea209ceb0ffecd77149ec615335d7f513d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230882 | `0xa2f7a17872c5a02097970de636eda8a088aec9ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-230883 | `0xdc633d8464e998b67816cff65e23346f2e2544c8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/blueshift](https://skynet.certik.com/projects/blueshift) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2594] skynet.certik.com/projects/blueshift — no match: Extracted from 'Audited Files/SHA256' section listing TestERC20Token.sol and BlueshiftLPTMinter.sol. Audit date from 'Last Audit was delivered on 5/2/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/blueshift | TestERC20Token | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/blueshift | BlueshiftLPTMinter | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2594] skynet.certik.com/projects/blueshift

Fork inheritance lineage and inherited audits are included when available.
