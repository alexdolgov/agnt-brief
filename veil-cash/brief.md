# Agentic Audit Brief: veil-cash

## Project Overview

- Project: veil-cash (`veil-cash`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.770Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 70 unique implementations (70 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 70 project-authored contract(s) across 2 chain(s); 9 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 70; live-surface contracts included: 70 (70 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/69 (0.0%)
- Deployed-live implementations: 70 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/70
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BonusDistributor | unknown | base | n/a | [`0x509c60...99bb4d`](./contracts/base-8453/0x509c60b3ed252018869e1ab7ad96c058ed99bb4d/) | ⚠️ Unaudited |
| BonusTokenTracker | unknown | base | n/a | [`0x5c8e8c...f14fbd`](./contracts/base-8453/0x5c8e8c0e912f7aa39edc99ca305a7d3b03f14fbd/) | ⚠️ Unaudited |
| FundRecovery | unknown | ethereum | n/a | [`0x767a73...217d7f`](./contracts/ethereum-1/0x767a739d1a152639e9ea1d8c1bd55fdc5b217d7f/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | base | n/a | [`0x215642...3dbe25`](./contracts/base-8453/0x215642d6e82d9b9ee617efea4b717bfec83dbe25/) | ⚠️ Unaudited |
| MintableBonusTokens | unknown | base | n/a | [`0x0b0389...1e633a`](./contracts/base-8453/0x0b03897082023f1b0888f48fcaeb27e0de1e633a/) | ⚠️ Unaudited |
| QueueHelper | unknown | base | n/a | [`0x787361...d4cdd7`](./contracts/base-8453/0x78736193ac4431be0bed0634a0b49c1326d4cdd7/) | ⚠️ Unaudited |
| RevenueTokenTracker | unknown | base | n/a | [`0x8d983a...bb88c9`](./contracts/base-8453/0x8d983ac07af3509c40b79fbb46c84e612bbb88c9/) | ⚠️ Unaudited |
| RewardDistributorV2 | unknown | base | n/a | [`0x765aeb...b0f9cb`](./contracts/base-8453/0x765aeb67f8ef51ceb880e0a3ba204747a6b0f9cb/) | ⚠️ Unaudited |
| RewardsTracker | unknown | base | n/a | [`0x7b507a...0bc5a9`](./contracts/base-8453/0x7b507ab2517c8f2bd7b8d01b2f6cfe8a2e0bc5a9/) | ⚠️ Unaudited |
| RewardsTrackerv2 | unknown | base | n/a | [`0x2f3b7d...c12a5d`](./contracts/base-8453/0x2f3b7d596fe488816cd3d4a645662d0523c12a5d/) | ⚠️ Unaudited |
| sbfVEILTracker | unknown | base | n/a | [`0xa5209d...1667fb`](./contracts/base-8453/0xa5209d8fbe049e7f3dc1e534c3e13f54061667fb/) | ⚠️ Unaudited |
| sbVEILTracker | unknown | base | n/a | [`0xbebba9...7b2e2f`](./contracts/base-8453/0xbebba95d59ac087d49b69f028e3fb5b6b17b2e2f/) | ⚠️ Unaudited |
| StakingTokenTracker | unknown | base | n/a | [`0x3225b5...62bb86`](./contracts/base-8453/0x3225b5a7c842cc227c773636f5c574443c62bb86/) | ⚠️ Unaudited |
| sVEILTracker | unknown | base | n/a | [`0x826f0a...5aa23a`](./contracts/base-8453/0x826f0aa88b890d9315d5a8471dc91d9d665aa23a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x1bff1a...f8ce38`](./contracts/base-8453/0x1bff1add27f6546b25d57fae365c9cc1b3f8ce38/) | ⚠️ Unaudited |
| Veil_0005_ETH | unknown | base | n/a | [`0x6c206b...d2ed5f`](./contracts/base-8453/0x6c206b5389de4e5a23fdf13bf38104ce8dd2ed5f/) | ⚠️ Unaudited |
| Veil_001_ETH | unknown | base | n/a | [`0x844bb2...e345d2`](./contracts/base-8453/0x844bb2917dd363be5567f9587151c2aaa2e345d2/) | ⚠️ Unaudited |
| Veil_005_ETH | unknown | base | n/a | [`0xc53510...bea4f7`](./contracts/base-8453/0xc53510d6f535ba0943b1007f082af3410fbea4f7/) | ⚠️ Unaudited |
| Veil_01_ETH | unknown | base | n/a | [`0xd3560e...0b7d90`](./contracts/base-8453/0xd3560ef60dd06e27b699372c3da1b741c80b7d90/) | ⚠️ Unaudited |
| Veil_1_ETH | unknown | base | n/a | [`0x9ccdff...b6319b`](./contracts/base-8453/0x9ccdff5f69d93f4fcd6be81feb7f79649cb6319b/) | ⚠️ Unaudited |
| VEIL_200_USDC | unknown | base | n/a | [`0xa4db5e...81a9b3`](./contracts/base-8453/0xa4db5ec5d0a2ee01ccd8d6e2e53224cf4e81a9b3/) | ⚠️ Unaudited |
| VeilAirdrop | unknown | base | n/a | [`0x516b76...19175d`](./contracts/base-8453/0x516b76b3dd15f1a9d1cf68426817f22f0c19175d/) | ⚠️ Unaudited |
| VeilBTCPool | unknown | base | n/a | [`0x51a021...7680ba`](./contracts/base-8453/0x51a021da774b4bbb59b47f7cb4ccd631337680ba/) | ⚠️ Unaudited |
| VeilBTCQueue | unknown | base | n/a | [`0x267bae...dbd76a`](./contracts/base-8453/0x267bae8c15c04e1dff26e3f20ff4140854dbd76a/) | ⚠️ Unaudited |
| VeilDepositQueue | unknown | base | n/a | [`0x2797ee...f60bb6`](./contracts/base-8453/0x2797ee4bd08f97fad3015aa4c7183a28d2f60bb6/) | ⚠️ Unaudited |
| VEILDistributor | unknown | base | n/a | [`0x522e34...c75f28`](./contracts/base-8453/0x522e3478abb1762bcd79120c3d5d2e7685c75f28/) | ⚠️ Unaudited |
| VeilETHPool | unknown | base | n/a | [`0x293dcd...fdeee7`](./contracts/base-8453/0x293dcda114533ff8f477271c5ca517209ffdeee7/) | ⚠️ Unaudited |
| VeilETHQueue | unknown | base | n/a | [`0xddd116...bca126`](./contracts/base-8453/0xddd116030b31cef8b90f37b429e4abc3ecbca126/) | ⚠️ Unaudited |
| VeilETHQueueV2 | unknown | base | n/a | [`0x9d919c...45570a`](./contracts/base-8453/0x9d919cc8ad0a4d7e7d05ff6b505e44326945570a/) | ⚠️ Unaudited |
| VeilETHQueueV3 | unknown | base | n/a | [`0x1edf2b...942b13`](./contracts/base-8453/0x1edf2bdad15846240522304611aaa9732e942b13/) | ⚠️ Unaudited |
| VeilForwarderFactory | unknown | base | n/a | [`0x2848fd...cc8101`](./contracts/base-8453/0x2848fd62293a1ff3b4a897e9fcd0e5962dcc8101/) | ⚠️ Unaudited |
| VeilLimits | unknown | base | n/a | [`0x1541d8...42722f`](./contracts/base-8453/0x1541d8de07ab2856d279b647570a31840e42722f/) | ⚠️ Unaudited |
| VeilNotes | unknown | base | n/a | [`0xa26a2c...a4ae26`](./contracts/base-8453/0xa26a2c09034113dbfc801294373f2c5888a4ae26/) | ⚠️ Unaudited |
| VEILRewards | unknown | base | n/a | [`0x82555b...667460`](./contracts/base-8453/0x82555b968d74e3abb0af789ca732a3bd1a667460/) | ⚠️ Unaudited |
| VEILStakingRouter | unknown | base | n/a | [`0x7bc834...4252a0`](./contracts/base-8453/0x7bc834b3d64662eb2fff868f55d3a9994d4252a0/) | ⚠️ Unaudited |
| VEILToken | unknown | base | n/a | [`0x767a73...217d7f`](./contracts/base-8453/0x767a739d1a152639e9ea1d8c1bd55fdc5b217d7f/) | ⚠️ Unaudited |
| VeilUSDCPool | unknown | base | n/a | [`0x5c50d5...a91242`](./contracts/base-8453/0x5c50d58e49c59d112680c187de2bf989d2a91242/) | ⚠️ Unaudited |
| VeilUSDCQueue | unknown | base | n/a | [`0xdba0d7...7227c1`](./contracts/base-8453/0xdba0d77fcde83224244ac2737ed94587fd7227c1/) | ⚠️ Unaudited |
| VeilUSDCQueueV2 | unknown | base | n/a | [`0xa6cb61...fe894d`](./contracts/base-8453/0xa6cb6124cdcca5d9e52bc6856b196fe8e8fe894d/) | ⚠️ Unaudited |
| VeilUSDCQueueV3 | unknown | base | n/a | [`0x553024...8e6a9b`](./contracts/base-8453/0x5530241b24504bf05c9a22e95a1f5458888e6a9b/) | ⚠️ Unaudited |
| VeilValidatorV2 | unknown | base | n/a | [`0x54bac8...e3fb5d`](./contracts/base-8453/0x54bac863405196c9ab7473d364867d4d4ee3fb5d/) | ⚠️ Unaudited |
| VeilValidatorV3 | unknown | base | n/a | [`0xcc4776...1ffb12`](./contracts/base-8453/0xcc47760503e84a25e683cf9370fac24e381ffb12/) | ⚠️ Unaudited |
| VeilValidatorV4 | unknown | base | n/a | [`0x67acf2...54ed00`](./contracts/base-8453/0x67acf2c4fe3bbdf5a6e82a370646d4886a54ed00/) | ⚠️ Unaudited |
| VeilValidatorV5 | unknown | base | n/a | [`0xc411c6...562e04`](./contracts/base-8453/0xc411c6e5e9ffd660901b38e31051e5b7e3562e04/) | ⚠️ Unaudited |
| VeilValidatorV6 | unknown | base | n/a | [`0x7527f6...885f47`](./contracts/base-8453/0x7527f6df40316242e9f4df66fd24e1e4e4885f47/) | ⚠️ Unaudited |
| VeilValidatorV7 | unknown | base | n/a | [`0xe374e4...2a02d7`](./contracts/base-8453/0xe374e4a6f49e522faea131341831bb991b2a02d7/) | ⚠️ Unaudited |
| VeilValidatorV8 | unknown | base | n/a | [`0xa68865...9e2890`](./contracts/base-8453/0xa688653780ca4459f3377e5df110404f949e2890/) | ⚠️ Unaudited |
| VeilValidatorV9 | unknown | base | n/a | [`0x3a83c1...09942b`](./contracts/base-8453/0x3a83c1a2435e80e84283ecc6132d70c53e09942b/) | ⚠️ Unaudited |
| VeilVerifiedOnchain | unknown | base | n/a | [`0x0ac1b3...bd9b44`](./contracts/base-8453/0x0ac1b3eb2bee44a72fc7f96d1d555ad927bd9b44/) | ⚠️ Unaudited |
| VeilVerifiedOnchainV2 | unknown | base | n/a | [`0x295cf1...6b440a`](./contracts/base-8453/0x295cf193ae098edd7798038852fb434f926b440a/) | ⚠️ Unaudited |
| VeilVerifiedOnchainV3 | unknown | base | n/a | [`0x27630f...0a9577`](./contracts/base-8453/0x27630fca341eb0d1eb860540ab3cfd7fcb0a9577/) | ⚠️ Unaudited |
| VeilVerifiedOnchainV4 | unknown | base | n/a | [`0xb5b3c6...37f360`](./contracts/base-8453/0xb5b3c6192e1871c613e0c415108ba3934237f360/) | ⚠️ Unaudited |
| VeilWalletEntry | unknown | base | n/a | [`0x0b475c...e18a90`](./contracts/base-8453/0x0b475c3a6c4d443307e104ad8939f9d041e18a90/) | ⚠️ Unaudited |
| VeilWalletEntryV10 | unknown | base | n/a | [`0xb9210c...b36e6b`](./contracts/base-8453/0xb9210cd9a147b1b0d83a8edf59e6ecde57b36e6b/) | ⚠️ Unaudited |
| VeilWalletEntryV11 | unknown | base | n/a | [`0xc2535c...1c78a5`](./contracts/base-8453/0xc2535c547b64b997a4bd9202e1663deaf11c78a5/) | ⚠️ Unaudited |
| VeilWalletEntryV2 | unknown | base | n/a | [`0x06ff0d...836346`](./contracts/base-8453/0x06ff0dbb865e24ef309114b4cb8fd21804836346/) | ⚠️ Unaudited |
| VeilWalletEntryV3 | unknown | base | n/a | [`0x14a1c7...750f29`](./contracts/base-8453/0x14a1c72f0d52969a5a1d0ea03d5296d181750f29/) | ⚠️ Unaudited |
| VeilWalletEntryV4 | unknown | base | n/a | [`0x557339...75bd10`](./contracts/base-8453/0x55733971a7bb423914a0893885337b5ed875bd10/) | ⚠️ Unaudited |
| VeilWalletEntryV5 | unknown | base | n/a | [`0x002922...c31cbe`](./contracts/base-8453/0x0029225f7c9ad31c69ee1b21527ee990f5c31cbe/) | ⚠️ Unaudited |
| VeilWalletEntryV6 | unknown | base | n/a | [`0x43224e...1f5584`](./contracts/base-8453/0x43224e9420a6623a32345faee7bbc044041f5584/) | ⚠️ Unaudited |
| VeilWalletEntryV7 | unknown | base | n/a | [`0x273563...9448ad`](./contracts/base-8453/0x27356366ab5a94848faf03fc0e60f173f49448ad/) | ⚠️ Unaudited |
| VeilWalletEntryV8 | unknown | base | n/a | [`0x6db666...923bfa`](./contracts/base-8453/0x6db666f61602307a36fb56a595acdc492f923bfa/) | ⚠️ Unaudited |
| VeilWalletEntryV9 | unknown | base | n/a | [`0xedad92...dac12d`](./contracts/base-8453/0xedad9216ef675e3fe8aca2239fc33abf0bdac12d/) | ⚠️ Unaudited |
| Verifier | unknown | base | n/a | [`0x1e65c0...376cfd`](./contracts/base-8453/0x1e65c075989189e607ddafa30fa1a0001c376cfd/) | ⚠️ Unaudited |
| Verifier16 | unknown | base | n/a | [`0x4cdbff...ef3e16`](./contracts/base-8453/0x4cdbff594fc93f85aff3eeef94e31df6f3ef3e16/) | ⚠️ Unaudited |
| Verifier2 | unknown | base | n/a | [`0x5aa97d...4ce1b5`](./contracts/base-8453/0x5aa97d36886521aaaa20e20f41ffee21024ce1b5/) | ⚠️ Unaudited |
| WavesTracker | unknown | base | n/a | [`0xf0b9c3...bb8720`](./contracts/base-8453/0xf0b9c363286cf479dfa40c45e55d704c8abb8720/) | ⚠️ Unaudited |
| WavesTrackerv2 | unknown | base | n/a | [`0xdc5ecb...213fec`](./contracts/base-8453/0xdc5ecba2982939aadae114c0ded0d33ea4213fec/) | ⚠️ Unaudited |
| WavesTrackerv3 | unknown | base | n/a | [`0x0a2e82...dd6a17`](./contracts/base-8453/0x0a2e8260829b65de8ac4238502368dffdedd6a17/) | ⚠️ Unaudited |
| wETHDistributor | unknown | base | n/a | [`0x29295a...ff5dae`](./contracts/base-8453/0x29295a82ce3b3fac1a1b50ed5345e264dfff5dae/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x509c60...99bb4d`](./contracts/base-8453/0x509c60b3ed252018869e1ab7ad96c058ed99bb4d/) | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c8e8c...f14fbd`](./contracts/base-8453/0x5c8e8c0e912f7aa39edc99ca305a7d3b03f14fbd/) | BonusTokenTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x767a73...217d7f`](./contracts/ethereum-1/0x767a739d1a152639e9ea1d8c1bd55fdc5b217d7f/) | FundRecovery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x215642...3dbe25`](./contracts/base-8453/0x215642d6e82d9b9ee617efea4b717bfec83dbe25/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b0389...1e633a`](./contracts/base-8453/0x0b03897082023f1b0888f48fcaeb27e0de1e633a/) | MintableBonusTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x787361...d4cdd7`](./contracts/base-8453/0x78736193ac4431be0bed0634a0b49c1326d4cdd7/) | QueueHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8d983a...bb88c9`](./contracts/base-8453/0x8d983ac07af3509c40b79fbb46c84e612bbb88c9/) | RevenueTokenTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x765aeb...b0f9cb`](./contracts/base-8453/0x765aeb67f8ef51ceb880e0a3ba204747a6b0f9cb/) | RewardDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b507a...0bc5a9`](./contracts/base-8453/0x7b507ab2517c8f2bd7b8d01b2f6cfe8a2e0bc5a9/) | RewardsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f3b7d...c12a5d`](./contracts/base-8453/0x2f3b7d596fe488816cd3d4a645662d0523c12a5d/) | RewardsTrackerv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa5209d...1667fb`](./contracts/base-8453/0xa5209d8fbe049e7f3dc1e534c3e13f54061667fb/) | sbfVEILTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbebba9...7b2e2f`](./contracts/base-8453/0xbebba95d59ac087d49b69f028e3fb5b6b17b2e2f/) | sbVEILTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3225b5...62bb86`](./contracts/base-8453/0x3225b5a7c842cc227c773636f5c574443c62bb86/) | StakingTokenTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x826f0a...5aa23a`](./contracts/base-8453/0x826f0aa88b890d9315d5a8471dc91d9d665aa23a/) | sVEILTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6c206b...d2ed5f`](./contracts/base-8453/0x6c206b5389de4e5a23fdf13bf38104ce8dd2ed5f/) | Veil_0005_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x844bb2...e345d2`](./contracts/base-8453/0x844bb2917dd363be5567f9587151c2aaa2e345d2/) | Veil_001_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc53510...bea4f7`](./contracts/base-8453/0xc53510d6f535ba0943b1007f082af3410fbea4f7/) | Veil_005_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3560e...0b7d90`](./contracts/base-8453/0xd3560ef60dd06e27b699372c3da1b741c80b7d90/) | Veil_01_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9ccdff...b6319b`](./contracts/base-8453/0x9ccdff5f69d93f4fcd6be81feb7f79649cb6319b/) | Veil_1_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa4db5e...81a9b3`](./contracts/base-8453/0xa4db5ec5d0a2ee01ccd8d6e2e53224cf4e81a9b3/) | VEIL_200_USDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x516b76...19175d`](./contracts/base-8453/0x516b76b3dd15f1a9d1cf68426817f22f0c19175d/) | VeilAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x51a021...7680ba`](./contracts/base-8453/0x51a021da774b4bbb59b47f7cb4ccd631337680ba/) | VeilBTCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x267bae...dbd76a`](./contracts/base-8453/0x267bae8c15c04e1dff26e3f20ff4140854dbd76a/) | VeilBTCQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2797ee...f60bb6`](./contracts/base-8453/0x2797ee4bd08f97fad3015aa4c7183a28d2f60bb6/) | VeilDepositQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x522e34...c75f28`](./contracts/base-8453/0x522e3478abb1762bcd79120c3d5d2e7685c75f28/) | VEILDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x293dcd...fdeee7`](./contracts/base-8453/0x293dcda114533ff8f477271c5ca517209ffdeee7/) | VeilETHPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xddd116...bca126`](./contracts/base-8453/0xddd116030b31cef8b90f37b429e4abc3ecbca126/) | VeilETHQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9d919c...45570a`](./contracts/base-8453/0x9d919cc8ad0a4d7e7d05ff6b505e44326945570a/) | VeilETHQueueV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1edf2b...942b13`](./contracts/base-8453/0x1edf2bdad15846240522304611aaa9732e942b13/) | VeilETHQueueV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2848fd...cc8101`](./contracts/base-8453/0x2848fd62293a1ff3b4a897e9fcd0e5962dcc8101/) | VeilForwarderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1541d8...42722f`](./contracts/base-8453/0x1541d8de07ab2856d279b647570a31840e42722f/) | VeilLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa26a2c...a4ae26`](./contracts/base-8453/0xa26a2c09034113dbfc801294373f2c5888a4ae26/) | VeilNotes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x82555b...667460`](./contracts/base-8453/0x82555b968d74e3abb0af789ca732a3bd1a667460/) | VEILRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bc834...4252a0`](./contracts/base-8453/0x7bc834b3d64662eb2fff868f55d3a9994d4252a0/) | VEILStakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x767a73...217d7f`](./contracts/base-8453/0x767a739d1a152639e9ea1d8c1bd55fdc5b217d7f/) | VEILToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c50d5...a91242`](./contracts/base-8453/0x5c50d58e49c59d112680c187de2bf989d2a91242/) | VeilUSDCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdba0d7...7227c1`](./contracts/base-8453/0xdba0d77fcde83224244ac2737ed94587fd7227c1/) | VeilUSDCQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa6cb61...fe894d`](./contracts/base-8453/0xa6cb6124cdcca5d9e52bc6856b196fe8e8fe894d/) | VeilUSDCQueueV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553024...8e6a9b`](./contracts/base-8453/0x5530241b24504bf05c9a22e95a1f5458888e6a9b/) | VeilUSDCQueueV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54bac8...e3fb5d`](./contracts/base-8453/0x54bac863405196c9ab7473d364867d4d4ee3fb5d/) | VeilValidatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcc4776...1ffb12`](./contracts/base-8453/0xcc47760503e84a25e683cf9370fac24e381ffb12/) | VeilValidatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x67acf2...54ed00`](./contracts/base-8453/0x67acf2c4fe3bbdf5a6e82a370646d4886a54ed00/) | VeilValidatorV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc411c6...562e04`](./contracts/base-8453/0xc411c6e5e9ffd660901b38e31051e5b7e3562e04/) | VeilValidatorV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7527f6...885f47`](./contracts/base-8453/0x7527f6df40316242e9f4df66fd24e1e4e4885f47/) | VeilValidatorV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe374e4...2a02d7`](./contracts/base-8453/0xe374e4a6f49e522faea131341831bb991b2a02d7/) | VeilValidatorV7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa68865...9e2890`](./contracts/base-8453/0xa688653780ca4459f3377e5df110404f949e2890/) | VeilValidatorV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a83c1...09942b`](./contracts/base-8453/0x3a83c1a2435e80e84283ecc6132d70c53e09942b/) | VeilValidatorV9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ac1b3...bd9b44`](./contracts/base-8453/0x0ac1b3eb2bee44a72fc7f96d1d555ad927bd9b44/) | VeilVerifiedOnchain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x295cf1...6b440a`](./contracts/base-8453/0x295cf193ae098edd7798038852fb434f926b440a/) | VeilVerifiedOnchainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x27630f...0a9577`](./contracts/base-8453/0x27630fca341eb0d1eb860540ab3cfd7fcb0a9577/) | VeilVerifiedOnchainV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb5b3c6...37f360`](./contracts/base-8453/0xb5b3c6192e1871c613e0c415108ba3934237f360/) | VeilVerifiedOnchainV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b475c...e18a90`](./contracts/base-8453/0x0b475c3a6c4d443307e104ad8939f9d041e18a90/) | VeilWalletEntry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb9210c...b36e6b`](./contracts/base-8453/0xb9210cd9a147b1b0d83a8edf59e6ecde57b36e6b/) | VeilWalletEntryV10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc2535c...1c78a5`](./contracts/base-8453/0xc2535c547b64b997a4bd9202e1663deaf11c78a5/) | VeilWalletEntryV11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ff0d...836346`](./contracts/base-8453/0x06ff0dbb865e24ef309114b4cb8fd21804836346/) | VeilWalletEntryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14a1c7...750f29`](./contracts/base-8453/0x14a1c72f0d52969a5a1d0ea03d5296d181750f29/) | VeilWalletEntryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x557339...75bd10`](./contracts/base-8453/0x55733971a7bb423914a0893885337b5ed875bd10/) | VeilWalletEntryV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x002922...c31cbe`](./contracts/base-8453/0x0029225f7c9ad31c69ee1b21527ee990f5c31cbe/) | VeilWalletEntryV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x43224e...1f5584`](./contracts/base-8453/0x43224e9420a6623a32345faee7bbc044041f5584/) | VeilWalletEntryV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x273563...9448ad`](./contracts/base-8453/0x27356366ab5a94848faf03fc0e60f173f49448ad/) | VeilWalletEntryV7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6db666...923bfa`](./contracts/base-8453/0x6db666f61602307a36fb56a595acdc492f923bfa/) | VeilWalletEntryV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xedad92...dac12d`](./contracts/base-8453/0xedad9216ef675e3fe8aca2239fc33abf0bdac12d/) | VeilWalletEntryV9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e65c0...376cfd`](./contracts/base-8453/0x1e65c075989189e607ddafa30fa1a0001c376cfd/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4cdbff...ef3e16`](./contracts/base-8453/0x4cdbff594fc93f85aff3eeef94e31df6f3ef3e16/) | Verifier16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5aa97d...4ce1b5`](./contracts/base-8453/0x5aa97d36886521aaaa20e20f41ffee21024ce1b5/) | Verifier2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf0b9c3...bb8720`](./contracts/base-8453/0xf0b9c363286cf479dfa40c45e55d704c8abb8720/) | WavesTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdc5ecb...213fec`](./contracts/base-8453/0xdc5ecba2982939aadae114c0ded0d33ea4213fec/) | WavesTrackerv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a2e82...dd6a17`](./contracts/base-8453/0x0a2e8260829b65de8ac4238502368dffdedd6a17/) | WavesTrackerv3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29295a...ff5dae`](./contracts/base-8453/0x29295a82ce3b3fac1a1b50ed5345e264dfff5dae/) | wETHDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 69 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
