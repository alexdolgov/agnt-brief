# Agentic Audit Brief: Enzyme Finance

## Project Overview

- Project: Enzyme Finance (`enzyme-finance`)
- Website: [https://enzyme.finance/](https://enzyme.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.831Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $75,025,146.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 34 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 9 common project-authored base contract(s) (dsauth, dsauthevents, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/34 (11.8%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/34
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 40 (40 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 9 aging, 24 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 11.8% (ConsenSys Diligence, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ConsenSys Diligence | Tier 1 | 4 | 11.8% | 2025-08 |
| OpenZeppelin | Tier 1 | 1 | 2.9% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KyberAdapter | unknown | ethereum | n/a | [`0x33d9a2...5a927f`](./contracts/ethereum-1/0x33d9a2a17a237c4815586b099f49bce0005a927f/) | ✅ Audited |
| ManagementFee | unknown | ethereum | n/a | [`0x8da03c...843da1`](./contracts/ethereum-1/0x8da03cbc5bce3c672b178e303de399e5c3843da1/) | ✅ Audited |
| PerformanceFee | unknown | ethereum | n/a | [`0xd6101a...1a5de9`](./contracts/ethereum-1/0xd6101a700f1f5033747eb31f1e01f00a1c1a5de9/) | ✅ Audited |
| ZeroExV2Adapter | unknown | ethereum | n/a | [`0x03f212...7c42af`](./contracts/ethereum-1/0x03f2121b9b86db6d2e3373c3acafaf043d7c42af/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingFactory | unknown | ethereum | n/a | [`0x334725...d19c8e`](./contracts/ethereum-1/0x334725a316bd84c7fd69bf92c7cd05df49d19c8e/) | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0x3c75d3...383a6a`](./contracts/ethereum-1/0x3c75d37b579e0e4896f02c0122baa4de05383a6a/) | ⚠️ Unaudited |
| BugBountyCompliance | unknown | ethereum | n/a | [`0xd42316...76bb2f`](./contracts/ethereum-1/0xd42316be0e813104096ab537fee2fe0f5076bb2f/) | ⚠️ Unaudited |
| Competition | unknown | ethereum | n/a | [`0x1b4417...47fd68`](./contracts/ethereum-1/0x1b441745780f8b0139c15299bfeca5938847fd68/) | ⚠️ Unaudited |
| CompetitionCompliance | unknown | ethereum | n/a | [`0x6b3521...04ac5d`](./contracts/ethereum-1/0x6b3521005ddc38a6b57750b85f1c9753e304ac5d/) | ⚠️ Unaudited |
| CouncilVesting | unknown | ethereum | n/a | [`0x5bf6bd...f397d3`](./contracts/ethereum-1/0x5bf6bd152e1d70d6cd5def730ffc93092bf397d3/) | ⚠️ Unaudited |
| Engine | unknown | ethereum | n/a | [`0x342814...fd98c9`](./contracts/ethereum-1/0x342814604cd5cc4bdeed100edebd51cac3fd98c9/) | ⚠️ Unaudited |
| EngineAdapter | unknown | ethereum | n/a | [`0x759ad2...032c05`](./contracts/ethereum-1/0x759ad2faf96ea898d00c924bef110bec22032c05/) | ⚠️ Unaudited |
| EthfinexAdapter | unknown | ethereum | n/a | [`0x42cad8...daddd3`](./contracts/ethereum-1/0x42cad86beef643b6669a3f134b67d4287edaddd3/) | ⚠️ Unaudited |
| FeeManagerFactory | unknown | ethereum | n/a | [`0xb9d1cf...1e5661`](./contracts/ethereum-1/0xb9d1cfe7939d861e5def3f531b22e38fde1e5661/) | ⚠️ Unaudited |
| FundRanking | unknown | ethereum | n/a | [`0xe52ee3...b79a9b`](./contracts/ethereum-1/0xe52ee3db0587170deb20b1c71b17229a28b79a9b/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x4b9a0d...91cc6c`](./contracts/ethereum-1/0x4b9a0d1d725b91c47729d35e3dd174179891cc6c/) | ⚠️ Unaudited |
| KyberPriceFeed | unknown | ethereum | n/a | [`0x10a285...99f7e6`](./contracts/ethereum-1/0x10a285ea8b9e0ff92a2de4ecf961293a6999f7e6/) | ⚠️ Unaudited |
| MatchingMarketAdapter | unknown | ethereum | n/a | [`0x752e85...f1c30f`](./contracts/ethereum-1/0x752e85ae6297b17f42c1619008ad8c2271f1c30f/) | ⚠️ Unaudited |
| Melon | unknown | ethereum | n/a | [`0x2e2936...b218b3`](./contracts/ethereum-1/0x2e2936efc2be73371d3f5653cab8813b7ab218b3/) | ⚠️ Unaudited |
| NoRiskMgmt | unknown | ethereum | n/a | [`0xdb0e41...f94aca`](./contracts/ethereum-1/0xdb0e414f86f94e69b5be00b5df8a85f793f94aca/) | ⚠️ Unaudited |
| OasisDexAccessor | unknown | ethereum | n/a | [`0x4cc6bf...6cf1f7`](./contracts/ethereum-1/0x4cc6bf239292946cacf29ead443017fdf96cf1f7/) | ⚠️ Unaudited |
| OnlyManager | unknown | ethereum | n/a | [`0xa7c621...4d6496`](./contracts/ethereum-1/0xa7c621d9fe8566585a6bb44a6eaa4e714e4d6496/) | ⚠️ Unaudited |
| ParticipationFactory | unknown | ethereum | n/a | [`0x986bb0...27ddfe`](./contracts/ethereum-1/0x986bb0574605963fccb55372147c1a342c27ddfe/) | ⚠️ Unaudited |
| PolicyManagerFactory | unknown | ethereum | n/a | [`0xbb35e7...d5a26a`](./contracts/ethereum-1/0xbb35e7e655b8b3b4d2b7f8b385b1217164d5a26a/) | ⚠️ Unaudited |
| PriceTolerance | unknown | ethereum | n/a | [`0x3d2748...a659fc`](./contracts/ethereum-1/0x3d2748e0fce3374da85d0b4612ae151719a659fc/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x1f2b22...a67909`](./contracts/ethereum-1/0x1f2b2262b85e5a3d3fb69a8d823ffa3f49a67909/) | ⚠️ Unaudited |
| RMMakeOrders | unknown | ethereum | n/a | [`0xa1285e...37105a`](./contracts/ethereum-1/0xa1285eec7ed4e1d65e55f50f564dcff40237105a/) | ⚠️ Unaudited |
| SharesFactory | unknown | ethereum | n/a | [`0x099ca2...0c9b4e`](./contracts/ethereum-1/0x099ca2ced330cea3cdce7355150495ae750c9b4e/) | ⚠️ Unaudited |
| TradingFactory | unknown | ethereum | n/a | [`0xc509bd...32b4d4`](./contracts/ethereum-1/0xc509bd6bb324ddb6dded2ac93e59d4deac32b4d4/) | ⚠️ Unaudited |
| UserWhitelist | unknown | ethereum | n/a | [`0x05d495...e2d7b8`](./contracts/ethereum-1/0x05d495ebf5aca8ace45c08e103e3c2ca1de2d7b8/) | ⚠️ Unaudited |
| VaultFactory | unknown | ethereum | n/a | [`0x3c5515...940386`](./contracts/ethereum-1/0x3c551588b64d1e282f734fad7d28c4cbc2940386/) | ⚠️ Unaudited |
| Version | unknown | ethereum | n/a | [`0x073c4e...a985c0`](./contracts/ethereum-1/0x073c4ea5a89d0e5aa0408a1b6dd8bbfcdba985c0/) | ⚠️ Unaudited |
| ZeroExV1Adapter | unknown | ethereum | n/a | [`0x4a3943...7c85c2`](./contracts/ethereum-1/0x4a3943269c581efcbd0875a7c60da1c35a7c85c2/) | ⚠️ Unaudited |
| ZeroExV3Adapter | unknown | ethereum | n/a | [`0x4132f4...add604`](./contracts/ethereum-1/0x4132f47401c352218a10a29d1d86a4c87eadd604/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://github.com/enzymefinance/protocol/tree/v4/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2021-01-CS-protocol-v2.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2021-01-CS-protocol-v2.pdf) | ConsenSys Diligence | Audit | 2021-01 | stale | Direct | contract_name | 4 | high |
| [2021-09-CS-protocol-v4.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2021-09-CS-protocol-v4.pdf) | ConsenSys Diligence | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [2021-10-OZ-protocol-v4.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2021-10-OZ-protocol-v4.pdf) | OpenZeppelin | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [2021-12-CS-fund-value-calculator-address-list-registry-paraswap-pool-together-uniswap.pdf](https://github.com/enzymefinance/protocol/blob/v4/audits/2021-12-CS-fund-value-calculator-address-list-registry-paraswap-pool-together-uniswap.pdf) | ConsenSys Diligence | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [2022-01-CS-protocol-v4-revisions-curve-synthetix-olympus-compound.pdf](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-01-CS-protocol-v4-revisions-curve-synthetix-olympus-compound.pdf) | ConsenSys Diligence | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-02-CS-protocol-v4-revisions-performance-fee-convex.pdf](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-02-CS-protocol-v4-revisions-performance-fee-convex.pdf) | ConsenSys Diligence | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [2022-03-CS-aave-borrowing-fuse-lending-uniswap-v3-lp-rev-usdeth-simulated-aggregator.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-03-CS-aave-borrowing-fuse-lending-uniswap-v3-lp-rev-usdeth-simulated-aggregator.pdf) | ConsenSys Diligence | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [2022-05-CS-curve-fixes-maple-shares-splitter-convex-voting-paraswap-fee-liquity-graph-delegation.pdf](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-05-CS-curve-fixes-maple-shares-splitter-convex-voting-paraswap-fee-liquity-graph-delegation.pdf) | ConsenSys Diligence | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022-08-CS-arbitrary-loans-solv-convertibles-fidu-unit-lists-manager-policies-deposit-wrapper-fix.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-08-CS-arbitrary-loans-solv-convertibles-fidu-unit-lists-manager-policies-deposit-wrapper-fix.pdf) | ConsenSys Diligence | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [2022-10-CS--compound-cdp-fix--protocol-fee-reserve-arbitrary-call--balancer-lp--balancer-weighted-pool-feed--notional-lending-and-borrowing.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-10-CS--compound-cdp-fix--protocol-fee-reserve-arbitrary-call--balancer-lp--balancer-weighted-pool-feed--notional-lending-and-borrowing.pdf) | ConsenSys Diligence | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022-11-CS--balancer-and-aura-staking--balancer-stable-pool-feed--kiln-staking--paraswap-multi-order--arbitrary-deposit-token-shares-wrapper.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-11-CS--balancer-and-aura-staking--balancer-stable-pool-feed--kiln-staking--paraswap-multi-order--arbitrary-deposit-token-shares-wrapper.pdf) | ConsenSys Diligence | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [2022-12-CS--maple-v2-migration--aave-v3-lending--compound-v3-lending--wsteth-price-feed.pdf](https://github.com/enzymefinance/protocol/blob/v4/audits/2022-12-CS--maple-v2-migration--aave-v3-lending--compound-v3-lending--wsteth-price-feed.pdf) | ConsenSys Diligence | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [2023-02-CS--gated-redemption-shares-wrapper--balancer-v2-batch-swap--uniswap-v2-fee-on-transfer-tokens--solv-v2-bonds.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2023-02-CS--gated-redemption-shares-wrapper--balancer-v2-batch-swap--uniswap-v2-fee-on-transfer-tokens--solv-v2-bonds.pdf) | ConsenSys Diligence | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [2023-03-CS--gsn-fix.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2023-03-CS--gsn-fix.pdf) | ConsenSys Diligence | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-05-CS--zero-ex-v4--1inch-v5--paraswap-v5-updates--gated-shares-wrapper-updates.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2023-05-CS--zero-ex-v4--1inch-v5--paraswap-v5-updates--gated-shares-wrapper-updates.pdf) | ConsenSys Diligence | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [2023-07-CS--erc4626--kiln-exits--balancer-stable-pool-price-feed-fix--convex-aura-wrappers-fix.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2023-07-CS--erc4626--kiln-exits--balancer-stable-pool-price-feed-fix--convex-aura-wrappers-fix.pdf) | Code4rena | Contest | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [2023-09-CS--convex-aura-wrappers-v2--no-depeg-policy--arrakis-v2--erc20-deposit-wrapper--lido-withdrawals--aave-v3-debt.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2023-09-CS--convex-aura-wrappers-v2--no-depeg-policy--arrakis-v2--erc20-deposit-wrapper--lido-withdrawals--aave-v3-debt.pdf) | ConsenSys Diligence | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [2023-10-CS--deposit-wrapper-fix.pdf (also discovered via alternate URL)](https://github.com/enzymefinance/protocol/blob/v4/audits/2023-10-CS--deposit-wrapper-fix.pdf) | ConsenSys Diligence | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [2025-09-CS--onyx-and-initial-features.pdf](https://github.com/enzymefinance/protocol-onyx/blob/main/audits/2025-09-CS--onyx-and-initial-features.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [ChainSecurity_EnzymeFoundation_OnyxCCIPWallet_Audit.pdf](https://github.com/enzymefinance/protocol-onyx/blob/main/audits/ChainSecurity_EnzymeFoundation_OnyxCCIPWallet_Audit.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [ChainSecurity_QA_EnzymeFoundation_AddressList_TransferValidator_DepositQueueList_CREConsumer.md](https://github.com/enzymefinance/protocol-onyx/blob/main/audits/QA/ChainSecurity_QA_EnzymeFoundation_AddressList_TransferValidator_DepositQueueList_CREConsumer.md) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_QA_EnzymeFoundation_CreWorkflowConsumer_NonceExpiry.md](https://github.com/enzymefinance/protocol-onyx/blob/main/audits/QA/ChainSecurity_QA_EnzymeFoundation_CreWorkflowConsumer_NonceExpiry.md) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_QA_EnzymeFoundation_SyncDepositHandler.md](https://github.com/enzymefinance/protocol-onyx/blob/main/audits/QA/ChainSecurity_QA_EnzymeFoundation_SyncDepositHandler.md) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-12-CS--stakewise-v3.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2023-12-CS--stakewise-v3.pdf) | ConsenSys Diligence | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2023-12-CS--term-finance-lending--zero-ex-v4-otc--maple-fix.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2023-12-CS--term-finance-lending--zero-ex-v4-otc--maple-fix.pdf) | ConsenSys Diligence | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024-04-CS--morpho-blue.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-04-CS--morpho-blue.pdf) | ConsenSys Diligence | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-05-CS--lmax-alice.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-05-CS--lmax-alice.pdf) | ConsenSys Diligence | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [2024-07-CS--pendle-v2--swell--gsn-updates--etherfi-eth-price--redemption-queue--share-price-throttled-asset-manager--allowed-redeemers-for-specific-assets-policy--non-standard-precision-simulated-aggregator.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-07-CS--pendle-v2--swell--gsn-updates--etherfi-eth-price--redemption-queue--share-price-throttled-asset-manager--allowed-redeemers-for-specific-assets-policy--non-standard-precision-simulated-aggregator.pdf) | ConsenSys Diligence | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [2024-08-CS--chainlink-like-wsteth-feed.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-08-CS--chainlink-like-wsteth-feed.pdf) | ConsenSys Diligence | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2024-09-CS--chainlink-like-yneth-feed--stader-SD-feed.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-09-CS--chainlink-like-yneth-feed--stader-SD-feed.pdf) | ConsenSys Diligence | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2024-10-CS--aave-v3-flash-loan-asset-manager.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-10-CS--aave-v3-flash-loan-asset-manager.pdf) | ConsenSys Diligence | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [2024-12-CS--stader-withdrawals.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2024-12-CS--stader-withdrawals.pdf) | ConsenSys Diligence | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-02-CS--gmx-v2--disallowed-adapter-incoming-assets-policy.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2025-02-CS--gmx-v2--disallowed-adapter-incoming-assets-policy.pdf) | ConsenSys Diligence | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-02-CS--price-feed-utils.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2025-02-CS--price-feed-utils.pdf) | ConsenSys Diligence | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-03-CS--single-asset-deposit-queue.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2025-03-CS--single-asset-deposit-queue.pdf) | ConsenSys Diligence | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-04-CS--myso-v3.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2025-04-CS--myso-v3.pdf) | ConsenSys Diligence | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-05-CS--stakewise-v3.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2025-05-CS--stakewise-v3.pdf) | ConsenSys Diligence | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08-CS--gmx-v2-2-update.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/2025-08-CS--gmx-v2-2-update.pdf) | ConsenSys Diligence | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2024-04-CS--31third.pdf](https://github.com/enzymefinance/protocol/blob/dev/audits/external-teams/2024-04-CS--31third.pdf) | 31third | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x334725...d19c8e`](./contracts/ethereum-1/0x334725a316bd84c7fd69bf92c7cd05df49d19c8e/) | AccountingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c75d3...383a6a`](./contracts/ethereum-1/0x3c75d37b579e0e4896f02c0122baa4de05383a6a/) | Alchemist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd42316...76bb2f`](./contracts/ethereum-1/0xd42316be0e813104096ab537fee2fe0f5076bb2f/) | BugBountyCompliance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b4417...47fd68`](./contracts/ethereum-1/0x1b441745780f8b0139c15299bfeca5938847fd68/) | Competition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b3521...04ac5d`](./contracts/ethereum-1/0x6b3521005ddc38a6b57750b85f1c9753e304ac5d/) | CompetitionCompliance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bf6bd...f397d3`](./contracts/ethereum-1/0x5bf6bd152e1d70d6cd5def730ffc93092bf397d3/) | CouncilVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342814...fd98c9`](./contracts/ethereum-1/0x342814604cd5cc4bdeed100edebd51cac3fd98c9/) | Engine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x759ad2...032c05`](./contracts/ethereum-1/0x759ad2faf96ea898d00c924bef110bec22032c05/) | EngineAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42cad8...daddd3`](./contracts/ethereum-1/0x42cad86beef643b6669a3f134b67d4287edaddd3/) | EthfinexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d1cf...1e5661`](./contracts/ethereum-1/0xb9d1cfe7939d861e5def3f531b22e38fde1e5661/) | FeeManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe52ee3...b79a9b`](./contracts/ethereum-1/0xe52ee3db0587170deb20b1c71b17229a28b79a9b/) | FundRanking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b9a0d...91cc6c`](./contracts/ethereum-1/0x4b9a0d1d725b91c47729d35e3dd174179891cc6c/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10a285...99f7e6`](./contracts/ethereum-1/0x10a285ea8b9e0ff92a2de4ecf961293a6999f7e6/) | KyberPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x752e85...f1c30f`](./contracts/ethereum-1/0x752e85ae6297b17f42c1619008ad8c2271f1c30f/) | MatchingMarketAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e2936...b218b3`](./contracts/ethereum-1/0x2e2936efc2be73371d3f5653cab8813b7ab218b3/) | Melon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb0e41...f94aca`](./contracts/ethereum-1/0xdb0e414f86f94e69b5be00b5df8a85f793f94aca/) | NoRiskMgmt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cc6bf...6cf1f7`](./contracts/ethereum-1/0x4cc6bf239292946cacf29ead443017fdf96cf1f7/) | OasisDexAccessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7c621...4d6496`](./contracts/ethereum-1/0xa7c621d9fe8566585a6bb44a6eaa4e714e4d6496/) | OnlyManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x986bb0...27ddfe`](./contracts/ethereum-1/0x986bb0574605963fccb55372147c1a342c27ddfe/) | ParticipationFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb35e7...d5a26a`](./contracts/ethereum-1/0xbb35e7e655b8b3b4d2b7f8b385b1217164d5a26a/) | PolicyManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d2748...a659fc`](./contracts/ethereum-1/0x3d2748e0fce3374da85d0b4612ae151719a659fc/) | PriceTolerance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f2b22...a67909`](./contracts/ethereum-1/0x1f2b2262b85e5a3d3fb69a8d823ffa3f49a67909/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1285e...37105a`](./contracts/ethereum-1/0xa1285eec7ed4e1d65e55f50f564dcff40237105a/) | RMMakeOrders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x099ca2...0c9b4e`](./contracts/ethereum-1/0x099ca2ced330cea3cdce7355150495ae750c9b4e/) | SharesFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc509bd...32b4d4`](./contracts/ethereum-1/0xc509bd6bb324ddb6dded2ac93e59d4deac32b4d4/) | TradingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05d495...e2d7b8`](./contracts/ethereum-1/0x05d495ebf5aca8ace45c08e103e3c2ca1de2d7b8/) | UserWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5515...940386`](./contracts/ethereum-1/0x3c551588b64d1e282f734fad7d28c4cbc2940386/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x073c4e...a985c0`](./contracts/ethereum-1/0x073c4ea5a89d0e5aa0408a1b6dd8bbfcdba985c0/) | Version | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a3943...7c85c2`](./contracts/ethereum-1/0x4a3943269c581efcbd0875a7c60da1c35a7c85c2/) | ZeroExV1Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4132f4...add604`](./contracts/ethereum-1/0x4132f47401c352218a10a29d1d86a4c87eadd604/) | ZeroExV3Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 37
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=11

Zero-match audit list:

- [20230] DL audit link
- [20232] 2021-09-CS-protocol-v4.pdf
- [20234] 2021-12-CS-fund-value-calculator-address-list-registry-paraswap-pool-together-uniswap.pdf
- [20235] 2022-01-CS-protocol-v4-revisions-curve-synthetix-olympus-compound.pdf
- [20237] 2022-03-CS-aave-borrowing-fuse-lending-uniswap-v3-lp-rev-usdeth-simulated-aggregator.pdf
- [20238] 2022-05-CS-curve-fixes-maple-shares-splitter-convex-voting-paraswap-fee-liquity-graph-delegation.pdf
- [20239] 2022-08-CS-arbitrary-loans-solv-convertibles-fidu-unit-lists-manager-policies-deposit-wrapper-fix.pdf
- [20240] 2022-10-CS--compound-cdp-fix--protocol-fee-reserve-arbitrary-call--balancer-lp--balancer-weighted-pool-feed--notional-lending-and-borrowing.pdf
- [20241] 2022-11-CS--balancer-and-aura-staking--balancer-stable-pool-feed--kiln-staking--paraswap-multi-order--arbitrary-deposit-token-shares-wrapper.pdf
- [20242] 2022-12-CS--maple-v2-migration--aave-v3-lending--compound-v3-lending--wsteth-price-feed.pdf
- [20243] 2023-02-CS--gated-redemption-shares-wrapper--balancer-v2-batch-swap--uniswap-v2-fee-on-transfer-tokens--solv-v2-bonds.pdf
- [20244] 2023-03-CS--gsn-fix.pdf
- [20245] 2023-05-CS--zero-ex-v4--1inch-v5--paraswap-v5-updates--gated-shares-wrapper-updates.pdf
- [20246] 2023-07-CS--erc4626--kiln-exits--balancer-stable-pool-price-feed-fix--convex-aura-wrappers-fix.pdf
- [20247] 2023-09-CS--convex-aura-wrappers-v2--no-depeg-policy--arrakis-v2--erc20-deposit-wrapper--lido-withdrawals--aave-v3-debt.pdf
- [20248] 2023-10-CS--deposit-wrapper-fix.pdf
- [20249] 2025-09-CS--onyx-and-initial-features.pdf
- [20250] ChainSecurity_EnzymeFoundation_OnyxCCIPWallet_Audit.pdf
- [20251] ChainSecurity_QA_EnzymeFoundation_AddressList_TransferValidator_DepositQueueList_CREConsumer.md
- [20252] ChainSecurity_QA_EnzymeFoundation_CreWorkflowConsumer_NonceExpiry.md
- [20253] ChainSecurity_QA_EnzymeFoundation_SyncDepositHandler.md
- [20272] 2023-12-CS--stakewise-v3.pdf
- [20273] 2023-12-CS--term-finance-lending--zero-ex-v4-otc--maple-fix.pdf
- [20274] 2024-04-CS--morpho-blue.pdf
- [20275] 2024-05-CS--lmax-alice.pdf
- [20276] 2024-07-CS--pendle-v2--swell--gsn-updates--etherfi-eth-price--redemption-queue--share-price-throttled-asset-manager--allowed-redeemers-for-specific-assets-policy--non-standard-precision-simulated-aggregator.pdf
- [20277] 2024-08-CS--chainlink-like-wsteth-feed.pdf
- [20278] 2024-09-CS--chainlink-like-yneth-feed--stader-SD-feed.pdf
- [20279] 2024-10-CS--aave-v3-flash-loan-asset-manager.pdf
- [20280] 2024-12-CS--stader-withdrawals.pdf
- [20281] 2025-02-CS--gmx-v2--disallowed-adapter-incoming-assets-policy.pdf
- [20282] 2025-02-CS--price-feed-utils.pdf
- [20283] 2025-03-CS--single-asset-deposit-queue.pdf
- [20284] 2025-04-CS--myso-v3.pdf
- [20285] 2025-05-CS--stakewise-v3.pdf
- [20286] 2025-08-CS--gmx-v2-2-update.pdf
- [20287] 2024-04-CS--31third.pdf

Fork inheritance lineage and inherited audits are included when available.
