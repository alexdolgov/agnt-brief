# Agentic Audit Brief: Rocket Pool

## Project Overview

- Project: Rocket Pool (`rocket-pool`)
- Website: [https://rocketpool.net](https://rocketpool.net)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:47.545Z
- Pipeline run: v2-2026-07-02-1ba3fd
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

- Coverage of deployed-live implementations: 0/83 (0.0%)
- Deployed-live implementations: 83 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/83
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 83
- Raw deployments: 83
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/rocketpool/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 4 stale, 9 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressQueueStorage | unknown | ethereum | n/a | [`0x44e319...e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | n/a | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ⚠️ Unaudited |
| BeaconStateVerifier | unknown | ethereum | n/a | [`0xe9a114...2d8469`](./contracts/ethereum-1/0xe9a114c50f26001443b91079ab5573a90d2d8469/) | ⚠️ Unaudited |
| LinkedListStorage | unknown | ethereum | n/a | [`0x17e506...fbecd9`](./contracts/ethereum-1/0x17e5063ab2617445e2a249a88409d02f87fbecd9/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0x0aab73...1a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | ⚠️ Unaudited |
| RocketArbitrumPriceMessenger | unknown | ethereum | n/a | [`0x053303...3bad53`](./contracts/ethereum-1/0x05330300f829ad3fc8f33838bc88cfc4093bad53/) | ⚠️ Unaudited |
| RocketAuctionManager | unknown | ethereum | n/a | [`0x1a2f00...49ecce`](./contracts/ethereum-1/0x1a2f00d187c9388fda3bf2dc46a6b4740849ecce/) | ⚠️ Unaudited |
| RocketClaimDAO | unknown | ethereum | n/a | [`0x428f0d...becd39`](./contracts/ethereum-1/0x428f0de7a6bf5ecca29e1c5e8c407b21e8becd39/) | ⚠️ Unaudited |
| RocketClaimNode | unknown | ethereum | n/a | [`0x899336...aef548`](./contracts/ethereum-1/0x899336a2a86053705e65db61f52c686dcfaef548/) | ⚠️ Unaudited |
| RocketClaimTrustedNode | unknown | ethereum | n/a | [`0x6af730...9315e8`](./contracts/ethereum-1/0x6af730deb0463b432433318dc8002c0a4e9315e8/) | ⚠️ Unaudited |
| RocketDAONodeTrusted | unknown | ethereum | n/a | [`0xb8e783...152cc9`](./contracts/ethereum-1/0xb8e783882b11ff4f6cef3c501ea0f4b960152cc9/) | ⚠️ Unaudited |
| RocketDAONodeTrustedActions | unknown | ethereum | n/a | [`0x029d94...596aeb`](./contracts/ethereum-1/0x029d946f28f93399a5b0d09c879fc8c94e596aeb/) | ⚠️ Unaudited |
| RocketDAONodeTrustedProposals | unknown | ethereum | n/a | [`0xb0ec3f...2f05d5`](./contracts/ethereum-1/0xb0ec3f657ef43a615ab480fa8d5a53bf2c2f05d5/) | ⚠️ Unaudited |
| RocketDAONodeTrustedSettingsMembers | unknown | ethereum | n/a | [`0xda1ab3...3f0d01`](./contracts/ethereum-1/0xda1ab39e62e0a5297af44c7064e501b0613f0d01/) | ⚠️ Unaudited |
| RocketDAONodeTrustedSettingsMinipool | unknown | ethereum | n/a | [`0xa29b42...fd9095`](./contracts/ethereum-1/0xa29b42bbd19b76ab092bcc3c20370887bbfd9095/) | ⚠️ Unaudited |
| RocketDAONodeTrustedSettingsProposals | unknown | ethereum | n/a | [`0xad038f...d4d2b0`](./contracts/ethereum-1/0xad038f8994a6bd51c8a72d3721ced83401d4d2b0/) | ⚠️ Unaudited |
| RocketDAONodeTrustedSettingsRewards | unknown | ethereum | n/a | [`0x7322c2...c264f1`](./contracts/ethereum-1/0x7322c24752f79c05ffd1e2a6fcb97020c1c264f1/) | ⚠️ Unaudited |
| RocketDAONodeTrustedUpgrade | unknown | ethereum | n/a | [`0x9290aa...e1ad10`](./contracts/ethereum-1/0x9290aa076a2f1418a4e414e3d83ae03ca8e1ad10/) | ⚠️ Unaudited |
| RocketDAOProposal | unknown | ethereum | n/a | [`0x1e94e6...ddf102`](./contracts/ethereum-1/0x1e94e6131ba5b4f193d2a1067517136c52ddf102/) | ⚠️ Unaudited |
| RocketDAOProtocol | unknown | ethereum | n/a | [`0x0429cd...7df0e1`](./contracts/ethereum-1/0x0429cdd8ceace24d4dc2b97ce22a780a407df0e1/) | ⚠️ Unaudited |
| RocketDAOProtocolActions | unknown | ethereum | n/a | [`0xb50d51...f9e08d`](./contracts/ethereum-1/0xb50d513de40ee70a662c39207b4382a693f9e08d/) | ⚠️ Unaudited |
| RocketDAOProtocolProposal | unknown | ethereum | n/a | [`0x2d627a...300b25`](./contracts/ethereum-1/0x2d627a50dc1c4eda73e42858e8460b0ecf300b25/) | ⚠️ Unaudited |
| RocketDAOProtocolProposals | unknown | ethereum | n/a | [`0x2dbd04...915c16`](./contracts/ethereum-1/0x2dbd041360c86b35a9ea05d3ec3fcceadb915c16/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsAuction | unknown | ethereum | n/a | [`0x364f98...8c0d18`](./contracts/ethereum-1/0x364f989a3c9a1f66cb51b9043680974ea08c0d18/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsDeposit | unknown | ethereum | n/a | [`0x227be8...c5c365`](./contracts/ethereum-1/0x227be8dd01df8ad9bed0178e4f8cec2996c5c365/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsInflation | unknown | ethereum | n/a | [`0x1d4aae...ddd735`](./contracts/ethereum-1/0x1d4aaeae7c8b75a8e5ab589a84516853dbddd735/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsMegapool | unknown | ethereum | n/a | [`0x40628f...0a2dce`](./contracts/ethereum-1/0x40628faac22383327b9f7bbc86cd1857050a2dce/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsMinipool | unknown | ethereum | n/a | [`0x030aea...4c63da`](./contracts/ethereum-1/0x030aea8378cc131674d6d655ca26b5a3ef4c63da/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsNetwork | unknown | ethereum | n/a | [`0x320f3a...ba0c27`](./contracts/ethereum-1/0x320f3aab9405e38b955178bbe75c477decba0c27/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsNode | unknown | ethereum | n/a | [`0x0a3b09...0b9ab2`](./contracts/ethereum-1/0x0a3b0966115fa6588629b63bcf788f3adb0b9ab2/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsProposals | unknown | ethereum | n/a | [`0x59cd10...12c034`](./contracts/ethereum-1/0x59cd103df1be2ebd80d45c54a3cde8d4f812c034/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsRewards | unknown | ethereum | n/a | [`0x885761...fc4124`](./contracts/ethereum-1/0x8857610ba0a7cafd4dbe1120bff03e9c74fc4124/) | ⚠️ Unaudited |
| RocketDAOProtocolSettingsSecurity | unknown | ethereum | n/a | [`0x1ec364...2cbe29`](./contracts/ethereum-1/0x1ec364cdd9697f56b8cb17a745b98c2b862cbe29/) | ⚠️ Unaudited |
| RocketDAOProtocolVerifier | unknown | ethereum | n/a | [`0x25f41c...472a33`](./contracts/ethereum-1/0x25f41cd11d95dbec0919a0440343698cf1472a33/) | ⚠️ Unaudited |
| RocketDAOSecurity | unknown | ethereum | n/a | [`0x84ae6d...89ad37`](./contracts/ethereum-1/0x84ae6d61df5c6ba7196b5c76bcb112b8a689ad37/) | ⚠️ Unaudited |
| RocketDAOSecurityActions | unknown | ethereum | n/a | [`0xeaa442...9eb59a`](./contracts/ethereum-1/0xeaa442df4bb5394c66c8024efb4979bec89eb59a/) | ⚠️ Unaudited |
| RocketDAOSecurityProposals | unknown | ethereum | n/a | [`0x334b9b...2a0c4e`](./contracts/ethereum-1/0x334b9b1a6f9d7531efb13746482ff40f1c2a0c4e/) | ⚠️ Unaudited |
| RocketDAOSecurityUpgrade | unknown | ethereum | n/a | [`0x950baf...9b5dc4`](./contracts/ethereum-1/0x950baf0358164339114914169bf16754789b5dc4/) | ⚠️ Unaudited |
| RocketDepositPool | unknown | ethereum | n/a | [`0x2cac91...cfbfb4`](./contracts/ethereum-1/0x2cac916b2a963bf162f076c0a8a4a8200bcfbfb4/) | ⚠️ Unaudited |
| RocketHotfixNodeFee | unknown | ethereum | n/a | [`0x4640b8...9eaa09`](./contracts/ethereum-1/0x4640b8610f3efdeb8d44834adb3228d0e79eaa09/) | ⚠️ Unaudited |
| RocketMegapoolDelegate | unknown | ethereum | n/a | [`0x0f160f...a8aaa4`](./contracts/ethereum-1/0x0f160f97b274c6152a3d5fa729a4547816a8aaa4/) | ⚠️ Unaudited |
| RocketMegapoolFactory | unknown | ethereum | n/a | [`0x6c8ab3...f77a06`](./contracts/ethereum-1/0x6c8ab3fc244497a932faf9b3d9b39f00e5f77a06/) | ⚠️ Unaudited |
| RocketMegapoolManager | unknown | ethereum | n/a | [`0x6dbf20...19af57`](./contracts/ethereum-1/0x6dbf205c6fd170540a2f9e3e63d93aadfd19af57/) | ⚠️ Unaudited |
| RocketMegapoolPenalties | unknown | ethereum | n/a | [`0xa2afc3...30e6ab`](./contracts/ethereum-1/0xa2afc3c2d8ea4ebdbe925cade17c29517630e6ab/) | ⚠️ Unaudited |
| RocketMegapoolProxy | unknown | ethereum | n/a | [`0x1b389d...f9cd51`](./contracts/ethereum-1/0x1b389d76a04d01026c5f5b0a125d4ccf26f9cd51/) | ⚠️ Unaudited |
| RocketMerkleDistributorMainnet | unknown | ethereum | n/a | [`0x5ce71e...0dbd4b`](./contracts/ethereum-1/0x5ce71e603b138f7e65029cc1918c0566ed0dbd4b/) | ⚠️ Unaudited |
| RocketMinipoolBase | unknown | ethereum | n/a | [`0x560656...3eff33`](./contracts/ethereum-1/0x560656c8947564363497e9c78a8bdeff8d3eff33/) | ⚠️ Unaudited |
| RocketMinipoolBondReducer | unknown | ethereum | n/a | [`0xde8ab5...7be591`](./contracts/ethereum-1/0xde8ab526b19fca2d5a57c4a78b698041717be591/) | ⚠️ Unaudited |
| RocketMinipoolDelegate | unknown | ethereum | n/a | [`0x03d304...343bb0`](./contracts/ethereum-1/0x03d30466d199ef540823fe2a22cae2e3b9343bb0/) | ⚠️ Unaudited |
| RocketMinipoolFactory | unknown | ethereum | n/a | [`0x54705f...cf5788`](./contracts/ethereum-1/0x54705f80d7c51fcffd9c659ce3f3c9a7dccf5788/) | ⚠️ Unaudited |
| RocketMinipoolManager | unknown | ethereum | n/a | [`0x09fbce...da501e`](./contracts/ethereum-1/0x09fbce43e4021a3f69c4599ff00362b83eda501e/) | ⚠️ Unaudited |
| RocketMinipoolPenalty | unknown | ethereum | n/a | [`0xe64ac4...a06ba6`](./contracts/ethereum-1/0xe64ac47b6e2fecfcdea35147fe61af9894a06ba6/) | ⚠️ Unaudited |
| RocketMinipoolQueue | unknown | ethereum | n/a | [`0x5870da...c9c19e`](./contracts/ethereum-1/0x5870da524635d1310dc0e6f256ce331012c9c19e/) | ⚠️ Unaudited |
| RocketMinipoolStatus | unknown | ethereum | n/a | [`0xa52451...f8a6a5`](./contracts/ethereum-1/0xa52451b9d25eef02be42b3a8161a18f947f8a6a5/) | ⚠️ Unaudited |
| RocketNetworkBalances | unknown | ethereum | n/a | [`0x07fcab...cba2f4`](./contracts/ethereum-1/0x07fcabcbe4ff0d80c2b1eb42855c0131b6cba2f4/) | ⚠️ Unaudited |
| RocketNetworkFees | unknown | ethereum | n/a | [`0x0a882c...4d694b`](./contracts/ethereum-1/0x0a882c9059cc2e97c860b80018c27145884d694b/) | ⚠️ Unaudited |
| RocketNetworkPenalties | unknown | ethereum | n/a | [`0x9294fc...77e2f8`](./contracts/ethereum-1/0x9294fc6f03c64cc217f5be8697ea3ed2de77e2f8/) | ⚠️ Unaudited |
| RocketNetworkPrices | unknown | ethereum | n/a | [`0x25e54b...48e382`](./contracts/ethereum-1/0x25e54bf48369b8fb25bb79d3a3ff7f3ba448e382/) | ⚠️ Unaudited |
| RocketNetworkRevenues | unknown | ethereum | n/a | [`0x9d9708...260842`](./contracts/ethereum-1/0x9d9708da8e0200dd8dd9ad09e0aaf184ad260842/) | ⚠️ Unaudited |
| RocketNetworkSnapshots | unknown | ethereum | n/a | [`0x760335...f1d35c`](./contracts/ethereum-1/0x7603352f1c4752ac07aac94e48632b65fdf1d35c/) | ⚠️ Unaudited |
| RocketNetworkSnapshotsTime | unknown | ethereum | n/a | [`0x569f5b...18a891`](./contracts/ethereum-1/0x569f5b3024054ab4049a50df223a747afe18a891/) | ⚠️ Unaudited |
| RocketNetworkVoting | unknown | ethereum | n/a | [`0x77cf0f...a13daa`](./contracts/ethereum-1/0x77cf0f32bdd06242465eb3318a81196194a13daa/) | ⚠️ Unaudited |
| RocketNodeDeposit | unknown | ethereum | n/a | [`0x191c79...5b5b1a`](./contracts/ethereum-1/0x191c794ae561c09179dec45cc8a8ab93675b5b1a/) | ⚠️ Unaudited |
| RocketNodeDistributorDelegate | unknown | ethereum | n/a | [`0x32778d...9f472b`](./contracts/ethereum-1/0x32778d6bf5b93b89177d328556eeeb35c09f472b/) | ⚠️ Unaudited |
| RocketNodeDistributorFactory | unknown | ethereum | n/a | [`0xe22801...b4037c`](./contracts/ethereum-1/0xe228017f77b3e0785e794e4c0a8a6b935bb4037c/) | ⚠️ Unaudited |
| RocketNodeManager | unknown | ethereum | n/a | [`0x22bbdd...cbb958`](./contracts/ethereum-1/0x22bbddbe0a1e790741cd385c67ff9aa5fbcbb958/) | ⚠️ Unaudited |
| RocketNodeStaking | unknown | ethereum | n/a | [`0x0d8d8f...ab82ec`](./contracts/ethereum-1/0x0d8d8f8541b12a0e1194b7cc4b6d954b90ab82ec/) | ⚠️ Unaudited |
| RocketOvmRebasingPriceMessenger | unknown | ethereum | n/a | [`0x12759f...ccfc9f`](./contracts/ethereum-1/0x12759f8df234f8f2cddb3d2ed5604adf9accfc9f/) | ⚠️ Unaudited |
| RocketPolygonPriceMessenger | unknown | ethereum | n/a | [`0xb1029a...7f3511`](./contracts/ethereum-1/0xb1029ac2be4e08516697093e2afec435057f3511/) | ⚠️ Unaudited |
| RocketRewardsPool | unknown | ethereum | n/a | [`0x594fb7...7dd4e1`](./contracts/ethereum-1/0x594fb75d3dc2dfa0150ad03f99f97817747dd4e1/) | ⚠️ Unaudited |
| RocketSignerRegistry | unknown | ethereum | n/a | [`0xc10626...eab38f`](./contracts/ethereum-1/0xc1062617d10ae99e09d941b60746182a87eab38f/) | ⚠️ Unaudited |
| RocketSmoothingPool | unknown | ethereum | n/a | [`0xd4e96e...7605b7`](./contracts/ethereum-1/0xd4e96ef8eee8678dbff4d535e033ed1a4f7605b7/) | ⚠️ Unaudited |
| RocketStorage | unknown | ethereum | n/a | [`0x1d8f8f...e0fa46`](./contracts/ethereum-1/0x1d8f8f00cfa6758d7be78336684788fb0ee0fa46/) | ⚠️ Unaudited |
| RocketTokenRETH | unknown | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| RocketTokenRPL | unknown | ethereum | n/a | [`0xd33526...21a51f`](./contracts/ethereum-1/0xd33526068d116ce69f19a9ee46f0bd304f21a51f/) | ⚠️ Unaudited |
| RocketUpgradeOneDotFour | unknown | ethereum | n/a | [`0x5b3b5c...16c8ba`](./contracts/ethereum-1/0x5b3b5c76391662e56d0ff72f31b89c409316c8ba/) | ⚠️ Unaudited |
| RocketUpgradeOneDotFourDissolveHotfix | unknown | ethereum | n/a | [`0x91003a...161d22`](./contracts/ethereum-1/0x91003ad0e47d3b963467a22f2a42f92fdc161d22/) | ⚠️ Unaudited |
| RocketUpgradeOneDotOne | unknown | ethereum | n/a | [`0xc680a2...77c8fe`](./contracts/ethereum-1/0xc680a22b4f03977f69b51a09f3dbe922eb77c8fe/) | ⚠️ Unaudited |
| RocketUpgradeOneDotThree | unknown | ethereum | n/a | [`0x5dc690...9fb73c`](./contracts/ethereum-1/0x5dc69083b68cdb5c9ca492a0a5ec581e529fb73c/) | ⚠️ Unaudited |
| RocketUpgradeOneDotThreeDotOne | unknown | ethereum | n/a | [`0xc2c814...90f9ed`](./contracts/ethereum-1/0xc2c81454427b1e53fdf5d3b45561e3c18f90f9ed/) | ⚠️ Unaudited |
| RocketUpgradeOneDotTwo | unknown | ethereum | n/a | [`0x9a0b5d...97984a`](./contracts/ethereum-1/0x9a0b5d3101d111ea0edd573d45ef2208cc97984a/) | ⚠️ Unaudited |
| RocketVault | unknown | ethereum | n/a | [`0x3bdc69...b469d6`](./contracts/ethereum-1/0x3bdc69c4e5e13e52a65f5583c23efb9636b469d6/) | ⚠️ Unaudited |
| RocketZkSyncPriceMessenger | unknown | ethereum | n/a | [`0x6cf6cb...b0b8c8`](./contracts/ethereum-1/0x6cf6cb29754aebf88af12089224429bd68b0b8c8/) | ⚠️ Unaudited |

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
| [sigma-prime-audit.pdf (also discovered via alternate URL)](https://rocketpool.net/files/sigma-prime-audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2021/04/rocketpool](https://diligence.security/audits/2021/04/rocketpool) | Consensys Diligence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RocketPool.pdf](https://github.com/trailofbits/publications/blob/master/reviews/RocketPool.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [immunefi.com/bug-bounty/rocketpool/information](https://immunefi.com/bug-bounty/rocketpool/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [sigma-prime-fix-review.pdf](https://rocketpool.net/files/audits/sigma-prime-fix-review.pdf) | Immunefi | Contest | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [consensys-audit-redstone.pdf](https://rocketpool.net/files/audits/consensys-audit-redstone.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [sigma-prime-audit-redstone.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-redstone.pdf) | Immunefi | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [sigma-prime-audit-atlas.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-atlas.pdf) | Immunefi | Contest | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [consensys-audit-atlas.pdf](https://rocketpool.net/files/audits/consensys-audit-atlas.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2023/12/rocket-pool-houston](https://diligence.security/audits/2023/12/rocket-pool-houston) | Consensys Diligence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sigma-prime-audit-houston.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-houston.pdf) | Immunefi | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [chainsafe-audit-houston.pdf](https://rocketpool.net/files/audits/chainsafe-audit-houston.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [sigma-prime-houston-hotfix-review.pdf](https://rocketpool.net/files/audits/sigma-prime-houston-hotfix-review.pdf) | Immunefi | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [cantina-audit-saturn-1.pdf](https://rocketpool.net/files/audits/cantina-audit-saturn-1.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bailsec-audit-saturn-1.pdf](https://rocketpool.net/files/audits/bailsec-audit-saturn-1.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [sigma-prime-audit-saturn-1.pdf](https://rocketpool.net/files/audits/sigma-prime-audit-saturn-1.pdf) | Immunefi | Contest | 2026-02 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20732] sigma-prime-audit.pdf
- [20733] diligence.security/audits/2021/04/rocketpool
- [20734] RocketPool.pdf
- [20737] sigma-prime-fix-review.pdf
- [20738] consensys-audit-redstone.pdf
- [20739] sigma-prime-audit-redstone.pdf
- [20740] sigma-prime-audit-atlas.pdf
- [20741] consensys-audit-atlas.pdf
- [20742] diligence.security/audits/2023/12/rocket-pool-houston
- [20743] sigma-prime-audit-houston.pdf
- [20744] chainsafe-audit-houston.pdf
- [20745] sigma-prime-houston-hotfix-review.pdf
- [20746] cantina-audit-saturn-1.pdf
- [20747] bailsec-audit-saturn-1.pdf
- [20748] sigma-prime-audit-saturn-1.pdf

Fork inheritance lineage and inherited audits are included when available.
