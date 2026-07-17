# Agentic Audit Brief: OpenTrade

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: OpenTrade (`opentrade`)
- Website: [https://www.opentrade.io](https://www.opentrade.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $218,060,300.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OpenTrade. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche, ethereum. Structural roles: 1 infra, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: infra (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1e571c87556f216662fa8d25143b1b0618512ef6`, chain 1)
- UnnamedContract (`0x3ee320c9f73a84d1717557af00695a34b26d1f1d`, chain 1)
- UnnamedContract (`0xd06f235df80d4981816f7fb0936973155cde1f4c`, chain 1)
- UnnamedContract (`0x09ca60ca323a6313ae144778c3ebdfccfbb5e5d2`, chain 43114)
- UnnamedContract (`0x1d7e71d0cb499c31349df3e9205a4b16bccf2536`, chain 43114)
- UnnamedContract (`0xad6605f4987031fd2d6d6816be53eb7c5b764bf7`, chain 43114)
- UnnamedContract (`0xbfdef5e389bb403426337081ecd1d05bc5193203`, chain 43114)
- BeaconProxy (`0x061329361e0f163125225bf71a1e5af954b46869`, chain 43114)
- PoolFlex (`0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 9 of 37 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/30
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ottersec | Tier 2 | 1 | 3.3% | 2024-02 |
| unknown | Tier 2 | 1 | 3.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolFlex | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250370 | `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-250371 | `0x061329361e0f163125225bf71a1e5af954b46869` | ⚠️ Unaudited |
| BusinessDayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194951b1f48b8145d0672b0b606337fab615bec2` | ⚠️ Unaudited |
| BusinessDayRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566d58557734ca2b49cdd26d01cee3c13515601a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0c6e11a37a7313c282621821455ad826fb61f692` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3eeacc4309435ba1672d8d9265bc717a2c71a49a` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f3373780aa778fcf8e3a78a5f301444cec5845` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69` | ⚠️ Unaudited |
| LoanLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061e680724a10c24ffb87b6f74c0805c64087605` | ⚠️ Unaudited |
| LytPoolOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007b58a41566aa4075fd078d4147a1eaff75923c` | ⚠️ Unaudited |
| PoolAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95a860b546933305618d7b8bd515e29a61b2454` | ⚠️ Unaudited |
| PoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b356be5b818509ece59385c6ed46da460b92e97` | ⚠️ Unaudited |
| PoolControllerDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3303202b4b4b5155885ed529f3df704997afb3ba` | ⚠️ Unaudited |
| PoolControllerFactoryDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93076fe579156bec96408332d21d360cd8cd2a71` | ⚠️ Unaudited |
| PoolControllerFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447239a5c9940ccafa566977c91f17f5d797dbf4` | ⚠️ Unaudited |
| PoolControllerFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0264f33c7716d93053a28efec730bb5e7412c547` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e70b675ab0f296cee11de25b8368e8d30ba740b` | ⚠️ Unaudited |
| PoolFactoryDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d3b32bb456a6e387682f6cd37facefe9a219d0c` | ⚠️ Unaudited |
| PoolFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61424410c0bb1c580ed6363fe9405d9e84fa0578` | ⚠️ Unaudited |
| PoolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33b13987d69f3f117579bef4b235ae909225a507` | ⚠️ Unaudited |
| PoolLibFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78bfc8a7197abfb81d4774e7936a76092be2e169` | ⚠️ Unaudited |
| QueryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5677fd1d1caf56cd8924edc589045978cf1b33f` | ⚠️ Unaudited |
| ServiceConfigurationV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c583a7926635301ddbc3cc9fd613df156206611` | ⚠️ Unaudited |
| ToSAcceptanceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e610a503f541ff58a170a647426c89bba057733` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb7799c33ea95345839f64544c8a3f32d263ae44` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3246677dad49bf6bcbe206741a408cd4c2aedb33` | ⚠️ Unaudited |
| WithdrawController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f41b4898bdd22bb92e78bc2c31247306f9c6548` | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e02665b9c537822b99a2ff07cf854fcefdd7400` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250361 | `0x1e571c87556f216662fa8d25143b1b0618512ef6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250362 | `0x3ee320c9f73a84d1717557af00695a34b26d1f1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250364 | `0xd06f235df80d4981816f7fb0936973155cde1f4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250366 | `0x09ca60ca323a6313ae144778c3ebdfccfbb5e5d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250367 | `0x1d7e71d0cb499c31349df3e9205a4b16bccf2536` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250368 | `0xad6605f4987031fd2d6d6816be53eb7c5b764bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250369 | `0xbfdef5e389bb403426337081ecd1d05bc5193203` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2FJW6LNorAKkBRluGUed86%2FOpenTrade%20LYT%20Protocol%20Audit%20(V1).pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2F9XOHTb77ArpTuka2PE9M%2FOpenTrade%20Protocol%20Audit%20(V5.1.0).pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2FLfqAzt4O1vmBUsMKQfU5%2FOpenTrade%20V5.0%20Audit%20-%20Cantina.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [OpenTrade Audit V4.pdf](https://content.gitbook.com/content/XB36F8w05PtbxlF2D9IN/blobs/kDCibfVNZTx5d6CJFeP7/OpenTrade%20Audit%20V4.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [OpenTrade V3 Audit.pdf](https://content.gitbook.com/content/XB36F8w05PtbxlF2D9IN/blobs/5LS0tGve4UlIgzDSdCEG/OpenTrade%20V3%20Audit.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2F9kG75StzRxlp8Du7eLp4%2FProtocol%20Audit%20V2%20-%20Ottersec%20(1).pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20909] spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf — no match: The report does not have a dedicated scope section, but contract names are extracted from findings context and file references throughout the report. The audit date is explicitly stated on the cover page as 'September 1, 2025'.
- [20910] spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf — no match: Scope section explicitly lists all contracts and interfaces under contracts/ directory.
- [20911] spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf — no match: The report does not have an explicit 'Scope' section, but the contracts are clearly the subject of the audit based on the findings and context. The audit date is from the cover page: 'March 14, 2025'.
- [20912] OpenTrade Audit V4.pdf — matched: Extracted contract names from findings and scope section. Audit date is the follow-up review end date (August 29, 2024) as the most recent date mentioned.
- [20913] OpenTrade V3 Audit.pdf — matched: Extracted contract names from findings and scope description. Audit date is the follow-up review end date (February 16, 2024) as the report covers assessment period up to that date.
- [20914] spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf — matched: Extracted contract names from scope section and findings. Audit date is the follow-up review end date (February 16, 2024) as the latest date mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPool | unmatched — not counted | — | Listed in scope and findings context throughout report. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolServiceConfiguration | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolAccessControlFactory | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolAccessControl | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolRegistry | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolController | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | ILYTPoolStructures | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | IPoolStructures | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | IERC4626 | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolControllerFactory | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolFactory | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | DepositAddressRegistry | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | ServiceConfigurationV6 | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | PoolDynamic | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | PoolControllerDynamic | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | PoolControllerFlex | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | IDepositAddressRegistry | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | PoolDynamic | unmatched — not counted | — | Listed in scope and findings context throughout report. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | PoolControllerDynamic | unmatched — not counted | — | Listed in scope and findings context throughout report. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | PoolControllerFactoryDynamic | unmatched — not counted | — | Mentioned in informational findings (3.5.3). | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | IPoolDynamicStructures | unmatched — not counted | — | Mentioned in informational findings (3.5.3). | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | ServiceConfigurationV5 | unmatched — not counted | — | Mentioned in informational findings (3.5.3, 3.5.6). | no |
| OpenTrade Audit V4.pdf | Pool | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-00, OS-OTD-SUG-02 | no |
| OpenTrade Audit V4.pdf | PoolLib | unmatched — not counted | — | mentioned in finding OS-OTD-ADV-00 | no |
| OpenTrade Audit V4.pdf | Loan | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-01 | no |
| OpenTrade Audit V4.pdf | WithdrawControllerFlex | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-02, OS-OTD-ADV-03, OS-OTD-ADV-04 | no |
| OpenTrade Audit V4.pdf | PoolFlex | own proxy deployment | PoolFlex (proxy) (selected) `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` — deployed 2024-02-29 13:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenTrade Audit V4.pdf | BusinessDayRegistry | unmatched — not counted | — | mentioned in finding OS-OTD-ADV-04 | no |
| OpenTrade Audit V4.pdf | WithdrawDepositControllerFlex | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-03, OS-OTD-ADV-05, OS-OTD-SUG-01 | no |
| OpenTrade Audit V4.pdf | Vault | unmatched — not counted | — | mentioned in findings OS-OTD-SUG-00, OS-OTD-SUG-01 | no |
| OpenTrade Audit V4.pdf | PoolAccessControl | unmatched — not counted | — | mentioned in finding OS-OTD-SUG-01 | no |
| OpenTrade V3 Audit.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| OpenTrade V3 Audit.pdf | PoolLib | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | Loan | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | WithdrawControllerFlex | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | PoolFlex | own proxy deployment | PoolFlex (proxy) (selected) `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` — deployed 2024-02-29 13:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenTrade V3 Audit.pdf | BusinessDayRegistry | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | WithdrawDepositControllerFlex | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | Vault | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | PoolAccessControl | unmatched — not counted | — | referenced in findings | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | Pool | unmatched — not counted | — | Listed in scope and findings (e.g., OS-OTD-ADV-00, OS-OTD-SUG-02) | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | PoolLib | unmatched — not counted | — | Referenced in finding OS-OTD-ADV-00 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | Loan | unmatched — not counted | — | Listed in findings OS-OTD-ADV-01 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | WithdrawControllerFlex | unmatched — not counted | — | Listed in findings OS-OTD-ADV-02, OS-OTD-ADV-04 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | PoolFlex | own proxy deployment | PoolFlex (proxy) (selected) `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` — deployed 2024-02-29 13:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | BusinessDayRegistry | unmatched — not counted | — | Listed in finding OS-OTD-ADV-04 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | WithdrawDepositControllerFlex | unmatched — not counted | — | Listed in findings OS-OTD-ADV-03, OS-OTD-ADV-05, OS-OTD-SUG-01 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | Vault | unmatched — not counted | — | Listed in findings OS-OTD-SUG-00, OS-OTD-SUG-01 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | PoolAccessControl | unmatched — not counted | — | Listed in finding OS-OTD-SUG-01 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 46 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=3

Zero-match audit list:

- [20909] spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf
- [20910] spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf
- [20911] spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf

Fork inheritance lineage and inherited audits are included when available.
