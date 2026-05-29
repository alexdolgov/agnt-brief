# Agentic Audit Brief: Umee

⚠️ Lifecycle status: DECLINING - TVL dropped 19.4% over 90 days

## Project Overview

- Project: Umee (`umee`)
- Lifecycle: declining (Tier 0, 98.8% below peak)
- Generated: 2026-05-29T21:14:17.886Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-0a62
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,510,742.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Umee is a decentralized lending protocol that enables users to supply and borrow assets across multiple blockchains. It focuses on cross-chain interoperability and capital efficiency.

### Architecture

The protocol consists of a single product family with one proxy contract that handles all lending operations. No additional infrastructure contracts are identified.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 132
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 125 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xcecb170a1d54985bf8d0ebb4d6d6d980cdacf992) | proxy | ethereum | `0xe296db...333ba6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [VALIDATOR.md](https://github.com/umee-network/umee/blob/main/docs/VALIDATOR.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cosmwasm.md](https://github.com/umee-network/umee/blob/main/docs/cosmwasm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [001-interest-stream.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/001-interest-stream.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [002-deposit-assets.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/002-deposit-assets.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [003-borrow-assets.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/003-borrow-assets.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [004-interest-and-reserves.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/004-interest-and-reserves.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [005-liquidation.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/005-liquidation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [006-oracle.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/006-oracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [007-bad-debt.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/007-bad-debt.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [008-borrow-tracking.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/008-borrow-tracking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [009-liquidity-mining.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/009-liquidity-mining.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [010-market-params.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/010-market-params.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [011-historacle-pricing.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/011-historacle-pricing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [012-umee-inflation-v2.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/012-umee-inflation-v2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/umee-network/umee/blob/main/docs/design_docs/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TEMPLATE.md](https://github.com/umee-network/umee/blob/main/docs/design_docs/TEMPLATE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [testing.md](https://github.com/umee-network/umee/blob/main/docs/testing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Umee.md](https://github.com/umee-network/umee-erc20/blob/main/docs/Umee.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [code-of-conduct.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/.github/code-of-conduct.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contributing.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/.github/contributing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pull-request-template.md](https://github.com/umee-network/docs/blob/main/docs/.github/pull-request-template.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [style-guide.md](https://github.com/umee-network/docs/blob/main/docs/.github/style-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Least Authority - Umee_Peggo Orchestrator_Final Audit Report.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Least%20Authority%20-%20Umee_Peggo%20Orchestrator_Final%20Audit%20Report.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Umee-v1.0.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/PeckShield-Audit-Report-Umee-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Trail of Bits Full Audit.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Trail%20of%20Bits%20Full%20Audit.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [UMEE_WASM_Integration_Security_Audit_Report_Halborn_Final.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/UMEE_WASM_Integration_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Umee Leverage Module Audit Report_RV Inc..pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Umee%20Leverage%20Module%20Audit%20Report_RV%20Inc..pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Umee_Oracle_Price_Feeder_Cosmos_Security_Audit_Report_Halborn_Final.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Umee_Oracle_Price_Feeder_Cosmos_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Umee_WebApp_Pentest_Report_Halborn_Final.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Umee_WebApp_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [asset-risk.md](https://github.com/umee-network/docs/blob/main/docs/additional-info/asset-risk.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [branding.md](https://github.com/umee-network/docs/blob/main/docs/additional-info/branding.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [disclaimer.md](https://github.com/umee-network/docs/blob/main/docs/additional-info/disclaimer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [security-audits.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/additional-info/security-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [assets.md](https://github.com/umee-network/docs/blob/main/docs/developers/assets.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethereum-bridge.md](https://github.com/umee-network/docs/blob/main/docs/developers/ethereum-bridge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [indexers.md](https://github.com/umee-network/docs/blob/main/docs/developers/indexers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [joining-mainnet.md](https://github.com/umee-network/docs/blob/main/docs/developers/joining-mainnet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [joining-testnet.md](https://github.com/umee-network/docs/blob/main/docs/developers/joining-testnet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [key-management.md](https://github.com/umee-network/docs/blob/main/docs/developers/key-management.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [modules.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01_concepts.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/01_concepts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02_state.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/02_state.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03_queries.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/03_queries.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04_messages.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/04_messages.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [05_endblock.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/05_endblock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06_events.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/06_events.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [07_params.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/leverage/07_params.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03_end_block.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/oracle/03_end_block.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [05_events.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/oracle/05_events.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06_params.md](https://github.com/umee-network/docs/blob/main/docs/developers/modules/oracle/06_params.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [price-feeder.md](https://github.com/umee-network/docs/blob/main/docs/developers/price-feeder.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [querying.md](https://github.com/umee-network/docs/blob/main/docs/developers/querying.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [relaying-ibc.md](https://github.com/umee-network/docs/blob/main/docs/developers/relaying-ibc.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [source-code.md](https://github.com/umee-network/docs/blob/main/docs/developers/source-code.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [asset-listing-guide.md](https://github.com/umee-network/docs/blob/main/docs/governance/asset-listing/asset-listing-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risk-assessment-methodology.md](https://github.com/umee-network/docs/blob/main/docs/governance/asset-listing/risk-assessment-methodology.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [community-support.md](https://github.com/umee-network/docs/blob/main/docs/governance/community-dao/community-support.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [educators.md](https://github.com/umee-network/docs/blob/main/docs/governance/community-dao/educators.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [other.md](https://github.com/umee-network/docs/blob/main/docs/governance/community-dao/other.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [overview.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/governance/community-dao/overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [submit-contributions.md](https://github.com/umee-network/docs/blob/main/docs/governance/community-dao/submit-contributions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [translators.md](https://github.com/umee-network/docs/blob/main/docs/governance/community-dao/translators.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [governance-proposals.md](https://github.com/umee-network/docs/blob/main/docs/governance/governance-overview/governance-proposals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [how-it-works.md](https://github.com/umee-network/docs/blob/main/docs/governance/governance-overview/how-it-works.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [introduction.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/governance/governance-overview/introduction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [delegation-applications.md](https://github.com/umee-network/docs/blob/main/docs/governance/validator-dao/delegation-applications.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [important-deadlines.md](https://github.com/umee-network/docs/blob/main/docs/governance/validator-dao/important-deadlines.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [the-committee.md](https://github.com/umee-network/docs/blob/main/docs/governance/validator-dao/the-committee.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [types-of-blockchains.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/blockchain-basics/types-of-blockchains.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-blockchain.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/blockchain-basics/what-is-blockchain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interchain-accounts.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/cosmos-basics/interchain-accounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-cosmos.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/cosmos-basics/what-is-cosmos.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-ibc.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/cosmos-basics/what-is-ibc.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-interchain-security.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/cosmos-basics/what-is-interchain-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bridges.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/crypto-basics/bridges.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [types-of-crypto.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/crypto-basics/types-of-crypto.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-a-wallet.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/crypto-basics/what-is-a-wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-crypto.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/crypto-basics/what-is-crypto.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-dao.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/crypto-basics/what-is-dao.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-web3.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/crypto-basics/what-is-web3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-defi-money-market.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/defi-basics/what-is-defi-money-market.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-defi.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/defi-basics/what-is-defi.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-dex.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/defi-basics/what-is-dex.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-liquidity-mining.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/defi-basics/what-is-liquidity-mining.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-staking.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/staking-basics/what-is-staking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-validator.md](https://github.com/umee-network/docs/blob/main/docs/learn-the-basics/staking-basics/what-is-validator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [advanced-UX-features-and-functionality.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-app-features-and-app-usage/advanced-UX-features-and-functionality.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [borrowing-and-lending.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-app-features-and-app-usage/borrowing-and-lending.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [collateral-and-leverage-assets.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-app-features-and-app-usage/collateral-and-leverage-assets.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [general-information.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-app-features-and-app-usage/general-information.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [price-information-and-liquidations.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-app-features-and-app-usage/price-information-and-liquidations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [repayment-and-currency.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-app-features-and-app-usage/repayment-and-currency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UX-relayers.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-gravity-bridge/UX-relayers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [faq.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-gravity-bridge/faq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [gravity-bridge-overview.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-gravity-bridge/gravity-bridge-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [peggo.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-gravity-bridge/peggo.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UX-roadmap.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-overview/UX-roadmap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UX-vision.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-overview/UX-vision.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [token-format.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-token/token-format.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [token-utility.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-token/token-utility.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [tokenomics.md](https://github.com/umee-network/docs/blob/main/docs/overview/UX-token/tokenomics.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UX-app.md](https://github.com/umee-network/docs/blob/main/docs/overview/faq/UX-app.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UX-token.md](https://github.com/umee-network/docs/blob/main/docs/overview/faq/UX-token.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [general.md](https://github.com/umee-network/docs/blob/main/docs/overview/faq/general.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [features.md](https://github.com/umee-network/docs/blob/main/docs/overview/udx/features.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [guardian-guild.md](https://github.com/umee-network/docs/blob/main/docs/overview/udx/guardian-guild.md) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [asset-types.md](https://github.com/umee-network/docs/blob/main/docs/users/UX-basics/asset-types.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [common-terms.md](https://github.com/umee-network/docs/blob/main/docs/users/UX-basics/common-terms.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [introduction-to-liquidations.md](https://github.com/umee-network/docs/blob/main/docs/users/UX-basics/introduction-to-liquidations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [me-tokens.md](https://github.com/umee-network/docs/blob/main/docs/users/UX-basics/me-tokens.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [creating-wallet.md](https://github.com/umee-network/docs/blob/main/docs/users/getting-started/creating-wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [funding-wallet.md](https://github.com/umee-network/docs/blob/main/docs/users/getting-started/funding-wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [transferring-tokens.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/users/getting-started/transferring-tokens.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [using-wallet.md](https://github.com/umee-network/docs/blob/main/docs/users/getting-started/using-wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [creating-proposal.md](https://github.com/umee-network/docs/blob/main/docs/users/governance/creating-proposal.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [new-asset-listing-proposal.md](https://github.com/umee-network/docs/blob/main/docs/users/governance/new-asset-listing-proposal.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [voting.md](https://github.com/umee-network/docs/blob/main/docs/users/governance/voting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [selecting-validator.md](https://github.com/umee-network/docs/blob/main/docs/users/staking-UX/selecting-validator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [staking-UX.md](https://github.com/umee-network/docs/blob/main/docs/users/staking-UX/staking-UX.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [borrow-repay.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/borrow-repay.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [burn-auction-module.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/burn-auction-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [connecting-app.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/connecting-app.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [navigating-app.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/navigating-app.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [supply-withdraw.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/supply-withdraw.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [test-before.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/test-before.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [troubleshooting.md](https://github.com/umee-network/docs/blob/main/docs/users/using-the-web-app/troubleshooting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [installing-UX-node.md](https://github.com/umee-network/docs/blob/main/docs/validators/installing-UX-node.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [mainnet-validator.md](https://github.com/umee-network/docs/blob/main/docs/validators/mainnet-validator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [testnet-validator.md](https://github.com/umee-network/docs/blob/main/docs/validators/testnet-validator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 132
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8746] VALIDATOR.md
- [8747] cosmwasm.md
- [8748] 001-interest-stream.md
- [8749] 002-deposit-assets.md
- [8750] 003-borrow-assets.md
- [8751] 004-interest-and-reserves.md
- [8752] 005-liquidation.md
- [8753] 006-oracle.md
- [8754] 007-bad-debt.md
- [8755] 008-borrow-tracking.md
- [8756] 009-liquidity-mining.md
- [8757] 010-market-params.md
- [8758] 011-historacle-pricing.md
- [8759] 012-umee-inflation-v2.md
- [8760] README.md
- [8761] TEMPLATE.md
- [8762] testing.md
- [8763] Umee.md
- [8764] code-of-conduct.md
- [8765] contributing.md
- [8766] pull-request-template.md
- [8767] style-guide.md
- [8768] Least Authority - Umee_Peggo Orchestrator_Final Audit Report.pdf
- [8769] PeckShield-Audit-Report-Umee-v1.0.pdf
- [8770] Trail of Bits Full Audit.pdf
- [8771] UMEE_WASM_Integration_Security_Audit_Report_Halborn_Final.pdf
- [8772] Umee Leverage Module Audit Report_RV Inc..pdf
- [8773] Umee_Oracle_Price_Feeder_Cosmos_Security_Audit_Report_Halborn_Final.pdf
- [8774] Umee_WebApp_Pentest_Report_Halborn_Final.pdf
- [8776] asset-risk.md
- [8777] branding.md
- [8778] disclaimer.md
- [8779] security-audits.md
- [8781] assets.md
- [8783] ethereum-bridge.md
- [8784] indexers.md
- [8785] joining-mainnet.md
- [8786] joining-testnet.md
- [8787] key-management.md
- [8788] modules.md
- [8791] 01_concepts.md
- [8792] 02_state.md
- [8793] 03_queries.md
- [8794] 04_messages.md
- [8795] 05_endblock.md
- [8796] 06_events.md
- [8797] 07_params.md
- [8802] 03_end_block.md
- [8804] 05_events.md
- [8805] 06_params.md
- [8809] price-feeder.md
- [8810] querying.md
- [8811] relaying-ibc.md
- [8812] source-code.md
- [8815] asset-listing-guide.md
- [8816] risk-assessment-methodology.md
- [8818] community-support.md
- [8819] educators.md
- [8820] other.md
- [8821] overview.md
- [8822] submit-contributions.md
- [8823] translators.md
- [8826] governance-proposals.md
- [8827] how-it-works.md
- [8828] introduction.md
- [8831] delegation-applications.md
- [8832] important-deadlines.md
- [8834] the-committee.md
- [8837] types-of-blockchains.md
- [8838] what-is-blockchain.md
- [8840] interchain-accounts.md
- [8841] what-is-cosmos.md
- [8842] what-is-ibc.md
- [8843] what-is-interchain-security.md
- [8845] bridges.md
- [8846] types-of-crypto.md
- [8847] what-is-a-wallet.md
- [8848] what-is-crypto.md
- [8849] what-is-dao.md
- [8850] what-is-web3.md
- [8852] what-is-defi-money-market.md
- [8853] what-is-defi.md
- [8854] what-is-dex.md
- [8855] what-is-liquidity-mining.md
- [8857] what-is-staking.md
- [8858] what-is-validator.md
- [8861] advanced-UX-features-and-functionality.md
- [8862] borrowing-and-lending.md
- [8863] collateral-and-leverage-assets.md
- [8864] general-information.md
- [8865] price-information-and-liquidations.md
- [8866] repayment-and-currency.md
- [8868] UX-relayers.md
- [8869] faq.md
- [8870] gravity-bridge-overview.md
- [8871] peggo.md
- [8873] UX-roadmap.md
- [8874] UX-vision.md
- [8878] token-format.md
- [8879] token-utility.md
- [8880] tokenomics.md
- [8882] UX-app.md
- [8883] UX-token.md
- [8884] general.md
- [8887] features.md
- [8888] guardian-guild.md
- [8892] asset-types.md
- [8893] common-terms.md
- [8894] introduction-to-liquidations.md
- [8896] me-tokens.md
- [8898] creating-wallet.md
- [8899] funding-wallet.md
- [8900] transferring-tokens.md
- [8901] using-wallet.md
- [8903] creating-proposal.md
- [8904] new-asset-listing-proposal.md
- [8905] voting.md
- [8907] selecting-validator.md
- [8908] staking-UX.md
- [8910] borrow-repay.md
- [8911] burn-auction-module.md
- [8912] connecting-app.md
- [8913] navigating-app.md
- [8914] supply-withdraw.md
- [8915] test-before.md
- [8917] troubleshooting.md
- [8919] installing-UX-node.md
- [8920] mainnet-validator.md
- [8921] testnet-validator.md
- [8922] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8923] 0002-metadata-manifest-and-pull-command.md
- [8924] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
