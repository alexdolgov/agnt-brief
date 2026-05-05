# Agentic Brief: OpenEden

## Project Overview

- **Project:** OpenEden (openeden)
- **Website:** openeden.com
- **Category:** RWA
- **Chains (topography):** 1, 56, 137, 8453, 42161
- **Chains (DeFiLlama):** 1, 56, 101, 137, 8453, 42161
- **TVL:** $761,102,557 (3 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 67 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

OpenEden has 44 deployed contract rows in current topography. This brief renders the 44 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 44 contracts across 5 chains. 5 have TP audit coverage (11.4%); 39 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| DSToken | token | token | likely in scope | [0x603bb6...83b2](https://etherscan.io/address/0x603bb6909be14f83282e03632280d91be7fb83b2) |
| DSToken | token | token | likely in scope | [0xaf8848...5156](https://etherscan.io/address/0xaf88485377cca5e690e7dcb1ba81370f0b575156) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x225571...ff01](https://etherscan.io/address/0x2255718832bc9fd3be1caf75084f4803da14ff01) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x3ddc84...0dc9](https://etherscan.io/address/0x3ddc84940ab509c11b20b76b466933f40b750dc9) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x6a9da2...9041](https://etherscan.io/address/0x6a9da2d710bb9b700acde7cb81f10f1ff8c89041) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x807570...5e4e](https://etherscan.io/address/0x807570e6c416f910d9d0fa6c11d03b6ce56e5e4e) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x80e49d...e887](https://etherscan.io/address/0x80e49d1bdce8f80c38e88dd5c4c004ddb9b4e887) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x823888...3bfe](https://etherscan.io/address/0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xdd50c0...2e8a](https://etherscan.io/address/0xdd50c053c096cb04a3e3362e2b622529ec5f2e8a) |
| KycManager | controller | controller | audited (TP) | [0x51be49...d947](https://etherscan.io/address/0x51be497aced1a2c19f6151064301e356b020d947) |
| MoneyMarketFund_V6 | vault_pool | vault_pool | unmatched | [0x20ca56...f4c5](https://etherscan.io/address/0x20ca56f1215c3376b25bba1f2f9d3701c5def4c5) |
| OpenEdenVaultV5 | vault_pool | vault_pool | audited (TP) | [0xc4545b...c048](https://etherscan.io/address/0xc4545bf80f935894cbe138d86b506923dab7c048) |
| Proxy | proxy | proxy | likely in scope | [0x7712c3...2aec](https://etherscan.io/address/0x7712c34205737192402172409a8f7ccef8aa2aec) |
| ShortDurationYieldCoinProxy | strategy | strategy | unmatched | [0x136471...9f2b](https://etherscan.io/address/0x136471a34f6ef19fe571effc1ca711fdb8e49f2b) |
| TBillPriceOracle | oracle | oracle | audited (TP) | [0xce9a66...5f40](https://etherscan.io/address/0xce9a6626eb99eaea829d7fa613d5d0a2eae45f40) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xad6250...7b0f](https://etherscan.io/address/0xad6250f0bd49f7a1eb11063af2ce9f25b9597b0f) |
| WalletSimple | core | core | unmatched | [0x5bf369...642c](https://etherscan.io/address/0x5bf369282fc12d773b06c6cdd574ccedab0c642c) |
| YieldCoin | strategy | strategy | unmatched | [0xbf0f2f...eb92](https://etherscan.io/address/0xbf0f2f3aad6b99893d80c550fbacec915545eb92) |
| unnamed | unknown | unknown | unmatched | [0x06bb4a...9046](https://etherscan.io/address/0x06bb4ab600b7d22eb2c312f9babc22be6a619046) |
| unnamed | unknown | unknown | unmatched | [0x12e04c...220d](https://etherscan.io/address/0x12e04c932d682a2999b4582f7c9b86171b73220d) |
| unnamed | unknown | unknown | unmatched | [0x5e6c2a...ff8c](https://etherscan.io/address/0x5e6c2ad8376a9e5e857b1d91643399e9ab65ff8c) |
| unnamed | unknown | unknown | unmatched | [0x5eaff7...eb88](https://etherscan.io/address/0x5eaff7af80488033bc845709806d5fae5291eb88) |
| unnamed | unknown | unknown | unmatched | [0x602a1c...8f75](https://etherscan.io/address/0x602a1cb1f821a3e8f507a7637a4be7af19578f75) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x302e52...0aa8](https://bscscan.com/address/0x302e52aff9815b9d1682473dbfb9c74f9b750aa8) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x64748e...d8ef](https://bscscan.com/address/0x64748ea3e31d0b7916f0ff91b017b9f404ded8ef) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xafd627...767e](https://bscscan.com/address/0xafd6272ef694bc9a9d197979489543cdefb3767e) |
| unnamed | unknown | unknown | unmatched | [0x5eaff7...eb88](https://bscscan.com/address/0x5eaff7af80488033bc845709806d5fae5291eb88) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| DSToken | token | token | likely in scope | [0x20c4c5...b836](https://polygonscan.com/address/0x20c4c5194658e58fc783f4272254d3f8f18bb836) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x2893ef...0e99](https://polygonscan.com/address/0x2893ef551b6dd69f661ac00f11d93e5dc5dc0e99) |
| PolygonWalletSimple | core | core | unmatched | [0x591226...e0b9](https://polygonscan.com/address/0x591226f73844b1c20735496a7aa1a8ad2818e0b9) |
| unnamed | unknown | unknown | unmatched | [0x5eaff7...eb88](https://polygonscan.com/address/0x5eaff7af80488033bc845709806d5fae5291eb88) |
| unnamed | unknown | unknown | unmatched | [0x895e87...7b43](https://polygonscan.com/address/0x895e873498134d2ce2ab118633e164c044bc7b43) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x5076f9...32a7](https://basescan.org/address/0x5076f96169d7cc15afc084c60c68182c8f1732a7) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x83db73...7c65](https://basescan.org/address/0x83db73ef5192de4b6a4c92bd0141ba1a0dc87c65) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xad55ae...e7c0](https://basescan.org/address/0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0) |
| unnamed | unknown | unknown | unmatched | [0x5eaff7...eb88](https://basescan.org/address/0x5eaff7af80488033bc845709806d5fae5291eb88) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ArbethWalletSimple | core | core | unmatched | [0x7cb1dc...15fd](https://arbiscan.io/address/0x7cb1dc5923aef8ae1aa8e8911b94d0732dde15fd) |
| ArbethWalletSimple | core | core | unmatched | [0xaab4ea...c116](https://arbiscan.io/address/0xaab4ea02e5616787931c9e8283cb27f0211dc116) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xf84d28...666a](https://arbiscan.io/address/0xf84d28a8d28292842dd73d1c5f99476a80b6666a) |
| KycManager | controller | controller | audited (TP) | [0x0d7690...bafb](https://arbiscan.io/address/0x0d7690baa1008c8d3c5dae9d5033ff846738bafb) |
| OpenEdenVaultV5 | vault_pool | vault_pool | audited (TP) | [0x783654...7a07](https://arbiscan.io/address/0x78365404fc5edabef6eca2f6b2f1ba1471727a07) |
| unnamed | unknown | unknown | unmatched | [0x5e6c2a...ff8c](https://arbiscan.io/address/0x5e6c2ad8376a9e5e857b1d91643399e9ab65ff8c) |
| unnamed | unknown | unknown | unmatched | [0x5eaff7...eb88](https://arbiscan.io/address/0x5eaff7af80488033bc845709806d5fae5291eb88) |
| unnamed | unknown | unknown | unmatched | [0xc0952c...5f46](https://arbiscan.io/address/0xc0952c8ba068c887b675b4182f3a65420d045f46) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 17 proxies on 1, 56, 137, 8453, 42161. 15 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 7 distinct deployer addresses: 0x7c699a...4c50, 0xb2b98e...96ff, 0xc4109e...00b8, 0xc95c7e...b8bc, 0xd69fef...ae78. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 44 | 5 | 39 | 11.4% |
| **Total** | 44 | 5 | 39 | 11.4% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Hacken | hacken.io/audits/cosmic-signature/sca-cosmic-signature-cosmicsignature-contracts-oct2025 | unspecified | direct | not available |
| unknown | Hacken | spaces%2FNjlMezbFeyn4pWdMN4xV%2Fuploads%2FRdSV8gacwtqlaABvesym%2FOpenEden PRISM HackenProof | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://1846699559-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNjlMezbFeyn4pWdMN4xV%2Fuploads%2FRdSV8gacwtqlaABvesym%2FOpenEden_PRISM_HackenProof.pdf?alt=media&token=6c29a3ed-3016-4b54-883e-b125ae891af7](https://1846699559-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNjlMezbFeyn4pWdMN4xV%2Fuploads%2FRdSV8gacwtqlaABvesym%2FOpenEden_PRISM_HackenProof.pdf?alt=media&token=6c29a3ed-3016-4b54-883e-b125ae891af7) - audit_report_link
- [https://assets.hacken.io/assets/Privacy_Notice_Hacken_io.pdf](https://assets.hacken.io/assets/Privacy_Notice_Hacken_io.pdf) - audit_report_link
- [https://assets.hacken.io/assets/Terms_of_Service_Hacken_io.pdf](https://assets.hacken.io/assets/Terms_of_Service_Hacken_io.pdf) - audit_report_link
- [https://docs.hacken.io/methodologies/dapp-audit-methodology](https://docs.hacken.io/methodologies/dapp-audit-methodology) - audit_report_link
- [https://docs.openeden.com/prism/security-and-audit-reports](https://docs.openeden.com/prism/security-and-audit-reports) - audit_report_link
- [https://docs.openeden.com/prism/security-and-audit-reports.md](https://docs.openeden.com/prism/security-and-audit-reports.md) - audit_report_link
- [https://drive.google.com/file/d/19FbyzUxqMpc7Boh7VtF1Oim_L8SqWlYf/view?usp=sharing](https://drive.google.com/file/d/19FbyzUxqMpc7Boh7VtF1Oim_L8SqWlYf/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1lNBg8HE9MD1mpSE0qMedrcKj79Z3l7QE/view](https://drive.google.com/file/d/1lNBg8HE9MD1mpSE0qMedrcKj79Z3l7QE/view) - audit_report_link
- [https://github.com/hknio/severity-formula/blob/main/README.md](https://github.com/hknio/severity-formula/blob/main/README.md) - audit_report_link
- [https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20OpenEden%20Vault%20-%20v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20OpenEden%20Vault%20-%20v1.1.pdf) - audit_report_link
- [https://github.com/verichains/public-audit-reports/blob/main/Verichains%2520Public%2520Audit%2520Report%2520-%2520OpenEden%2520Vault%2520-%2520v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%2520Public%2520Audit%2520Report%2520-%2520OpenEden%2520Vault%2520-%2520v1.1.pdf) - audit_report_link
- [https://hacken.io/audits/1inch](https://hacken.io/audits/1inch) - audit_report_link
- [https://hacken.io/audits/allbridge](https://hacken.io/audits/allbridge) - audit_report_link
- [https://hacken.io/audits/astra-nova/sca-astra-nova-rvv-token-oct2025](https://hacken.io/audits/astra-nova/sca-astra-nova-rvv-token-oct2025) - audit_report_link
- [https://hacken.io/audits/aviator](https://hacken.io/audits/aviator) - audit_report_link
- [https://hacken.io/audits/barnbridge](https://hacken.io/audits/barnbridge) - audit_report_link
- [https://hacken.io/audits/bitlayer](https://hacken.io/audits/bitlayer) - audit_report_link
- [https://hacken.io/audits/constellation-network](https://hacken.io/audits/constellation-network) - audit_report_link
- [https://hacken.io/audits/cosmic-signature/sca-cosmic-signature-cosmicsignature-contracts-oct2025](https://hacken.io/audits/cosmic-signature/sca-cosmic-signature-cosmicsignature-contracts-oct2025) - audit_report_link
- [https://hacken.io/audits/dexalot](https://hacken.io/audits/dexalot) - audit_report_link
- [https://hacken.io/audits/dexe-network](https://hacken.io/audits/dexe-network) - audit_report_link
- [https://hacken.io/audits/dirol/sca-dirol-dirol-agr-oct2025](https://hacken.io/audits/dirol/sca-dirol-dirol-agr-oct2025) - audit_report_link
- [https://hacken.io/audits/electroneum](https://hacken.io/audits/electroneum) - audit_report_link
- [https://hacken.io/audits/kyber-network](https://hacken.io/audits/kyber-network) - audit_report_link
- [https://hacken.io/audits/metis](https://hacken.io/audits/metis) - audit_report_link
- [https://hacken.io/audits/multiverse-x](https://hacken.io/audits/multiverse-x) - audit_report_link
- [https://hacken.io/audits/near](https://hacken.io/audits/near) - audit_report_link
- [https://hacken.io/audits/openeden](https://hacken.io/audits/openeden) - audit_report_link
- [https://hacken.io/audits/panini-america/sca-panini-america-nft-oct2025](https://hacken.io/audits/panini-america/sca-panini-america-nft-oct2025) - audit_report_link
- [https://hacken.io/audits/parallelchain](https://hacken.io/audits/parallelchain) - audit_report_link
- [https://hacken.io/audits/polkadex](https://hacken.io/audits/polkadex) - audit_report_link
- [https://hacken.io/audits/qanplatform](https://hacken.io/audits/qanplatform) - audit_report_link
- [https://hacken.io/audits/radix-rdx-works-ltd](https://hacken.io/audits/radix-rdx-works-ltd) - audit_report_link
- [https://hacken.io/audits/rwa-inc](https://hacken.io/audits/rwa-inc) - audit_report_link
- [https://hacken.io/audits/ryt/sca-ryt-komiti-rytstablecoin-dec2025](https://hacken.io/audits/ryt/sca-ryt-komiti-rytstablecoin-dec2025) - audit_report_link
- [https://hacken.io/audits/syntropy](https://hacken.io/audits/syntropy) - audit_report_link
- [https://hacken.io/audits/tokeny](https://hacken.io/audits/tokeny) - audit_report_link
- [https://hacken.io/audits/vechain-foundation](https://hacken.io/audits/vechain-foundation) - audit_report_link
- [https://hacken.io/audits/venom-foundation](https://hacken.io/audits/venom-foundation) - audit_report_link
- [https://hacken.io/case-studies/polkadex-audit](https://hacken.io/case-studies/polkadex-audit) - audit_report_link
- [https://hacken.io/case-studies/qanplatform-audit](https://hacken.io/case-studies/qanplatform-audit) - audit_report_link
- [https://hacken.io/case-studies/radix-audit](https://hacken.io/case-studies/radix-audit) - audit_report_link
- [https://hacken.io/case-studies/vechain-aal-audit](https://hacken.io/case-studies/vechain-aal-audit) - audit_report_link
- [https://hacken.io/discover/llm-security-frameworks](https://hacken.io/discover/llm-security-frameworks) - audit_report_link
- [https://hacken.io/insights/2025-security-report](https://hacken.io/insights/2025-security-report) - audit_report_link
- [https://hacken.io/insights/h1-2025-security-report](https://hacken.io/insights/h1-2025-security-report) - audit_report_link
- [https://hacken.io/insights/q1-2026-security-report](https://hacken.io/insights/q1-2026-security-report) - audit_report_link
- [https://hacken.io/services/ai-system-security-audit](https://hacken.io/services/ai-system-security-audit) - audit_report_link
- [https://hacken.io/services/blockchain-security/aptos-smart-contract-audit](https://hacken.io/services/blockchain-security/aptos-smart-contract-audit) - audit_report_link
- [https://hacken.io/services/blockchain-security/arbitrum-smart-contract-audit](https://hacken.io/services/blockchain-security/arbitrum-smart-contract-audit) - audit_report_link

### Audit Reports (full list)

- unknown - Hacken - hacken.io/audits/cosmic-signature/sca-cosmic-signature-cosmicsignature-contracts-oct2025
- unknown - Hacken - spaces%2FNjlMezbFeyn4pWdMN4xV%2Fuploads%2FRdSV8gacwtqlaABvesym%2FOpenEden PRISM HackenProof

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/openeden.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $9,159,667.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:37:47.283Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $9,159,667.
