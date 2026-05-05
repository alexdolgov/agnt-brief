# Agentic Brief: ICHI

## Project Overview

- **Project:** ICHI (ichi)
- **Website:** ichi.org
- **Category:** Liquidity Manager
- **Chains (topography):** 1, 56, 137, 146, 250, 1101, 5000, 8453, 34443, 42161, 42220, 59144, 81457, 534352
- **Chains (DeFiLlama):** 1, 30, 56, 122, 137, 146, 204, 250, 324, 1101, 2222, 5000, 8453, 34443, 42161, 42220, 59144, 81457, 167000, 534352
- **TVL:** $269,997,981 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-01 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

ICHI has 58 deployed contract rows in current topography. This brief renders the 58 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 58 contracts across 14 chains. 2 have TP audit coverage (3.4%); 56 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x5a40df...6112](https://etherscan.io/address/0x5a40dfaf8c1115196a1cdf529f97122030f26112) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x8dd509...5094](https://etherscan.io/address/0x8dd50926e12bd71904bccc6d86dfa55d42715094) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xeaec81...2b3e](https://etherscan.io/address/0xeaec81f0ed4f622d4b389672d9859166c0832b3e) |
| OneTokenFactory | factory | factory | audited (TP) | [0xd00926...a36a](https://etherscan.io/address/0xd0092632b9ac5a7856664eec1abb6e3403a6a36a) |
| unnamed | unknown | unknown | unmatched | [0x1721cb...15b1](https://etherscan.io/address/0x1721cb3ff3caf70a79bde9d771b27646ed8115b1) |
| unnamed | unknown | unknown | unmatched | [0x1a58d4...24a1](https://etherscan.io/address/0x1a58d4cff22c7e2e0c4ccf4a0010b87822d024a1) |
| unnamed | unknown | unknown | unmatched | [0x242cd1...65de](https://etherscan.io/address/0x242cd12579467983dc521d8ac46eb13936ab65de) |
| unnamed | unknown | unknown | unmatched | [0x34513e...8b5f](https://etherscan.io/address/0x34513e8a327987bb44acf5a925a7f3b4092d8b5f) |
| unnamed | unknown | unknown | unmatched | [0x63703a...35fa](https://etherscan.io/address/0x63703a4ddfa51b6cffc1bb40cc73912df62535fa) |
| unnamed | unknown | unknown | unmatched | [0x7d18f2...2eb9](https://etherscan.io/address/0x7d18f2d60e4fd6f485419727515807d09a542eb9) |
| unnamed | unknown | unknown | unmatched | [0x8d05f6...b92a](https://etherscan.io/address/0x8d05f6870106707baecfcf5c0570db7a583eb92a) |
| unnamed | unknown | unknown | unmatched | [0x9fab4b...418f](https://etherscan.io/address/0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f) |
| unnamed | unknown | unknown | unmatched | [0xe8532d...c23f](https://etherscan.io/address/0xe8532db60408f2d47693da5b9093d71580b8c23f) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x076e46...948d](https://bscscan.com/address/0x076e46a317dfae50eef30dca94ff41a63118948d) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x131c03...241d](https://bscscan.com/address/0x131c03ca881b7cc66d7a5120a9273ebf675c241d) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xac9314...d501](https://bscscan.com/address/0xac93148e93d1c49d89b1166bfd74942e80f5d501) |
| unnamed | unknown | unknown | unmatched | [0x065356...51b7](https://bscscan.com/address/0x065356d9f628cdd1bb9f2384e2972cdac50f51b7) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x117005...6e8a](https://polygonscan.com/address/0x11700544c577cb543a498b27b4f0f7018bdb6e8a) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x2d2c72...3fc0](https://polygonscan.com/address/0x2d2c72c4dc71aa32d64e5142e336741131a73fc0) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xb2f44d...5da7](https://polygonscan.com/address/0xb2f44d8545315cdd0baab4ac7233218b932a5da7) |
| OneTokenFactory | factory | factory | audited (TP) | [0x101eb1...c879](https://polygonscan.com/address/0x101eb16bdba37979a771c86e1caafbadbabfc879) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x34513e...8b5f](https://sonicscan.org/address/0x34513e8a327987bb44acf5a925a7f3b4092d8b5f) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x7d18f2...2eb9](https://sonicscan.org/address/0x7d18f2d60e4fd6f485419727515807d09a542eb9) |
| unnamed | unknown | unknown | unmatched | [0x1a58d4...24a1](https://sonicscan.org/address/0x1a58d4cff22c7e2e0c4ccf4a0010b87822d024a1) |
| unnamed | unknown | unknown | unmatched | [0x9fab4b...418f](https://sonicscan.org/address/0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f) |

### fantom (chain_id 250)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x932e19...5c5e](https://ftmscan.com/address/0x932e1908461de58b0891e5022431dc995cb95c5e) |
| UV3Math | peripheral | peripheral | unmatched | [0xfbf389...7065](https://ftmscan.com/address/0xfbf38920ccbcff7268ad714ae5f9fad6df607065) |
| unnamed | unknown | unknown | unmatched | [0x85a4dd...3c55](https://ftmscan.com/address/0x85a4dd4ed356a7976a8302b1b690202d58583c55) |
| unnamed | unknown | unknown | unmatched | [0x89ffda...5f34](https://ftmscan.com/address/0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34) |

### polygon-zkevm (chain_id 1101)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x1721cb...15b1](https://zkevm.polygonscan.com/address/0x1721cb3ff3caf70a79bde9d771b27646ed8115b1) |
| unnamed | unknown | unknown | unmatched | [0x63703a...35fa](https://zkevm.polygonscan.com/address/0x63703a4ddfa51b6cffc1bb40cc73912df62535fa) |
| unnamed | unknown | unknown | unmatched | [0xe8532d...c23f](https://zkevm.polygonscan.com/address/0xe8532db60408f2d47693da5b9093d71580b8c23f) |

### mantle (chain_id 5000)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x797ebb...2433](https://mantlescan.xyz/address/0x797ebb6a84367b0409094fea0d10ac7516432433) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xbbb97d...6ad3](https://mantlescan.xyz/address/0xbbb97d634460dacca0d41e249510bb741ef46ad3) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x24430e...ef74](https://basescan.org/address/0x24430e837efb64ef87bb32be03437fc6005eef74) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x28cf3b...97b7](https://basescan.org/address/0x28cf3b462a1adde87fe7144d110bcf0d464c97b7) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x2b52c4...280a](https://basescan.org/address/0x2b52c416f723f16e883e53f3f16435b51300280a) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x51a0d7...7959](https://basescan.org/address/0x51a0d74e1791399ce02aafd9a21dc4637fe57959) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xba0967...187e](https://basescan.org/address/0xba096706a850caf1cadaefe7529db1343a0c187e) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xfbf389...7065](https://basescan.org/address/0xfbf38920ccbcff7268ad714ae5f9fad6df607065) |

### mode (chain_id 34443)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x9fab4b...418f](https://explorer.mode.network/address/0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f) |
| unnamed | unknown | unknown | unmatched | [0xadda3a...35f1](https://explorer.mode.network/address/0xadda3a15ea71c223a82af86d4578ef2b076035f1) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x0ac9e4...47f7](https://arbiscan.io/address/0x0ac9e4a0423eec93357e2b0f83ef8c6469fd47f7) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x1cc05b...a3f4](https://arbiscan.io/address/0x1cc05b01f2e52ae3bb29f7a0059fe112c60aa3f4) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xedac86...44a6](https://arbiscan.io/address/0xedac86bc526557c422ab1f6bf848bf0da9fb44a6) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xfbf389...7065](https://arbiscan.io/address/0xfbf38920ccbcff7268ad714ae5f9fad6df607065) |

### celo (chain_id 42220)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x8d05f6...b92a](https://celoscan.io/address/0x8d05f6870106707baecfcf5c0570db7a583eb92a) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x9fab4b...418f](https://celoscan.io/address/0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f) |
| unnamed | unknown | unknown | unmatched | [0x242cd1...65de](https://celoscan.io/address/0x242cd12579467983dc521d8ac46eb13936ab65de) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x259268...195e](https://lineascan.build/address/0x2592686212c164c1851df2f62c5d5ec50600195e) |
| ICHIVaultFactory | factory | factory | likely in scope | [0x6e3eb9...2b53](https://lineascan.build/address/0x6e3eb904966b0158833852cafd1200c171772b53) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xb0e787...a6e7](https://lineascan.build/address/0xb0e7871d53be1b1d746bbfd9511e2ef3cd70a6e7) |
| unnamed | unknown | unknown | unmatched | [0x0248b9...fe4b](https://lineascan.build/address/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b) |
| unnamed | unknown | unknown | unmatched | [0xa29f3d...544e](https://lineascan.build/address/0xa29f3d5403d50ea1bf597e2ef01791a1ce4f544e) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0xb42d59...4f15](https://blastscan.io/address/0xb42d5956cde4386b65c087cfcd16910ab6114f15) |
| unnamed | unknown | unknown | unmatched | [0x9fab4b...418f](https://blastscan.io/address/0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f) |

### scroll (chain_id 534352)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ICHIVaultFactory | factory | factory | likely in scope | [0x9fab4b...418f](https://scrollscan.com/address/0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f) |
| ICHIVaultFactory | factory | factory | likely in scope | [0xb42d59...4f15](https://scrollscan.com/address/0xb42d5956cde4386b65c087cfcd16910ab6114f15) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

No proxy or upgrade architecture detected.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 58 | 2 | 56 | 3.4% |
| **Total** | 58 | 2 | 56 | 3.4% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Quantstamp | audit | unspecified | direct | not available |
| unknown | Solidified | audit | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://defiyield.app/audits/defiyield/ichi](https://defiyield.app/audits/defiyield/ichi) - audit_report_link
- [https://docs.ichi.org/home/audits.md](https://docs.ichi.org/home/audits.md) - audit_report_link
- [https://drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view?usp=sharing](https://drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1QH6_HR8QpZArqIeEazQUFlUqWXulE9N5/view?usp=sharing](https://drive.google.com/file/d/1QH6_HR8QpZArqIeEazQUFlUqWXulE9N5/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view?usp=drive_link](https://drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view?usp=drive_link) - audit_report_link
- [https://github.com/ichifarm/audit/blob/main/Ichi_Farm_Audit_Bramah.pdf](https://github.com/ichifarm/audit/blob/main/Ichi_Farm_Audit_Bramah.pdf) - audit_report_link
- [https://github.com/ichifarm/audit/blob/main/README.md](https://github.com/ichifarm/audit/blob/main/README.md) - audit_report_link
- [https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp/audit.pdf](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp/audit.pdf) - audit_report_link
- [https://github.com/ichifarm/ichi-oneToken/blob/master/audits/solidified/audit.pdf](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/solidified/audit.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Quantstamp - audit
- unknown - Solidified - audit

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/ichi.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $0.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:40:21.617Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
