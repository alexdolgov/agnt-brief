# Agentic Brief: pancakeswap

## Project Overview

- **Project:** pancakeswap (pancakeswap)
- **Website:** pancakeswap.finance
- **Category:** Dexs
- **Chains (topography):** 56, 8453
- **Chains (DeFiLlama):** 56, 8453
- **TVL:** $142,218,588 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 25 audits; most recent 2026-03-09 (57 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

pancakeswap has 19 deployed contract rows in current topography. This brief renders the 19 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 19 contracts across 2 chains. 10 have TP audit coverage (52.6%); 9 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| CakeToken | token | token | likely in scope | [0x0e09fa...ce82](https://bscscan.com/address/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82) |
| CakeVault | vault_pool | vault_pool | likely in scope | [0xa80240...51cc](https://bscscan.com/address/0xa80240eb5d7e05d3f250cf000eec0891d00b51cc) |
| CLPoolManager | vault_pool | vault_pool | audited (TP) | [0xa0ffb9...058b](https://bscscan.com/address/0xa0ffb9c1ce1fe56963b0321b32e7a0302114058b) |
| ERC721NFTMarketV1 | vault_pool | vault_pool | unmatched | [0x17539c...5c5a](https://bscscan.com/address/0x17539cca21c7933df5c980172d22659b8c345c5a) |
| MasterChef | core | core | audited (TP) | [0x73feaa...e24e](https://bscscan.com/address/0x73feaa1ee314f8c655e354234017be2193c9e24e) |
| PancakeFactory | factory | factory | audited (TP) | [0xbcfccb...2812](https://bscscan.com/address/0xbcfccbde45ce874adcb698cc183debcf17952812) |
| PancakeFactory | factory | factory | audited (TP) | [0xca143c...0c73](https://bscscan.com/address/0xca143ce32fe78f1f7019d7d551a6402fc5350c73) |
| PancakePair | core | core | audited (TP) | [0x1b96b9...774f](https://bscscan.com/address/0x1b96b92314c44b159149f7e0303511fb2fc4774f) |
| PancakePredictionV2 | core | core | audited (TP) | [0x18b2a6...9cda](https://bscscan.com/address/0x18b2a687610328590bc8f2e5fedde3b582a49cda) |
| PancakeRouter | router | router | audited (TP) | [0x10ed43...024e](https://bscscan.com/address/0x10ed43c718714eb63d5aa57b78b54704e256024e) |
| PancakeSwapLottery | router | router | audited (TP) | [0x5af6d3...2d2c](https://bscscan.com/address/0x5af6d33de2ccec94efb1bdf8f92bd58085432d2c) |
| RandomNumberGenerator | core | core | audited (TP) | [0x8c6375...03c2](https://bscscan.com/address/0x8c6375aab6e5b26a30bf241ebbf29ad6e6c503c2) |
| SmartChef | core | core | unmatched | [0x92e8ce...4e68](https://bscscan.com/address/0x92e8ceb7eaed69fb6e4d9da43f605d2610214e68) |
| Vault | vault_pool | vault_pool | likely in scope | [0x238a35...e6c4](https://bscscan.com/address/0x238a358808379702088667322f80ac48bad5e6c4) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| CLPoolManager | vault_pool | vault_pool | audited (TP) | [0xa0ffb9...058b](https://basescan.org/address/0xa0ffb9c1ce1fe56963b0321b32e7a0302114058b) |
| ERC6160Ext20 | core | core | unmatched | [0x8d010b...90b8](https://basescan.org/address/0x8d010bf9c26881788b4e6bf5fd1bdc358c8f90b8) |
| Vault | vault_pool | vault_pool | likely in scope | [0x238a35...e6c4](https://basescan.org/address/0x238a358808379702088667322f80ac48bad5e6c4) |
| unnamed | unknown | unknown | unmatched | [0x5e0a1d...a8bd](https://basescan.org/address/0x5e0a1d876557cf43c66c08c8a247bc4954eca8bd) |
| unnamed | unknown | unknown | unmatched | [0xb43570...0343](https://basescan.org/address/0xb4357054c3da8d46ed642383f03139ac7f090343) |

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
| No provenance | 19 | 10 | 9 | 52.6% |
| **Total** | 19 | 10 | 9 | 52.6% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Hexens | Hexens | unspecified | direct | not available |
| unknown | Slowmist | https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audi | unspecified | direct | not available |
| unknown | Slowmist | https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Aud | unspecified | direct | not available |
| unknown | Hexens Cyber Security | pancakeswap infinity combined core | unspecified | direct | not available |
| unknown | Hexens | pancakeswap infinity combined Periphery | unspecified | direct | [report](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/pancakeswap_infinity_combined_Periphery.pdf) |
| unknown | PeckShield | PeckShield Audit Report PancakeSwap PredictionV2 v1.0 | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report PancakeswapLottery v1.0 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 57 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FMa0anQ4GXvFPyVLjFRxr%2FPancakeSwap-OFT-Audit-OtterSec.pdf?alt=media&token=cbb22eb1-124c-4b07-9a73-175e019dde53](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FMa0anQ4GXvFPyVLjFRxr%2FPancakeSwap-OFT-Audit-OtterSec.pdf?alt=media&token=cbb22eb1-124c-4b07-9a73-175e019dde53) - audit_report_link
- [https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FNZnx8clCpR3r9bMMjkcs%2FOtterSec%20Audit%20%20Report%20-%20PancakeSwap%20Swap%20-%20Move.pdf?alt=media&token=902c2c81-e02f-4c67-9782-fd4597f31d22](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FNZnx8clCpR3r9bMMjkcs%2FOtterSec%20Audit%20%20Report%20-%20PancakeSwap%20Swap%20-%20Move.pdf?alt=media&token=902c2c81-e02f-4c67-9782-fd4597f31d22) - audit_report_link
- [https://docs.pancakeswap.finance/code/smart-contracts-aptos/ifo](https://docs.pancakeswap.finance/code/smart-contracts-aptos/ifo) - audit_report_link
- [https://docs.pancakeswap.finance/code/smart-contracts-aptos/ifo#audits](https://docs.pancakeswap.finance/code/smart-contracts-aptos/ifo#audits) - audit_report_link
- [https://docs.pancakeswap.finance/code/smart-contracts-aptos/masterchef](https://docs.pancakeswap.finance/code/smart-contracts-aptos/masterchef) - audit_report_link
- [https://docs.pancakeswap.finance/code/smart-contracts-aptos/masterchef#audit](https://docs.pancakeswap.finance/code/smart-contracts-aptos/masterchef#audit) - audit_report_link
- [https://docs.pancakeswap.finance/welcome-to-pancakeswap/audits](https://docs.pancakeswap.finance/welcome-to-pancakeswap/audits) - audit_report_link
- [https://docs.pancakeswap.finance/welcome-to-pancakeswap/audits.md](https://docs.pancakeswap.finance/welcome-to-pancakeswap/audits.md) - audit_report_link
- [https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_vecake_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_vecake_v1.0-signed.pdf) - audit_report_link
- [https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancakeswap_cross_farming_v1.0_signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancakeswap_cross_farming_v1.0_signed.pdf) - audit_report_link
- [https://github.com/HalbornSecurity/PublicReports/blob/master/Move%20Smart%20Contract%20Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Move%20Smart%20Contract%20Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/HalbornSecurity/PublicReports/blob/master/Move%2520Smart%2520Contract%2520Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Move%2520Smart%2520Contract%2520Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Hexens.pdf](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Hexens.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/OtterSec.pdf](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/OtterSec.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Zellic.pdf](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Zellic.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-core/tree/main/docs/audits](https://github.com/pancakeswap/infinity-core/tree/main/docs/audits) - audit_report_link
- [https://github.com/pancakeswap/infinity-periphery/blob/main/audits/Hexens.pdf](https://github.com/pancakeswap/infinity-periphery/blob/main/audits/Hexens.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-periphery/blob/main/audits/OtterSec.pdf](https://github.com/pancakeswap/infinity-periphery/blob/main/audits/OtterSec.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-periphery/blob/main/audits/Zellic.pdf](https://github.com/pancakeswap/infinity-periphery/blob/main/audits/Zellic.pdf) - audit_report_link
- [https://github.com/pancakeswap/infinity-periphery/tree/main/audits](https://github.com/pancakeswap/infinity-periphery/tree/main/audits) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-PredictionV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-PredictionV2-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeswapLottery-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeswapLottery-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-CakePool-v1.0.pdf](https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-CakePool-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-CrossFarming-v1.0.pdf](https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-CrossFarming-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-FarmBooster-v1.0.pdf](https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-FarmBooster-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-MasterChefV2-v1.0.pdf](https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-MasterChefV2-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-MasterChefV3-v1.0.pdf](https://github.com/peckshield/publications/tree/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-MasterChefV3-v1.0.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20MasterChef%20v2_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20MasterChef%20v2_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_MOVE_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_MOVE_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_Phase2_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_Phase2_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20Pancakeswap-CakePool_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20Pancakeswap-CakePool_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20-%20CrossChain_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20-%20CrossChain_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20Stable%20Swap_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20Stable%20Swap_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520MasterChef%2520v2_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520MasterChef%2520v2_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap_MOVE_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap_MOVE_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap_v3_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap_v3_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap_v3_Phase2_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap_v3_Phase2_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520Pancakeswap-CakePool_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520Pancakeswap-CakePool_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap%2520-%2520CrossChain_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap%2520-%2520CrossChain_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap%2520Stable%2520Swap_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520PancakeSwap%2520Stable%2520Swap_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20PancakeSwap%20Lottery.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20PancakeSwap%20Lottery.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20%20-%20PancakeSwap.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20%20-%20PancakeSwap.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%2520Contract%2520Security%2520Audit%2520Report%2520-%2520PancakeSwap%2520Lottery.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%2520Contract%2520Security%2520Audit%2520Report%2520-%2520PancakeSwap%2520Lottery.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%2520Contract%2520Security%2520Audit%2520Report%2520%2520-%2520PancakeSwap.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%2520Contract%2520Security%2520Audit%2520Report%2520%2520-%2520PancakeSwap.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/PancakeSwap%20Aptos%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/PancakeSwap%20Aptos%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/PancakeSwap%2520Aptos%2520-%2520Zellic%2520Audit%2520Report.pdf](https://github.com/Zellic/publications/blob/master/PancakeSwap%2520Aptos%2520-%2520Zellic%2520Audit%2520Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Hexens - Hexens
- unknown - Slowmist - https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20MasterChef%20v2_en-us.pdf
- unknown - Slowmist - https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20%20-%20PancakeSwap.pdf
- unknown - Hexens Cyber Security - pancakeswap infinity combined core
- unknown - Hexens - pancakeswap infinity combined Periphery - https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/pancakeswap_infinity_combined_Periphery.pdf
- unknown - PeckShield - PeckShield Audit Report PancakeSwap PredictionV2 v1.0
- unknown - PeckShield - PeckShield Audit Report PancakeswapLottery v1.0

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/pancakeswap.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $19,341,870.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:36:13.725Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $19,341,870.
