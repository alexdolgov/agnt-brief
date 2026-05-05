# Agentic Brief: Gains Network

## Project Overview

- **Project:** Gains Network (gains-network)
- **Website:** gains.trade
- **Category:** Derivatives
- **Chains (topography):** 1, 137, 8453, 42161
- **Chains (DeFiLlama):** 137, 8453, 42161
- **TVL:** $43,993,069 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** no prior audits found in audit corpus
- **Tier:** 4 - quarantined_crawl_blocked (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

Gains Network has 75 deployed contract rows in current topography. This brief renders the 74 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** active. Source: default_fallback. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 74 contracts across 4 chains. 6 have TP audit coverage (8.1%); 68 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| GFarmBridgeableNft2 | token | token | unmatched | [0x580d19...4701](https://etherscan.io/address/0x580d1938074d48c34f2e2d1371af0bf02ac44701) |
| GFarmBridgeableNft4 | token | token | unmatched | [0xe5fa95...4377](https://etherscan.io/address/0xe5fa95e5b505452680072600f5a751010abe4377) |
| GFarmBridgeableNft5 | token | token | unmatched | [0xae3bc8...1155](https://etherscan.io/address/0xae3bc89bc71ca243a275a06ba0708cd166d31155) |
| GFarmNftSwap | router | router | unmatched | [0x14e2f9...7f3f](https://etherscan.io/address/0x14e2f9b0381af4227d26bee7d8e4d424466a7f3f) |
| GFarmToken | token | token | unmatched | [0x831091...1e1b](https://etherscan.io/address/0x831091da075665168e01898c6dac004a867f1e1b) |
| unnamed | unknown | unknown | unmatched | [0x164bb6...526d](https://etherscan.io/address/0x164bb61951a6c628a69e4b5af10e9c691221526d) |
| unnamed | unknown | unknown | unmatched | [0x209a9a...2018](https://etherscan.io/address/0x209a9a01980377916851af2ca075c2b170452018) |
| unnamed | unknown | unknown | unmatched | [0x261292...296f](https://etherscan.io/address/0x261292b273c918982820e30e9f24bfa41484296f) |
| unnamed | unknown | unknown | unmatched | [0x2d5b1b...1eaf](https://etherscan.io/address/0x2d5b1ba6e2093a5b927fe5bf8c049b107de31eaf) |
| unnamed | unknown | unknown | unmatched | [0x33fe6f...68f5](https://etherscan.io/address/0x33fe6f374c4a44c50f4362c93372f0eb09d968f5) |
| unnamed | unknown | unknown | unmatched | [0x463444...b72d](https://etherscan.io/address/0x46344456f130e9dcdea7f98cdb0e02fb9f4ab72d) |
| unnamed | unknown | unknown | unmatched | [0x637025...ef4d](https://etherscan.io/address/0x637025a9f5e2380e3bbe744ed4ffb3191cf5ef4d) |
| unnamed | unknown | unknown | unmatched | [0x6cd5ac...4eeb](https://etherscan.io/address/0x6cd5ac19a07518a8092eeffda4f1174c72704eeb) |
| unnamed | unknown | unknown | unmatched | [0xa16e00...c879](https://etherscan.io/address/0xa16e00c26786b9861b3e105296197ea0f891c879) |
| unnamed | unknown | unknown | unmatched | [0xa44369...ca50](https://etherscan.io/address/0xa443693255966f83e9ae6c6132858ccdf2f3ca50) |
| unnamed | unknown | unknown | unmatched | [0xc38964...5d11](https://etherscan.io/address/0xc38964af46708156a373295612fabdc3687a5d11) |
| unnamed | unknown | unknown | likely in scope | [0xff162c...f169](https://etherscan.io/address/0xff162c694eaa571f685030649814282ea457f169) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC20Bridge | token | token | unmatched | [0xdf774a...75bd](https://polygonscan.com/address/0xdf774a4f3ea5095535f5b8f5b9149caf90ff75bd) |
| ERC721LockingBridge | token | token | unmatched | [0xa33f70...8362](https://polygonscan.com/address/0xa33f7069f075a54481868e4c0b8d26925a218362) |
| GFarmNft1 | token | token | unmatched | [0xf9a4c5...f898](https://polygonscan.com/address/0xf9a4c522e327935bd1f5a338c121e14e4cc1f898) |
| GFarmNft2 | token | token | unmatched | [0x77cd42...dbbc](https://polygonscan.com/address/0x77cd42b925e1a82f41d852d6be727cfc88fddbbc) |
| GFarmNft4 | token | token | unmatched | [0x02e2c5...e6c2](https://polygonscan.com/address/0x02e2c5825c1a3b69c0417706dbe1327c2af3e6c2) |
| GFarmNft5 | token | token | unmatched | [0x2d266a...67c2](https://polygonscan.com/address/0x2d266a94469d05c9e06d52a4d0d9c23b157767c2) |
| GNSCompensationHandlerV6_4_1 | registry | registry | unmatched | [0xc7d91a...f6ae](https://polygonscan.com/address/0xc7d91a130ad0521e212f04c2cfa2adaf926df6ae) |
| GNSStaking | staking | staking | audited (TP) | [0x1b9924...15f4](https://polygonscan.com/address/0x1b99244e75fbcee5763730e1d207d7cceb4b15f4) |
| GNSTimelockOwner | governance | governance | unmatched | [0x322e18...da0e](https://polygonscan.com/address/0x322e18fdb5d0b0221e4724dcc5883c4b7896da0e) |
| GToken | token | token | audited (TP) | [0xc9f972...5a00](https://polygonscan.com/address/0xc9f972fc319fd7321a4a89462181a2f3162a5a00) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0x8d6872...440c](https://polygonscan.com/address/0x8d687276543b92819f2f2b5c3faad4ad27f4440c) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0xf07f45...4473](https://polygonscan.com/address/0xf07f4507dd6a057aea509cb9b218b7c4d1894473) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0xff84e7...e822](https://polygonscan.com/address/0xff84e736a15f80e7e104e153d7f7d6c9bd6fe822) |
| ProxyAdmin | proxy | proxy | unmatched | [0xdbcd00...6bad](https://polygonscan.com/address/0xdbcd002f96f62781bbe65fbe24f4d6265d416bad) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1544e1...64fb](https://polygonscan.com/address/0x1544e1ff1a6f6bdbfb901622c12bb352a43464fb) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x29019f...2c81](https://polygonscan.com/address/0x29019fe2e72e8d4d2118e8d0318bef389ffe2c81) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8c74b2...beca](https://polygonscan.com/address/0x8c74b2256ffb6705f14ada8e86fbd654e0e2beca) |
| unnamed | unknown | unknown | unmatched | [0x3378ad...1921](https://polygonscan.com/address/0x3378ad81d09de23725ee9b9270635c97ed601921) |
| unnamed | unknown | unknown | unmatched | [0x91993f...e827](https://polygonscan.com/address/0x91993f2101cc758d0deb7279d41e880f7defe827) |
| unnamed | unknown | unknown | unmatched | [0xe5417a...7896](https://polygonscan.com/address/0xe5417af564e4bfda1c483642db72007871397896) |
| unnamed | unknown | unknown | unmatched | [0xf0a853...4a40](https://polygonscan.com/address/0xf0a8531505f96b8decce7857ca3ab57490f44a40) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC20Bridge | token | token | unmatched | [0x1671e2...43a9](https://basescan.org/address/0x1671e2265cbbb3f13dfbbf76661cbc19d82143a9) |
| GainsNetworkToken | token | token | unmatched | [0xfb1aab...e7ac](https://basescan.org/address/0xfb1aaba03c31ea98a3eec7591808acb1947ee7ac) |
| GNSStaking | staking | staking | audited (TP) | [0x76bb00...f9fd](https://basescan.org/address/0x76bb00a478e81d082cfc6609918ee6fcb00bf9fd) |
| GToken | token | token | audited (TP) | [0x496bfd...906c](https://basescan.org/address/0x496bfda33238adf534034ed859d8c12afee8906c) |
| GToken | token | token | audited (TP) | [0x9be876...5ed6](https://basescan.org/address/0x9be87673fd2129f47b8a8e914d50b27ebbf95ed6) |
| GTokenLockedDepositNft | token | token | unmatched | [0x7d0131...5ceb](https://basescan.org/address/0x7d0131aceefd2acc919d7b2ac32e8e6c81a05ceb) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0xcec10c...5cc8](https://basescan.org/address/0xcec10c66d711250db67945254f79628457365cc8) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0xefa1c2...be37](https://basescan.org/address/0xefa1c2753dad877bb6531bba9d9c589b5433be37) |
| ManagerTimelock | governance | governance | unmatched | [0x03908e...8f08](https://basescan.org/address/0x03908e9aeba0a23c1c476f946b99b6e9ea0b8f08) |
| OwnerTimelock | governance | governance | unmatched | [0x3a00b1...9e7a](https://basescan.org/address/0x3a00b1fa6cb7d07043fc2b2066066735f9419e7a) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x28efaa...cbf3](https://basescan.org/address/0x28efaa11199daf45aa8fbf95f920e5bc090dcbf3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xad2052...02e5](https://basescan.org/address/0xad20523a7dc37babc1cc74897e4977232b3d02e5) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb7cb7c...adc6](https://basescan.org/address/0xb7cb7cb7c3cd96e251c9bf8800b9631134bbadc6) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| EpochBasedTokenClaim | token | token | unmatched | [0x6ac331...06e8](https://arbiscan.io/address/0x6ac331b603373d0006d72d3a3159b4c35e1006e8) |
| ERC20Bridge | token | token | unmatched | [0x01caaa...a5e2](https://arbiscan.io/address/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2) |
| GainsNetworkNft1 | token | token | unmatched | [0x75cbcc...6f89](https://arbiscan.io/address/0x75cbcc5414c539c2b302a5fa60e30b949d2d6f89) |
| GainsNetworkNft2 | token | token | unmatched | [0xd1f024...8a4e](https://arbiscan.io/address/0xd1f024ba4dbb1593b486cb5031b3ac5ac28e8a4e) |
| GainsNetworkNft3 | token | token | unmatched | [0x983415...b384](https://arbiscan.io/address/0x9834159eaf9811cf4c568294d5c7c9158f84b384) |
| GainsNetworkNft4 | token | token | unmatched | [0x40f0ae...21a1](https://arbiscan.io/address/0x40f0aeab6383be2f254ce40b79089070fa1a21a1) |
| GainsNetworkNft5 | token | token | unmatched | [0x5e3b54...c9be](https://arbiscan.io/address/0x5e3b541ad6acc4381c110247946c863e05ffc9be) |
| GainsNetworkToken | token | token | unmatched | [0x18c11f...a122](https://arbiscan.io/address/0x18c11fd286c5ec11c3b683caa813b77f5163a122) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xc5fca2...787d](https://arbiscan.io/address/0xc5fca2c19c5ca269a10e15ee4a800ed82f53787d) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xf8e93a...158d](https://arbiscan.io/address/0xf8e93a7d954f7d31d5fa54bc0eb0e384412a158d) |
| GNSCompensationHandlerV6_4_1 | registry | registry | unmatched | [0x30d8c5...7ebf](https://arbiscan.io/address/0x30d8c505516ab7693e2de491bdceb028d8ae7ebf) |
| GNSTimelockManager | governance | governance | likely in scope | [0x1632c3...f637](https://arbiscan.io/address/0x1632c38cb208df8409753729dbfba5c58626f637) |
| GNSTimelockOwner | governance | governance | unmatched | [0x5f5e48...df0f](https://arbiscan.io/address/0x5f5e4892bab94d94dc57a3edea3c138167c4df0f) |
| GToken | token | token | audited (TP) | [0xeb7545...cbdd](https://arbiscan.io/address/0xeb754588eff264793bb80be65866d11bc8d6cbdd) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0x018d9a...f27e](https://arbiscan.io/address/0x018d9a3f0d06ccb7c305b7c9219a4307e1f9f27e) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0x4ca163...e0d1](https://arbiscan.io/address/0x4ca1638754be8060e544aca4a4f43702be30e0d1) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0x990ba9...a23d](https://arbiscan.io/address/0x990ba9edd8a9615a23e4c452e63a80e519a4a23d) |
| GTokenOpenPnlFeed | oracle | oracle | likely in scope | [0xbf55c7...7982](https://arbiscan.io/address/0xbf55c78132ab06a2b217040b7a7f20b5cbd47982) |
| ProxyAdmin | proxy | proxy | likely in scope | [0xe18be0...b2eb](https://arbiscan.io/address/0xe18be0113c38c91b3b429d04fdeb84359fbcb2eb) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x4beef1...a9f4](https://arbiscan.io/address/0x4beef1113f968326905224d2ca272f3032a9a9f4) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x5977a9...784c](https://arbiscan.io/address/0x5977a9682d7af81d347cfc338c61692163a2784c) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xd85e03...b91b](https://arbiscan.io/address/0xd85e038593d7a098614721eae955ec2022b9b91b) |
| unnamed | unknown | unknown | unmatched | [0x7edde7...c015](https://arbiscan.io/address/0x7edde7e5900633f698eab0dbc97de640fc5dc015) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 11 proxies on 137, 8453, 42161. 9 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 7 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xec9581...a8ac, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 74 | 6 | 68 | 8.1% |
| **Total** | 74 | 6 | 68 | 8.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2025-05-26 | Pashov Audit Group | Gains Network Security Review | unspecified | direct | [report](https://github.com/pashov/audits/blob/master/team/pdf/GainsNetwork-security-review_2025-05-26.pdf) |
| 2024-07-07 | Pashov Audit Group | Gains Network Security Review | unspecified | direct | [report](https://github.com/pashov/audits/blob/master/team/pdf/GainsNetwork-security-review-July.pdf) |
| 2024-02-23 | Pashov Audit Group | Gains Network Security Review | unspecified | direct | [report](https://github.com/pashov/audits/blob/master/team/pdf/GainsNetwork-security-review-February.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). No prior audits.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/GainsNetwork-org/sdk/blob/feat/v10.2/docs/v10.2-migration.md](https://github.com/GainsNetwork-org/sdk/blob/feat/v10.2/docs/v10.2-migration.md) - audit_report_link
- [https://github.com/pashov/audits/blob/master/solo/gTrade-security-review.md](https://github.com/pashov/audits/blob/master/solo/gTrade-security-review.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.07%20-%20Final%20-%20Rio%20Network%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.07%20-%20Final%20-%20Rio%20Network%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.02%20-%20Final%20-%20FairSide%20Network%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.02%20-%20Final%20-%20FairSide%20Network%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.30%20-%20Final%20-%20Orderly%20Network%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.30%20-%20Final%20-%20Orderly%20Network%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.02%20-%20Final%20-%20Ethos%20Network%20Social%20Contracts%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.02%20-%20Final%20-%20Ethos%20Network%20Social%20Contracts%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.05%20-%20Final%20-%20Ethos%20Network%20Financial%20Contracts%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.05%20-%20Final%20-%20Ethos%20Network%20Financial%20Contracts%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.03.14%20-%20Final%20-%20Crestal%20Network%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.03.14%20-%20Final%20-%20Crestal%20Network%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.10.16%20-%20Final%20-%20Atleta%20Network%20Collaborative%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.10.16%20-%20Final%20-%20Atleta%20Network%20Collaborative%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.01.21%20-%20Final%20-%20Atleta%20Network%20Collaborative%20Audit%20Report%201768993820.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.01.21%20-%20Final%20-%20Atleta%20Network%20Collaborative%20Audit%20Report%201768993820.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/obol/Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/obol/Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/omni-network/Sigma_Prime_Omni_Network_Omni_Chain_2_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/omni-network/Sigma_Prime_Omni_Network_Omni_Chain_2_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/omni-network/Sigma%20Prime%20-%20Omni%20Network%20-%20Omni%20Portal%20-%20Security%20Assessment%20Report%20-%20v2.1.pdf](https://github.com/sigp/public-audits/blob/master/reports/omni-network/Sigma%20Prime%20-%20Omni%20Network%20-%20Omni%20Portal%20-%20Security%20Assessment%20Report%20-%20v2.1.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-subspacenetwork-subspacenetworkdesktopfarmer-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-subspacenetwork-subspacenetworkdesktopfarmer-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-subspacenetwork-subspacenetworkdesktopfarmer-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-subspacenetwork-subspacenetworkdesktopfarmer-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-shapenetwork-token-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-shapenetwork-token-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-09-shapenetwork-buybackcontract-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-09-shapenetwork-buybackcontract-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/AcalaNetwork.pdf](https://github.com/trailofbits/publications/blob/master/reviews/AcalaNetwork.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Chirp%20Network%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Chirp%20Network%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Jarvis%20Network%20Synthereum%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Jarvis%20Network%20Synthereum%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/LayerZero%20Endpoint%20V2%20(VerifierNetwork)%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/LayerZero%20Endpoint%20V2%20(VerifierNetwork)%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Omni%20Network%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Omni%20Network%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Orderly%20Network%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Orderly%20Network%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Pyth%20Network%20CosmWasm%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Pyth%20Network%20CosmWasm%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2025-05-26 - Pashov Audit Group - Gains Network Security Review - https://github.com/pashov/audits/blob/master/team/pdf/GainsNetwork-security-review_2025-05-26.pdf
- 2024-07-07 - Pashov Audit Group - Gains Network Security Review - https://github.com/pashov/audits/blob/master/team/pdf/GainsNetwork-security-review-July.pdf
- 2024-02-23 - Pashov Audit Group - Gains Network Security Review - https://github.com/pashov/audits/blob/master/team/pdf/GainsNetwork-security-review-February.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/gains-network.json
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

- **Generated at:** 2026-05-05T20:40:01.784Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
