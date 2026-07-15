# Agentic Audit Brief: Rocket Pool

## Export Authority

- Production state: **published scope**
- Raw selected rows: 357 across 16 audit(s)
- Eligible audit results: 17 (16 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rocket Pool (`rocket-pool`)
- Website: [https://rocketpool.net](https://rocketpool.net)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, hoodi
- Contract surface: 187 unique implementations (187 raw deployments)
- Coverage basis: 72/75 confirmed own live verified implementations (96.0%); conservative 96.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $863,345,512.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rocket Pool. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 76 contract row(s) across arbitrum, ethereum, hoodi. Structural roles: 51 core, 25 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 76
- Structural roles: core (51), supporting (25)
- Contract kinds: contract (54), abstract (22)
- Detected standards: erc20 (2)
- Frameworks: openzeppelin (38), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 76 contracts are derived from known codebases. 76 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AddressQueueStorage (`0x44e319...e2ebd8`, chain 1)
- AddressSetStorage (`0xd4ae25...1c6a16`, chain 1)
- BeaconStateVerifier (`0xe9a114...2d8469`, chain 1)
- Deposit (`0xdd3f50...745af8`, chain 1)
- linkedListStorage (`0x52590e...ccb6d6`, chain 1)
- RocketAuctionManager (`0x1a2f00...49ecce`, chain 1)
- rocketClaimDAO (`0xfb2f2a...0c81aa`, chain 1)
- RocketDAONodeTrusted (`0xb8e783...152cc9`, chain 1)
- RocketDAONodeTrustedActions (`0x029d94...596aeb`, chain 1)
- RocketDAONodeTrustedProposals (`0xb0ec3f...2f05d5`, chain 1)
- RocketDAONodeTrustedSettingsMembers (`0xda1ab3...3f0d01`, chain 1)
- rocketDAONodeTrustedSettingsMinipool (`0xe535fa...124d95`, chain 1)
- RocketDAONodeTrustedSettingsProposals (`0xad038f...d4d2b0`, chain 1)
- RocketDAONodeTrustedSettingsRewards (`0x7322c2...c264f1`, chain 1)
- RocketDAONodeTrustedUpgrade (`0x9290aa...e1ad10`, chain 1)
- RocketDAOProposal (`0x1e94e6...ddf102`, chain 1)
- rocketDAOProtocol (`0xcac25e...ef809a`, chain 1)
- RocketDAOProtocolActions (`0xb50d51...f9e08d`, chain 1)
- RocketDAOProtocolProposal (`0x2d627a...300b25`, chain 1)
- rocketDAOProtocolProposals (`0xcf7f6e...c0f03b`, chain 1)
- RocketDAOProtocolSettingsAuction (`0x364f98...8c0d18`, chain 1)
- RocketDAOProtocolSettingsDeposit (`0x227be8...c5c365`, chain 1)
- RocketDAOProtocolSettingsInflation (`0x1d4aae...ddd735`, chain 1)
- RocketDAOProtocolSettingsMegapool (`0x40628f...0a2dce`, chain 1)
- rocketDAOProtocolSettingsMinipool (`0xaef94c...4b9152`, chain 1)
- rocketDAOProtocolSettingsNetwork (`0x67fd03...0b1153`, chain 1)
- rocketDAOProtocolSettingsNode (`0xb02b88...f0fc9d`, chain 1)
- rocketDAOProtocolSettingsProposals (`0xf6ad77...bfdf81`, chain 1)
- RocketDAOProtocolSettingsRewards (`0x885761...fc4124`, chain 1)
- rocketDAOProtocolSettingsSecurity (`0xc9d771...837cff`, chain 1)
- rocketDAOProtocolVerifier (`0xd1f7e5...80040a`, chain 1)
- RocketDAOSecurity (`0x84ae6d...89ad37`, chain 1)
- RocketDAOSecurityActions (`0xeaa442...9eb59a`, chain 1)
- RocketDAOSecurityProposals (`0x334b9b...2a0c4e`, chain 1)
- RocketDAOSecurityUpgrade (`0x950baf...9b5dc4`, chain 1)
- rocketDepositPool (`0xce1529...df4fdc`, chain 1)
- RocketDepositPool (`0x2cac91...cfbfb4`, chain 1)
- rocketMegapoolDelegate (`0xca3dd4...aaebdd`, chain 1)
- rocketMegapoolFactory (`0xd5bffe...f0e38b`, chain 1)
- rocketMegapoolManager (`0xf2ccd5...342034`, chain 1)
- RocketMegapoolPenalties (`0xa2afc3...30e6ab`, chain 1)
- RocketMegapoolProxy (`0x1b389d...f9cd51`, chain 1)
- rocketMerkleDistributorMainnet (`0xe4e261...86e2f5`, chain 1)
- RocketMinipoolBase (`0x560656...3eff33`, chain 1)
- RocketMinipoolBondReducer (`0xde8ab5...7be591`, chain 1)
- RocketMinipoolDelegate (`0x03d304...343bb0`, chain 1)
- rocketMinipoolFactory (`0x7b8c48...22b8d3`, chain 1)
- rocketMinipoolManager (`0xe54b8c...24d62c`, chain 1)
- RocketMinipoolPenalty (`0xe64ac4...a06ba6`, chain 1)
- rocketMinipoolQueue (`0x9e9667...cf6faa`, chain 1)
- RocketMinipoolStatus (`0xa52451...f8a6a5`, chain 1)
- rocketNetworkBalances (`0x1d9f14...8e9473`, chain 1)
- rocketNetworkFees (`0xf824e2...d27a0f`, chain 1)
- rocketNetworkPenalties (`0xed0493...136b3a`, chain 1)
- RocketNetworkPrices (`0x25e54b...48e382`, chain 1)
- RocketNetworkRevenues (`0x9d9708...260842`, chain 1)
- rocketNetworkSnapshots (`0xe37f2d...028f17`, chain 1)
- RocketNetworkSnapshotsTime (`0x569f5b...18a891`, chain 1)
- rocketNetworkVoting (`0x994a9c...610aed`, chain 1)
- rocketNodeDeposit (`0x6b1369...1d2d47`, chain 1)
- rocketNodeDistributorDelegate (`0x35a85d...6f129d`, chain 1)
- RocketNodeDistributorFactory (`0xe22801...b4037c`, chain 1)
- rocketNodeManager (`0xcf2d76...76e250`, chain 1)
- rocketNodeStaking (`0xedfc7d...90ee3e`, chain 1)
- rocketRewardsPool (`0xcba595...9c41fd`, chain 1)
- RocketSmoothingPool (`0xd4e96e...7605b7`, chain 1)
- RocketStorage (`0x1d8f8f...e0fa46`, chain 1)
- rocketSwapRouter (`0x16d5a4...8f1c1c`, chain 1)
- RocketTokenRETH (`0xae7873...fc6393`, chain 1)
- RocketTokenRPL (`0xd33526...21a51f`, chain 1)
- RocketUpgradeOneDotFour (`0x5b3b5c...16c8ba`, chain 1)
- RocketUpgradeOneDotOne (`0xc680a2...77c8fe`, chain 1)
- RocketUpgradeOneDotThree (`0x5dc690...9fb73c`, chain 1)
- RocketUpgradeOneDotThreeDotOne (`0xc2c814...90f9ed`, chain 1)
- RocketUpgradeOneDotTwo (`0x9a0b5d...97984a`, chain 1)
- RocketVault (`0x3bdc69...b469d6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 76; live-surface rows included: 76 (76 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 76/151 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 72/75 (96.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 75 own, 74 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 38 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 76 of 187 unique; 111 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 72/114
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 73
- Unique implementations: 187
- Raw deployments: 187
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/rocketpool/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 72 match-unverified
- Tier 1 coverage: 96.0% (ConsenSys Diligence, Immunefi, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 69 | 60.5% | 2026-02 |
| Spearbit | Tier 1 | 67 | 58.8% | 2026-01 |
| Consensys Diligence | Tier 1 | 46 | 40.4% | 2023-12 |
| Trail of Bits | Tier 1 | 15 | 13.2% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressQueueStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391574 | `0x44e319...e2ebd8` | ✅ Audited |
| AddressSetStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391615 | `0xd4ae25...1c6a16` | ✅ Audited |
| BeaconStateVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391627 | `0xe9a114...2d8469` | ✅ Audited |
| linkedListStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391576 | `0x52590e...ccb6d6` | ✅ Audited |
| RocketAuctionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391559 | `0x1a2f00...49ecce` | ✅ Audited |
| rocketClaimDAO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391634 | `0xfb2f2a...0c81aa` | ✅ Audited |
| RocketDAONodeTrusted | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391603 | `0xb8e783...152cc9` | ✅ Audited |
| RocketDAONodeTrustedActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391556 | `0x029d94...596aeb` | ✅ Audited |
| RocketDAONodeTrustedProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391600 | `0xb0ec3f...2f05d5` | ✅ Audited |
| RocketDAONodeTrustedSettingsMembers | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391618 | `0xda1ab3...3f0d01` | ✅ Audited |
| rocketDAONodeTrustedSettingsMinipool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391624 | `0xe535fa...124d95` | ✅ Audited |
| RocketDAONodeTrustedSettingsProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391596 | `0xad038f...d4d2b0` | ✅ Audited |
| RocketDAONodeTrustedSettingsRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391584 | `0x7322c2...c264f1` | ✅ Audited |
| RocketDAONodeTrustedUpgrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391588 | `0x9290aa...e1ad10` | ✅ Audited |
| RocketDAOProposal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391564 | `0x1e94e6...ddf102` | ✅ Audited |
| rocketDAOProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391608 | `0xcac25e...ef809a` | ✅ Audited |
| RocketDAOProtocolActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391601 | `0xb50d51...f9e08d` | ✅ Audited |
| RocketDAOProtocolProposal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391568 | `0x2d627a...300b25` | ✅ Audited |
| rocketDAOProtocolProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391612 | `0xcf7f6e...c0f03b` | ✅ Audited |
| RocketDAOProtocolSettingsAuction | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391571 | `0x364f98...8c0d18` | ✅ Audited |
| RocketDAOProtocolSettingsDeposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391565 | `0x227be8...c5c365` | ✅ Audited |
| RocketDAOProtocolSettingsInflation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391561 | `0x1d4aae...ddd735` | ✅ Audited |
| RocketDAOProtocolSettingsMegapool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391573 | `0x40628f...0a2dce` | ✅ Audited |
| rocketDAOProtocolSettingsMinipool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391598 | `0xaef94c...4b9152` | ✅ Audited |
| rocketDAOProtocolSettingsNetwork | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391581 | `0x67fd03...0b1153` | ✅ Audited |
| rocketDAOProtocolSettingsNode | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391599 | `0xb02b88...f0fc9d` | ✅ Audited |
| rocketDAOProtocolSettingsProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391632 | `0xf6ad77...bfdf81` | ✅ Audited |
| RocketDAOProtocolSettingsRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391587 | `0x885761...fc4124` | ✅ Audited |
| rocketDAOProtocolSettingsSecurity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391606 | `0xc9d771...837cff` | ✅ Audited |
| rocketDAOProtocolVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391613 | `0xd1f7e5...80040a` | ✅ Audited |
| RocketDAOSecurity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391586 | `0x84ae6d...89ad37` | ✅ Audited |
| RocketDAOSecurityActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391628 | `0xeaa442...9eb59a` | ✅ Audited |
| RocketDAOSecurityProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391569 | `0x334b9b...2a0c4e` | ✅ Audited |
| RocketDAOSecurityUpgrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391589 | `0x950baf...9b5dc4` | ✅ Audited |
| rocketDepositPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391610 | `0xce1529...df4fdc` | ✅ Audited |
| rocketMegapoolDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391607 | `0xca3dd4...aaebdd` | ✅ Audited |
| rocketMegapoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391617 | `0xd5bffe...f0e38b` | ✅ Audited |
| rocketMegapoolManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391631 | `0xf2ccd5...342034` | ✅ Audited |
| RocketMegapoolPenalties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391594 | `0xa2afc3...30e6ab` | ✅ Audited |
| RocketMegapoolProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391560 | `0x1b389d...f9cd51` | ✅ Audited |
| rocketMerkleDistributorMainnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391623 | `0xe4e261...86e2f5` | ✅ Audited |
| RocketMinipoolBase | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391577 | `0x560656...3eff33` | ✅ Audited |
| RocketMinipoolBondReducer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391620 | `0xde8ab5...7be591` | ✅ Audited |
| RocketMinipoolDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391557 | `0x03d304...343bb0` | ✅ Audited |
| rocketMinipoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391585 | `0x7b8c48...22b8d3` | ✅ Audited |
| rocketMinipoolManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391625 | `0xe54b8c...24d62c` | ✅ Audited |
| RocketMinipoolPenalty | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391626 | `0xe64ac4...a06ba6` | ✅ Audited |
| rocketMinipoolQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391593 | `0x9e9667...cf6faa` | ✅ Audited |
| RocketMinipoolStatus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391595 | `0xa52451...f8a6a5` | ✅ Audited |
| rocketNetworkBalances | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391563 | `0x1d9f14...8e9473` | ✅ Audited |
| rocketNetworkFees | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391633 | `0xf824e2...d27a0f` | ✅ Audited |
| rocketNetworkPenalties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391629 | `0xed0493...136b3a` | ✅ Audited |
| RocketNetworkPrices | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391566 | `0x25e54b...48e382` | ✅ Audited |
| RocketNetworkRevenues | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391592 | `0x9d9708...260842` | ✅ Audited |
| rocketNetworkSnapshots | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391622 | `0xe37f2d...028f17` | ✅ Audited |
| RocketNetworkSnapshotsTime | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391578 | `0x569f5b...18a891` | ✅ Audited |
| rocketNetworkVoting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391590 | `0x994a9c...610aed` | ✅ Audited |
| rocketNodeDeposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391582 | `0x6b1369...1d2d47` | ✅ Audited |
| rocketNodeDistributorDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391570 | `0x35a85d...6f129d` | ✅ Audited |
| RocketNodeDistributorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391621 | `0xe22801...b4037c` | ✅ Audited |
| rocketNodeManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391611 | `0xcf2d76...76e250` | ✅ Audited |
| rocketNodeStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391630 | `0xedfc7d...90ee3e` | ✅ Audited |
| rocketRewardsPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391609 | `0xcba595...9c41fd` | ✅ Audited |
| RocketSmoothingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391616 | `0xd4e96e...7605b7` | ✅ Audited |
| RocketStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391562 | `0x1d8f8f...e0fa46` | ✅ Audited |
| RocketTokenRETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391597 | `0xae7873...fc6393` | ✅ Audited |
| RocketTokenRPL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391614 | `0xd33526...21a51f` | ✅ Audited |
| RocketUpgradeOneDotFour | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391579 | `0x5b3b5c...16c8ba` | ✅ Audited |
| RocketUpgradeOneDotOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391605 | `0xc680a2...77c8fe` | ✅ Audited |
| RocketUpgradeOneDotThree | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391580 | `0x5dc690...9fb73c` | ✅ Audited |
| RocketUpgradeOneDotTwo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391591 | `0x9a0b5d...97984a` | ✅ Audited |
| RocketVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391572 | `0x3bdc69...b469d6` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Deposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391619 | `0xdd3f50...745af8` | ⚠️ Unaudited |
| LinkedListStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e506...fbecd9` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73...1a7e85` | ⚠️ Unaudited |
| RocketArbitrumPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053303...3bad53` | ⚠️ Unaudited |
| RocketClaimDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428f0d...becd39` | ⚠️ Unaudited |
| RocketClaimNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899336...aef548` | ⚠️ Unaudited |
| RocketClaimTrustedNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af730...9315e8` | ⚠️ Unaudited |
| RocketDAONodeTrustedSettingsMinipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29b42...fd9095` | ⚠️ Unaudited |
| RocketDAOProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0429cd...7df0e1` | ⚠️ Unaudited |
| RocketDAOProtocolProposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dbd04...915c16` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsMinipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030aea...4c63da` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x320f3a...ba0c27` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3b09...0b9ab2` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsProposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cd10...12c034` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsSecurity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec364...2cbe29` | ⚠️ Unaudited |
| RocketDAOProtocolVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f41c...472a33` | ⚠️ Unaudited |
| RocketDepositPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391567 | `0x2cac91...cfbfb4` | ⚠️ Unaudited |
| RocketHotfixNodeFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4640b8...9eaa09` | ⚠️ Unaudited |
| RocketMegapoolDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f160f...a8aaa4` | ⚠️ Unaudited |
| RocketMegapoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8ab3...f77a06` | ⚠️ Unaudited |
| RocketMegapoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbf20...19af57` | ⚠️ Unaudited |
| RocketMerkleDistributorMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce71e...0dbd4b` | ⚠️ Unaudited |
| RocketMinipoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54705f...cf5788` | ⚠️ Unaudited |
| RocketMinipoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fbce...da501e` | ⚠️ Unaudited |
| RocketMinipoolQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5870da...c9c19e` | ⚠️ Unaudited |
| RocketNetworkBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fcab...cba2f4` | ⚠️ Unaudited |
| RocketNetworkFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a882c...4d694b` | ⚠️ Unaudited |
| RocketNetworkPenalties | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9294fc...77e2f8` | ⚠️ Unaudited |
| RocketNetworkSnapshots | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x760335...f1d35c` | ⚠️ Unaudited |
| RocketNetworkVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77cf0f...a13daa` | ⚠️ Unaudited |
| RocketNodeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x191c79...5b5b1a` | ⚠️ Unaudited |
| RocketNodeDistributorDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32778d...9f472b` | ⚠️ Unaudited |
| RocketNodeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22bbdd...cbb958` | ⚠️ Unaudited |
| RocketNodeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8d8f...ab82ec` | ⚠️ Unaudited |
| RocketOvmRebasingPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12759f...ccfc9f` | ⚠️ Unaudited |
| RocketPolygonPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1029a...7f3511` | ⚠️ Unaudited |
| RocketRewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594fb7...7dd4e1` | ⚠️ Unaudited |
| RocketSignerRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10626...eab38f` | ⚠️ Unaudited |
| rocketSwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391558 | `0x16d5a4...8f1c1c` | ⚠️ Unaudited |
| RocketUpgradeOneDotFourDissolveHotfix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91003a...161d22` | ⚠️ Unaudited |
| RocketUpgradeOneDotThreeDotOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391604 | `0xc2c814...90f9ed` | ⚠️ Unaudited |
| RocketZkSyncPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cf6cb...b0b8c8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (73)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391575 | `0x4d05e3...1bde58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391583 | `0x6efd08...1c813a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391602 | `0xb867ea...b38cb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-391635 | `0xd7102a...c460d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391636 | `0x029d94...596aeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391637 | `0x0737c0...2f803a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391638 | `0x07fcab...cba2f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391639 | `0x0e79a9...d466af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391640 | `0x17cf2c...ada60b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391641 | `0x1aa454...b8bad4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391642 | `0x1ae88d...cf1f33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391643 | `0x1cc9cf...027bf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391644 | `0x27696e...6cd3fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391645 | `0x2cac91...cfbfb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391646 | `0x2d3142...da6480` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391647 | `0x2fb42f...846905` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391648 | `0x320f3a...ba0c27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391649 | `0x37dc1e...2d64b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391650 | `0x3fb8d4...f1cbf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391651 | `0x4220ee...2e97f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391652 | `0x425e6f...3d3fd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391653 | `0x426c08...51e7cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391654 | `0x42d4e4...e1d8d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391655 | `0x4c31c7...f12129` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391656 | `0x502238...b61095` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391657 | `0x54705f...cf5788` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391658 | `0x5520ab...eb24ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391659 | `0x560656...3eff33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391660 | `0x56cd23...0e1dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391661 | `0x594fb7...7dd4e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391662 | `0x5c2d33...531ab9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391663 | `0x5ff34d...4c857c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391664 | `0x5ffe8b...3494bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391665 | `0x614a5b...2a9f4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391666 | `0x67cde7...48df3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391667 | `0x7322c2...c264f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391668 | `0x751826...5ffc37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391669 | `0x7791d2...d35922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391670 | `0x7a7503...b5715d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391671 | `0x83037a...529bd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391672 | `0x84d11b...410b71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391673 | `0x86b455...09d2d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391674 | `0x894d1e...e056c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391675 | `0x8fb439...f4170e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391676 | `0x92d1c2...09cbaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391677 | `0x95d712...842da6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391678 | `0x9b744a...442ed9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391679 | `0x9d64a4...668d68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391680 | `0xa0f327...a9edf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391681 | `0xa347c3...8ac567` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391682 | `0xa805d6...aeee82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391683 | `0xa9115e...13b07a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391684 | `0xac2245...62fc27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391685 | `0xaea4d6...226eca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391686 | `0xb1029a...7f3511` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391687 | `0xb9b3e7...2c6029` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391688 | `0xbad0db...243578` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391689 | `0xbd9654...457d07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391690 | `0xc3a18d...8c010f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391691 | `0xc51079...80225e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391693 | `0xcafb9b...7ed910` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391694 | `0xd29b82...858169` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391695 | `0xd9d920...4ae711` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391696 | `0xdd3f50...745af8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391697 | `0xddb6e6...16c9b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391698 | `0xde3495...ad3ab1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391699 | `0xdf3d4b...2a963c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391700 | `0xe04621...d38c1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391702 | `0xe4c3ec...a76535` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391703 | `0xeffb0c...b36f18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391704 | `0xf295b1...6eebc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391705 | `0xf824e2...d27a0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391706 | `0xf9769d...db8369` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [diligence.security/audits/2021/04/rocketpool](https://diligence.security/audits/2021/04/rocketpool) | Consensys Diligence | Audit | 2021-04 | stale | Direct | contract_name | matched | 32 | 0 | 0 | 7 | high |
| [RocketPool.pdf](https://github.com/trailofbits/publications/blob/master/reviews/RocketPool.pdf) | Trail of Bits | Audit | 2021-09 | stale | Direct | contract_name | matched | 15 | 0 | 0 | 6 | high |
| [immunefi.com/bug-bounty/rocketpool/information](https://immunefi.com/bug-bounty/rocketpool/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [sigma-prime-audit.pdf (also discovered via alternate URL)](https://rocketpool.net/files/audits/sigma-prime-audit.pdf) | Immunefi | Contest | 2021-05 | stale | Direct | contract_name | matched | 30 | 0 | 0 | 8 | high |
| [sigma-prime-fix-review.pdf](https://rocketpool.net/files/audits/sigma-prime-fix-review.pdf) | Immunefi | Contest | 2021-11 | stale | Direct | contract_name | matched | 9 | 0 | 0 | 0 | high |
| [consensys-audit-redstone.pdf](https://rocketpool.net/files/audits/consensys-audit-redstone.pdf) | Immunefi | Contest | 2022-07 | stale | Direct | contract_name | matched | 10 | 0 | 0 | 0 | high |
| [sigma-prime-audit-redstone.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-redstone.pdf) | Immunefi | Contest | 2022-06 | stale | Direct | contract_name | matched | 15 | 0 | 0 | 3 | high |
| [sigma-prime-audit-atlas.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-atlas.pdf) | Immunefi | Contest | 2022-12 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 1 | high |
| [consensys-audit-atlas.pdf](https://rocketpool.net/files/audits/consensys-audit-atlas.pdf) | Immunefi | Contest | 2023-01 | stale | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [diligence.security/audits/2023/12/rocket-pool-houston](https://diligence.security/audits/2023/12/rocket-pool-houston) | Consensys Diligence | Audit | 2023-12 | stale | Direct | contract_name | matched | 24 | 0 | 0 | 1 | high |
| [sigma-prime-audit-houston.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-houston.pdf) | Immunefi | Contest | 2024-06 | stale | Direct | contract_name | matched | 19 | 0 | 0 | 4 | high |
| [chainsafe-audit-houston.pdf](https://rocketpool.net/files/audits/chainsafe-audit-houston.pdf) | Immunefi | Contest | 2024-04 | stale | Direct | contract_name | matched | 13 | 0 | 0 | 1 | high |
| [sigma-prime-houston-hotfix-review.pdf](https://rocketpool.net/files/audits/sigma-prime-houston-hotfix-review.pdf) | Immunefi | Contest | 2024-09 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [cantina-audit-saturn-1.pdf](https://rocketpool.net/files/audits/cantina-audit-saturn-1.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [bailsec-audit-saturn-1.pdf](https://rocketpool.net/files/audits/bailsec-audit-saturn-1.pdf) | Immunefi | Contest | 2026-01 | fresh | Direct | contract_name | matched | 29 | 0 | 0 | 2 | high |
| [sigma-prime-audit-saturn-1.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-saturn-1.pdf) | Immunefi | Contest | 2026-02 | fresh | Direct | contract_name | matched | 8 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20733] diligence.security/audits/2021/04/rocketpool — matched: Extracted from Consensys Diligence Rocketpool audit report. Scope includes all contracts in the rocketpool repository at commit 44cbf038b97abffa91058cebb2f604220996e641. Audit date is April 9, 2021 (end of review period).
- [20734] RocketPool.pdf — matched: Extracted contract names from Project Targets, Project Coverage, and Coverage Limitations sections. Audit date from cover page.
- [20735] immunefi.com/bug-bounty/rocketpool/information — no match: The document is a bug bounty program page, not an audit report. It lists past audits but does not specify which contracts are in scope for the bounty. No contract names or audit date can be extracted.
- [20736] sigma-prime-audit.pdf — matched: Audit report for Rocket Pool protocol, version 2.0, dated May 2021. Scope includes smart contracts in the rocketpool repository, with specific commits listed. The report covers two rounds of findings. The date is inferred from the cover page 'May, 2021' and the report version '2.0'.
- [20737] sigma-prime-fix-review.pdf — matched: Extracted from Security Assessment Summary section listing contracts in scope: rocket-pool/rocketpool, rocket-pool/rocketpool-go, rocket-pool/smartnode. Specific contract files identified from findings assets and descriptions.
- [20738] consensys-audit-redstone.pdf — matched: Extracted contract names from findings and scope section. Audit date is July 2022, mapped to last day of month.
- [20739] sigma-prime-audit-redstone.pdf — matched: Extracted contract names from findings assets and report context. Audit date inferred from 'Version: 2.0 June, 2022' on cover page.
- [20740] sigma-prime-audit-atlas.pdf — matched: Extracted contract names from scope section and findings. Audit date inferred from 'December, 2022' on cover page.
- [20741] consensys-audit-atlas.pdf — matched: No reason recorded
- [20742] diligence.security/audits/2023/12/rocket-pool-houston — matched: Extracted contract names from the scope table in Appendix 2 and additional contracts mentioned in findings. Audit date from published time.
- [20743] sigma-prime-audit-houston.pdf — matched: Extracted contract names from findings and test suite. Audit date from cover page: 'June, 2024' -> last day of month.
- [20744] chainsafe-audit-houston.pdf — matched: Extracted 14 contract names from the line-by-line review section. The audit date is April 2024, interpreted as last day of month.
- [20745] sigma-prime-houston-hotfix-review.pdf — matched: Extracted contract names from findings and scope section. Audit date inferred from 'September, 2024' on cover page.
- [20746] cantina-audit-saturn-1.pdf — matched: No reason recorded
- [20747] bailsec-audit-saturn-1.pdf — matched: Extracted contract names from scope sections, diffchecker links, and contract descriptions. The audit date is January 2026, represented as last day of month.
- [20748] sigma-prime-audit-saturn-1.pdf — matched: Extracted contract names from scope section and findings. Audit date from cover page: 'February, 2026' -> last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| diligence.security/audits/2021/04/rocketpool | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f...e0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | AddressSetStorage | own contract | AddressSetStorage (selected) `0xd4ae25...1c6a16` — deployed 2021-09-30 08:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | AddressQueueStorage | own contract | AddressQueueStorage (selected) `0x44e319...e2ebd8` — deployed 2021-09-30 08:45:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketVault | own contract | RocketVault (selected) `0x3bdc69...b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketTokenNETH | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae7873...fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526...21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76...76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c...24d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolFactory | own contract | rocketMinipoolFactory (selected) `0x7b8c48...22b8d3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipool | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d304...343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolQueue | own contract | rocketMinipoolQueue (selected) `0x9e9667...cf6faa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolStatus | own contract | RocketMinipoolStatus (selected) `0xa52451...f8a6a5` — deployed 2021-09-30 08:34:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7d...90ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketAuctionManager | own contract | RocketAuctionManager (selected) `0x1a2f00...49ecce` — deployed 2021-09-30 08:32:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e...ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrusted | own contract | RocketDAONodeTrusted (selected) `0xb8e783...152cc9` — deployed 2021-09-30 08:38:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProposals | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedProposals | own contract | RocketDAONodeTrustedProposals (selected) `0xb0ec3f...2f05d5` — deployed 2021-09-30 08:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d94...596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedUpgrade | own contract | RocketDAONodeTrustedUpgrade (selected) `0x9290aa...e1ad10` — deployed 2026-02-09 06:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettings | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedSettings | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b88...f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c...4b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8...c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03...0b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x885761...fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedSettingsMembers | own contract | RocketDAONodeTrustedSettingsMembers (selected) `0xda1ab3...3f0d01` — deployed 2021-09-30 08:39:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedSettingsProposals | own contract | RocketDAONodeTrustedSettingsProposals (selected) `0xad038f...d4d2b0` — deployed 2021-09-30 08:40:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e...c0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54b...48e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNetworkWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce1529...df4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2a...0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketBase | unmatched — not counted | — | mentioned in recommendations | no |
| RocketPool.pdf | RocketBase | unmatched — not counted | — | listed in Project Coverage section | no |
| RocketPool.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f...e0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketVault | own contract | RocketVault (selected) `0x3bdc69...b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce1529...df4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76...76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7d...90ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipoolQueue | own contract | rocketMinipoolQueue (selected) `0x9e9667...cf6faa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c...24d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipool | unmatched — not counted | — | listed in Project Coverage section | no |
| RocketPool.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d304...343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipoolStorageLayout | unmatched — not counted | — | listed in Code Quality Recommendations | no |
| RocketPool.pdf | AddressQueueStorage | own contract | AddressQueueStorage (selected) `0x44e319...e2ebd8` — deployed 2021-09-30 08:45:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae7873...fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526...21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | AddressSetStorage | own contract | AddressSetStorage (selected) `0xd4ae25...1c6a16` — deployed 2021-09-30 08:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketClaim | unmatched — not counted | — | listed in Coverage Limitations | no |
| RocketPool.pdf | RocketNetwork | unmatched — not counted | — | listed in Coverage Limitations | no |
| RocketPool.pdf | RocketDAO | unmatched — not counted | — | listed in Coverage Limitations | no |
| RocketPool.pdf | RocketAuctionManager | own contract | RocketAuctionManager (selected) `0x1a2f00...49ecce` — deployed 2021-09-30 08:32:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f...e0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7d...90ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76...76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipoolStatus | own contract | RocketMinipoolStatus (selected) `0xa52451...f8a6a5` — deployed 2021-09-30 08:34:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54b...48e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNetworkBalances | own contract | rocketNetworkBalances (selected) `0x1d9f14...8e9473` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipoolQueue | own contract | rocketMinipoolQueue (selected) `0x9e9667...cf6faa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedUpgrade | own contract | RocketDAONodeTrustedUpgrade (selected) `0x9290aa...e1ad10` — deployed 2026-02-09 06:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketAuctionManager | own contract | RocketAuctionManager (selected) `0x1a2f00...49ecce` — deployed 2021-09-30 08:32:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d94...596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipool | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d304...343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526...21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae7873...fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketTokenNETH | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketVault | own contract | RocketVault (selected) `0x3bdc69...b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProposal | own contract | RocketDAOProposal (selected) `0x1e94e6...ddf102` — deployed 2024-10-12 03:31:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrusted | own contract | RocketDAONodeTrusted (selected) `0xb8e783...152cc9` — deployed 2021-09-30 08:38:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedProposals | own contract | RocketDAONodeTrustedProposals (selected) `0xb0ec3f...2f05d5` — deployed 2021-09-30 08:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedSettings | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketDAONodeTrustedSettingsMembers | own contract | RocketDAONodeTrustedSettingsMembers (selected) `0xda1ab3...3f0d01` — deployed 2021-09-30 08:39:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedSettingsProposals | own contract | RocketDAONodeTrustedSettingsProposals (selected) `0xad038f...d4d2b0` — deployed 2021-09-30 08:40:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e...ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e...c0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettings | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f98...8c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c...4b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x885761...fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsInflation | own contract | RocketDAOProtocolSettingsInflation (selected) `0x1d4aae...ddd735` — deployed 2024-06-04 04:59:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketClaimNode | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketClaimTrustedNode | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2a...0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNetworkFees | own contract | rocketNetworkFees (selected) `0xf824e2...d27a0f` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c...24d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketBase | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketPoolToken | unmatched — not counted | — | mentioned in finding RP-11 as non-existent but referenced | no |
| sigma-prime-audit.pdf | RocketDAOProtocolActions | own contract | RocketDAOProtocolActions (selected) `0xb50d51...f9e08d` — deployed 2021-09-30 08:41:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c...24d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d304...343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54b...48e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7d...90ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x885761...fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketDAONodeTrustedSettingsMembers | own contract | RocketDAONodeTrustedSettingsMembers (selected) `0xda1ab3...3f0d01` — deployed 2021-09-30 08:39:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketDAONodeTrustedSettingsMinipool | own contract | rocketDAONodeTrustedSettingsMinipool (selected) `0xe535fa...124d95` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae7873...fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d304...343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f...e0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketMerkleDistributorMainnet | own contract | rocketMerkleDistributorMainnet (selected) `0xe4e261...86e2f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketVault | own contract | RocketVault (selected) `0x3bdc69...b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce1529...df4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526...21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c...24d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d94...596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae7873...fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDistributorFactory | own contract | RocketNodeDistributorFactory (selected) `0xe22801...b4037c` — deployed 2022-08-15 02:46:42+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76...76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c...24d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketUpgradeOneDotOne | own contract | RocketUpgradeOneDotOne (selected) `0xc680a2...77c8fe` — deployed 2022-08-15 04:36:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNetworkPenalties | own contract | rocketNetworkPenalties (selected) `0xed0493...136b3a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDistributorDelegate | own contract | rocketNodeDistributorDelegate (selected) `0x35a85d...6f129d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDistributor | unmatched — not counted | — | RPM-11 finding asset | no |
| sigma-prime-audit-redstone.pdf | RocketMinipoolFactory | own contract | rocketMinipoolFactory (selected) `0x7b8c48...22b8d3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03...0b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a...300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e...ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketMinipool | unmatched — not counted | — | RPM-12 minor optimisations | no |
| sigma-prime-audit-redstone.pdf | RocketBase | unmatched — not counted | — | RPM-12 typos | no |
| sigma-prime-audit-redstone.pdf | RocketDAONodeTrustedSettingsRewards | own contract | RocketDAONodeTrustedSettingsRewards (selected) `0x7322c2...c264f1` — deployed 2022-08-15 02:43:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce1529...df4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2a...0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolBase | own contract | RocketMinipoolBase (selected) `0x560656...3eff33` — deployed 2023-04-08 11:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d304...343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolProxy | unmatched — not counted | — | Listed in scope and findings (RPA-09) | no |
| sigma-prime-audit-atlas.pdf | RocketMinipoolBondReducer | own contract | RocketMinipoolBondReducer (selected) `0xde8ab5...7be591` — deployed 2026-02-09 06:40:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketUpgradeOneDotTwo | own contract | RocketUpgradeOneDotTwo (selected) `0x9a0b5d...97984a` — deployed 2023-04-08 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolFactory | own contract | rocketMinipoolFactory (selected) `0x7b8c48...22b8d3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e...ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolActions | own contract | RocketDAOProtocolActions (selected) `0xb50d51...f9e08d` — deployed 2021-09-30 08:41:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a...300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e...c0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e5...80040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettings | unmatched — not counted | — | listed in scope table | no |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f98...8c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8...c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsInflation | own contract | RocketDAOProtocolSettingsInflation (selected) `0x1d4aae...ddd735` — deployed 2024-06-04 04:59:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c...4b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03...0b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b88...f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsProposals | own contract | rocketDAOProtocolSettingsProposals (selected) `0xf6ad77...bfdf81` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x885761...fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771...837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProposal | own contract | RocketDAOProposal (selected) `0x1e94e6...ddf102` — deployed 2024-10-12 03:31:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOSecurity | own contract | RocketDAOSecurity (selected) `0x84ae6d...89ad37` — deployed 2024-06-04 04:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOSecurityActions | own contract | RocketDAOSecurityActions (selected) `0xeaa442...9eb59a` — deployed 2024-06-04 04:53:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOSecurityProposals | own contract | RocketDAOSecurityProposals (selected) `0x334b9b...2a0c4e` — deployed 2026-02-09 06:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54b...48e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketNetworkSnapshots | own contract | rocketNetworkSnapshots (selected) `0xe37f2d...028f17` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketNetworkVoting | own contract | rocketNetworkVoting (selected) `0x994a9c...610aed` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAONodeTrusted | own contract | RocketDAONodeTrusted (selected) `0xb8e783...152cc9` — deployed 2021-09-30 08:38:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d94...596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketMinipoolPenalty | own contract | RocketMinipoolPenalty (selected) `0xe64ac4...a06ba6` — deployed 2021-09-30 08:34:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e5...80040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a...300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2a...0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7d...90ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f98...8c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8...c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsInflation | own contract | RocketDAOProtocolSettingsInflation (selected) `0x1d4aae...ddd735` — deployed 2024-06-04 04:59:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c...4b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03...0b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b88...f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsProposal | unmatched — not counted | — | Listed in finding RPH-07 | no |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x885761...fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771...837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketUpgradeOneDotThree | own contract | RocketUpgradeOneDotThree (selected) `0x5dc690...9fb73c` — deployed 2024-06-04 05:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketMerkleDistributorMainnet | own contract | rocketMerkleDistributorMainnet (selected) `0xe4e261...86e2f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f...e0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsMinipoolOld | unmatched — not counted | — | Listed in finding RPH-13 | no |
| sigma-prime-audit-houston.pdf | RocketNetworkBalancesOld | unmatched — not counted | — | Listed in finding RPH-13 | no |
| sigma-prime-audit-houston.pdf | RocketRewardsPoolOld | unmatched — not counted | — | Listed in finding RPH-13 | no |
| sigma-prime-audit-houston.pdf | RocketNetworkSnapshots | own contract | rocketNetworkSnapshots (selected) `0xe37f2d...028f17` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76...76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketBase | unmatched — not counted | — | listed in line-by-line review | no |
| chainsafe-audit-houston.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e...ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a...300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e...c0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e5...80040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b88...f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771...837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOSecurityProposals | own contract | RocketDAOSecurityProposals (selected) `0x334b9b...2a0c4e` — deployed 2026-02-09 06:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54b...48e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNetworkSnapshots | own contract | rocketNetworkSnapshots (selected) `0xe37f2d...028f17` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNetworkVoting | own contract | rocketNetworkVoting (selected) `0x994a9c...610aed` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7d...90ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketUpgradeOneDotThree | own contract | RocketUpgradeOneDotThree (selected) `0x5dc690...9fb73c` — deployed 2024-06-04 05:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2a...0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-houston-hotfix-review.pdf | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f98...8c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-houston-hotfix-review.pdf | Contract | unmatched — not counted | — | mentioned in finding RPHF-02 | no |
| sigma-prime-houston-hotfix-review.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e5...80040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsMegapool | own contract | RocketDAOProtocolSettingsMegapool (selected) `0x40628f...0a2dce` — deployed 2026-02-09 06:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | DepositPool | unmatched — not counted | — | listed in scope and diffchecker link | no |
| bailsec-audit-saturn-1.pdf | RocketMegapoolDelegate | own contract | rocketMegapoolDelegate (selected) `0xca3dd4...aaebdd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolManager | own contract | rocketMegapoolManager (selected) `0xf2ccd5...342034` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolPenalties | own contract | RocketMegapoolPenalties (selected) `0xa2afc3...30e6ab` — deployed 2026-02-09 06:42:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolStorageLayout | unmatched — not counted | — | listed in scope and diffchecker link | no |
| bailsec-audit-saturn-1.pdf | RocketNetworkPenalties | own contract | rocketNetworkPenalties (selected) `0xed0493...136b3a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketNetworkRevenues | own contract | RocketNetworkRevenues (selected) `0x9d9708...260842` — deployed 2026-02-09 06:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMerkleDistributorMainnet | own contract | rocketMerkleDistributorMainnet (selected) `0xe4e261...86e2f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba595...9c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketUpgradeOneDotFour | own contract | RocketUpgradeOneDotFour (selected) `0x5b3b5c...16c8ba` — deployed 2026-02-09 06:43:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | BeaconStateVerifier | own contract | BeaconStateVerifier (selected) `0xe9a114...2d8469` — deployed 2026-02-09 06:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b88...f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8...c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c...4b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03...0b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771...837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e...ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolActions | own contract | RocketDAOProtocolActions (selected) `0xb50d51...f9e08d` — deployed 2021-09-30 08:41:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a...300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e...c0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e5...80040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurity | own contract | RocketDAOSecurity (selected) `0x84ae6d...89ad37` — deployed 2024-06-04 04:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurityActions | own contract | RocketDAOSecurityActions (selected) `0xeaa442...9eb59a` — deployed 2024-06-04 04:53:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurityProposals | own contract | RocketDAOSecurityProposals (selected) `0x334b9b...2a0c4e` — deployed 2026-02-09 06:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurityUpgrade | own contract | RocketDAOSecurityUpgrade (selected) `0x950baf...9b5dc4` — deployed 2026-02-09 06:34:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProposal | own contract | RocketDAOProposal (selected) `0x1e94e6...ddf102` — deployed 2024-10-12 03:31:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce1529...df4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolFactory | own contract | rocketMegapoolFactory (selected) `0xd5bffe...f0e38b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketNetworkSnapshotsTime | own contract | RocketNetworkSnapshotsTime (selected) `0x569f5b...18a891` — deployed 2026-02-09 06:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketMegapoolDelegate | own contract | rocketMegapoolDelegate (selected) `0xca3dd4...aaebdd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce1529...df4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | BeaconStateVerifier | own contract | BeaconStateVerifier (selected) `0xe9a114...2d8469` — deployed 2026-02-09 06:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketNetworkBalances | own contract | rocketNetworkBalances (selected) `0x1d9f14...8e9473` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | SSZ | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| sigma-prime-audit-saturn-1.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b1369...1d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketMegapoolManager | own contract | rocketMegapoolManager (selected) `0xf2ccd5...342034` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketMegapoolFactory | own contract | rocketMegapoolFactory (selected) `0xd5bffe...f0e38b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76...76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc2c814...90f9ed` | RocketUpgradeOneDotThreeDotOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 104 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 212 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 35 unmatched
- Matched-own operational status: 212 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, low=1
- Match method counts: unique_name=357

Fork inheritance lineage and inherited audits are included when available.
