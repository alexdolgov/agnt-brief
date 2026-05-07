# Agentic Brief: dForce

## Project Overview

- **Project:** dForce (dforce)
- **Website:** dforce.network
- **Category:** Lending
- **Chains (topography):** 1, 10, 56, 137, 42161, 43114
- **Chains (DeFiLlama):** 1, 10, 56, 137, 2222, 8453, 42161, 43114
- **TVL:** $44,680,979 (2 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2024-12-21
- **Audit history:** 11 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

dForce has 202 deployed contract rows in current topography. This brief renders the 191 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2024-12-21 (500 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 191 contracts across 6 chains. 22 have TP audit coverage (11.5%); 169 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AggregatorProxy | proxy | proxy | unmatched | [0x5a8b3b...3b01](https://etherscan.io/address/0x5a8b3b8b381e735042cc6e7cd925268f9a593b01) |
| Controller | controller | controller | audited (TP) | [0x91b373...2cbd](https://etherscan.io/address/0x91b373b20d39a11406af6d4adc2b979a6e572cbd) |
| Controller | controller | controller | audited (TP) | [0xd5b837...1efa](https://etherscan.io/address/0xd5b837a41a0d664ec28aa55b69b352944f741efa) |
| ControllerStock | controller | controller | unmatched | [0xca8b83...9d2b](https://etherscan.io/address/0xca8b839f9662b15710b4f25e0a11710aae799d2b) |
| CrossChainRouter | router | router | unmatched | [0x841714...2390](https://etherscan.io/address/0x8417148b47ccb1e7c7249780e18cf5967b342390) |
| CurveSupport | core | core | unmatched | [0x299044...0de1](https://etherscan.io/address/0x29904495f0d1240dea10a9183559586d44d60de1) |
| DelayedTransferVault | vault_pool | vault_pool | likely in scope | [0x2001bd...1411](https://etherscan.io/address/0x2001bd67c56f75ddcca6ec9a7960abf8859e1411) |
| DelayedTransferVault | vault_pool | vault_pool | likely in scope | [0x61afb7...cea0](https://etherscan.io/address/0x61afb763bc265bd372e8af8dac00196c9a5ecea0) |
| DelayedTransferVault | vault_pool | vault_pool | likely in scope | [0x898a18...a18a](https://etherscan.io/address/0x898a18bae401b01198a7a2c1dc72b26fa33ca18a) |
| DelayedTransferVault | vault_pool | vault_pool | likely in scope | [0xa45d7f...4d19](https://etherscan.io/address/0xa45d7f2e3152bc5e207a13ebbf6cd92208bf4d19) |
| DToken | token | token | audited (TP) | [0xdd23a5...c443](https://etherscan.io/address/0xdd23a50cf7503655283089b78c9369519de1c443) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x02285a...9224](https://etherscan.io/address/0x02285acaafeb533e03a7306c55ec031297df9224) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x109917...1f72](https://etherscan.io/address/0x109917f7c3b6174096f9e1744e41ac073b3e1f72) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x16c9cf...3179](https://etherscan.io/address/0x16c9cf62d8dac4a38fb50ae5fa5d51e9170f3179) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x868277...9fc8](https://etherscan.io/address/0x868277d475e0e475e38ec5cda2d9c83b5e1d9fc8) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x145c79...f8fd](https://etherscan.io/address/0x145c79a1f0e1ad5ad7fc8d99548a02a07b24f8fd) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xc9d551...357a](https://etherscan.io/address/0xc9d551814c7b2867937735b26d6db96d8cbf357a) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xf172b5...5057](https://etherscan.io/address/0xf172b5575f4724ad0966017b2134ce893aea5057) |
| iMSD | core | core | unmatched | [0xeb2529...20ef](https://etherscan.io/address/0xeb25293808c97f1def991f15f756e00d595520ef) |
| iMSDMiniPool | vault_pool | vault_pool | likely in scope | [0xf5805a...ac29](https://etherscan.io/address/0xf5805a48db12967a84b55d118f6cdd7c2564ac29) |
| iMUSX | core | core | unmatched | [0xb88dc5...9897](https://etherscan.io/address/0xb88dc5aae0c26903230ebc9a6fbab8d511af9897) |
| iToken | token | token | audited (TP) | [0x1a5de7...5d25](https://etherscan.io/address/0x1a5de76ef2261fc6cb281f8a447bef4e48ef5d25) |
| iToken | token | token | audited (TP) | [0xfc47d0...390f](https://etherscan.io/address/0xfc47d0063de06ba21dfebf9d6cd6e337150e390f) |
| iTokenV2BLP | token | token | likely in scope | [0x792254...bcf9](https://etherscan.io/address/0x792254876bdd3eae31bd56a6dc71fa18f778bcf9) |
| L1Escrow | core | core | unmatched | [0x5f7ca1...5c35](https://etherscan.io/address/0x5f7ca155cd53f552e60f8d1b088d6e4ca5885c35) |
| L1Escrow | core | core | unmatched | [0xa2c399...6059](https://etherscan.io/address/0xa2c3996a9dbafd5b23f5f8f5aa6cac1b9c346059) |
| L1USXGateway | core | core | unmatched | [0xc171eb...9882](https://etherscan.io/address/0xc171ebe1a2873f042f1dddd9327d00527ca29882) |
| L1USXTokenBridge | token | token | likely in scope | [0x1ee116...65cf](https://etherscan.io/address/0x1ee116b869ecc7cd13c629a8a2ae39fa361265cf) |
| LendingHelper | vault_pool | vault_pool | likely in scope | [0xfcdb1a...053f](https://etherscan.io/address/0xfcdb1a1afaab60230bbc55d8b3de27f47fb7053f) |
| LiquiditySwap | router | router | unmatched | [0x8d4eed...44af](https://etherscan.io/address/0x8d4eedf50d4e5cb672b13e16dcc8bb9e4c3a44af) |
| LPCurveAggregatorModel | router | router | unmatched | [0x0288ef...5b2a](https://etherscan.io/address/0x0288ef3966f02d516c482b09b4f890c31e935b2a) |
| LSR | core | core | unmatched | [0x40a33f...7c65](https://etherscan.io/address/0x40a33fb67b8dafe88a5b1930be03c82157f47c65) |
| LSRFactory | factory | factory | unmatched | [0x663f82...2f24](https://etherscan.io/address/0x663f82d8191b04e826209793d592049f98172f24) |
| LSRSupport | core | core | unmatched | [0xdd30d4...4b71](https://etherscan.io/address/0xdd30d4f65b0d9b02cc6db69335a3cf74cc6e4b71) |
| MBusSupport | core | core | unmatched | [0x26493c...4fab](https://etherscan.io/address/0x26493cebc23f6369969862c0beaea25644e44fab) |
| MyTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8c3984...6d7a](https://etherscan.io/address/0x8c3984fb0f649c304d68db69457dbf137d156d7a) |
| OneinchSupport | core | core | unmatched | [0x1441b9...b1af](https://etherscan.io/address/0x1441b99da7854a304133630048dc6cf43580b1af) |
| Oracle | oracle | oracle | likely in scope | [0xbb6a68...7b2c](https://etherscan.io/address/0xbb6a6874c91231056646a6fece0b2038fb467b2c) |
| PriceOracleV2 | oracle | oracle | audited (TP) | [0x486beb...565a](https://etherscan.io/address/0x486bebde6ae82a58631aaaed044dcf8c2fb3565a) |
| RewardDistributorV3 | rewards | rewards | audited (TP) | [0x8913c3...4b18](https://etherscan.io/address/0x8913c321bcbeadeb1c4cd11ea2ab9f6275e44b18) |
| StakedDF | staking | staking | audited (TP) | [0x38de12...9dc3](https://etherscan.io/address/0x38de128b7263a3608cae5b5b4d3ba20fc9759dc3) |
| TetherToken | token | token | audited (TP) | [0x3721a8...3b57](https://etherscan.io/address/0x3721a8e6239a8d0489a13725265dd02657ed3b57) |
| Timelock | governance | governance | unmatched | [0x17e66b...9b94](https://etherscan.io/address/0x17e66b1e0260c930bfa567ff3ab5c71794279b94) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1adc34...9eb0](https://etherscan.io/address/0x1adc34af68e970a93062b67344269fd341979eb0) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1e96e9...b93d](https://etherscan.io/address/0x1e96e916a64199069ccea2e6cf4d63d30a61b93d) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x3e5cb9...3d0e](https://etherscan.io/address/0x3e5cb932d7a1c0ca096b71cc486b2ad7e0dc3d0e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x40be37...c499](https://etherscan.io/address/0x40be37096ce3b8a2e9ec002468ab91071501c499) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x41602c...3f60](https://etherscan.io/address/0x41602ccf9b1f63ea1d0ab0f0a1d2f4fd0da53f60) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x44c324...cfbf](https://etherscan.io/address/0x44c324970e5cbc5d4c3f3b7604cbc6640c2dcfbf) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x47c19a...022f](https://etherscan.io/address/0x47c19a2ab52da26551a22e2b2aeed5d19ef4022f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4c3f88...184c](https://etherscan.io/address/0x4c3f88a792325ad51d8c446e1815da10da3d184c) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x5268b3...5234](https://etherscan.io/address/0x5268b3c4afb0860d365a093c184985fcfcb65234) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x53bf3c...aff9](https://etherscan.io/address/0x53bf3c82f62b152800e0152db743451849f1aff9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x565704...c3ca](https://etherscan.io/address/0x56570496c5fd443e49eb5635a6c3e30c9a54c3ca) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x590552...58b9](https://etherscan.io/address/0x59055220e00da46c891283ea1d79363c769158b9) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x5ebc75...4a30](https://etherscan.io/address/0x5ebc758ac96316fb3c80abff549962f305a54a30) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6050b7...60c1](https://etherscan.io/address/0x6050b7040cf4ae3e60c3c1a5d0367b565a1460c1) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x71173e...8f63](https://etherscan.io/address/0x71173e3c6999c2c72ccf363f4ae7b67bcc7e8f63) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x870ac6...71a2](https://etherscan.io/address/0x870ac6a76a30742800609f205c741e86db9b71a2) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8f1f15...64b3](https://etherscan.io/address/0x8f1f15dcf4c70873faf1707973f6029dec4164b3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x9e8b68...767c](https://etherscan.io/address/0x9e8b68e17441413b26c2f18e741eaba69894767c) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xa5d65e...9d2b](https://etherscan.io/address/0xa5d65e3bd7411d409ec2ccfa30c6511ba8a99d2b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa7a084...b3b4](https://etherscan.io/address/0xa7a084538de04d808f20c785762934dd5da7b3b4) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xab9c8c...8673](https://etherscan.io/address/0xab9c8c81228abd4687078ebda5ae236789b08673) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb173cf...4c08](https://etherscan.io/address/0xb173cf446a3aa3420c780d4a034d0e06b1774c08) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb4de37...a628](https://etherscan.io/address/0xb4de37b03f7ace98fb795572b18ae3cfae85a628) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb986f3...1e70](https://etherscan.io/address/0xb986f3a2d91d3704dc974a24fb735dcc5e3c1e70) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xbfd291...48b9](https://etherscan.io/address/0xbfd291da8a403daaf7e5e9dc1ec0aceacd4848b9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc0d7f1...1cb3](https://etherscan.io/address/0xc0d7f11455aacd225c6fd1be7ddf0bcf93b31cb3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc5b1ec...cf59](https://etherscan.io/address/0xc5b1ec605738ef73a4efc562274c1c0b6609cf59) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc9d1cb...c627](https://etherscan.io/address/0xc9d1cbc45dd3e86e98067b7eb279c13f7b77c627) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xd8d07a...01ad](https://etherscan.io/address/0xd8d07a8ab4f6a1cc4cf86b3cb11b78a7c1e701ad) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe39672...bc09](https://etherscan.io/address/0xe39672dfa87c824bcb3b38aa480ef684687cbc09) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe877b5...70c2](https://etherscan.io/address/0xe877b521b827403e64e115f3583e11e3d81870c2) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xf54954...aea0](https://etherscan.io/address/0xf54954ba7e3cdfda23941753b48039ab5192aea0) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf56f63...f0de](https://etherscan.io/address/0xf56f6349b1b57e96c65a79fc782a046f44b8f0de) |
| Treasury | treasury | treasury | unmatched | [0x401f64...22f5](https://etherscan.io/address/0x401f64ae217708407e8b94a8a2cb77c75dfd22f5) |
| UniV3Support | core | core | unmatched | [0x66941a...372e](https://etherscan.io/address/0x66941a87529ed17667db4ebd554b34ebbeb9372e) |
| veDF | core | core | unmatched | [0xce9f61...b232](https://etherscan.io/address/0xce9f614371b0f505a39fc179485e60b585b7b232) |
| veDF | core | core | unmatched | [0xd9219f...c4cd](https://etherscan.io/address/0xd9219fb7dde716b4e50d6468a84e33a1c31fc4cd) |
| veDFManager | controller | controller | unmatched | [0x16888e...e279](https://etherscan.io/address/0x16888e7935a1a08195e5a50477df5250c7f0e279) |
| veDFManager | controller | controller | unmatched | [0x206d2d...c72e](https://etherscan.io/address/0x206d2d5218c8eed85ee0f0fe9bfdad03025bc72e) |
| unnamed | unknown | unknown | unmatched | [0x00b006...3592](https://etherscan.io/address/0x00b006a1db650f41aaa367f353572c869b373592) |
| unnamed | unknown | unknown | unmatched | [0x0c0adb...9173](https://etherscan.io/address/0x0c0adb03423c8232a0b7785433919eaf62a59173) |
| unnamed | unknown | unknown | unmatched | [0x0c9261...1740](https://etherscan.io/address/0x0c92617df0753af1cab2d9cc6a56173970d81740) |
| unnamed | unknown | unknown | unmatched | [0x113aeb...bcb1](https://etherscan.io/address/0x113aeb3c6b300791112946c47bbb51645ef8bcb1) |
| unnamed | unknown | unknown | unmatched | [0x11e411...0bce](https://etherscan.io/address/0x11e4117e3c8e96b01187a0f49d95e915ac9c0bce) |
| unnamed | unknown | unknown | unmatched | [0x1f144c...2ed7](https://etherscan.io/address/0x1f144cd63d7007945292ebcde14a6df8628e2ed7) |
| unnamed | unknown | unknown | unmatched | [0x23fd80...5c6f](https://etherscan.io/address/0x23fd8035c76e199522506a9620d69fe6cb855c6f) |
| unnamed | unknown | unknown | unmatched | [0x3a376f...acc6](https://etherscan.io/address/0x3a376f39b041e29b90c3d3a8833dd1601e8facc6) |
| unnamed | unknown | unknown | unmatched | [0x3e5de9...daf6](https://etherscan.io/address/0x3e5de9f2ba58ba036e84d93c81e8dfb0f002daf6) |
| unnamed | unknown | unknown | unmatched | [0x3f9e89...b236](https://etherscan.io/address/0x3f9e89ce069c3a5cad749c9d953e9b57beccb236) |
| unnamed | unknown | unknown | unmatched | [0x40f841...213a](https://etherscan.io/address/0x40f8417d3c98847eb553785b607edd64f90a213a) |
| unnamed | unknown | unknown | unmatched | [0x41dcdb...46b2](https://etherscan.io/address/0x41dcdb725353ff64a131f76de32c06d6531b46b2) |
| unnamed | unknown | unknown | unmatched | [0x4257de...203f](https://etherscan.io/address/0x4257de950f73107dd1979a49c32b014d3c7b203f) |
| unnamed | unknown | unknown | unmatched | [0x45a34a...459d](https://etherscan.io/address/0x45a34a916fca8aae9bfe7ef97d0fdade3028459d) |
| unnamed | unknown | unknown | unmatched | [0x4653fc...6c3c](https://etherscan.io/address/0x4653fc730e3c8b7eeb2faec65458c6f927ae6c3c) |
| unnamed | unknown | unknown | unmatched | [0x46e803...3cbd](https://etherscan.io/address/0x46e803f7b22031717e5450a2a690d9aa42233cbd) |
| unnamed | unknown | unknown | unmatched | [0x4779f4...f128](https://etherscan.io/address/0x4779f4b09c74b9ed31abe60e1cfc3b1b4832f128) |
| unnamed | unknown | unknown | unmatched | [0x4ea0e5...1a83](https://etherscan.io/address/0x4ea0e5b876e92a86c7c1f3b45486fcf5d3451a83) |
| unnamed | unknown | unknown | unmatched | [0x53280d...6cec](https://etherscan.io/address/0x53280daee675493c87468867001d4f6274926cec) |
| unnamed | unknown | unknown | unmatched | [0x55b231...6ea2](https://etherscan.io/address/0x55b231d1158a2036cb70b04939b9d75632cf6ea2) |
| unnamed | unknown | unknown | unmatched | [0x5bede6...564c](https://etherscan.io/address/0x5bede655e2386abc49e2cc8303da6036bf78564c) |
| unnamed | unknown | unknown | unmatched | [0x639120...c734](https://etherscan.io/address/0x639120d9c5595573321d34f6ee8b97784f42c734) |
| unnamed | unknown | unknown | unmatched | [0x70a354...3bd4](https://etherscan.io/address/0x70a35414fad53752c9352401be211779ec413bd4) |
| unnamed | unknown | unknown | unmatched | [0x7d25d2...7aea](https://etherscan.io/address/0x7d25d250fbd63b0dac4a38c661075930c9a87aea) |
| unnamed | unknown | unknown | unmatched | [0x8ec747...7969](https://etherscan.io/address/0x8ec747dca348e35b5a3b94a950783e0e84707969) |
| unnamed | unknown | unknown | unmatched | [0x94a14b...876a](https://etherscan.io/address/0x94a14ba6e59f4be36a77041ef5590fe24445876a) |
| unnamed | unknown | unknown | unmatched | [0x990f2a...f8d5](https://etherscan.io/address/0x990f2a61d4a9bc89ed6a9e823fd24736d763f8d5) |
| unnamed | unknown | unknown | unmatched | [0x9bdead...abc6](https://etherscan.io/address/0x9bdeade7f62793b98834bc00bc18539a0342abc6) |
| unnamed | unknown | unknown | unmatched | [0x9c4712...632b](https://etherscan.io/address/0x9c471234a95400d1a550a4b359e43fefd5a5632b) |
| unnamed | unknown | unknown | unmatched | [0xa11583...426e](https://etherscan.io/address/0xa11583480d6a5ee1cc2d47676916ec165c70426e) |
| unnamed | unknown | unknown | unmatched | [0xa22395...ac91](https://etherscan.io/address/0xa2239545213d08b9722f28fe1a029b32834aac91) |
| unnamed | unknown | unknown | unmatched | [0xa89ebe...99b7](https://etherscan.io/address/0xa89ebe8d7471d7d36acbfe4b0d086834390399b7) |
| unnamed | unknown | unknown | unmatched | [0xafd25d...55fe](https://etherscan.io/address/0xafd25d1e68cb20d4fb2685c8e5726a0a72fd55fe) |
| unnamed | unknown | unknown | unmatched | [0xb1ce4f...c97b](https://etherscan.io/address/0xb1ce4f100854e890a5f797f2c079ee9c4acac97b) |
| unnamed | unknown | unknown | unmatched | [0xb7e0b3...fd85](https://etherscan.io/address/0xb7e0b3e00fb13eccf70907bc5b626f4f88f1fd85) |
| unnamed | unknown | unknown | unmatched | [0xbca6aa...d217](https://etherscan.io/address/0xbca6aacc63d41bbc9a15631591e944fee40dd217) |
| unnamed | unknown | unknown | unmatched | [0xbffebf...19f0](https://etherscan.io/address/0xbffebf86cba6b4695a414059ca5d10b6727e19f0) |
| unnamed | unknown | unknown | unmatched | [0xc76611...fe16](https://etherscan.io/address/0xc76611f6d2f6cafd6ac8e9507295403843e7fe16) |
| unnamed | unknown | unknown | unmatched | [0xc83b81...5b88](https://etherscan.io/address/0xc83b81b6e99e34f364d75e2c3ac61d51caec5b88) |
| unnamed | unknown | unknown | unmatched | [0xd037c3...95ef](https://etherscan.io/address/0xd037c36dbc81a8890728d850e080e38f6eeb95ef) |
| unnamed | unknown | unknown | unmatched | [0xd2de88...e1df](https://etherscan.io/address/0xd2de888007e7f417cec5c9119c48e18250cbe1df) |
| unnamed | unknown | unknown | unmatched | [0xd368a3...50f3](https://etherscan.io/address/0xd368a39177eabec71df0024483030ced938d50f3) |
| unnamed | unknown | unknown | unmatched | [0xd8150d...bf26](https://etherscan.io/address/0xd8150d333aa9decbfd4b5cb535867ed9538abf26) |
| unnamed | unknown | unknown | unmatched | [0xe45242...eb43](https://etherscan.io/address/0xe45242483cdc310de7bef3cdb8545ab1af31eb43) |
| unnamed | unknown | unknown | unmatched | [0xeb8f95...0e10](https://etherscan.io/address/0xeb8f955dac5eddd52489b1b361f87f6aa8830e10) |
| unnamed | unknown | unknown | unmatched | [0xef7b35...d83b](https://etherscan.io/address/0xef7b35aab3c0dd3103c707656bfca9e5ea48d83b) |
| unnamed | unknown | unknown | unmatched | [0xf21fc8...1543](https://etherscan.io/address/0xf21fc8d23bbae7c9d0b8106f8c8bd39c7b6f1543) |
| unnamed | unknown | unknown | unmatched | [0xfe5ad9...fa3c](https://etherscan.io/address/0xfe5ad9975b533456cafca9727c9ab47cbab1fa3c) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ControllerStock | controller | controller | unmatched | [0x4870fc...b892](https://optimistic.etherscan.io/address/0x4870fc0ffc415d6dae75d7023b9cb0f26cedb892) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://optimistic.etherscan.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xebaa48...0004](https://optimistic.etherscan.io/address/0xebaa48d1c4129e93a1d286b01b56cc4981c30004) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xf89e24...ed70](https://optimistic.etherscan.io/address/0xf89e24bad60d78386a5fe6b6c897dd4d88a9ed70) |
| iTokenV2BLP | token | token | likely in scope | [0x4bfaed...bba0](https://optimistic.etherscan.io/address/0x4bfaedb339c847830f69b07f2e12a3242af4bba0) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x7e7e1d...ce43](https://optimistic.etherscan.io/address/0x7e7e1d8757b241aa6791c089314604027544ce43) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xdf0e11...06f5](https://optimistic.etherscan.io/address/0xdf0e115aa822443df9200cc5d0260fa8e1af06f5) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Controller | controller | controller | audited (TP) | [0x612066...63fb](https://bscscan.com/address/0x61206650bb0151f8ee8c278736c59b34be5463fb) |
| DToken | token | token | audited (TP) | [0x9d2437...5ddd](https://bscscan.com/address/0x9d24378adbfda3a24d46049b23e06ea2c32e5ddd) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x4e0b5b...6f99](https://bscscan.com/address/0x4e0b5bafc52d09a8f18ea0b7a6a7dc23a1096f99) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x6199cc...f9e5](https://bscscan.com/address/0x6199cc917c12e4735b4e9cefbe29e9f0f75af9e5) |
| DTokenProxy | proxy | proxy | audited (TP) | [0x6c0f32...8524](https://bscscan.com/address/0x6c0f322442d10269dd557c6e3a56dcc3a1198524) |
| DTokenProxy | proxy | proxy | audited (TP) | [0xce1479...29f5](https://bscscan.com/address/0xce14792a280b20c4f8e1ae76805a6dfbe95729f5) |
| GnosisSafeL2 | governance | governance | unmatched | [0x3e5c63...d36e](https://bscscan.com/address/0x3e5c63644e683549055b9be8653de26e0b4cd36e) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x4006e4...072b](https://bscscan.com/address/0x4006e4a788edff483b5a0c90ca9af9c0a497072b) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x9c28a2...d57f](https://bscscan.com/address/0x9c28a2483901018216282216bc47cb699ca2d57f) |
| iMSD | core | core | unmatched | [0xd99384...dccd](https://bscscan.com/address/0xd993845bcbaaafe74a2c6d584e42df4f049adccd) |
| iToken | token | token | audited (TP) | [0x24e492...2423](https://bscscan.com/address/0x24e4920044610c31241ce2a7c605656d73bf2423) |
| iToken | token | token | audited (TP) | [0x255d14...1fc8](https://bscscan.com/address/0x255d14997e9669ea371e6079288af9c5e5621fc8) |
| iTokenV2BLP | token | token | likely in scope | [0x7228b8...ebc9](https://bscscan.com/address/0x7228b8d5ab81fa8ab91065dc14c10acb5501ebc9) |
| MSD | core | core | unmatched | [0xac2428...9dff](https://bscscan.com/address/0xac2428d0fb0a8516fc30e6a0bc19b098be5f9dff) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x20ecc9...f3a9](https://bscscan.com/address/0x20ecc92f0a33e16e8cf0417dfc3f586cf597f3a9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x367c17...bba3](https://bscscan.com/address/0x367c17d19fcd0f7746764455497d63c8e8b2bba3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x450e09...5a77](https://bscscan.com/address/0x450e09a303aa4bcc518b5f74dd00433bd9555a77) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x463e3d...0d0e](https://bscscan.com/address/0x463e3d1e01d048fdf872710f7f3745b5cdf50d0e) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x6d290f...f110](https://bscscan.com/address/0x6d290f45a280a688ff58d095de480364069af110) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x7b933e...8abe](https://bscscan.com/address/0x7b933e1c1f44be9fb111d87501baada7c8518abe) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8af4f2...2199](https://bscscan.com/address/0x8af4f25019e00c64b5c9d4a49d71464d411c2199) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x911f90...6466](https://bscscan.com/address/0x911f90e98d5c5c3a3b0c6c37bf6ea46d15ea6466) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x983a72...b1d8](https://bscscan.com/address/0x983a727aa3491ab251780a13acb5e876d3f2b1d8) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb5102c...fd72](https://bscscan.com/address/0xb5102cee1528ce2c760893034a4603663495fd72) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xee0d34...a454](https://bscscan.com/address/0xee0d3450b577743eee2793c0ec6d59361eb9a454) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| GnosisSafeProxy | proxy | proxy | unmatched | [0x4dc7ce...11ce](https://polygonscan.com/address/0x4dc7ce1aed9771cfdeea860b80fd799ac66f11ce) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xd111d7...f3a9](https://polygonscan.com/address/0xd111d78cee08842624ade8ade280960083c0f3a9) |
| iTokenV2BLP | token | token | likely in scope | [0xbd0ed2...7ddd](https://polygonscan.com/address/0xbd0ed2f6e7d84ac5a74cc29d4585d5179ece7ddd) |
| MSD | core | core | unmatched | [0x1ee116...65cf](https://polygonscan.com/address/0x1ee116b869ecc7cd13c629a8a2ae39fa361265cf) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x448bbb...a4a8](https://polygonscan.com/address/0x448bbbdb706cd0a6ab74fa3d1157e7a33dd3a4a8) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc171eb...9882](https://polygonscan.com/address/0xc171ebe1a2873f042f1dddd9327d00527ca29882) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xcf66eb...a752](https://polygonscan.com/address/0xcf66eb3d546f0415b368d98a95eaf56ded7aa752) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Controller | controller | controller | audited (TP) | [0x5385bc...b1d6](https://arbiscan.io/address/0x5385bcc7420012babd14675a466e24fbe2f9b1d6) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x9d8203...b76f](https://arbiscan.io/address/0x9d82033bb36217b44567edc635be926f74d1b76f) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xc097ea...3f62](https://arbiscan.io/address/0xc097ea3ea6d6851e8c274ace6373107c5a253f62) |
| iTokenV2BLP | token | token | likely in scope | [0xaf23e0...ebf9](https://arbiscan.io/address/0xaf23e0362edf6a8fa304ec93c7270cd5dfa8ebf9) |
| MSD | core | core | unmatched | [0xe386af...a299](https://arbiscan.io/address/0xe386affd4830423ead9b3047618e2f4f9057a299) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x0385f8...cbaa](https://arbiscan.io/address/0x0385f851060c09a552f1a28ea3f612660256cbaa) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x50210a...38eb](https://arbiscan.io/address/0x50210a88217d1dd9e7fbc3e4a927cc55829a38eb) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x567554...0b8b](https://arbiscan.io/address/0x5675546eb94c2c256e6d7c3f7dcab59bea3b0b8b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x641441...4edb](https://arbiscan.io/address/0x641441c631e2f909700d2f41fd87f0aa6a6b4edb) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb5b3da...715a](https://arbiscan.io/address/0xb5b3da79789de012fd75108138b2315e5645715a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc21258...3abd](https://arbiscan.io/address/0xc2125882318d04d266720b598d620f28222f3abd) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xcfe6d1...2031](https://arbiscan.io/address/0xcfe6d1b2be777f20ad6f98f1c12c6436652f2031) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| GnosisSafeProxy | proxy | proxy | unmatched | [0x2bc641...fdb6](https://snowtrace.io/address/0x2bc641c7dc402d114f94a96b809a432b91d7fdb6) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x078ad8...de6b](https://snowtrace.io/address/0x078ad8d6faed9daee55f5d446c80e0c81230de6b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x73c01b...eb0b](https://snowtrace.io/address/0x73c01b355f2147e5ff315680e068354d6344eb0b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x853ea3...c5e0](https://snowtrace.io/address/0x853ea32391aaa14c112c645fd20ba389ab25c5e0) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xfbf64a...84dc](https://snowtrace.io/address/0xfbf64a8caea1d641affa185f850dbbf90d5c84dc) |
| unnamed | unknown | unknown | unmatched | [0x41602c...3f60](https://snowtrace.io/address/0x41602ccf9b1f63ea1d0ab0f0a1d2f4fd0da53f60) |
| unnamed | unknown | unknown | unmatched | [0x422a86...e7aa](https://snowtrace.io/address/0x422a86f57b6b6f1e557d406331c25eeed075e7aa) |
| unnamed | unknown | unknown | likely in scope | [0x431ad2...dbe0](https://snowtrace.io/address/0x431ad2ff6a9c365805ebad47ee021148d6f7dbe0) |
| unnamed | unknown | unknown | unmatched | [0x6f87b3...6358](https://snowtrace.io/address/0x6f87b39a2e36f205706921d81a6861b655db6358) |
| unnamed | unknown | unknown | unmatched | [0x9787af...a514](https://snowtrace.io/address/0x9787af345e765a3fbf0f881c49f8a6830d94a514) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 76 proxies on 1, 10, 56, 137, 42161. 54 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 48 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 11 distinct deployer addresses: 0x2929f0...a5c3, 0x377598...a2d5, 0x655284...c743, 0x6f4316...e179, 0x70a0d3...6845. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 191 | 22 | 169 | 11.5% |
| **Total** | 191 | 22 | 169 | 11.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-11-07 | MixBytes | The audit covered the following ﬁles: Controller.sol, ControllerStorage.sol, ControllerV2ExtraBase.s | unspecified | direct | [report](https://github.com/mixbytes/audits_public/blob/master/dForce/Lending%20v2/dForce%20Lending%20V2%20Security%20Audit%20Report.pdf) |
| 2020-07-13 | Trail of Bits | dtoken | unspecified | direct | [report](https://github.com/trailofbits/publications/blob/master/reviews/dtoken.pdf) |
| unknown | discovery-ingest-placeholder | df audit report 2020 36 en 1 0 | unspecified | direct | not available |
| unknown | Certik | dForceLending Audit Report Certik Feb 2021 | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report dForceVoteEscrow v1.0 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

4 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/dforce-network/documents/blob/master/audit_report/DF/df_audit_report_2020_36_en_1_0.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/DF/df_audit_report_2020_36_en_1_0.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/dToken/dToken_Assessment_Summary.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/dToken/dToken_Assessment_Summary.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/Govern/REP-DFORCE-GOVERNANCE-2021-10-22.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Govern/REP-DFORCE-GOVERNANCE-2021-10-22.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certik-Feb-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certik-Feb-2021.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certora-Feb-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certora-Feb-2021.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Consensys-Mar-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Consensys-Mar-2021.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/Staking/PeckShield-Audit-Report-dForceVoteEscrow-v1.0.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Staking/PeckShield-Audit-Report-dForceVoteEscrow-v1.0.pdf) - audit_report_link
- [https://github.com/dforce-network/documents/blob/master/audit_report/sUSX/dForce_sUSX_Security_Audit_Report.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/sUSX/dForce_sUSX_Security_Audit_Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2024-11-07 - MixBytes - The audit covered the following ﬁles: Controller.sol, ControllerStorage.sol, ControllerV2ExtraBase.sol, ControllerV2ExtraExplicit.sol - https://github.com/mixbytes/audits_public/blob/master/dForce/Lending%20v2/dForce%20Lending%20V2%20Security%20Audit%20Report.pdf
- 2020-07-13 - Trail of Bits - dtoken - https://github.com/trailofbits/publications/blob/master/reviews/dtoken.pdf
- unknown - discovery-ingest-placeholder - df audit report 2020 36 en 1 0
- unknown - Certik - dForceLending Audit Report Certik Feb 2021
- unknown - PeckShield - PeckShield Audit Report dForceVoteEscrow v1.0

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/dforce.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $58,534,876.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:42:14.424Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $58,534,876.
