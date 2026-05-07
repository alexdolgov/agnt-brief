# Agentic Brief: Ledgity Yield

## Project Overview

- **Project:** Ledgity Yield (ledgity-yield)
- **Website:** ledgity.finance
- **Category:** Yield
- **Chains (topography):** 1, 146, 8453, 42161, 59144
- **Chains (DeFiLlama):** 1, 146, 8453, 42161, 59144
- **TVL:** $14,262,784 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 2 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Ledgity Yield has 49 deployed contract rows in current topography. This brief renders the 49 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-c067f024; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 49 contracts across 5 chains. 2 have TP audit coverage (4.1%); 47 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x209681...4bc8](https://etherscan.io/address/0x20968165b7d2cdf33af632aab3e0539848d44bc8) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2aedfb...5c5e](https://etherscan.io/address/0x2aedfb927aa2ae87c220b9071c0a1209786b5c5e) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x902982...5144](https://etherscan.io/address/0x902982c0c405091894ff82b3b51f180f99f75144) |
| LDY | core | core | unmatched | [0x482df7...fdbc](https://etherscan.io/address/0x482df7483a52496f4c65ab499966dfcdf4ddfdbc) |
| LedgityYieldVault | strategy | strategy | likely in scope | [0x6ffc9a...b411](https://etherscan.io/address/0x6ffc9a91e8c87fbe3744ceb6a134537c6a21b411) |
| StakingPositions | staking | staking | unmatched | [0xf2663b...3649](https://etherscan.io/address/0xf2663b722e0faccc6fb2743ab8cb30b1d8d93649) |
| unnamed | unknown | unknown | unmatched | [0x3c769d...b6d4](https://etherscan.io/address/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4) |
| unnamed | unknown | unknown | unmatched | [0x51231e...05ea](https://etherscan.io/address/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea) |
| unnamed | unknown | unknown | unmatched | [0x613904...8b21](https://etherscan.io/address/0x613904b9a1af4450fd34655d123eeb0944888b21) |
| unnamed | unknown | unknown | unmatched | [0x65f75c...3001](https://etherscan.io/address/0x65f75c675cc76474662dfbf7b6e8683764223001) |
| unnamed | unknown | unknown | unmatched | [0x88dc86...dc82](https://etherscan.io/address/0x88dc8674339731a12a08624f455fd41fe2d6dc82) |
| unnamed | unknown | unknown | unmatched | [0x9cfbf9...0bce](https://etherscan.io/address/0x9cfbf905a444b5c871f0b447e137e8ce7eed0bce) |
| unnamed | unknown | unknown | unmatched | [0xb05c62...8da2](https://etherscan.io/address/0xb05c6239212f125677a7f78b4a3ea39535e18da2) |
| unnamed | unknown | unknown | unmatched | [0xd7ccab...5e69](https://etherscan.io/address/0xd7ccabfbefe332c9784ff3debebddbc787e75e69) |
| unnamed | unknown | unknown | unmatched | [0xe715cb...7e57](https://etherscan.io/address/0xe715cba7b5ccb33790cebff1436809d36cb17e57) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x51231e...05ea](https://sonicscan.org/address/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x65f75c...3001](https://sonicscan.org/address/0x65f75c675cc76474662dfbf7b6e8683764223001) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x88dc86...dc82](https://sonicscan.org/address/0x88dc8674339731a12a08624f455fd41fe2d6dc82) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xd7ccab...5e69](https://sonicscan.org/address/0xd7ccabfbefe332c9784ff3debebddbc787e75e69) |
| LDYStakingSonic | staking | staking | unmatched | [0xbee6eb...a87f](https://sonicscan.org/address/0xbee6eb3b627907496466b1d847e7f542ef35a87f) |
| LedgityYieldVaultSonic | strategy | strategy | likely in scope | [0x3afcd7...1f64](https://sonicscan.org/address/0x3afcd7a95bffde892f1f4670583b9d0911951f64) |
| LTokenSonic | token | token | unmatched | [0xedca8e...4cc6](https://sonicscan.org/address/0xedca8e0eca499d7a2ee22690d1b3cb7726184cc6) |
| unnamed | unknown | unknown | unmatched | [0x613904...8b21](https://sonicscan.org/address/0x613904b9a1af4450fd34655d123eeb0944888b21) |
| unnamed | unknown | unknown | unmatched | [0x9cfbf9...0bce](https://sonicscan.org/address/0x9cfbf905a444b5c871f0b447e137e8ce7eed0bce) |
| unnamed | unknown | unknown | unmatched | [0xe715cb...7e57](https://sonicscan.org/address/0xe715cba7b5ccb33790cebff1436809d36cb17e57) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x0fcfdf...6d88](https://basescan.org/address/0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x3c769d...b6d4](https://basescan.org/address/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x77ce97...708f](https://basescan.org/address/0x77ce973744745310359b0d1a3415a34ff983708f) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x891611...d554](https://basescan.org/address/0x891611398b53bbaaa3db04c158218c319c87d554) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x916f17...6e38](https://basescan.org/address/0x916f179d5d9b7d8ad815ac2f8570aabf0c6a6e38) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xfaa1e3...b134](https://basescan.org/address/0xfaa1e3720e6ef8cc76a800db7b3df8944833b134) |
| FiatTokenProxy | proxy | proxy | unmatched | [0x60a3e3...db42](https://basescan.org/address/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42) |
| FiatTokenV2_2 | token | token | unmatched | [0x2ce631...d779](https://basescan.org/address/0x2ce6311ddae708829bc0784c967b7d77d19fd779) |
| LDY | core | core | unmatched | [0x055d20...8a13](https://basescan.org/address/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13) |
| LedgityYieldVault | strategy | strategy | likely in scope | [0x76f1f8...3f00](https://basescan.org/address/0x76f1f8859a37c32d0764898f7f0b1585ed983f00) |
| LToken | token | token | audited (TP) | [0x94ed3c...3ed1](https://basescan.org/address/0x94ed3cf3aff9439f91fcea79d0a3473159b03ed1) |
| LToken | token | token | audited (TP) | [0x9cfbf9...0bce](https://basescan.org/address/0x9cfbf905a444b5c871f0b447e137e8ce7eed0bce) |
| StakingPositions | staking | staking | unmatched | [0x4caee6...fd2a](https://basescan.org/address/0x4caee650c47462457eca0d3411b8b633d828fd2a) |
| unnamed | unknown | unknown | unmatched | [0xd70b76...bab0](https://basescan.org/address/0xd70b76d7e4c0bb81bad0e3918f8d32241e4fbab0) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x283f35...57ee](https://arbiscan.io/address/0x283f35b6406a0e19a786ed119869ef2c0fe157ee) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x6e8361...fd5b](https://arbiscan.io/address/0x6e83612c73f124127d49ea642c392ff4d9eafd5b) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x98002b...7137](https://arbiscan.io/address/0x98002b5c06b44c8769da3dae97ca498ab6f97137) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xd54d56...7813](https://arbiscan.io/address/0xd54d564606611a3502fe8909bbd3075dbeb77813) |
| LDY | core | core | unmatched | [0x999faf...07e1](https://arbiscan.io/address/0x999faf0af2ff109938eefe6a7bf91ca56f0d07e1) |
| LedgityYieldVault | strategy | strategy | likely in scope | [0x5baf90...0933](https://arbiscan.io/address/0x5baf90214294338838fad1abdb7b928922660933) |
| unnamed | unknown | unknown | unmatched | [0x8b39bb...a381](https://arbiscan.io/address/0x8b39bb59e30c5716f556376c032be30ea073a381) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x43b3c6...698f](https://lineascan.build/address/0x43b3c64dbc95f9ed83795e051fc00014059e698f) |
| LedgityYieldVault | strategy | strategy | likely in scope | [0x209681...4bc8](https://lineascan.build/address/0x20968165b7d2cdf33af632aab3e0539848d44bc8) |
| unnamed | unknown | unknown | unmatched | [0x4af215...5b7a](https://lineascan.build/address/0x4af215dbe27fc030f37f73109b85f421fab45b7a) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 17 proxies on 1, 146, 8453, 42161, 59144. 16 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 4 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x0f97f6...22d2, 0x117b4b...2dac, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 49 | 2 | 47 | 4.1% |
| **Total** | 49 | 2 | 47 | 4.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Hacken | hacken.io/audits/ledgity/sca-ledgity-rwa-feb2024 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.ledgity.finance/audit/v1.md](https://docs.ledgity.finance/audit/v1.md) - audit_report_link
- [https://drive.google.com/drive/folders/1Xf8om53t6agqqCjSAkgxR9P-9SwADKbF](https://drive.google.com/drive/folders/1Xf8om53t6agqqCjSAkgxR9P-9SwADKbF) - audit_report_link
- [https://drive.google.com/drive/folders/1Xf8om53t6agqqCjSAkgxR9P-9SwADKbF*](https://drive.google.com/drive/folders/1Xf8om53t6agqqCjSAkgxR9P-9SwADKbF](https://drive.google.com/drive/folders/1Xf8om53t6agqqCjSAkgxR9P-9SwADKbF*](https://drive.google.com/drive/folders/1Xf8om53t6agqqCjSAkgxR9P-9SwADKbF) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.03%20-%20Final%20-%20YieldFi%20Collaborative%20Audit%20Report%201770139561.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.03%20-%20Final%20-%20YieldFi%20Collaborative%20Audit%20Report%201770139561.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-FIVA-yieldtokenizationprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-FIVA-yieldtokenizationprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/YieldProtocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldProtocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf) - audit_report_link
- [https://hacken.io/audits/ledgity/sca-ledgity-rwa-feb2024](https://hacken.io/audits/ledgity/sca-ledgity-rwa-feb2024) - audit_report_link

### Audit Reports (full list)

- unknown - Hacken - hacken.io/audits/ledgity/sca-ledgity-rwa-feb2024

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/ledgity-yield.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $34,276.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:44:35.140Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-c067f024
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $34,276.
