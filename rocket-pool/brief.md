# Agentic Audit Brief: Rocket Pool

## Project Overview

- Project: Rocket Pool (`rocket-pool`)
- Website: [https://rocketpool.net](https://rocketpool.net)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:48.794Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 83 unique implementations (83 raw deployments)
- DeFi Llama TVL: $863,345,512.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 83 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (rocketminipoolstoragelayout, rocketbase, rocketmegapoolstoragelayout). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 83; live-surface contracts included: 83 (83 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 77/83 (92.8%)
- Deployed-live implementations: 83 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 77/83
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 83
- Raw deployments: 83
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/rocketpool/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 77 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 92.8% (ConsenSys Diligence, Immunefi, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 77 | 92.8% | 2026-01 |
| Immunefi | Tier 1 | 75 | 90.4% | 2026-02 |
| Consensys Diligence | Tier 1 | 70 | 84.3% | 2023-12 |
| Trail of Bits | Tier 1 | 64 | 77.1% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (77)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressQueueStorage | unknown | ethereum | n/a | [`0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | ✅ Audited |
| AddressSetStorage | unknown | ethereum | n/a | [`0xd4ae2511df21f367792ba4d67c6eb032171c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ✅ Audited |
| BeaconStateVerifier | unknown | ethereum | n/a | [`0xe9a114c50f26001443b91079ab5573a90d2d8469`](./contracts/ethereum-1/0xe9a114c50f26001443b91079ab5573a90d2d8469/) | ✅ Audited |
| LinkedListStorage | unknown | ethereum | n/a | [`0x17e5063ab2617445e2a249a88409d02f87fbecd9`](./contracts/ethereum-1/0x17e5063ab2617445e2a249a88409d02f87fbecd9/) | ✅ Audited |
| RocketAuctionManager | unknown | ethereum | n/a | [`0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce`](./contracts/ethereum-1/0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce/) | ✅ Audited |
| RocketClaimDAO | unknown | ethereum | n/a | [`0x428f0de7a6bf5ecca29e1c5e8c407b21e8becd39`](./contracts/ethereum-1/0x428f0de7a6bf5ecca29e1c5e8c407b21e8becd39/) | ✅ Audited |
| RocketClaimNode | unknown | ethereum | n/a | [`0x899336a2a86053705e65db61f52c686dcfaef548`](./contracts/ethereum-1/0x899336a2a86053705e65db61f52c686dcfaef548/) | ✅ Audited |
| RocketClaimTrustedNode | unknown | ethereum | n/a | [`0x6af730deb0463b432433318dc8002c0a4e9315e8`](./contracts/ethereum-1/0x6af730deb0463b432433318dc8002c0a4e9315e8/) | ✅ Audited |
| RocketDAONodeTrusted | unknown | ethereum | n/a | [`0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9`](./contracts/ethereum-1/0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9/) | ✅ Audited |
| RocketDAONodeTrustedActions | unknown | ethereum | n/a | [`0x029d946f28f93399a5b0d09c879fc8c94e596aeb`](./contracts/ethereum-1/0x029d946f28f93399a5b0d09c879fc8c94e596aeb/) | ✅ Audited |
| RocketDAONodeTrustedProposals | unknown | ethereum | n/a | [`0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5`](./contracts/ethereum-1/0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5/) | ✅ Audited |
| RocketDAONodeTrustedSettingsMembers | unknown | ethereum | n/a | [`0xda1ab39e62e0a5297af44c7064e501b0613f0d01`](./contracts/ethereum-1/0xda1ab39e62e0a5297af44c7064e501b0613f0d01/) | ✅ Audited |
| RocketDAONodeTrustedSettingsMinipool | unknown | ethereum | n/a | [`0xa29b42bbd19b76ab092bcc3c20370887bbfd9095`](./contracts/ethereum-1/0xa29b42bbd19b76ab092bcc3c20370887bbfd9095/) | ✅ Audited |
| RocketDAONodeTrustedSettingsProposals | unknown | ethereum | n/a | [`0xad038f8994a6bd51c8a72d3721ced83401d4d2b0`](./contracts/ethereum-1/0xad038f8994a6bd51c8a72d3721ced83401d4d2b0/) | ✅ Audited |
| RocketDAONodeTrustedSettingsRewards | unknown | ethereum | n/a | [`0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1`](./contracts/ethereum-1/0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1/) | ✅ Audited |
| RocketDAONodeTrustedUpgrade | unknown | ethereum | n/a | [`0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10`](./contracts/ethereum-1/0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10/) | ✅ Audited |
| RocketDAOProposal | unknown | ethereum | n/a | [`0x1e94e6131ba5b4f193d2a1067517136c52ddf102`](./contracts/ethereum-1/0x1e94e6131ba5b4f193d2a1067517136c52ddf102/) | ✅ Audited |
| RocketDAOProtocol | unknown | ethereum | n/a | [`0x0429cdd8ceace24d4dc2b97ce22a780a407df0e1`](./contracts/ethereum-1/0x0429cdd8ceace24d4dc2b97ce22a780a407df0e1/) | ✅ Audited |
| RocketDAOProtocolActions | unknown | ethereum | n/a | [`0xb50d513de40ee70a662c39207b4382a693f9e08d`](./contracts/ethereum-1/0xb50d513de40ee70a662c39207b4382a693f9e08d/) | ✅ Audited |
| RocketDAOProtocolProposal | unknown | ethereum | n/a | [`0x2d627a50dc1c4eda73e42858e8460b0ecf300b25`](./contracts/ethereum-1/0x2d627a50dc1c4eda73e42858e8460b0ecf300b25/) | ✅ Audited |
| RocketDAOProtocolProposals | unknown | ethereum | n/a | [`0x2dbd041360c86b35a9ea05d3ec3fcceadb915c16`](./contracts/ethereum-1/0x2dbd041360c86b35a9ea05d3ec3fcceadb915c16/) | ✅ Audited |
| RocketDAOProtocolSettingsAuction | unknown | ethereum | n/a | [`0x364f989a3c9a1f66cb51b9043680974ea08c0d18`](./contracts/ethereum-1/0x364f989a3c9a1f66cb51b9043680974ea08c0d18/) | ✅ Audited |
| RocketDAOProtocolSettingsDeposit | unknown | ethereum | n/a | [`0x227be8dd01df8ad9bed0178e4f8cec2996c5c365`](./contracts/ethereum-1/0x227be8dd01df8ad9bed0178e4f8cec2996c5c365/) | ✅ Audited |
| RocketDAOProtocolSettingsInflation | unknown | ethereum | n/a | [`0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735`](./contracts/ethereum-1/0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735/) | ✅ Audited |
| RocketDAOProtocolSettingsMegapool | unknown | ethereum | n/a | [`0x40628faac22383327b9f7bbc86cd1857050a2dce`](./contracts/ethereum-1/0x40628faac22383327b9f7bbc86cd1857050a2dce/) | ✅ Audited |
| RocketDAOProtocolSettingsMinipool | unknown | ethereum | n/a | [`0x030aea8378cc131674d6d655ca26b5a3ef4c63da`](./contracts/ethereum-1/0x030aea8378cc131674d6d655ca26b5a3ef4c63da/) | ✅ Audited |
| RocketDAOProtocolSettingsNetwork | unknown | ethereum | n/a | [`0x320f3aab9405e38b955178bbe75c477decba0c27`](./contracts/ethereum-1/0x320f3aab9405e38b955178bbe75c477decba0c27/) | ✅ Audited |
| RocketDAOProtocolSettingsNode | unknown | ethereum | n/a | [`0x0a3b0966115fa6588629b63bcf788f3adb0b9ab2`](./contracts/ethereum-1/0x0a3b0966115fa6588629b63bcf788f3adb0b9ab2/) | ✅ Audited |
| RocketDAOProtocolSettingsProposals | unknown | ethereum | n/a | [`0x59cd103df1be2ebd80d45c54a3cde8d4f812c034`](./contracts/ethereum-1/0x59cd103df1be2ebd80d45c54a3cde8d4f812c034/) | ✅ Audited |
| RocketDAOProtocolSettingsRewards | unknown | ethereum | n/a | [`0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124`](./contracts/ethereum-1/0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124/) | ✅ Audited |
| RocketDAOProtocolSettingsSecurity | unknown | ethereum | n/a | [`0x1ec364cdd9697f56b8cb17a745b98c2b862cbe29`](./contracts/ethereum-1/0x1ec364cdd9697f56b8cb17a745b98c2b862cbe29/) | ✅ Audited |
| RocketDAOProtocolVerifier | unknown | ethereum | n/a | [`0x25f41cd11d95dbec0919a0440343698cf1472a33`](./contracts/ethereum-1/0x25f41cd11d95dbec0919a0440343698cf1472a33/) | ✅ Audited |
| RocketDAOSecurity | unknown | ethereum | n/a | [`0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37`](./contracts/ethereum-1/0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37/) | ✅ Audited |
| RocketDAOSecurityActions | unknown | ethereum | n/a | [`0xeaa442df4bb5394c66c8024efb4979bec89eb59a`](./contracts/ethereum-1/0xeaa442df4bb5394c66c8024efb4979bec89eb59a/) | ✅ Audited |
| RocketDAOSecurityProposals | unknown | ethereum | n/a | [`0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e`](./contracts/ethereum-1/0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e/) | ✅ Audited |
| RocketDAOSecurityUpgrade | unknown | ethereum | n/a | [`0x950baf0358164339114914169bf16754789b5dc4`](./contracts/ethereum-1/0x950baf0358164339114914169bf16754789b5dc4/) | ✅ Audited |
| RocketDepositPool | unknown | ethereum | n/a | [`0x2cac916b2a963bf162f076c0a8a4a8200bcfbfb4`](./contracts/ethereum-1/0x2cac916b2a963bf162f076c0a8a4a8200bcfbfb4/) | ✅ Audited |
| RocketHotfixNodeFee | unknown | ethereum | n/a | [`0x4640b8610f3efdeb8d44834adb3228d0e79eaa09`](./contracts/ethereum-1/0x4640b8610f3efdeb8d44834adb3228d0e79eaa09/) | ✅ Audited |
| RocketMegapoolDelegate | unknown | ethereum | n/a | [`0x0f160f97b274c6152a3d5fa729a4547816a8aaa4`](./contracts/ethereum-1/0x0f160f97b274c6152a3d5fa729a4547816a8aaa4/) | ✅ Audited |
| RocketMegapoolFactory | unknown | ethereum | n/a | [`0x6c8ab3fc244497a932faf9b3d9b39f00e5f77a06`](./contracts/ethereum-1/0x6c8ab3fc244497a932faf9b3d9b39f00e5f77a06/) | ✅ Audited |
| RocketMegapoolManager | unknown | ethereum | n/a | [`0x6dbf205c6fd170540a2f9e3e63d93aadfd19af57`](./contracts/ethereum-1/0x6dbf205c6fd170540a2f9e3e63d93aadfd19af57/) | ✅ Audited |
| RocketMegapoolPenalties | unknown | ethereum | n/a | [`0xa2afc3c2d8ea4ebdbe925cade17c29517630e6ab`](./contracts/ethereum-1/0xa2afc3c2d8ea4ebdbe925cade17c29517630e6ab/) | ✅ Audited |
| RocketMegapoolProxy | unknown | ethereum | n/a | [`0x1b389d76a04d01026c5f5b0a125d4ccf26f9cd51`](./contracts/ethereum-1/0x1b389d76a04d01026c5f5b0a125d4ccf26f9cd51/) | ✅ Audited |
| RocketMerkleDistributorMainnet | unknown | ethereum | n/a | [`0x5ce71e603b138f7e65029cc1918c0566ed0dbd4b`](./contracts/ethereum-1/0x5ce71e603b138f7e65029cc1918c0566ed0dbd4b/) | ✅ Audited |
| RocketMinipoolBase | unknown | ethereum | n/a | [`0x560656c8947564363497e9c78a8bdeff8d3eff33`](./contracts/ethereum-1/0x560656c8947564363497e9c78a8bdeff8d3eff33/) | ✅ Audited |
| RocketMinipoolBondReducer | unknown | ethereum | n/a | [`0xde8ab526b19fca2d5a57c4a78b698041717be591`](./contracts/ethereum-1/0xde8ab526b19fca2d5a57c4a78b698041717be591/) | ✅ Audited |
| RocketMinipoolDelegate | unknown | ethereum | n/a | [`0x03d30466d199ef540823fe2a22cae2e3b9343bb0`](./contracts/ethereum-1/0x03d30466d199ef540823fe2a22cae2e3b9343bb0/) | ✅ Audited |
| RocketMinipoolFactory | unknown | ethereum | n/a | [`0x54705f80d7c51fcffd9c659ce3f3c9a7dccf5788`](./contracts/ethereum-1/0x54705f80d7c51fcffd9c659ce3f3c9a7dccf5788/) | ✅ Audited |
| RocketMinipoolManager | unknown | ethereum | n/a | [`0x09fbce43e4021a3f69c4599ff00362b83eda501e`](./contracts/ethereum-1/0x09fbce43e4021a3f69c4599ff00362b83eda501e/) | ✅ Audited |
| RocketMinipoolPenalty | unknown | ethereum | n/a | [`0xe64ac47b6e2fecfcdea35147fe61af9894a06ba6`](./contracts/ethereum-1/0xe64ac47b6e2fecfcdea35147fe61af9894a06ba6/) | ✅ Audited |
| RocketMinipoolQueue | unknown | ethereum | n/a | [`0x5870da524635d1310dc0e6f256ce331012c9c19e`](./contracts/ethereum-1/0x5870da524635d1310dc0e6f256ce331012c9c19e/) | ✅ Audited |
| RocketMinipoolStatus | unknown | ethereum | n/a | [`0xa52451b9d25eef02be42b3a8161a18f947f8a6a5`](./contracts/ethereum-1/0xa52451b9d25eef02be42b3a8161a18f947f8a6a5/) | ✅ Audited |
| RocketNetworkBalances | unknown | ethereum | n/a | [`0x07fcabcbe4ff0d80c2b1eb42855c0131b6cba2f4`](./contracts/ethereum-1/0x07fcabcbe4ff0d80c2b1eb42855c0131b6cba2f4/) | ✅ Audited |
| RocketNetworkFees | unknown | ethereum | n/a | [`0x0a882c9059cc2e97c860b80018c27145884d694b`](./contracts/ethereum-1/0x0a882c9059cc2e97c860b80018c27145884d694b/) | ✅ Audited |
| RocketNetworkPenalties | unknown | ethereum | n/a | [`0x9294fc6f03c64cc217f5be8697ea3ed2de77e2f8`](./contracts/ethereum-1/0x9294fc6f03c64cc217f5be8697ea3ed2de77e2f8/) | ✅ Audited |
| RocketNetworkPrices | unknown | ethereum | n/a | [`0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382`](./contracts/ethereum-1/0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382/) | ✅ Audited |
| RocketNetworkRevenues | unknown | ethereum | n/a | [`0x9d9708da8e0200dd8dd9ad09e0aaf184ad260842`](./contracts/ethereum-1/0x9d9708da8e0200dd8dd9ad09e0aaf184ad260842/) | ✅ Audited |
| RocketNetworkSnapshots | unknown | ethereum | n/a | [`0x7603352f1c4752ac07aac94e48632b65fdf1d35c`](./contracts/ethereum-1/0x7603352f1c4752ac07aac94e48632b65fdf1d35c/) | ✅ Audited |
| RocketNetworkSnapshotsTime | unknown | ethereum | n/a | [`0x569f5b3024054ab4049a50df223a747afe18a891`](./contracts/ethereum-1/0x569f5b3024054ab4049a50df223a747afe18a891/) | ✅ Audited |
| RocketNetworkVoting | unknown | ethereum | n/a | [`0x77cf0f32bdd06242465eb3318a81196194a13daa`](./contracts/ethereum-1/0x77cf0f32bdd06242465eb3318a81196194a13daa/) | ✅ Audited |
| RocketNodeDeposit | unknown | ethereum | n/a | [`0x191c794ae561c09179dec45cc8a8ab93675b5b1a`](./contracts/ethereum-1/0x191c794ae561c09179dec45cc8a8ab93675b5b1a/) | ✅ Audited |
| RocketNodeDistributorDelegate | unknown | ethereum | n/a | [`0x32778d6bf5b93b89177d328556eeeb35c09f472b`](./contracts/ethereum-1/0x32778d6bf5b93b89177d328556eeeb35c09f472b/) | ✅ Audited |
| RocketNodeDistributorFactory | unknown | ethereum | n/a | [`0xe228017f77b3e0785e794e4c0a8a6b935bb4037c`](./contracts/ethereum-1/0xe228017f77b3e0785e794e4c0a8a6b935bb4037c/) | ✅ Audited |
| RocketNodeManager | unknown | ethereum | n/a | [`0x22bbddbe0a1e790741cd385c67ff9aa5fbcbb958`](./contracts/ethereum-1/0x22bbddbe0a1e790741cd385c67ff9aa5fbcbb958/) | ✅ Audited |
| RocketNodeStaking | unknown | ethereum | n/a | [`0x0d8d8f8541b12a0e1194b7cc4b6d954b90ab82ec`](./contracts/ethereum-1/0x0d8d8f8541b12a0e1194b7cc4b6d954b90ab82ec/) | ✅ Audited |
| RocketRewardsPool | unknown | ethereum | n/a | [`0x594fb75d3dc2dfa0150ad03f99f97817747dd4e1`](./contracts/ethereum-1/0x594fb75d3dc2dfa0150ad03f99f97817747dd4e1/) | ✅ Audited |
| RocketSmoothingPool | unknown | ethereum | n/a | [`0xd4e96ef8eee8678dbff4d535e033ed1a4f7605b7`](./contracts/ethereum-1/0xd4e96ef8eee8678dbff4d535e033ed1a4f7605b7/) | ✅ Audited |
| RocketStorage | unknown | ethereum | n/a | [`0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46`](./contracts/ethereum-1/0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46/) | ✅ Audited |
| RocketTokenRETH | unknown | ethereum | n/a | [`0xae78736cd615f374d3085123a210448e74fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ✅ Audited |
| RocketTokenRPL | unknown | ethereum | n/a | [`0xd33526068d116ce69f19a9ee46f0bd304f21a51f`](./contracts/ethereum-1/0xd33526068d116ce69f19a9ee46f0bd304f21a51f/) | ✅ Audited |
| RocketUpgradeOneDotFour | unknown | ethereum | n/a | [`0x5b3b5c76391662e56d0ff72f31b89c409316c8ba`](./contracts/ethereum-1/0x5b3b5c76391662e56d0ff72f31b89c409316c8ba/) | ✅ Audited |
| RocketUpgradeOneDotFourDissolveHotfix | unknown | ethereum | n/a | [`0x91003ad0e47d3b963467a22f2a42f92fdc161d22`](./contracts/ethereum-1/0x91003ad0e47d3b963467a22f2a42f92fdc161d22/) | ✅ Audited |
| RocketUpgradeOneDotOne | unknown | ethereum | n/a | [`0xc680a22b4f03977f69b51a09f3dbe922eb77c8fe`](./contracts/ethereum-1/0xc680a22b4f03977f69b51a09f3dbe922eb77c8fe/) | ✅ Audited |
| RocketUpgradeOneDotThree | unknown | ethereum | n/a | [`0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c`](./contracts/ethereum-1/0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c/) | ✅ Audited |
| RocketUpgradeOneDotThreeDotOne | unknown | ethereum | n/a | [`0xc2c81454427b1e53fdf5d3b45561e3c18f90f9ed`](./contracts/ethereum-1/0xc2c81454427b1e53fdf5d3b45561e3c18f90f9ed/) | ✅ Audited |
| RocketUpgradeOneDotTwo | unknown | ethereum | n/a | [`0x9a0b5d3101d111ea0edd573d45ef2208cc97984a`](./contracts/ethereum-1/0x9a0b5d3101d111ea0edd573d45ef2208cc97984a/) | ✅ Audited |
| RocketVault | unknown | ethereum | n/a | [`0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6`](./contracts/ethereum-1/0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Migrations | unknown | ethereum | n/a | [`0x0aab73d845d481fe790787f535618457921a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | ⚠️ Unaudited |
| RocketArbitrumPriceMessenger | unknown | ethereum | n/a | [`0x05330300f829ad3fc8f33838bc88cfc4093bad53`](./contracts/ethereum-1/0x05330300f829ad3fc8f33838bc88cfc4093bad53/) | ⚠️ Unaudited |
| RocketOvmRebasingPriceMessenger | unknown | ethereum | n/a | [`0x12759f8df234f8f2cddb3d2ed5604adf9accfc9f`](./contracts/ethereum-1/0x12759f8df234f8f2cddb3d2ed5604adf9accfc9f/) | ⚠️ Unaudited |
| RocketPolygonPriceMessenger | unknown | ethereum | n/a | [`0xb1029ac2be4e08516697093e2afec435057f3511`](./contracts/ethereum-1/0xb1029ac2be4e08516697093e2afec435057f3511/) | ⚠️ Unaudited |
| RocketSignerRegistry | unknown | ethereum | n/a | [`0xc1062617d10ae99e09d941b60746182a87eab38f`](./contracts/ethereum-1/0xc1062617d10ae99e09d941b60746182a87eab38f/) | ⚠️ Unaudited |
| RocketZkSyncPriceMessenger | unknown | ethereum | n/a | [`0x6cf6cb29754aebf88af12089224429bd68b0b8c8`](./contracts/ethereum-1/0x6cf6cb29754aebf88af12089224429bd68b0b8c8/) | ⚠️ Unaudited |

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
| [diligence.security/audits/2021/04/rocketpool](https://diligence.security/audits/2021/04/rocketpool) | Consensys Diligence | Audit | 2021-04 | stale | Direct | contract_name | 68 | high |
| [RocketPool.pdf](https://github.com/trailofbits/publications/blob/master/reviews/RocketPool.pdf) | Trail of Bits | Audit | 2021-09 | stale | Direct | contract_name | 64 | high |
| [immunefi.com/bug-bounty/rocketpool/information](https://immunefi.com/bug-bounty/rocketpool/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [sigma-prime-audit.pdf (also discovered via alternate URL)](https://rocketpool.net/files/audits/sigma-prime-audit.pdf) | Immunefi | Contest | 2021-05 | stale | Direct | contract_name|n/a | 64 | high |
| [sigma-prime-fix-review.pdf](https://rocketpool.net/files/audits/sigma-prime-fix-review.pdf) | Immunefi | Contest | 2021-11 | stale | Direct | contract_name | 10 | high |
| [consensys-audit-redstone.pdf](https://rocketpool.net/files/audits/consensys-audit-redstone.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [sigma-prime-audit-redstone.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-redstone.pdf) | Immunefi | Contest | 2022-06 | stale | Direct | contract_name | 61 | high |
| [sigma-prime-audit-atlas.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-atlas.pdf) | Immunefi | Contest | 2022-12 | stale | Direct | contract_name | 7 | high |
| [consensys-audit-atlas.pdf](https://rocketpool.net/files/audits/consensys-audit-atlas.pdf) | Immunefi | Contest | 2023-01 | stale | Direct | contract_name | 70 | high |
| [diligence.security/audits/2023/12/rocket-pool-houston](https://diligence.security/audits/2023/12/rocket-pool-houston) | Consensys Diligence | Audit | 2023-12 | stale | Direct | contract_name | 24 | high |
| [sigma-prime-audit-houston.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-houston.pdf) | Immunefi | Contest | 2024-06 | stale | Direct | contract_name | 19 | high |
| [chainsafe-audit-houston.pdf](https://rocketpool.net/files/audits/chainsafe-audit-houston.pdf) | Immunefi | Contest | 2024-04 | stale | Direct | contract_name | 59 | high |
| [sigma-prime-houston-hotfix-review.pdf](https://rocketpool.net/files/audits/sigma-prime-houston-hotfix-review.pdf) | Immunefi | Contest | 2024-09 | aging | Direct | contract_name | 2 | high |
| [cantina-audit-saturn-1.pdf](https://rocketpool.net/files/audits/cantina-audit-saturn-1.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 77 | high |
| [bailsec-audit-saturn-1.pdf](https://rocketpool.net/files/audits/bailsec-audit-saturn-1.pdf) | Immunefi | Contest | 2026-01 | fresh | Direct | contract_name | 39 | high |
| [sigma-prime-audit-saturn-1.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-saturn-1.pdf) | Immunefi | Contest | 2026-02 | fresh | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0aab73d845d481fe790787f535618457921a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | Migrations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05330300f829ad3fc8f33838bc88cfc4093bad53`](./contracts/ethereum-1/0x05330300f829ad3fc8f33838bc88cfc4093bad53/) | RocketArbitrumPriceMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12759f8df234f8f2cddb3d2ed5604adf9accfc9f`](./contracts/ethereum-1/0x12759f8df234f8f2cddb3d2ed5604adf9accfc9f/) | RocketOvmRebasingPriceMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1029ac2be4e08516697093e2afec435057f3511`](./contracts/ethereum-1/0xb1029ac2be4e08516697093e2afec435057f3511/) | RocketPolygonPriceMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1062617d10ae99e09d941b60746182a87eab38f`](./contracts/ethereum-1/0xc1062617d10ae99e09d941b60746182a87eab38f/) | RocketSignerRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cf6cb29754aebf88af12089224429bd68b0b8c8`](./contracts/ethereum-1/0x6cf6cb29754aebf88af12089224429bd68b0b8c8/) | RocketZkSyncPriceMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=14
- Match method counts: extraction_exact=571

Zero-match audit list:

- [20738] consensys-audit-redstone.pdf

Fork inheritance lineage and inherited audits are included when available.
