# Agentic Brief: Frax USD

## Project Overview

- **Project:** Frax USD (frax-finance)
- **Website:** frax.com
- **Category:** RWA
- **Chains (topography):** 1, 10, 56, 137, 42161
- **Chains (DeFiLlama):** 1
- **TVL:** $85,289,005 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 9 audits; most recent 2026-04-30 (5 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Frax USD has 35 deployed contract rows in current topography. This brief renders the 35 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 35 contracts across 5 chains. 6 have TP audit coverage (17.1%); 29 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FraxCompatibilityFallbackHandler | core | core | unmatched | [0x3fefb7...f973](https://etherscan.io/address/0x3fefb779d737acea272686ea6e174ebf4273f973) |
| FraxEtherRedemptionQueue | core | core | audited (TP) | [0x82ba8d...27bd](https://etherscan.io/address/0x82ba8da44cd5261762e629dd5c605b17715727bd) |
| FraxGovernorAlpha | governance | governance | audited (TP) | [0xe8ab86...156e](https://etherscan.io/address/0xe8ab863e629a05c73d6a23b99d37027e3763156e) |
| FraxGovernorOmega | governance | governance | audited (TP) | [0x953791...fe7a](https://etherscan.io/address/0x953791d7c5ac8ce5fb23bbbf88963da37a95fe7a) |
| FraxGuard | core | core | audited (TP) | [0xed53eb...81d0](https://etherscan.io/address/0xed53eb15b2011395a7353e076024cbc9f19481d0) |
| FraxlendAMO | core | core | audited (TP) | [0x0ed8fa...4eca](https://etherscan.io/address/0x0ed8fa7fc63a8eb5487e7f87caf1ab3914ea4eca) |
| FxbAMO | core | core | unmatched | [0x452420...543c](https://etherscan.io/address/0x452420df4ac1e3db5429b5fd629f3047482c543c) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x11cc28...f659](https://etherscan.io/address/0x11cc283d06fa762061df2b0d2f0787651ceef659) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x168200...ca0b](https://etherscan.io/address/0x168200cf227d4543302686124ac28ae0eaf2ca0b) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x5181c3...6019](https://etherscan.io/address/0x5181c3c36bd52f783e6e1771d80b1e3adcb36019) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x6a7efa...c502](https://etherscan.io/address/0x6a7efa964cf6d9ab3bc3c47ebddb853a8853c502) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x708695...42e3](https://etherscan.io/address/0x708695db8df61e646571e78b9b3e2bad7d6c42e3) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x831822...7d40](https://etherscan.io/address/0x831822660572bd54ebaa065c2acef662a6277d40) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xa4ec12...e3c3](https://etherscan.io/address/0xa4ec124e09d6d1a092c6bd16afac9cd83f73e3c3) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xb1748c...3f27](https://etherscan.io/address/0xb1748c79709f4ba2dd82834b8c82d4a505003f27) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xfd3065...9b8c](https://etherscan.io/address/0xfd3065c629ee890fd74f43b802c2fea4b7279b8c) |
| MerkleClaim | core | core | unmatched | [0x326672...483c](https://etherscan.io/address/0x3266724e4e58e5891eb30e6d329ba119a192483c) |
| OptimismMintablePermitERC20Factory | factory | factory | likely in scope | [0x6ca98f...7876](https://etherscan.io/address/0x6ca98f43719231d38f6426db64c7f3d5c7ce7876) |
| Oracle | oracle | oracle | likely in scope | [0x049bd8...a484](https://etherscan.io/address/0x049bd8c3adc3fe7d3fc2a44541d955a537c2a484) |
| Proxy | proxy | proxy | unmatched | [0x0f2a32...cbbe](https://etherscan.io/address/0x0f2a32f4f54ec9d52a193e9e3493fb5fea86cbbe) |
| Proxy | proxy | proxy | unmatched | [0x63278b...b4a1](https://etherscan.io/address/0x63278bf9acdfc9fa65cfa2940b89a34adfbcb4a1) |
| Proxy | proxy | proxy | unmatched | [0x874a87...c404](https://etherscan.io/address/0x874a873e4891fb760edfdae0d26ca2c00922c404) |
| Proxy | proxy | proxy | unmatched | [0x8d4392...6bb0](https://etherscan.io/address/0x8d4392f55bc76a046e443eb3bab99887f4366bb0) |
| Proxy | proxy | proxy | unmatched | [0x9aa7db...cb48](https://etherscan.io/address/0x9aa7db8e488ee3ffcc9cdfd4f2eaecc8abedcb48) |
| Proxy | proxy | proxy | unmatched | [0xa95f86...90b3](https://etherscan.io/address/0xa95f86fe0409030136d6b82491822b3d70f890b3) |
| TimelockController | governance | governance | likely in scope | [0x821794...8f83](https://etherscan.io/address/0x821794e69d2831975a11f80e8092c682d5ec8f83) |
| VeFxsVotingDelegation | governance | governance | audited (TP) | [0x6b83c4...f567](https://etherscan.io/address/0x6b83c4f3a6729fb7d5e19b720092162df439f567) |
| unnamed | unknown | unknown | unmatched | [0x9d2691...37b3](https://etherscan.io/address/0x9d269188b741277ff316862b537bd4fce14637b3) |
| unnamed | unknown | unknown | unmatched | [0xe0d775...0508](https://etherscan.io/address/0xe0d7755252873c4ef5788f7f45764e0e17610508) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FraxswapFactory | factory | factory | likely in scope | [0xbe90fd...0437](https://optimistic.etherscan.io/address/0xbe90fd3cddaf0d3b8576ffb5e51adbfd304d0437) |
| FraxswapRouter | router | router | likely in scope | [0xffe66a...9354](https://optimistic.etherscan.io/address/0xffe66a866b249f5d7c97b4a4c84742a393bc9354) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FraxswapFactory | factory | factory | likely in scope | [0xa007a9...08de](https://bscscan.com/address/0xa007a9716dba05289df85a90d0fd9d39bee808de) |
| FraxswapRouter | router | router | likely in scope | [0x0ae84c...9e37](https://bscscan.com/address/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FraxswapRouter | router | router | likely in scope | [0x9bc215...3971](https://polygonscan.com/address/0x9bc2152fd37b196c0ff3c16f5533767c9a983971) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0xcdee1b...d8b4](https://arbiscan.io/address/0xcdee1b853ad2e96921250775b7a60d6ff78fd8b4) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 11 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 10 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 4 distinct deployer addresses: 0x05fb8e...a935, 0x625e70...7a40, 0x869068...d5c0, 0xf4e1d1...7e52, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 35 | 6 | 29 | 17.1% |
| **Total** | 35 | 6 | 29 | 17.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-07-07 | Trail of Bits | 2023-05-fraxgov-securityreview | unspecified | direct | [report](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) |
| 2022-08-03 | Trail of Bits | Frax Finance Security Assessment | unspecified | direct | [report](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ22022.pdf) |
| unknown | discovery-ingest-placeholder | Curve%20AMO%20Audit%20Report%20 %20Frax%20Security%20Cartel%20 %20May%202024 | unspecified | direct | not available |
| unknown | Zellic | Frax%20(USD%20Stablecoin)%20 %20Zellic%20Audit%20Report | unspecified | direct | not available |
| unknown | Trail of Bits | FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20 %20Trail%20of%20Bits%20 %20Oc | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 5 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://code4rena.com/reports/2022-09-frax](https://code4rena.com/reports/2022-09-frax) - audit_report_link
- [https://docs.frax.finance/other/audits.md](https://docs.frax.finance/other/audits.md) - audit_report_link
- [https://docs.openzeppelin.com/contracts/4.x/api/governance](https://docs.openzeppelin.com/contracts/4.x/api/governance) - audit_report_link
- [https://docs.openzeppelin.com/contracts/4.x/governance](https://docs.openzeppelin.com/contracts/4.x/governance) - audit_report_link
- [https://github.com/fraxfinance/frax-oft-upgradeable/blob/master/audits/v1.1.0.README.md](https://github.com/fraxfinance/frax-oft-upgradeable/blob/master/audits/v1.1.0.README.md) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/frax_whitepaper_v1.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/frax_whitepaper_v1.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%2520AMO%2520Audit%2520Report%2520-%2520Frax%2520Security%2520Cartel%2520-%2520May%25202024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%2520AMO%2520Audit%2520Report%2520-%2520Frax%2520Security%2520Cartel%2520-%2520May%25202024.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%2520Audit%2520-%2520April%25202024%2520-%2520Frax%2520Security%2520Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%2520Audit%2520-%2520April%25202024%2520-%2520Frax%2520Security%2520Cartel.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%2520North%2520Star%2520Audit%2520Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%2520North%2520Star%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%2520V2%2520Audit%2520Report%2520-%2520Frax%2520Security%2520Cartel%2520-%2520March%25202024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%2520V2%2520Audit%2520Report%2520-%2520Frax%2520Security%2520Cartel%2520-%2520March%25202024.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%252C%2520sFRAX%252C%2520frxETH%2520Redemption%2520Queue%252C%2520Frax%2520Oracles%2520-%2520Trail%2520of%2520Bits%2520-%2520Oct%25202023.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%252C%2520sFRAX%252C%2520frxETH%2520Redemption%2520Queue%252C%2520Frax%2520Oracles%2520-%2520Trail%2520of%2520Bits%2520-%2520Oct%25202023.pdf) - audit_report_link
- [https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf) - audit_report_link
- [https://github.com/rmsams/stablecoins/blob/master/paper.pdf](https://github.com/rmsams/stablecoins/blob/master/paper.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.06.23.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.06.23.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/Union%20Finance%20Coverage%20Agreement%202025.01.03.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/Union%20Finance%20Coverage%20Agreement%202025.01.03.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/near/Sigma_Prime_Burrow_Finance_Burrowland_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/near/Sigma_Prime_Burrow_Finance_Burrowland_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/CronFinance-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/CronFinance-Spearbit-Security-Review.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-03-maplefinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-03-maplefinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-11-folksfinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-11-folksfinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-02-nestedfinance-smartcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-02-nestedfinance-smartcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-06-nestedfinance-tetrishyvm-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-06-nestedfinance-tetrishyvm-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-03-pufferfinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-pufferfinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-09-treehouse-finance-teth-extension-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-09-treehouse-finance-teth-extension-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-08-evaafinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-08-evaafinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf) - audit_report_link

### Audit Reports (full list)

- 2023-07-07 - Trail of Bits - 2023-05-fraxgov-securityreview - https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf
- 2022-08-03 - Trail of Bits - Frax Finance Security Assessment - https://github.com/trailofbits/publications/blob/master/reviews/FraxQ22022.pdf
- unknown - discovery-ingest-placeholder - Curve%20AMO%20Audit%20Report%20 %20Frax%20Security%20Cartel%20 %20May%202024
- unknown - Zellic - Frax%20(USD%20Stablecoin)%20 %20Zellic%20Audit%20Report
- unknown - Trail of Bits - FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20 %20Trail%20of%20Bits%20 %20Oct%202023

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/frax-finance.json
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
- **Per-contract TVL:** not persisted; protocol-level TVL only.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:35:46.761Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
