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

- AddressQueueStorage (`0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8`, chain 1)
- AddressSetStorage (`0xd4ae2511df21f367792ba4d67c6eb032171c6a16`, chain 1)
- BeaconStateVerifier (`0xe9a114c50f26001443b91079ab5573a90d2d8469`, chain 1)
- Deposit (`0xdd3f50f8a6cafbe9b31a427582963f465e745af8`, chain 1)
- linkedListStorage (`0x52590e8aac140e2020f8f51695719922ebccb6d6`, chain 1)
- RocketAuctionManager (`0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce`, chain 1)
- rocketClaimDAO (`0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa`, chain 1)
- RocketDAONodeTrusted (`0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9`, chain 1)
- RocketDAONodeTrustedActions (`0x029d946f28f93399a5b0d09c879fc8c94e596aeb`, chain 1)
- RocketDAONodeTrustedProposals (`0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5`, chain 1)
- RocketDAONodeTrustedSettingsMembers (`0xda1ab39e62e0a5297af44c7064e501b0613f0d01`, chain 1)
- rocketDAONodeTrustedSettingsMinipool (`0xe535fa45e12d748393c117c6d8eebe1a7d124d95`, chain 1)
- RocketDAONodeTrustedSettingsProposals (`0xad038f8994a6bd51c8a72d3721ced83401d4d2b0`, chain 1)
- RocketDAONodeTrustedSettingsRewards (`0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1`, chain 1)
- RocketDAONodeTrustedUpgrade (`0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10`, chain 1)
- RocketDAOProposal (`0x1e94e6131ba5b4f193d2a1067517136c52ddf102`, chain 1)
- rocketDAOProtocol (`0xcac25e88276a333cf9d4196d112d93af67ef809a`, chain 1)
- RocketDAOProtocolActions (`0xb50d513de40ee70a662c39207b4382a693f9e08d`, chain 1)
- RocketDAOProtocolProposal (`0x2d627a50dc1c4eda73e42858e8460b0ecf300b25`, chain 1)
- rocketDAOProtocolProposals (`0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b`, chain 1)
- RocketDAOProtocolSettingsAuction (`0x364f989a3c9a1f66cb51b9043680974ea08c0d18`, chain 1)
- RocketDAOProtocolSettingsDeposit (`0x227be8dd01df8ad9bed0178e4f8cec2996c5c365`, chain 1)
- RocketDAOProtocolSettingsInflation (`0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735`, chain 1)
- RocketDAOProtocolSettingsMegapool (`0x40628faac22383327b9f7bbc86cd1857050a2dce`, chain 1)
- rocketDAOProtocolSettingsMinipool (`0xaef94c3650aa13d7a2456477fc374a16b94b9152`, chain 1)
- rocketDAOProtocolSettingsNetwork (`0x67fd03a5095197d1ad1f932bc55e022c420b1153`, chain 1)
- rocketDAOProtocolSettingsNode (`0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d`, chain 1)
- rocketDAOProtocolSettingsProposals (`0xf6ad771dfb1cd10c66f688e251b5e5c21cbfdf81`, chain 1)
- RocketDAOProtocolSettingsRewards (`0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124`, chain 1)
- rocketDAOProtocolSettingsSecurity (`0xc9d771aaf504f33bb3c8a7e67ea9f1881f837cff`, chain 1)
- rocketDAOProtocolVerifier (`0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a`, chain 1)
- RocketDAOSecurity (`0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37`, chain 1)
- RocketDAOSecurityActions (`0xeaa442df4bb5394c66c8024efb4979bec89eb59a`, chain 1)
- RocketDAOSecurityProposals (`0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e`, chain 1)
- RocketDAOSecurityUpgrade (`0x950baf0358164339114914169bf16754789b5dc4`, chain 1)
- rocketDepositPool (`0xce15294273cfb9d9b628f4d61636623decdf4fdc`, chain 1)
- RocketDepositPool (`0x2cac916b2a963bf162f076c0a8a4a8200bcfbfb4`, chain 1)
- rocketMegapoolDelegate (`0xca3dd4bee7c174903dbf66c3897c27e9adaaebdd`, chain 1)
- rocketMegapoolFactory (`0xd5bffeaa9f373b9c367132772faa0b88e3f0e38b`, chain 1)
- rocketMegapoolManager (`0xf2ccd522ba5ffeda28fe0389963845d61f342034`, chain 1)
- RocketMegapoolPenalties (`0xa2afc3c2d8ea4ebdbe925cade17c29517630e6ab`, chain 1)
- RocketMegapoolProxy (`0x1b389d76a04d01026c5f5b0a125d4ccf26f9cd51`, chain 1)
- rocketMerkleDistributorMainnet (`0xe4e2612ee8d7fdc8518faea85770a3b9c886e2f5`, chain 1)
- RocketMinipoolBase (`0x560656c8947564363497e9c78a8bdeff8d3eff33`, chain 1)
- RocketMinipoolBondReducer (`0xde8ab526b19fca2d5a57c4a78b698041717be591`, chain 1)
- RocketMinipoolDelegate (`0x03d30466d199ef540823fe2a22cae2e3b9343bb0`, chain 1)
- rocketMinipoolFactory (`0x7b8c48256caf462670f84c7e849cab216922b8d3`, chain 1)
- rocketMinipoolManager (`0xe54b8c641fd96de5d6747f47c19964c6b824d62c`, chain 1)
- RocketMinipoolPenalty (`0xe64ac47b6e2fecfcdea35147fe61af9894a06ba6`, chain 1)
- rocketMinipoolQueue (`0x9e966733e3e9bfa56af95f762921859417cf6faa`, chain 1)
- RocketMinipoolStatus (`0xa52451b9d25eef02be42b3a8161a18f947f8a6a5`, chain 1)
- rocketNetworkBalances (`0x1d9f14c6bfd8358b589964bad8665add248e9473`, chain 1)
- rocketNetworkFees (`0xf824e2d69dc7e7c073162c2bde87da4746d27a0f`, chain 1)
- rocketNetworkPenalties (`0xed0493de30e82be7c16c8925c7204ce9d1136b3a`, chain 1)
- RocketNetworkPrices (`0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382`, chain 1)
- RocketNetworkRevenues (`0x9d9708da8e0200dd8dd9ad09e0aaf184ad260842`, chain 1)
- rocketNetworkSnapshots (`0xe37f2d9dfb7397caf671df5190a5dfb601028f17`, chain 1)
- RocketNetworkSnapshotsTime (`0x569f5b3024054ab4049a50df223a747afe18a891`, chain 1)
- rocketNetworkVoting (`0x994a9c49230fec0c127b8f42d6c5288f02610aed`, chain 1)
- rocketNodeDeposit (`0x6b13698c306a297fee1383cdc2c65d63781d2d47`, chain 1)
- rocketNodeDistributorDelegate (`0x35a85d4c115801395e6e3abaa784fb05826f129d`, chain 1)
- RocketNodeDistributorFactory (`0xe228017f77b3e0785e794e4c0a8a6b935bb4037c`, chain 1)
- rocketNodeManager (`0xcf2d76a7499d3acb5a22ce83c027651e8d76e250`, chain 1)
- rocketNodeStaking (`0xedfc7dcae43ff954577a2875a9d805874490ee3e`, chain 1)
- rocketRewardsPool (`0xcba5951fc706fc783b7c142dae8576ebe29c41fd`, chain 1)
- RocketSmoothingPool (`0xd4e96ef8eee8678dbff4d535e033ed1a4f7605b7`, chain 1)
- RocketStorage (`0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46`, chain 1)
- rocketSwapRouter (`0x16d5a408e807db8ef7c578279beeee6b228f1c1c`, chain 1)
- RocketTokenRETH (`0xae78736cd615f374d3085123a210448e74fc6393`, chain 1)
- RocketTokenRPL (`0xd33526068d116ce69f19a9ee46f0bd304f21a51f`, chain 1)
- RocketUpgradeOneDotFour (`0x5b3b5c76391662e56d0ff72f31b89c409316c8ba`, chain 1)
- RocketUpgradeOneDotOne (`0xc680a22b4f03977f69b51a09f3dbe922eb77c8fe`, chain 1)
- RocketUpgradeOneDotThree (`0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c`, chain 1)
- RocketUpgradeOneDotThreeDotOne (`0xc2c81454427b1e53fdf5d3b45561e3c18f90f9ed`, chain 1)
- RocketUpgradeOneDotTwo (`0x9a0b5d3101d111ea0edd573d45ef2208cc97984a`, chain 1)
- RocketVault (`0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6`, chain 1)

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
| AddressQueueStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391574 | `0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8` | ✅ Audited |
| AddressSetStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391615 | `0xd4ae2511df21f367792ba4d67c6eb032171c6a16` | ✅ Audited |
| BeaconStateVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391627 | `0xe9a114c50f26001443b91079ab5573a90d2d8469` | ✅ Audited |
| linkedListStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391576 | `0x52590e8aac140e2020f8f51695719922ebccb6d6` | ✅ Audited |
| RocketAuctionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391559 | `0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce` | ✅ Audited |
| rocketClaimDAO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391634 | `0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa` | ✅ Audited |
| RocketDAONodeTrusted | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391603 | `0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9` | ✅ Audited |
| RocketDAONodeTrustedActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391556 | `0x029d946f28f93399a5b0d09c879fc8c94e596aeb` | ✅ Audited |
| RocketDAONodeTrustedProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391600 | `0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5` | ✅ Audited |
| RocketDAONodeTrustedSettingsMembers | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391618 | `0xda1ab39e62e0a5297af44c7064e501b0613f0d01` | ✅ Audited |
| rocketDAONodeTrustedSettingsMinipool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391624 | `0xe535fa45e12d748393c117c6d8eebe1a7d124d95` | ✅ Audited |
| RocketDAONodeTrustedSettingsProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391596 | `0xad038f8994a6bd51c8a72d3721ced83401d4d2b0` | ✅ Audited |
| RocketDAONodeTrustedSettingsRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391584 | `0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1` | ✅ Audited |
| RocketDAONodeTrustedUpgrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391588 | `0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10` | ✅ Audited |
| RocketDAOProposal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391564 | `0x1e94e6131ba5b4f193d2a1067517136c52ddf102` | ✅ Audited |
| rocketDAOProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391608 | `0xcac25e88276a333cf9d4196d112d93af67ef809a` | ✅ Audited |
| RocketDAOProtocolActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391601 | `0xb50d513de40ee70a662c39207b4382a693f9e08d` | ✅ Audited |
| RocketDAOProtocolProposal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391568 | `0x2d627a50dc1c4eda73e42858e8460b0ecf300b25` | ✅ Audited |
| rocketDAOProtocolProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391612 | `0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b` | ✅ Audited |
| RocketDAOProtocolSettingsAuction | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391571 | `0x364f989a3c9a1f66cb51b9043680974ea08c0d18` | ✅ Audited |
| RocketDAOProtocolSettingsDeposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391565 | `0x227be8dd01df8ad9bed0178e4f8cec2996c5c365` | ✅ Audited |
| RocketDAOProtocolSettingsInflation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391561 | `0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735` | ✅ Audited |
| RocketDAOProtocolSettingsMegapool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391573 | `0x40628faac22383327b9f7bbc86cd1857050a2dce` | ✅ Audited |
| rocketDAOProtocolSettingsMinipool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391598 | `0xaef94c3650aa13d7a2456477fc374a16b94b9152` | ✅ Audited |
| rocketDAOProtocolSettingsNetwork | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391581 | `0x67fd03a5095197d1ad1f932bc55e022c420b1153` | ✅ Audited |
| rocketDAOProtocolSettingsNode | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391599 | `0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d` | ✅ Audited |
| rocketDAOProtocolSettingsProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391632 | `0xf6ad771dfb1cd10c66f688e251b5e5c21cbfdf81` | ✅ Audited |
| RocketDAOProtocolSettingsRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391587 | `0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124` | ✅ Audited |
| rocketDAOProtocolSettingsSecurity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391606 | `0xc9d771aaf504f33bb3c8a7e67ea9f1881f837cff` | ✅ Audited |
| rocketDAOProtocolVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391613 | `0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a` | ✅ Audited |
| RocketDAOSecurity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391586 | `0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37` | ✅ Audited |
| RocketDAOSecurityActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391628 | `0xeaa442df4bb5394c66c8024efb4979bec89eb59a` | ✅ Audited |
| RocketDAOSecurityProposals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391569 | `0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e` | ✅ Audited |
| RocketDAOSecurityUpgrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391589 | `0x950baf0358164339114914169bf16754789b5dc4` | ✅ Audited |
| rocketDepositPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391610 | `0xce15294273cfb9d9b628f4d61636623decdf4fdc` | ✅ Audited |
| rocketMegapoolDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391607 | `0xca3dd4bee7c174903dbf66c3897c27e9adaaebdd` | ✅ Audited |
| rocketMegapoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391617 | `0xd5bffeaa9f373b9c367132772faa0b88e3f0e38b` | ✅ Audited |
| rocketMegapoolManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391631 | `0xf2ccd522ba5ffeda28fe0389963845d61f342034` | ✅ Audited |
| RocketMegapoolPenalties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391594 | `0xa2afc3c2d8ea4ebdbe925cade17c29517630e6ab` | ✅ Audited |
| RocketMegapoolProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391560 | `0x1b389d76a04d01026c5f5b0a125d4ccf26f9cd51` | ✅ Audited |
| rocketMerkleDistributorMainnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391623 | `0xe4e2612ee8d7fdc8518faea85770a3b9c886e2f5` | ✅ Audited |
| RocketMinipoolBase | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391577 | `0x560656c8947564363497e9c78a8bdeff8d3eff33` | ✅ Audited |
| RocketMinipoolBondReducer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391620 | `0xde8ab526b19fca2d5a57c4a78b698041717be591` | ✅ Audited |
| RocketMinipoolDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391557 | `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` | ✅ Audited |
| rocketMinipoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391585 | `0x7b8c48256caf462670f84c7e849cab216922b8d3` | ✅ Audited |
| rocketMinipoolManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391625 | `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` | ✅ Audited |
| RocketMinipoolPenalty | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391626 | `0xe64ac47b6e2fecfcdea35147fe61af9894a06ba6` | ✅ Audited |
| rocketMinipoolQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391593 | `0x9e966733e3e9bfa56af95f762921859417cf6faa` | ✅ Audited |
| RocketMinipoolStatus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391595 | `0xa52451b9d25eef02be42b3a8161a18f947f8a6a5` | ✅ Audited |
| rocketNetworkBalances | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391563 | `0x1d9f14c6bfd8358b589964bad8665add248e9473` | ✅ Audited |
| rocketNetworkFees | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391633 | `0xf824e2d69dc7e7c073162c2bde87da4746d27a0f` | ✅ Audited |
| rocketNetworkPenalties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391629 | `0xed0493de30e82be7c16c8925c7204ce9d1136b3a` | ✅ Audited |
| RocketNetworkPrices | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391566 | `0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382` | ✅ Audited |
| RocketNetworkRevenues | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391592 | `0x9d9708da8e0200dd8dd9ad09e0aaf184ad260842` | ✅ Audited |
| rocketNetworkSnapshots | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391622 | `0xe37f2d9dfb7397caf671df5190a5dfb601028f17` | ✅ Audited |
| RocketNetworkSnapshotsTime | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391578 | `0x569f5b3024054ab4049a50df223a747afe18a891` | ✅ Audited |
| rocketNetworkVoting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391590 | `0x994a9c49230fec0c127b8f42d6c5288f02610aed` | ✅ Audited |
| rocketNodeDeposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391582 | `0x6b13698c306a297fee1383cdc2c65d63781d2d47` | ✅ Audited |
| rocketNodeDistributorDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391570 | `0x35a85d4c115801395e6e3abaa784fb05826f129d` | ✅ Audited |
| RocketNodeDistributorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391621 | `0xe228017f77b3e0785e794e4c0a8a6b935bb4037c` | ✅ Audited |
| rocketNodeManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391611 | `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` | ✅ Audited |
| rocketNodeStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391630 | `0xedfc7dcae43ff954577a2875a9d805874490ee3e` | ✅ Audited |
| rocketRewardsPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391609 | `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` | ✅ Audited |
| RocketSmoothingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391616 | `0xd4e96ef8eee8678dbff4d535e033ed1a4f7605b7` | ✅ Audited |
| RocketStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391562 | `0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46` | ✅ Audited |
| RocketTokenRETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391597 | `0xae78736cd615f374d3085123a210448e74fc6393` | ✅ Audited |
| RocketTokenRPL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391614 | `0xd33526068d116ce69f19a9ee46f0bd304f21a51f` | ✅ Audited |
| RocketUpgradeOneDotFour | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391579 | `0x5b3b5c76391662e56d0ff72f31b89c409316c8ba` | ✅ Audited |
| RocketUpgradeOneDotOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391605 | `0xc680a22b4f03977f69b51a09f3dbe922eb77c8fe` | ✅ Audited |
| RocketUpgradeOneDotThree | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391580 | `0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c` | ✅ Audited |
| RocketUpgradeOneDotTwo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391591 | `0x9a0b5d3101d111ea0edd573d45ef2208cc97984a` | ✅ Audited |
| RocketVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391572 | `0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Deposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391619 | `0xdd3f50f8a6cafbe9b31a427582963f465e745af8` | ⚠️ Unaudited |
| LinkedListStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e5063ab2617445e2a249a88409d02f87fbecd9` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73d845d481fe790787f535618457921a7e85` | ⚠️ Unaudited |
| RocketArbitrumPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05330300f829ad3fc8f33838bc88cfc4093bad53` | ⚠️ Unaudited |
| RocketClaimDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428f0de7a6bf5ecca29e1c5e8c407b21e8becd39` | ⚠️ Unaudited |
| RocketClaimNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899336a2a86053705e65db61f52c686dcfaef548` | ⚠️ Unaudited |
| RocketClaimTrustedNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af730deb0463b432433318dc8002c0a4e9315e8` | ⚠️ Unaudited |
| RocketDAONodeTrustedSettingsMinipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29b42bbd19b76ab092bcc3c20370887bbfd9095` | ⚠️ Unaudited |
| RocketDAOProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0429cdd8ceace24d4dc2b97ce22a780a407df0e1` | ⚠️ Unaudited |
| RocketDAOProtocolProposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dbd041360c86b35a9ea05d3ec3fcceadb915c16` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsMinipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030aea8378cc131674d6d655ca26b5a3ef4c63da` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x320f3aab9405e38b955178bbe75c477decba0c27` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3b0966115fa6588629b63bcf788f3adb0b9ab2` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsProposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cd103df1be2ebd80d45c54a3cde8d4f812c034` | ⚠️ Unaudited |
| RocketDAOProtocolSettingsSecurity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec364cdd9697f56b8cb17a745b98c2b862cbe29` | ⚠️ Unaudited |
| RocketDAOProtocolVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f41cd11d95dbec0919a0440343698cf1472a33` | ⚠️ Unaudited |
| RocketDepositPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391567 | `0x2cac916b2a963bf162f076c0a8a4a8200bcfbfb4` | ⚠️ Unaudited |
| RocketHotfixNodeFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4640b8610f3efdeb8d44834adb3228d0e79eaa09` | ⚠️ Unaudited |
| RocketMegapoolDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f160f97b274c6152a3d5fa729a4547816a8aaa4` | ⚠️ Unaudited |
| RocketMegapoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8ab3fc244497a932faf9b3d9b39f00e5f77a06` | ⚠️ Unaudited |
| RocketMegapoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbf205c6fd170540a2f9e3e63d93aadfd19af57` | ⚠️ Unaudited |
| RocketMerkleDistributorMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce71e603b138f7e65029cc1918c0566ed0dbd4b` | ⚠️ Unaudited |
| RocketMinipoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54705f80d7c51fcffd9c659ce3f3c9a7dccf5788` | ⚠️ Unaudited |
| RocketMinipoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fbce43e4021a3f69c4599ff00362b83eda501e` | ⚠️ Unaudited |
| RocketMinipoolQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5870da524635d1310dc0e6f256ce331012c9c19e` | ⚠️ Unaudited |
| RocketNetworkBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fcabcbe4ff0d80c2b1eb42855c0131b6cba2f4` | ⚠️ Unaudited |
| RocketNetworkFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a882c9059cc2e97c860b80018c27145884d694b` | ⚠️ Unaudited |
| RocketNetworkPenalties | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9294fc6f03c64cc217f5be8697ea3ed2de77e2f8` | ⚠️ Unaudited |
| RocketNetworkSnapshots | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7603352f1c4752ac07aac94e48632b65fdf1d35c` | ⚠️ Unaudited |
| RocketNetworkVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77cf0f32bdd06242465eb3318a81196194a13daa` | ⚠️ Unaudited |
| RocketNodeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x191c794ae561c09179dec45cc8a8ab93675b5b1a` | ⚠️ Unaudited |
| RocketNodeDistributorDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32778d6bf5b93b89177d328556eeeb35c09f472b` | ⚠️ Unaudited |
| RocketNodeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22bbddbe0a1e790741cd385c67ff9aa5fbcbb958` | ⚠️ Unaudited |
| RocketNodeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8d8f8541b12a0e1194b7cc4b6d954b90ab82ec` | ⚠️ Unaudited |
| RocketOvmRebasingPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12759f8df234f8f2cddb3d2ed5604adf9accfc9f` | ⚠️ Unaudited |
| RocketPolygonPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1029ac2be4e08516697093e2afec435057f3511` | ⚠️ Unaudited |
| RocketRewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594fb75d3dc2dfa0150ad03f99f97817747dd4e1` | ⚠️ Unaudited |
| RocketSignerRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1062617d10ae99e09d941b60746182a87eab38f` | ⚠️ Unaudited |
| rocketSwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391558 | `0x16d5a408e807db8ef7c578279beeee6b228f1c1c` | ⚠️ Unaudited |
| RocketUpgradeOneDotFourDissolveHotfix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91003ad0e47d3b963467a22f2a42f92fdc161d22` | ⚠️ Unaudited |
| RocketUpgradeOneDotThreeDotOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391604 | `0xc2c81454427b1e53fdf5d3b45561e3c18f90f9ed` | ⚠️ Unaudited |
| RocketZkSyncPriceMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cf6cb29754aebf88af12089224429bd68b0b8c8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391575 | `0x4d05e3d48a938db4b7a9a59a802d5b45011bde58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391583 | `0x6efd08303f42edb68f2d6464bcdca0824e1c813a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391602 | `0xb867ea3bbc909954d737019fef5ab25dfdb38cb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-391635 | `0xd7102a3744c302f167c53621453516345bc460d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391636 | `0x029d946f28f93399a5b0d09c879fc8c94e596aeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391637 | `0x0737c090618190954f94b4a7c7241372252f803a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391638 | `0x07fcabcbe4ff0d80c2b1eb42855c0131b6cba2f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391639 | `0x0e79a9ccb66d740bb8465165762bf4d75cd466af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391640 | `0x17cf2c5d69e4f222bcadd86d210fe9dc8bada60b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391641 | `0x1aa4544ce0fd51596b6d51d0f55a40e409b8bad4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391642 | `0x1ae88d33a7d0fec71034480f9d1f19e17ccf1f33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391643 | `0x1cc9cf5586522c6f483e84a19c3c2b0b6d027bf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391644 | `0x27696ea43b7acdff5519371f6a4108c9736cd3fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391645 | `0x2cac916b2a963bf162f076c0a8a4a8200bcfbfb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391646 | `0x2d3142a05bdd16a3223b585a7a48132867da6480` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391647 | `0x2fb42ffe2d7df8381853e96304300c6a5e846905` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391648 | `0x320f3aab9405e38b955178bbe75c477decba0c27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391649 | `0x37dc1e910dd70d895aa0199894fc7184ed2d64b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391650 | `0x3fb8d496ea722455fb56d3b30cc97c3930f1cbf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391651 | `0x4220eecd69b2e1e70a7001637cc3d839ee2e97f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391652 | `0x425e6f83e27f1676ad78bc39da79c2c7b33d3fd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391653 | `0x426c08ec5ba0ecf97a6bfe29c1b3da962051e7cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391654 | `0x42d4e4b59220da435a0bd6b5892b90ff50e1d8d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391655 | `0x4c31c7f7adf948ee5e8501b8e6c65aef5ff12129` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391656 | `0x50223850f1e0d27c24cb5ef1d8158e8b1ab61095` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391657 | `0x54705f80d7c51fcffd9c659ce3f3c9a7dccf5788` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391658 | `0x5520abac3c9103216d3b23ffef3ac1aa0ceb24ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391659 | `0x560656c8947564363497e9c78a8bdeff8d3eff33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391660 | `0x56cd23baaf2e7cb7056968d85e5efe343b0e1dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391661 | `0x594fb75d3dc2dfa0150ad03f99f97817747dd4e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391662 | `0x5c2d33a015d132d4f590f00df807bb1052531ab9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391663 | `0x5ff34dde4ac5af26ce063940065e4d3ebc4c857c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391664 | `0x5ffe8bd3165e80d51ce834b32a6b6c02233494bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391665 | `0x614a5be866a0ec908ca9ae0d7d3eb100492a9f4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391666 | `0x67cde7af920682a29fcfea1a179ef0f30f48df3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391667 | `0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391668 | `0x751826b107672360b764327631cc5764515ffc37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391669 | `0x7791d20668112ed6b81d46647a661d9997d35922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391670 | `0x7a75036a7b7f858ac9fa89547ea952920fb5715d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391671 | `0x83037aaaf7437e34f4116b33271bf1273f529bd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391672 | `0x84d11b65e026f7aa08f5497dd3593fb083410b71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391673 | `0x86b455e24a9b5541d7703d07a8ce634f0309d2d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391674 | `0x894d1e83bb08aa50d77d5c4e471a6f94bbe056c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391675 | `0x8fb4399de1442f28f8dcdbdc1435969aeaf4170e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391676 | `0x92d1c21d158a8e451a74c01332d2a3790909cbaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391677 | `0x95d712eba0b76afcf1359d032d242bcbdb842da6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391678 | `0x9b744a231274f92a481ddc161206ec1f88442ed9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391679 | `0x9d64a4802db355e6c085b7497c29dd3175668d68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391680 | `0xa0f327589b08ceb824c21cde8ead5a3e6ca9edf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391681 | `0xa347c391bc8f740caba37672157c8aacd08ac567` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391682 | `0xa805d68b61956bc92d556f2be6d18747adaeee82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391683 | `0xa9115efda9c4dceef1321153561dcb375d13b07a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391684 | `0xac2245be4c2c1e9752499bcd34861b761d62fc27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391685 | `0xaea4d6aeff4078b98ef28cc2fc7ddd4cc5226eca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391686 | `0xb1029ac2be4e08516697093e2afec435057f3511` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391687 | `0xb9b3e78c42e835df2f28b46b8f6b458fd32c6029` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391688 | `0xbad0dbd347ed2be40ce3426c0c6b91be4f243578` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391689 | `0xbd96545b6066c9701a55d88b237a70cd30457d07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391690 | `0xc3a18d6ce3598ea1b938a0411ef16521af8c010f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391691 | `0xc5107991da31e4113faaecebf55588d3c280225e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391693 | `0xcafb9b62579d1a12207d642d644808e7e97ed910` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391694 | `0xd29b82cc5a06311921db10f156896e3588858169` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391695 | `0xd9d9202661de12aaaa478a704ea319b3f24ae711` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391696 | `0xdd3f50f8a6cafbe9b31a427582963f465e745af8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391697 | `0xddb6e648d6cbeab31a34a21ca5229db3ff16c9b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391698 | `0xde349540f1fc0259823815811e3d6ae32fad3ab1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391699 | `0xdf3d4bdddf39965f92a8cad73b1e84dea02a963c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391700 | `0xe04621683cdf2437a759400fc3da995a08d38c1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391702 | `0xe4c3ec6a20be31296032f968ceadee9e9aa76535` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391703 | `0xeffb0c7350f1293a997112b3c2594cdc34b36f18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391704 | `0xf295b126ea4f42a92f263466609d3945af6eebc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391705 | `0xf824e2d69dc7e7c073162c2bde87da4746d27a0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-391706 | `0xf9769da9633bdf64395bf5d91edf8f3320db8369` | ❓ Unverified |

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
| diligence.security/audits/2021/04/rocketpool | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | AddressSetStorage | own contract | AddressSetStorage (selected) `0xd4ae2511df21f367792ba4d67c6eb032171c6a16` — deployed 2021-09-30 08:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | AddressQueueStorage | own contract | AddressQueueStorage (selected) `0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8` — deployed 2021-09-30 08:45:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketVault | own contract | RocketVault (selected) `0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketTokenNETH | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae78736cd615f374d3085123a210448e74fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526068d116ce69f19a9ee46f0bd304f21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolFactory | own contract | rocketMinipoolFactory (selected) `0x7b8c48256caf462670f84c7e849cab216922b8d3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipool | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolQueue | own contract | rocketMinipoolQueue (selected) `0x9e966733e3e9bfa56af95f762921859417cf6faa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketMinipoolStatus | own contract | RocketMinipoolStatus (selected) `0xa52451b9d25eef02be42b3a8161a18f947f8a6a5` — deployed 2021-09-30 08:34:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7dcae43ff954577a2875a9d805874490ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketAuctionManager | own contract | RocketAuctionManager (selected) `0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce` — deployed 2021-09-30 08:32:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e88276a333cf9d4196d112d93af67ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrusted | own contract | RocketDAONodeTrusted (selected) `0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9` — deployed 2021-09-30 08:38:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProposals | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedProposals | own contract | RocketDAONodeTrustedProposals (selected) `0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5` — deployed 2021-09-30 08:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d946f28f93399a5b0d09c879fc8c94e596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedUpgrade | own contract | RocketDAONodeTrustedUpgrade (selected) `0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10` — deployed 2026-02-09 06:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettings | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedSettings | unmatched — not counted | — | listed in scope and findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c3650aa13d7a2456477fc374a16b94b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8dd01df8ad9bed0178e4f8cec2996c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03a5095197d1ad1f932bc55e022c420b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedSettingsMembers | own contract | RocketDAONodeTrustedSettingsMembers (selected) `0xda1ab39e62e0a5297af44c7064e501b0613f0d01` — deployed 2021-09-30 08:39:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAONodeTrustedSettingsProposals | own contract | RocketDAONodeTrustedSettingsProposals (selected) `0xad038f8994a6bd51c8a72d3721ced83401d4d2b0` — deployed 2021-09-30 08:40:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketNetworkWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2021/04/rocketpool | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce15294273cfb9d9b628f4d61636623decdf4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2021/04/rocketpool | RocketBase | unmatched — not counted | — | mentioned in recommendations | no |
| RocketPool.pdf | RocketBase | unmatched — not counted | — | listed in Project Coverage section | no |
| RocketPool.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketVault | own contract | RocketVault (selected) `0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce15294273cfb9d9b628f4d61636623decdf4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7dcae43ff954577a2875a9d805874490ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipoolQueue | own contract | rocketMinipoolQueue (selected) `0x9e966733e3e9bfa56af95f762921859417cf6faa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipool | unmatched — not counted | — | listed in Project Coverage section | no |
| RocketPool.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketMinipoolStorageLayout | unmatched — not counted | — | listed in Code Quality Recommendations | no |
| RocketPool.pdf | AddressQueueStorage | own contract | AddressQueueStorage (selected) `0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8` — deployed 2021-09-30 08:45:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae78736cd615f374d3085123a210448e74fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526068d116ce69f19a9ee46f0bd304f21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | AddressSetStorage | own contract | AddressSetStorage (selected) `0xd4ae2511df21f367792ba4d67c6eb032171c6a16` — deployed 2021-09-30 08:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RocketPool.pdf | RocketClaim | unmatched — not counted | — | listed in Coverage Limitations | no |
| RocketPool.pdf | RocketNetwork | unmatched — not counted | — | listed in Coverage Limitations | no |
| RocketPool.pdf | RocketDAO | unmatched — not counted | — | listed in Coverage Limitations | no |
| RocketPool.pdf | RocketAuctionManager | own contract | RocketAuctionManager (selected) `0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce` — deployed 2021-09-30 08:32:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7dcae43ff954577a2875a9d805874490ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipoolStatus | own contract | RocketMinipoolStatus (selected) `0xa52451b9d25eef02be42b3a8161a18f947f8a6a5` — deployed 2021-09-30 08:34:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNetworkBalances | own contract | rocketNetworkBalances (selected) `0x1d9f14c6bfd8358b589964bad8665add248e9473` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipoolQueue | own contract | rocketMinipoolQueue (selected) `0x9e966733e3e9bfa56af95f762921859417cf6faa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedUpgrade | own contract | RocketDAONodeTrustedUpgrade (selected) `0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10` — deployed 2026-02-09 06:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketAuctionManager | own contract | RocketAuctionManager (selected) `0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce` — deployed 2021-09-30 08:32:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d946f28f93399a5b0d09c879fc8c94e596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipool | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526068d116ce69f19a9ee46f0bd304f21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae78736cd615f374d3085123a210448e74fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketTokenNETH | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketVault | own contract | RocketVault (selected) `0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProposal | own contract | RocketDAOProposal (selected) `0x1e94e6131ba5b4f193d2a1067517136c52ddf102` — deployed 2024-10-12 03:31:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrusted | own contract | RocketDAONodeTrusted (selected) `0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9` — deployed 2021-09-30 08:38:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedProposals | own contract | RocketDAONodeTrustedProposals (selected) `0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5` — deployed 2021-09-30 08:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedSettings | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketDAONodeTrustedSettingsMembers | own contract | RocketDAONodeTrustedSettingsMembers (selected) `0xda1ab39e62e0a5297af44c7064e501b0613f0d01` — deployed 2021-09-30 08:39:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAONodeTrustedSettingsProposals | own contract | RocketDAONodeTrustedSettingsProposals (selected) `0xad038f8994a6bd51c8a72d3721ced83401d4d2b0` — deployed 2021-09-30 08:40:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e88276a333cf9d4196d112d93af67ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettings | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f989a3c9a1f66cb51b9043680974ea08c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c3650aa13d7a2456477fc374a16b94b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketDAOProtocolSettingsInflation | own contract | RocketDAOProtocolSettingsInflation (selected) `0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735` — deployed 2024-06-04 04:59:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketClaimNode | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketClaimTrustedNode | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketNetworkFees | own contract | rocketNetworkFees (selected) `0xf824e2d69dc7e7c073162c2bde87da4746d27a0f` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit.pdf | RocketBase | unmatched — not counted | — | listed in scope and findings | no |
| sigma-prime-audit.pdf | RocketPoolToken | unmatched — not counted | — | mentioned in finding RP-11 as non-existent but referenced | no |
| sigma-prime-audit.pdf | RocketDAOProtocolActions | own contract | RocketDAOProtocolActions (selected) `0xb50d513de40ee70a662c39207b4382a693f9e08d` — deployed 2021-09-30 08:41:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7dcae43ff954577a2875a9d805874490ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketDAONodeTrustedSettingsMembers | own contract | RocketDAONodeTrustedSettingsMembers (selected) `0xda1ab39e62e0a5297af44c7064e501b0613f0d01` — deployed 2021-09-30 08:39:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketDAONodeTrustedSettingsMinipool | own contract | rocketDAONodeTrustedSettingsMinipool (selected) `0xe535fa45e12d748393c117c6d8eebe1a7d124d95` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-fix-review.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae78736cd615f374d3085123a210448e74fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketMerkleDistributorMainnet | own contract | rocketMerkleDistributorMainnet (selected) `0xe4e2612ee8d7fdc8518faea85770a3b9c886e2f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketVault | own contract | RocketVault (selected) `0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6` — deployed 2021-09-30 08:32:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce15294273cfb9d9b628f4d61636623decdf4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketTokenRPL | own contract | RocketTokenRPL (selected) `0xd33526068d116ce69f19a9ee46f0bd304f21a51f` — deployed 2021-09-30 08:45:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d946f28f93399a5b0d09c879fc8c94e596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| consensys-audit-redstone.pdf | RocketTokenRETH | own contract | RocketTokenRETH (selected) `0xae78736cd615f374d3085123a210448e74fc6393` — deployed 2021-09-30 08:44:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDistributorFactory | own contract | RocketNodeDistributorFactory (selected) `0xe228017f77b3e0785e794e4c0a8a6b935bb4037c` — deployed 2022-08-15 02:46:42+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketMinipoolManager | own contract | rocketMinipoolManager (selected) `0xe54b8c641fd96de5d6747f47c19964c6b824d62c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketUpgradeOneDotOne | own contract | RocketUpgradeOneDotOne (selected) `0xc680a22b4f03977f69b51a09f3dbe922eb77c8fe` — deployed 2022-08-15 04:36:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNetworkPenalties | own contract | rocketNetworkPenalties (selected) `0xed0493de30e82be7c16c8925c7204ce9d1136b3a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDistributorDelegate | own contract | rocketNodeDistributorDelegate (selected) `0x35a85d4c115801395e6e3abaa784fb05826f129d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDistributor | unmatched — not counted | — | RPM-11 finding asset | no |
| sigma-prime-audit-redstone.pdf | RocketMinipoolFactory | own contract | rocketMinipoolFactory (selected) `0x7b8c48256caf462670f84c7e849cab216922b8d3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03a5095197d1ad1f932bc55e022c420b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a50dc1c4eda73e42858e8460b0ecf300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e88276a333cf9d4196d112d93af67ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketMinipool | unmatched — not counted | — | RPM-12 minor optimisations | no |
| sigma-prime-audit-redstone.pdf | RocketBase | unmatched — not counted | — | RPM-12 typos | no |
| sigma-prime-audit-redstone.pdf | RocketDAONodeTrustedSettingsRewards | own contract | RocketDAONodeTrustedSettingsRewards (selected) `0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1` — deployed 2022-08-15 02:43:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce15294273cfb9d9b628f4d61636623decdf4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-redstone.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolBase | own contract | RocketMinipoolBase (selected) `0x560656c8947564363497e9c78a8bdeff8d3eff33` — deployed 2023-04-08 11:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolDelegate | own contract | RocketMinipoolDelegate (selected) `0x03d30466d199ef540823fe2a22cae2e3b9343bb0` — deployed 2024-10-12 04:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolProxy | unmatched — not counted | — | Listed in scope and findings (RPA-09) | no |
| sigma-prime-audit-atlas.pdf | RocketMinipoolBondReducer | own contract | RocketMinipoolBondReducer (selected) `0xde8ab526b19fca2d5a57c4a78b698041717be591` — deployed 2026-02-09 06:40:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketUpgradeOneDotTwo | own contract | RocketUpgradeOneDotTwo (selected) `0x9a0b5d3101d111ea0edd573d45ef2208cc97984a` — deployed 2023-04-08 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-atlas.pdf | RocketMinipoolFactory | own contract | rocketMinipoolFactory (selected) `0x7b8c48256caf462670f84c7e849cab216922b8d3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e88276a333cf9d4196d112d93af67ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolActions | own contract | RocketDAOProtocolActions (selected) `0xb50d513de40ee70a662c39207b4382a693f9e08d` — deployed 2021-09-30 08:41:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a50dc1c4eda73e42858e8460b0ecf300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettings | unmatched — not counted | — | listed in scope table | no |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f989a3c9a1f66cb51b9043680974ea08c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8dd01df8ad9bed0178e4f8cec2996c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsInflation | own contract | RocketDAOProtocolSettingsInflation (selected) `0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735` — deployed 2024-06-04 04:59:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c3650aa13d7a2456477fc374a16b94b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03a5095197d1ad1f932bc55e022c420b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsProposals | own contract | rocketDAOProtocolSettingsProposals (selected) `0xf6ad771dfb1cd10c66f688e251b5e5c21cbfdf81` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771aaf504f33bb3c8a7e67ea9f1881f837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOProposal | own contract | RocketDAOProposal (selected) `0x1e94e6131ba5b4f193d2a1067517136c52ddf102` — deployed 2024-10-12 03:31:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOSecurity | own contract | RocketDAOSecurity (selected) `0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37` — deployed 2024-06-04 04:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOSecurityActions | own contract | RocketDAOSecurityActions (selected) `0xeaa442df4bb5394c66c8024efb4979bec89eb59a` — deployed 2024-06-04 04:53:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAOSecurityProposals | own contract | RocketDAOSecurityProposals (selected) `0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e` — deployed 2026-02-09 06:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketNetworkSnapshots | own contract | rocketNetworkSnapshots (selected) `0xe37f2d9dfb7397caf671df5190a5dfb601028f17` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketNetworkVoting | own contract | rocketNetworkVoting (selected) `0x994a9c49230fec0c127b8f42d6c5288f02610aed` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAONodeTrusted | own contract | RocketDAONodeTrusted (selected) `0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9` — deployed 2021-09-30 08:38:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketDAONodeTrustedActions | own contract | RocketDAONodeTrustedActions (selected) `0x029d946f28f93399a5b0d09c879fc8c94e596aeb` — deployed 2022-08-15 03:06:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2023/12/rocket-pool-houston | RocketMinipoolPenalty | own contract | RocketMinipoolPenalty (selected) `0xe64ac47b6e2fecfcdea35147fe61af9894a06ba6` — deployed 2021-09-30 08:34:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a50dc1c4eda73e42858e8460b0ecf300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7dcae43ff954577a2875a9d805874490ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f989a3c9a1f66cb51b9043680974ea08c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8dd01df8ad9bed0178e4f8cec2996c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsInflation | own contract | RocketDAOProtocolSettingsInflation (selected) `0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735` — deployed 2024-06-04 04:59:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c3650aa13d7a2456477fc374a16b94b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03a5095197d1ad1f932bc55e022c420b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsProposal | unmatched — not counted | — | Listed in finding RPH-07 | no |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsRewards | own contract | RocketDAOProtocolSettingsRewards (selected) `0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124` — deployed 2024-06-04 04:57:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771aaf504f33bb3c8a7e67ea9f1881f837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketUpgradeOneDotThree | own contract | RocketUpgradeOneDotThree (selected) `0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c` — deployed 2024-06-04 05:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketMerkleDistributorMainnet | own contract | rocketMerkleDistributorMainnet (selected) `0xe4e2612ee8d7fdc8518faea85770a3b9c886e2f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketStorage | own contract | RocketStorage (selected) `0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46` — deployed 2021-09-30 08:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketDAOProtocolSettingsMinipoolOld | unmatched — not counted | — | Listed in finding RPH-13 | no |
| sigma-prime-audit-houston.pdf | RocketNetworkBalancesOld | unmatched — not counted | — | Listed in finding RPH-13 | no |
| sigma-prime-audit-houston.pdf | RocketRewardsPoolOld | unmatched — not counted | — | Listed in finding RPH-13 | no |
| sigma-prime-audit-houston.pdf | RocketNetworkSnapshots | own contract | rocketNetworkSnapshots (selected) `0xe37f2d9dfb7397caf671df5190a5dfb601028f17` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-houston.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketBase | unmatched — not counted | — | listed in line-by-line review | no |
| chainsafe-audit-houston.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e88276a333cf9d4196d112d93af67ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a50dc1c4eda73e42858e8460b0ecf300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771aaf504f33bb3c8a7e67ea9f1881f837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketDAOSecurityProposals | own contract | RocketDAOSecurityProposals (selected) `0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e` — deployed 2026-02-09 06:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNetworkPrices | own contract | RocketNetworkPrices (selected) `0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382` — deployed 2024-06-04 04:55:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNetworkSnapshots | own contract | rocketNetworkSnapshots (selected) `0xe37f2d9dfb7397caf671df5190a5dfb601028f17` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNetworkVoting | own contract | rocketNetworkVoting (selected) `0x994a9c49230fec0c127b8f42d6c5288f02610aed` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketNodeStaking | own contract | rocketNodeStaking (selected) `0xedfc7dcae43ff954577a2875a9d805874490ee3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketUpgradeOneDotThree | own contract | RocketUpgradeOneDotThree (selected) `0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c` — deployed 2024-06-04 05:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsafe-audit-houston.pdf | RocketClaimDAO | own contract | rocketClaimDAO (selected) `0xfb2f2ab63dcf412ced6cde5f4f809215ed0c81aa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-houston-hotfix-review.pdf | RocketDAOProtocolSettingsAuction | own contract | RocketDAOProtocolSettingsAuction (selected) `0x364f989a3c9a1f66cb51b9043680974ea08c0d18` — deployed 2024-10-12 03:58:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-houston-hotfix-review.pdf | Contract | unmatched — not counted | — | mentioned in finding RPHF-02 | no |
| sigma-prime-houston-hotfix-review.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsMegapool | own contract | RocketDAOProtocolSettingsMegapool (selected) `0x40628faac22383327b9f7bbc86cd1857050a2dce` — deployed 2026-02-09 06:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | DepositPool | unmatched — not counted | — | listed in scope and diffchecker link | no |
| bailsec-audit-saturn-1.pdf | RocketMegapoolDelegate | own contract | rocketMegapoolDelegate (selected) `0xca3dd4bee7c174903dbf66c3897c27e9adaaebdd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolManager | own contract | rocketMegapoolManager (selected) `0xf2ccd522ba5ffeda28fe0389963845d61f342034` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolPenalties | own contract | RocketMegapoolPenalties (selected) `0xa2afc3c2d8ea4ebdbe925cade17c29517630e6ab` — deployed 2026-02-09 06:42:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolStorageLayout | unmatched — not counted | — | listed in scope and diffchecker link | no |
| bailsec-audit-saturn-1.pdf | RocketNetworkPenalties | own contract | rocketNetworkPenalties (selected) `0xed0493de30e82be7c16c8925c7204ce9d1136b3a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketNetworkRevenues | own contract | RocketNetworkRevenues (selected) `0x9d9708da8e0200dd8dd9ad09e0aaf184ad260842` — deployed 2026-02-09 06:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMerkleDistributorMainnet | own contract | rocketMerkleDistributorMainnet (selected) `0xe4e2612ee8d7fdc8518faea85770a3b9c886e2f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketRewardsPool | own contract | rocketRewardsPool (selected) `0xcba5951fc706fc783b7c142dae8576ebe29c41fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketUpgradeOneDotFour | own contract | RocketUpgradeOneDotFour (selected) `0x5b3b5c76391662e56d0ff72f31b89c409316c8ba` — deployed 2026-02-09 06:43:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | BeaconStateVerifier | own contract | BeaconStateVerifier (selected) `0xe9a114c50f26001443b91079ab5573a90d2d8469` — deployed 2026-02-09 06:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsNode | own contract | rocketDAOProtocolSettingsNode (selected) `0xb02b883303e658ddcd58d3871dc4ca0c91f0fc9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsDeposit | own contract | RocketDAOProtocolSettingsDeposit (selected) `0x227be8dd01df8ad9bed0178e4f8cec2996c5c365` — deployed 2026-02-09 06:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsMinipool | own contract | rocketDAOProtocolSettingsMinipool (selected) `0xaef94c3650aa13d7a2456477fc374a16b94b9152` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsNetwork | own contract | rocketDAOProtocolSettingsNetwork (selected) `0x67fd03a5095197d1ad1f932bc55e022c420b1153` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolSettingsSecurity | own contract | rocketDAOProtocolSettingsSecurity (selected) `0xc9d771aaf504f33bb3c8a7e67ea9f1881f837cff` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocol | own contract | rocketDAOProtocol (selected) `0xcac25e88276a333cf9d4196d112d93af67ef809a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolActions | own contract | RocketDAOProtocolActions (selected) `0xb50d513de40ee70a662c39207b4382a693f9e08d` — deployed 2021-09-30 08:41:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolProposal | own contract | RocketDAOProtocolProposal (selected) `0x2d627a50dc1c4eda73e42858e8460b0ecf300b25` — deployed 2024-10-12 03:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolProposals | own contract | rocketDAOProtocolProposals (selected) `0xcf7f6e23cd8189b7f56b14f66e11241c8ac0f03b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProtocolVerifier | own contract | rocketDAOProtocolVerifier (selected) `0xd1f7e573cdc64fc0b201ca37ab50bc7dd880040a` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurity | own contract | RocketDAOSecurity (selected) `0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37` — deployed 2024-06-04 04:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurityActions | own contract | RocketDAOSecurityActions (selected) `0xeaa442df4bb5394c66c8024efb4979bec89eb59a` — deployed 2024-06-04 04:53:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurityProposals | own contract | RocketDAOSecurityProposals (selected) `0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e` — deployed 2026-02-09 06:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOSecurityUpgrade | own contract | RocketDAOSecurityUpgrade (selected) `0x950baf0358164339114914169bf16754789b5dc4` — deployed 2026-02-09 06:34:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDAOProposal | own contract | RocketDAOProposal (selected) `0x1e94e6131ba5b4f193d2a1067517136c52ddf102` — deployed 2024-10-12 03:31:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce15294273cfb9d9b628f4d61636623decdf4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketMegapoolFactory | own contract | rocketMegapoolFactory (selected) `0xd5bffeaa9f373b9c367132772faa0b88e3f0e38b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bailsec-audit-saturn-1.pdf | RocketNetworkSnapshotsTime | own contract | RocketNetworkSnapshotsTime (selected) `0x569f5b3024054ab4049a50df223a747afe18a891` — deployed 2026-02-09 06:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketMegapoolDelegate | own contract | rocketMegapoolDelegate (selected) `0xca3dd4bee7c174903dbf66c3897c27e9adaaebdd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketDepositPool | own contract | rocketDepositPool (selected) `0xce15294273cfb9d9b628f4d61636623decdf4fdc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | BeaconStateVerifier | own contract | BeaconStateVerifier (selected) `0xe9a114c50f26001443b91079ab5573a90d2d8469` — deployed 2026-02-09 06:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketNetworkBalances | own contract | rocketNetworkBalances (selected) `0x1d9f14c6bfd8358b589964bad8665add248e9473` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | SSZ | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| sigma-prime-audit-saturn-1.pdf | RocketNodeDeposit | own contract | rocketNodeDeposit (selected) `0x6b13698c306a297fee1383cdc2c65d63781d2d47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketMegapoolManager | own contract | rocketMegapoolManager (selected) `0xf2ccd522ba5ffeda28fe0389963845d61f342034` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketMegapoolFactory | own contract | rocketMegapoolFactory (selected) `0xd5bffeaa9f373b9c367132772faa0b88e3f0e38b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma-prime-audit-saturn-1.pdf | RocketNodeManager | own contract | rocketNodeManager (selected) `0xcf2d76a7499d3acb5a22ce83c027651e8d76e250` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc2c81454427b1e53fdf5d3b45561e3c18f90f9ed` | RocketUpgradeOneDotThreeDotOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
