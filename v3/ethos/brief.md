# Agentic Audit Brief: Ethos

## Export Authority

- Production state: **published scope**
- Raw selected rows: 24 across 5 audit(s)
- Eligible audit results: 6 (5 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ethos (`ethos`)
- Website: [https://www.ethos.network/](https://www.ethos.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 39 unique implementations (63 raw deployments)
- Coverage basis: 10/18 confirmed own live verified implementations (55.6%); conservative 55.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,339,833.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ethos. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across base. Structural roles: 22 unclassified, 4 infra, 4 supporting, 2 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: unclassified (22), infra (4), supporting (4), core (2)
- Contract kinds: contract (32)
- Detected standards: erc1967proxy (5), ownable (2), accesscontrol (1), erc165 (1), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ContractAddressManager (`0xc31252d6be0252018f1b12def25f6582db0f3e9a`, chain 8453)
- ERC1967Proxy (`0x209820b843900ef77bd639455cde15f38a252a36`, chain 8453)
- ERC1967Proxy (`0x27499d9a439d1c7b4538f247625cc7aa159d3c14`, chain 8453)
- ERC1967Proxy (`0x2820b3ab3543adb80810f11f2651f0dd9a04e801`, chain 8453)
- ERC1967Proxy (`0x5fab43b6e906f05d5d5e9d4b0582dd7b4eedc7e7`, chain 8453)
- ERC1967Proxy (`0x6d3a8fd5cf89f9a429bfadfd970968f646aff325`, chain 8453)
- ERC1967Proxy (`0x89e6ff2ce8318433e011d848d8a35fbfee60c2ed`, chain 8453)
- ERC1967Proxy (`0x8b92d27846559abd7cee0c01435a35f3d7731c35`, chain 8453)
- ERC1967Proxy (`0xada5a6e455cb93e8a934d09eb564ff465d923c54`, chain 8453)
- ERC1967Proxy (`0xb2c41deba270e1ea6abbe0e2fa70432630634a59`, chain 8453)
- ERC1967Proxy (`0xc26f339f4e46c776853b1c190ec17173dbe059bf`, chain 8453)
- ERC1967Proxy (`0xd56695235933ce2d9de477467b44378322ecd194`, chain 8453)
- ERC1967Proxy (`0xd89e6b7687f862dd6d24b3b2d4d0dec6a89a6fdd`, chain 8453)
- EthosAttestation (`0xaf35ee91380c928d2752e67d55bb85628c8e1386`, chain 8453)
- EthosBond (`0xda592a2c88456dec6d84f8203134303ec66d749a`, chain 8453)
- EthosBroker (`0x6045d0fcfe7a54c85c095a1b2877964baf4aa9bd`, chain 8453)
- EthosDiscussion (`0x89fb1c2a52634ac582f4380f29fe7800a9e2e2f0`, chain 8453)
- EthosListingPass (`0xd998f84a46b874ff0f8f5b136f3bf54649d94d60`, chain 8453)
- EthosProject (`0xf00b5cf6b357f7fb01721c21f03c5d6bed6aeda4`, chain 8453)
- EthosReview (`0xf641089aa70d7bdaa2d9c02ca134fb7e014a83dc`, chain 8453)
- EthosSlash (`0xe4c8fc01b416ee13c8b21171ff90f5274428dc73`, chain 8453)
- EthosVote (`0x744bd54140255e7a60a01c14d8fb7706b2e4b317`, chain 8453)
- InteractionControl (`0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5`, chain 8453)
- ReputationMarket (`0xe0da0eda50376e111e1640db43b0c6a486bc7505`, chain 8453)
- ReverseAuction (`0x323a8314362a4ce13e26cf67e3590989d143ca2a`, chain 8453)
- SafeProxy (`0x72f04d999e12d456fe7ee0acaa345124a081018d`, chain 8453)
- SafeProxy (`0x7a20d99307172d8f6b80bf1e904bbf069c31c131`, chain 8453)
- SafeProxy (`0xb4a9bc5fb037ebd805a405f2b53cfadf4bcb4774`, chain 8453)
- SignatureVerifier (`0x78a32a705bfc1600e0a2e056316e44877bda7f57`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 32; live-surface rows included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/18 (55.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 18 of 39 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/34
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 39
- Raw deployments: 63
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 55.6% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 10 | 29.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ContractAddressManager | governance | project_anchor | own_supporting | 0 | base | unit-239539 | `0xc31252d6be0252018f1b12def25f6582db0f3e9a` | ✅ Audited |
| EthosAttestation | unknown | project_anchor | own_supporting | 1 | base | unit-239548 | 2 deployments: base `0x27499d9a439d1c7b4538f247625cc7aa159d3c14`; base `0xaf35ee91380c928d2752e67d55bb85628c8e1386` | ✅ Audited |
| EthosDiscussion | unknown | project_anchor | own_supporting | 1 | base | unit-239547 | 2 deployments: base `0x2820b3ab3543adb80810f11f2651f0dd9a04e801`; base `0x89fb1c2a52634ac582f4380f29fe7800a9e2e2f0` | ✅ Audited |
| EthosProfile | unknown | project_anchor | own_supporting | 1 | base | unit-239542 | 2 deployments: base `0x209820b843900ef77bd639455cde15f38a252a36`; base `0x2661710d76c872681efc25300de84138a6369e3a` | ✅ Audited |
| EthosReview | unknown | project_anchor | own_supporting | 1 | base | unit-239555 | 2 deployments: base `0x6d3a8fd5cf89f9a429bfadfd970968f646aff325`; base `0xf641089aa70d7bdaa2d9c02ca134fb7e014a83dc` | ✅ Audited |
| EthosVote | unknown | project_anchor | own_supporting | 1 | base | unit-239546 | 2 deployments: base `0x744bd54140255e7a60a01c14d8fb7706b2e4b317`; base `0x89e6ff2ce8318433e011d848d8a35fbfee60c2ed` | ✅ Audited |
| EthosVouch | unknown | project_anchor | own_supporting | 1 | base | unit-239553 | 2 deployments: base `0xd89e6b7687f862dd6d24b3b2d4d0dec6a89a6fdd`; base `0xebe137ea60f980f40fd30e763d09b9c0ce892801` | ✅ Audited |
| InteractionControl | unknown | project_anchor | own_supporting | 0 | base | unit-239530 | `0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5` | ✅ Audited |
| ReputationMarket | unknown | project_anchor | own_supporting | 1 | base | unit-239551 | 2 deployments: base `0xc26f339f4e46c776853b1c190ec17173dbe059bf`; base `0xe0da0eda50376e111e1640db43b0c6a486bc7505` | ✅ Audited |
| SignatureVerifier | periphery | project_anchor | own_supporting | 0 | base | unit-239536 | `0x78a32a705bfc1600e0a2e056316e44877bda7f57` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ContractAddressManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6f811d8aed56d68d2b8658e01519069470b7436` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x78c322314013b5658536929e823be260f9c536a1`; base `0x7c7ad8d1a255e1aef9d8f77ee13f107d49cdfbe0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbfced9932c2180d6e3db2f933d5d2512c59e0ec9`; base `0xd8385ee87471215f56ccd34b1f2b1ee7cb852e3c` | ⚠️ Unaudited |
| EthosAttestation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18e76564ecaabde4665b753197df7e514973aade`; base `0x4931536fc088037f913521daf0441786f22128c6` | ⚠️ Unaudited |
| EthosBond | unknown | project_anchor | own_supporting | 1 | base | unit-239550 | 2 deployments: base `0x21380b24ee8b4a8d809a5049d0a9ac047828384a`; base `0xda592a2c88456dec6d84f8203134303ec66d749a` | ⚠️ Unaudited |
| EthosBroker | unknown | project_anchor | own_supporting | 1 | base | unit-239545 | 2 deployments: base `0x5fab43b6e906f05d5d5e9d4b0582dd7b4eedc7e7`; base `0x6045d0fcfe7a54c85c095a1b2877964baf4aa9bd` | ⚠️ Unaudited |
| EthosDiscussion | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x24935729bbff8d4c6210d769eb058a1733662f42`; base `0x7fdac5e0e137b9299107f4e4f77c315c477e74c9` | ⚠️ Unaudited |
| EthosListingPass | unknown | project_anchor | own_supporting | 1 | base | unit-239549 | 2 deployments: base `0xada5a6e455cb93e8a934d09eb564ff465d923c54`; base `0xd998f84a46b874ff0f8f5b136f3bf54649d94d60` | ⚠️ Unaudited |
| EthosProfile | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1d073a9cb370dd94496f921c17b591cac8126c6f`; base `0xd31d6486a4ccfc171b7e498fe69ff51feda1e3aa` | ⚠️ Unaudited |
| EthosProfile | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x311df4d62055064b3047e3535b81f33eeffc255c` | ⚠️ Unaudited |
| EthosProject | unknown | project_anchor | own_supporting | 1 | base | unit-239554 | 2 deployments: base `0x8b92d27846559abd7cee0c01435a35f3d7731c35`; base `0xf00b5cf6b357f7fb01721c21f03c5d6bed6aeda4` | ⚠️ Unaudited |
| EthosReview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3dc2154b35e737dade925893e23068fbb3bb31bd`; base `0x6af8b0fc6998cc4801b9979503df557035e0af03` | ⚠️ Unaudited |
| EthosSlash | unknown | project_anchor | own_supporting | 1 | base | unit-239552 | 2 deployments: base `0xb2c41deba270e1ea6abbe0e2fa70432630634a59`; base `0xe4c8fc01b416ee13c8b21171ff90f5274428dc73` | ⚠️ Unaudited |
| EthosSlash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb51b4a6622d591785abcee24060796c5e5dc1f1b` | ⚠️ Unaudited |
| EthosVote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x405f85b6670f205252f14064c70b9a980a2c8429`; base `0x6f75bfb43a28410c03aa2af4dc0196fa8049d136` | ⚠️ Unaudited |
| EthosVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59` | ⚠️ Unaudited |
| EthosVouch | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5a914935c56a9f62417726064a9a9aed5d7ae9c3`; base `0x879989c287e2a98a31f04f94eea408f3e1b99d18` | ⚠️ Unaudited |
| EthosVouch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb7866ca9e586118fb7a97b5f198776f86afa53bd`; base `0xbbbdbebc1ad8e1081b31d341123577f1a5827c47` | ⚠️ Unaudited |
| InteractionControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fa6432cd0e2f2b4310c27d80c9726ea41c38b61` | ⚠️ Unaudited |
| ReputationMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa65e325f3b788085739b5a0ab366b323d832d164`; base `0xbad687c67afcd6e97e59b93661ccee753c87cd9c` | ⚠️ Unaudited |
| ReverseAuction | unknown | project_anchor | own_supporting | 1 | base | unit-239544 | 2 deployments: base `0x323a8314362a4ce13e26cf67e3590989d143ca2a`; base `0xd56695235933ce2d9de477467b44378322ecd194` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 2 | base | unit-239543 (2 proxies) | 2 deployments: base `0x7a20d99307172d8f6b80bf1e904bbf069c31c131`; base `0xb4a9bc5fb037ebd805a405f2b53cfadf4bcb4774` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-239534 | `0x72f04d999e12d456fe7ee0acaa345124a081018d` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0992bb163b8f5615258defe98fb8bd63327b5b10` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a574edc919ddb2ceb192f3623b68ff1c5d63b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x354fb4d1e6751dd7f73943f9ebc032d521d29186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a9271fe639edd6bfed95357955a378de122f3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x789888ce1e09f3822218eaaef70a6c51b3f241ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcaa2dccd4a863f31d66b289a00825f61a49860a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report.pdf (also discovered via alternate URL)](https://github.com/sherlock-audit/2024-11-ethos-network-ii-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name|n/a | matched | 6 | 6 | 0 | 5 | high |
| [smart-contract-audits.md](https://whitepaper.ethos.network/security/smart-contract-audits.md) | unknown | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-10-ethos-network (GitHub directory)](https://github.com/sherlock-audit/2024-10-ethos-network) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name | matched | 8 | 5 | 0 | 15 | high |
| [2024-10-ethos-network-judging (GitHub directory)](https://github.com/sherlock-audit/2024-10-ethos-network-judging) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name | matched | 5 | 5 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2945] Audit_Report.pdf — matched: Extracted from report header and findings; scope section mentions repository and branch but no explicit contract list; contracts inferred from findings.
- [2947] smart-contract-audits.md — no match: The document is an index page listing multiple audits with links to PDF reports, but does not contain the actual scope or contract names. The contract upgrades table mentions 'Vouch Contract' and 'Profile Contract' but these are not explicitly listed as in-scope contracts for a specific audit. No audit report date is extractable from this page.
- [27403] 2024-10-ethos-network (GitHub directory) — matched: Extracted all contracts from the audit scope listing. No audit date found in the provided text.
- [27404] 2024-10-ethos-network-judging (GitHub directory) — matched: Extracted contract names from findings and file paths; no explicit scope section found; audit date not provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report.pdf | AccessControl | unmatched — not counted | — | mentioned in findings | no |
| Audit_Report.pdf | Common | unmatched — not counted | — | — | no |
| Audit_Report.pdf | EthosAttestation | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x27499d9a439d1c7b4538f247625cc7aa159d3c14` — deployed 2025-01-16 21:40:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | EthosDiscussion | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2820b3ab3543adb80810f11f2651f0dd9a04e801` — deployed 2025-01-16 21:41:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | EthosProfile | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x209820b843900ef77bd639455cde15f38a252a36` — deployed 2025-01-16 21:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | EthosReview | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6d3a8fd5cf89f9a429bfadfd970968f646aff325` — deployed 2025-01-16 21:46:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | EthosVouch | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd89e6b7687f862dd6d24b3b2d4d0dec6a89a6fdd` — deployed 2025-01-16 21:49:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | ReputationMarket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xc26f339f4e46c776853b1c190ec17173dbe059bf` — deployed 2025-01-16 21:51:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | ReputationMarketErrors | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | SignatureControl | unmatched — not counted | — | mentioned in findings | no |
| Audit_Report.pdf | LMSR | unmatched — not counted | — | listed in scope | no |
| 2024-10-ethos-network (GitHub directory) | EthosAttestation | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x27499d9a439d1c7b4538f247625cc7aa159d3c14` — deployed 2025-01-16 21:40:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | EthosDiscussion | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2820b3ab3543adb80810f11f2651f0dd9a04e801` — deployed 2025-01-16 21:41:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | EthosProfile | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x209820b843900ef77bd639455cde15f38a252a36` — deployed 2025-01-16 21:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | EthosReview | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6d3a8fd5cf89f9a429bfadfd970968f646aff325` — deployed 2025-01-16 21:46:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | EthosVote | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x89e6ff2ce8318433e011d848d8a35fbfee60c2ed` — deployed 2025-01-16 21:47:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | AttestationErrors | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | DiscussionErrors | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | ProfileErrors | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | ReviewErrors | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | TargetStatusErrors | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | VoteErrors | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | IEthosAttestation | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | IEthosProfile | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | ISignatureVerifier | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | ITargetStatus | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | AccessControl | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | Common | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | Constants | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | ContractAddressManager | own contract | ContractAddressManager (selected) `0xc31252d6be0252018f1b12def25f6582db0f3e9a` — deployed 2025-01-16 21:37:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | InteractionControl | own contract | InteractionControl (selected) `0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5` — deployed 2025-01-16 21:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | SignatureControl | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network (GitHub directory) | SignatureVerifier | own contract | SignatureVerifier (selected) `0x78a32a705bfc1600e0a2e056316e44877bda7f57` — deployed 2025-01-16 21:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network (GitHub directory) | Structs | unmatched — not counted | — | listed in audit scope | no |
| 2024-10-ethos-network-judging (GitHub directory) | EthosProfile | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x209820b843900ef77bd639455cde15f38a252a36` — deployed 2025-01-16 21:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network-judging (GitHub directory) | EthosAttestation | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x27499d9a439d1c7b4538f247625cc7aa159d3c14` — deployed 2025-01-16 21:40:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network-judging (GitHub directory) | EthosDiscussion | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2820b3ab3543adb80810f11f2651f0dd9a04e801` — deployed 2025-01-16 21:41:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network-judging (GitHub directory) | EthosReview | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6d3a8fd5cf89f9a429bfadfd970968f646aff325` — deployed 2025-01-16 21:46:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network-judging (GitHub directory) | EthosVote | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x89e6ff2ce8318433e011d848d8a35fbfee60c2ed` — deployed 2025-01-16 21:47:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-ethos-network-judging (GitHub directory) | AccessControl | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-ethos-network-judging (GitHub directory) | SignatureControl | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x21380b24ee8b4a8d809a5049d0a9ac047828384a` | EthosBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5fab43b6e906f05d5d5e9d4b0582dd7b4eedc7e7` | EthosBroker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xada5a6e455cb93e8a934d09eb564ff465d923c54` | EthosListingPass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8b92d27846559abd7cee0c01435a35f3d7731c35` | EthosProject | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb2c41deba270e1ea6abbe0e2fa70432630634a59` | EthosSlash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x323a8314362a4ce13e26cf67e3590989d143ca2a` | ReverseAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (16 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=1
- Match method counts: unique_name=24

Zero-match audit list:

- [2947] smart-contract-audits.md

Fork inheritance lineage and inherited audits are included when available.
