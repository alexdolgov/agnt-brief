# Agentic Audit Brief: Delta Financial

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

- Project: Delta Financial (`delta-financial`)
- Website: [https://www.delta.finance](https://www.delta.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 65 unique implementations (109 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,496,097.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Delta Financial. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 unclassified, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9e20ec...54c38b`, chain 1)
- TransparentUpgradeableProxy (`0x6b29a3...9de848`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (1 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 63 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 1 of 65 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 65
- Raw deployments: 109
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x98107c...3f43f5`; ethereum `0xa244f1...be31af`; ethereum `0xc3977a...dc1b83` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d1572...373423`; ethereum `0xfe3715...8024a6` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b5982...615ab8`; ethereum `0xf3d513...b961f2` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0xb8a350...7e641e`; ethereum `0xdc3571...1b1c41`; ethereum `0xe4b861...85b4d8` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf236c3...aeaa57` | ⚠️ Unaudited |
| CLending | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x466815...e47f49`; ethereum `0x54b276...ea58c5` | ⚠️ Unaudited |
| cLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x558c34...6e2ed5`; ethereum `0xa88849...ba4879` | ⚠️ Unaudited |
| cLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87cde0...297597`; ethereum `0xf7ca8f...0bc591` | ⚠️ Unaudited |
| CORE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62359e...fa23d7` | ⚠️ Unaudited |
| CORE_LGE_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaac50b...a4a76b` | ⚠️ Unaudited |
| CORE_RLP_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904cf9...4bcc70` | ⚠️ Unaudited |
| coreDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00a661...f37642` | ⚠️ Unaudited |
| CoreDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf66cd2...32dd58` | ⚠️ Unaudited |
| CoreDAOTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc3fb0b...3caad0`; ethereum `0xe508a3...4380de` | ⚠️ Unaudited |
| COREDEX_RLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x40874d...3b93cb`; ethereum `0x75c50f...d8b2fc`; ethereum `0x98505e...5e8d65`; ethereum `0x9d3890...dd1796` | ⚠️ Unaudited |
| COREForkMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5dca40...314d35` | ⚠️ Unaudited |
| COREForkMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6bd04...1520af` | ⚠️ Unaudited |
| COREGlobals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x20a387...fa78ae`; ethereum `0x22cc20...460672` | ⚠️ Unaudited |
| COREGlobals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x255ca4...50128b` | ⚠️ Unaudited |
| COREv1Router | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0ee460...ba78e0`; ethereum `0xbeb307...d53a77` | ⚠️ Unaudited |
| COREv1Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ad04...abd0fd` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x16c0a1...276994`; ethereum `0x224191...1d510d`; ethereum `0x97a979...2b2fd4`; ethereum `0x9dbbfe...840220`; ethereum `0xc42b4e...5c9b98`; ethereum `0xd0ea2a...5cf161`; ethereum `0xdaeca5...a32118` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x556176...348f2c`; ethereum `0xac6bb1...12c291` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7ca9b4...05f0d3`; ethereum `0xc5cacb...c0d8c9` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d59c...fb40a1` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6bf15a...be0eec`; ethereum `0x9fe9bb...c221be` | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bbe...60a943` | ⚠️ Unaudited |
| DELTA_Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa4079d...6f7cb0`; ethereum `0xf249c5...667461` | ⚠️ Unaudited |
| DELTA_Limited_Staking_Window | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdafce5...e2beab` | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b0b47...a4765a`; ethereum `0x9282d0...3cc7b0`; ethereum `0x9c92c7...88cac7` | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdad70b...6f9fe8`; ethereum `0xfcfc43...a7cfba` | ⚠️ Unaudited |
| DELTA_Reserve_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x021af3...a63c34`; ethereum `0x6e570d...a0b53d` | ⚠️ Unaudited |
| DeltaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3e8f...6345bc` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f715...918783` | ⚠️ Unaudited |
| FannyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbb791b...9d7816` | ⚠️ Unaudited |
| FeeApprover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0db0...186587` | ⚠️ Unaudited |
| Fixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e6b8...1538fb` | ⚠️ Unaudited |
| FlashArbitrageController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x220564...c0657d` | ⚠️ Unaudited |
| FlashArbitrageController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2929f4...16c967` | ⚠️ Unaudited |
| IWannaDie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9a94...089a5b` | ⚠️ Unaudited |
| OVLBalanceHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d4eba...612ee1`; ethereum `0x867dac...058634`; ethereum `0xbfa5b7...3629a2` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x42716d...53387b`; ethereum `0x7e7ac6...bbe96c`; ethereum `0x969a34...8df248`; ethereum `0xa0bb29...262a61`; ethereum `0xed686b...f8fe15` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-383712 | 2 deployments: ethereum `0x9e349f...1a67a5`; ethereum `0x9ea3b5...7b20ef` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x55e16b...1246b7`; ethereum `0x9cb1ee...4b1f0f`; ethereum `0xc4336c...8f850d`; ethereum `0xe02c07...261d46`; ethereum `0xe3ad20...0cd309` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370f10...d77436` | ⚠️ Unaudited |
| StableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3554fc...efbd26` | ⚠️ Unaudited |
| TeamShareTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0912f4...169c8e`; ethereum `0x5bcada...9aba1b` | ⚠️ Unaudited |
| TransferHandler01 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e2a33...118e7a`; ethereum `0xc0d019...586167` | ⚠️ Unaudited |
| TransferHandler01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x865834...ec1d77`; ethereum `0x9e674c...2d54af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383711 | 2 deployments: ethereum `0x6b29a3...9de848`; ethereum `0x9e20ec...54c38b` | ⚠️ Unaudited |
| Unimplemented | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c53b4...7e363c` | ⚠️ Unaudited |
| wCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17b8c1...23b669` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25858c...fe71da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398ab4...02c954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f32c...06e199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708722...5059d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0f5f...d6e01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80af36...7c4cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859b2f...66c20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a957...de71d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53369...a98e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a9da...42b8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a3f8...788654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fa5b...0403cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a55f...ccf506` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/delta-finance](https://skynet.certik.com/projects/delta-finance) | CertiK | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21299] skynet.certik.com/projects/delta-finance — no match: Extracted from 'Audited Files' section; only two files listed with truncated SHA256 hashes. Audit date from 'Last Audit was delivered on 7/23/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/delta-finance | ISwapAggregator | unmatched — not counted | — | listed in Audited Files | no |
| skynet.certik.com/projects/delta-finance | Curve | unmatched — not counted | — | listed in Audited Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21299] skynet.certik.com/projects/delta-finance

Fork inheritance lineage and inherited audits are included when available.
