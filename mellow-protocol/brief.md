# Agentic Brief: Mellow Restaking

## Project Overview

- **Project:** Mellow Restaking (mellow-protocol)
- **Website:** mellow.finance
- **Category:** Liquid Restaking
- **Chains (topography):** 1, 42161
- **Chains (DeFiLlama):** 1, 56, 252
- **TVL:** $126,090,727 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 13 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Mellow Restaking has 123 deployed contract rows in current topography. This brief renders the 123 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-c067f024; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 123 contracts across 2 chains. 1 have TP audit coverage (0.8%); 122 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicRedeemHook | adapter | adapter | unmatched | [0x000000...fd93](https://etherscan.io/address/0x0000000637f1b1ccda4af2db6cddf5e5ec45fd93) |
| BasicShareManager | controller | controller | unmatched | [0x000000...7977](https://etherscan.io/address/0x00000005564aae40d88e2f08da71cbe156767977) |
| BitmaskVerifier | core | core | unmatched | [0x000000...a20a](https://etherscan.io/address/0x0000000263fb29c3d6b0c5837883519ef05ea20a) |
| Claimer | core | core | unmatched | [0x25024a...5802](https://etherscan.io/address/0x25024a3017b8da7161d8c5dccf768f8678fb5802) |
| Consensus | registry | registry | unmatched | [0x000000...0b13](https://etherscan.io/address/0x0000000167598d2c78e2313fd5328e16bd9a0b13) |
| EigenLayerVerifier | core | core | unmatched | [0x000000...9b81](https://etherscan.io/address/0x00000003f82051a8b2f020b79e94c3dc94e89b81) |
| ERC20Verifier | token | token | unmatched | [0x000000...f2d6](https://etherscan.io/address/0x00000009207d366cbb8549837f8ae4bf800af2d6) |
| Factory | factory | factory | unmatched | [0x000000...dc72](https://etherscan.io/address/0x0000000397b71c8f3182fd40d247330d218fdc72) |
| OracleHelper | oracle | oracle | likely in scope | [0x000000...5e35](https://etherscan.io/address/0x000000005f543c38d5ea6d0bf10a50974eb55e35) |
| OracleSubmitter | oracle | oracle | likely in scope | [0x000000...907a](https://etherscan.io/address/0x00000000df0088bd598df1e4ae57943dc481907a) |
| RatiosStrategy | strategy | strategy | likely in scope | [0x3aa61e...4ad6](https://etherscan.io/address/0x3aa61e6196fb3eb1170e578ad924898624f54ad6) |
| RedirectingDepositHook | adapter | adapter | unmatched | [0x000000...a827](https://etherscan.io/address/0x00000004d3b17e5391eb571ddb8fdf95646ca827) |
| SafeProxy | proxy | proxy | unmatched | [0x55d9ec...ba5f](https://etherscan.io/address/0x55d9eceb5733f72a48c544e20d49859ec92fba5f) |
| SafeProxy | proxy | proxy | unmatched | [0x5dbf92...0a75](https://etherscan.io/address/0x5dbf9287787a5825becb0321a276c9c92d570a75) |
| SafeProxy | proxy | proxy | unmatched | [0x66e137...2980](https://etherscan.io/address/0x66e137a2d4fdb520c4b0e4eae3f0b33ed1cf2980) |
| SafeProxy | proxy | proxy | unmatched | [0x8907d6...9ebf](https://etherscan.io/address/0x8907d6089fc71aa6a9a7bb9ec5b1170e92489ebf) |
| SafeProxy | proxy | proxy | unmatched | [0xa6278b...196f](https://etherscan.io/address/0xa6278b726d4aa09d14f9e820d7785fad82e7196f) |
| SafeProxy | proxy | proxy | unmatched | [0xabe20d...eeb5](https://etherscan.io/address/0xabe20d266ae54b9ae30492dea6b6407bf18feeb5) |
| SafeProxy | proxy | proxy | unmatched | [0xb1e5a8...423b](https://etherscan.io/address/0xb1e5a8f26c43d019f2883378548a350ecdd1423b) |
| SafeProxy | proxy | proxy | unmatched | [0xcca5ba...16b8](https://etherscan.io/address/0xcca5bafea783b0ed8d11fd6d9f97c155332a16b8) |
| SafeProxy | proxy | proxy | unmatched | [0xd27ffb...0081](https://etherscan.io/address/0xd27ffb15dd00d5e52ac2bfe6d5afd36cae850081) |
| SafeProxy | proxy | proxy | unmatched | [0xeb1caf...734a](https://etherscan.io/address/0xeb1cafbcc8923ecbc243ff251c385c201a6c734a) |
| SignatureDepositQueue | core | core | unmatched | [0x000000...fbf9](https://etherscan.io/address/0x00000003887dfbcebd1e4097ad89b690de7efbf9) |
| SymbioticVerifier | core | core | unmatched | [0x000000...394b](https://etherscan.io/address/0x00000000cbc6f5d4348496ffa22cf014b9da394b) |
| TimelockController | governance | governance | unmatched | [0x8d8b65...8596](https://etherscan.io/address/0x8d8b65727729fb484cb6dc1452d61608a5758596) |
| TimelockController | governance | governance | unmatched | [0x972ae5...0cb2](https://etherscan.io/address/0x972ae54bf6950fde7539a803cc5cd71b0f2f0cb2) |
| TimelockController | governance | governance | unmatched | [0xb3ffd1...7354](https://etherscan.io/address/0xb3ffd1a8c0cba695dfa32603851bf99ddb6f7354) |
| TimelockController | governance | governance | unmatched | [0xd2be05...3ae7](https://etherscan.io/address/0xd2be05f489202a1adb20d200c89624acbf403ae7) |
| TokenizedShareManager | token | token | likely in scope | [0x000000...f378](https://etherscan.io/address/0x0000000e8eb7173fa1a3ba60eca325bcb6aaf378) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x000000...639f](https://etherscan.io/address/0x0000000f9686896836c39cf721141922ce42639f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x02e1c9...2675](https://etherscan.io/address/0x02e1c91c4d82af454d892fbe2c5de2c4504b2675) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x04b30b...2c61](https://etherscan.io/address/0x04b30b1e98950e6a13550d84e991be0d734c2c61) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0823b6...fb74](https://etherscan.io/address/0x0823b68c7e00b327f97b1bf48ed44ef9cd11fb74) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0cdff2...aaad](https://etherscan.io/address/0x0cdff250c7a071fdc72340d820c5c8e29507aaad) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0ee16c...d02f](https://etherscan.io/address/0x0ee16cf1a0ca0d1ca070a6fec1595888b22dd02f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1786e8...848f](https://etherscan.io/address/0x1786e893db43abe03517bd99985aeedc3ee4848f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x181cb5...a76d](https://etherscan.io/address/0x181cb55f872450d16ae858d532b4e35e50eaa76d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1ae8c0...0da2](https://etherscan.io/address/0x1ae8c006b5c97707aa074aaed42becad2cf80da2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x24fd64...cae7](https://etherscan.io/address/0x24fd64eb4766d91fd79a4d5e8086b2460debcae7) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x250917...b864](https://etherscan.io/address/0x25091725982e83f6afdf6a17705feeca5866b864) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x277c6a...ccc5](https://etherscan.io/address/0x277c6a642564a91ff78b008022d65683cee5ccc5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2a166a...63d8](https://etherscan.io/address/0x2a166ae48f9f1fc27685582a61250011fd5363d8) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2c862f...8613](https://etherscan.io/address/0x2c862fd2d1802a4b7186f80ca36f6ea6becf8613) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2e234f...2f1d](https://etherscan.io/address/0x2e234f4e1b7934d5f4beae3ff2fdc109f5c42f1d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2e2b73...8f7a](https://etherscan.io/address/0x2e2b73616e67c1c3660111bae981483a126e8f7a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2ea268...2a36](https://etherscan.io/address/0x2ea268f1018a4767bf5da42d531ea9e943942a36) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x35d482...3198](https://etherscan.io/address/0x35d482d0bbbb1c2f25d9b12f234883f3224f3198) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3883d8...e4d7](https://etherscan.io/address/0x3883d8cdcdda03784908cfa2f34ed2cf1604e4d7) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3fea00...0e85](https://etherscan.io/address/0x3fea00b3f535fcd2a77840563b48edfee71b0e85) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x4076d2...9355](https://etherscan.io/address/0x4076d217faa2813165235b4f0d9c03b67bff9355) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x41c443...159f](https://etherscan.io/address/0x41c443f10a92d597e6c9e271140bc94c10f5159f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x43f084...a162](https://etherscan.io/address/0x43f084bdbc99409c637319dd7c544d565165a162) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4e38f6...dee3](https://etherscan.io/address/0x4e38f679e46b3216f0bd4b314e9c429affb1dee3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4f6bc0...1c6d](https://etherscan.io/address/0x4f6bc03537c6f74e250f57a9a7238087cabf1c6d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x549072...e993](https://etherscan.io/address/0x5490729bbb5821c56f8598b856ae353435b9e993) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x57543a...0da1](https://etherscan.io/address/0x57543a4f671829b3f11241c9ec1432d258810da1) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x5c5c00...8ad3](https://etherscan.io/address/0x5c5c00d7bd4b6ac55466284c2963b3a0d3568ad3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x614cb9...efab](https://etherscan.io/address/0x614cb9e9d13712781dfd15adc9f3dade60e4efab) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x63a76a...ec5c](https://etherscan.io/address/0x63a76a4a94cab1dd49fcf0d7e3fc53a78ac8ec5c) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x699d09...207f](https://etherscan.io/address/0x699d09f862e0d3d093b522562c42e9efbcee207f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6af924...bca1](https://etherscan.io/address/0x6af924f6450b2b5fde62160bdd3ed076ad92bca1) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x729f0f...487e](https://etherscan.io/address/0x729f0fe9c1be8e4a814695277d7b56ad2427487e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x73ea49...7a2e](https://etherscan.io/address/0x73ea494ea0eca57b686169203a85f64505457a2e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7545f1...dcba](https://etherscan.io/address/0x7545f100d91a335187adb57a0f02356408d2dcba) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x75fe0d...d011](https://etherscan.io/address/0x75fe0d73d3c64cdc1c6449d9f977be6857c4d011) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x77a83a...90f8](https://etherscan.io/address/0x77a83acbf7a6df20f1d681b4810437d74ae790f8) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7a57d6...3e65](https://etherscan.io/address/0x7a57d62b1217ce5685e26c333741e61b99233e65) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7ad1d2...3919](https://etherscan.io/address/0x7ad1d268ab39612345cdacbc53bd7ffe806a3919) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8626d5...9c55](https://etherscan.io/address/0x8626d581c16fe972bec234bc041cece47cab9c55) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x888d2a...fa29](https://etherscan.io/address/0x888d2a3e9b600f360a3386c9d2fedfa658e7fa29) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x893aa6...0080](https://etherscan.io/address/0x893aa69fbaa1ee81b536f0fbe3a3453e86290080) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8a78e6...c1cd](https://etherscan.io/address/0x8a78e6b7e15c4ae3aeaee3bf0de4f2de4078c1cd) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8dceef...3e2a](https://etherscan.io/address/0x8dceefbd6e3a9d1af10c3e3c757cb32feb8b3e2a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x90c983...cb78](https://etherscan.io/address/0x90c983dc732e65db6177638f0125914787b8cb78) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x95b46f...feb7](https://etherscan.io/address/0x95b46f24cf5425b117ac24e498852adbd705feb7) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x9c5d82...d88d](https://etherscan.io/address/0x9c5d826e1bcdf67f0596725cbb931dc02132d88d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa1ce84...4d18](https://etherscan.io/address/0xa1ce84069e5ac305075b0d54ebc12389bf674d18) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa8a3de...3f36](https://etherscan.io/address/0xa8a3de0c5594a09d0cd4c8abc4e3aab9bae03f36) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa93dd9...b4e6](https://etherscan.io/address/0xa93dd91a799ca5015fa182514959a2bb4772b4e6) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb0d19e...2ea5](https://etherscan.io/address/0xb0d19eef486b4807ab1fe20ab4cfacb074592ea5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb10fec...9ac2](https://etherscan.io/address/0xb10fec1df8fcff2bf06fbd1aeac34b87ea4e9ac2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb6451d...8c52](https://etherscan.io/address/0xb6451d4eaec79fd22b69086a5b760a166bd28c52) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc95b80...14e0](https://etherscan.io/address/0xc95b806ac073df930014ac476d26c8ad918f14e0) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xcd3c0f...a6c7](https://etherscan.io/address/0xcd3c0f51798d1daa92fb192e57844ae6cee8a6c7) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xdbc81b...fe8d](https://etherscan.io/address/0xdbc81b33a23375a90c8ba4039d5738cb6f56fe8d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xdf96d5...8461](https://etherscan.io/address/0xdf96d59d3688c56ca29aed045fe67c84bbc38461) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe1fc40...cec2](https://etherscan.io/address/0xe1fc4025c4c62d0e3876296e1ce86ebb1b6dcec2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe3b023...0ca4](https://etherscan.io/address/0xe3b023d3ff076e35448c936da5e8f6ada6130ca4) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe4741d...cc84](https://etherscan.io/address/0xe4741d6901c77da80faeed7e2fe10c8b348bcc84) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xeb9257...779a](https://etherscan.io/address/0xeb9257c278ab03f30fe889d98074c0ebdfb6779a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xecd832...8ac7](https://etherscan.io/address/0xecd83240bdfbb51f17c6c6d0f5805959c3438ac7) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf4ea27...5451](https://etherscan.io/address/0xf4ea276361348b301ba2296db909a7c973a15451) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf72233...6d45](https://etherscan.io/address/0xf7223356819ea48f25880b6c2ab3e907cc336d45) |
| VaultConfigurator | vault_pool | vault_pool | audited (TP) | [0x000000...5aa5](https://etherscan.io/address/0x000000028be48f9e62e13403480b60c4822c5aa5) |
| unnamed | unknown | unknown | unmatched | [0x000000...317c](https://etherscan.io/address/0x000000065d1a7bd71f52886910aabe6555b7317c) |
| unnamed | unknown | unknown | unmatched | [0x000000...c471](https://etherscan.io/address/0x0000000b2082667589a16c4cf18e9f923781c471) |
| unnamed | unknown | unknown | unmatched | [0x1616d3...b53a](https://etherscan.io/address/0x1616d39a201d246cbd1b3b145234638f7719b53a) |
| unnamed | unknown | unknown | unmatched | [0x171b8e...cf2b](https://etherscan.io/address/0x171b8e43bb751a558b2b1f3c814d3c96d36ccf2b) |
| unnamed | unknown | unknown | unmatched | [0x22d047...fec5](https://etherscan.io/address/0x22d047637d6acd0b5525b5bd1449ae9f9575fec5) |
| unnamed | unknown | unknown | unmatched | [0x3279ef...5df2](https://etherscan.io/address/0x3279ef5414a97ddfa6da89308aed54e6a0d75df2) |
| unnamed | unknown | unknown | unmatched | [0x34b46c...3bec](https://etherscan.io/address/0x34b46c8e622730c7115bb71c720f939274f73bec) |
| unnamed | unknown | unknown | unmatched | [0x52135c...a018](https://etherscan.io/address/0x52135c49e6d734866ab37e127de03b479559a018) |
| unnamed | unknown | unknown | unmatched | [0x58c4b6...1031](https://etherscan.io/address/0x58c4b6b0d6cff1d684e4b8ee899550f4b68a1031) |
| unnamed | unknown | unknown | unmatched | [0x6e9b43...f49d](https://etherscan.io/address/0x6e9b4381900f19054916d5dbf238b99ed017f49d) |
| unnamed | unknown | unknown | unmatched | [0x720759...f626](https://etherscan.io/address/0x7207595e4c18a9a829b9dc868f11f3add8fcf626) |
| unnamed | unknown | unknown | unmatched | [0x7d3074...8320](https://etherscan.io/address/0x7d3074904e3ccb61671fd3716dd4ace565b18320) |
| unnamed | unknown | unknown | unmatched | [0x952f39...45d8](https://etherscan.io/address/0x952f39aa62e94db3ad0d1c7d1e43c1a8519e45d8) |
| unnamed | unknown | unknown | unmatched | [0x9938a0...1da0](https://etherscan.io/address/0x9938a09fea37ba681a1bd53d33ddde2debec1da0) |
| unnamed | unknown | unknown | unmatched | [0xa51e4f...e5a0](https://etherscan.io/address/0xa51e4fa916b939fa451520d2b7600c740d86e5a0) |
| unnamed | unknown | unknown | unmatched | [0xa9e512...5d83](https://etherscan.io/address/0xa9e5120dd134e42be7eba828c5ea857dc9c75d83) |
| unnamed | unknown | unknown | unmatched | [0xaeeb06...33c3](https://etherscan.io/address/0xaeeb06cbd91a18b51a2d30b61477eaee3a9633c3) |
| unnamed | unknown | unknown | unmatched | [0xbb92a7...9854](https://etherscan.io/address/0xbb92a7b9695750e1234bab18f83b73686dd09854) |
| unnamed | unknown | unknown | unmatched | [0xc22642...9a22](https://etherscan.io/address/0xc22642ad548183afbe389dc667d698c60f3d9a22) |
| unnamed | unknown | unknown | unmatched | [0xc73efd...77b3](https://etherscan.io/address/0xc73efdb68b839932933bf9eb4db908fca33677b3) |
| unnamed | unknown | unknown | unmatched | [0xccb107...277f](https://etherscan.io/address/0xccb10707cc3105178cbef8ee5b7dc84d5d1b277f) |
| unnamed | unknown | unknown | unmatched | [0xd662df...d1ae](https://etherscan.io/address/0xd662df7c0faf0fe6446638651b05c287806ad1ae) |
| unnamed | unknown | unknown | unmatched | [0xe5bc50...5f09](https://etherscan.io/address/0xe5bc509b277f83f2bf771d0dcb16949d4e175f09) |
| unnamed | unknown | unknown | unmatched | [0xf40bc7...f419](https://etherscan.io/address/0xf40bc75d53ea7a015f2452f557e3353d20c2f419) |
| unnamed | unknown | unknown | unmatched | [0xfa428f...7141](https://etherscan.io/address/0xfa428fdbc73ad52c12724096e73e213fcd307141) |
| unnamed | unknown | unknown | unmatched | [0xfe76b5...8421](https://etherscan.io/address/0xfe76b5fd238553d65ce6dd0a572c0fda629f8421) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x022a33...d7d4](https://arbiscan.io/address/0x022a33293aed00e59e93d354d3810249fa33d7d4) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x222fa9...cdb2](https://arbiscan.io/address/0x222fa99c485a088564eb43faa50bc10b2497cdb2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x403307...96d1](https://arbiscan.io/address/0x40330720039352b309c70a5028322d1481f496d1) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 75 proxies on 1, 42161. 65 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 72 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x4d551d...cdda, 0x888884...d15d, 0xe98be1...95a3, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 123 | 1 | 122 | 0.8% |
| **Total** | 123 | 1 | 122 | 0.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | ChainSecurity | ChainSecurity Mellow Finance Mellow LRT audit | unspecified | direct | not available |
| unknown | Statemind | Mellow%20LRT%20Final%20report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/mellow-finance/mellow-interop/blob/main/audits/202503_Decurity/Mellow%20Interop%20v2%20Audit%20Final%20Report.pdf](https://github.com/mellow-finance/mellow-interop/blob/main/audits/202503_Decurity/Mellow%20Interop%20v2%20Audit%20Final%20Report.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-interop/blob/main/audits/202503_Decurity/Mellow%2520Interop%2520v2%2520Audit%2520Final%2520Report.pdf](https://github.com/mellow-finance/mellow-interop/blob/main/audits/202503_Decurity/Mellow%2520Interop%2520v2%2520Audit%2520Final%2520Report.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-interop/blob/main/audits/202503_Nethermid/NM_0468_Mellow.pdf](https://github.com/mellow-finance/mellow-interop/blob/main/audits/202503_Nethermid/NM_0468_Mellow.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/.gitignore](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/.gitignore) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/.gitmodules](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/.gitmodules) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audit_scope.txt](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audit_scope.txt) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202406_Sherlock/Mellow%20Modular%20LRTs%20Audit%20Report.pdf](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202406_Sherlock/Mellow%20Modular%20LRTs%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202406_Sherlock/Mellow%2520Modular%2520LRTs%2520Audit%2520Report.pdf](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202406_Sherlock/Mellow%2520Modular%2520LRTs%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202408_ChainSecurity/ChainSecurity_Mellow_Finance_Mellow_LRT_audit.pdf](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202408_ChainSecurity/ChainSecurity_Mellow_Finance_Mellow_LRT_audit.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202409_OpenZeppelin/Mellow%20Simple%20DVT%20Strategy%20Audit.pdf](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202409_OpenZeppelin/Mellow%20Simple%20DVT%20Strategy%20Audit.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202409_OpenZeppelin/Mellow%2520Simple%2520DVT%2520Strategy%2520Audit.pdf](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/audits/202409_OpenZeppelin/Mellow%2520Simple%2520DVT%2520Strategy%2520Audit.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/foundry.toml](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/foundry.toml) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/package.json](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/package.json) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/README.md](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/README.md) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/remappings.txt](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/remappings.txt) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/scc-report.txt](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/scc-report.txt) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/scm-report.md](https://github.com/mellow-finance/mellow-lrt/blob/fixes/audit-sherlock-fixes/scm-report.md) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/main/audits/202405_Statemind/Mellow%20LRT%20Final%20report.pdf](https://github.com/mellow-finance/mellow-lrt/blob/main/audits/202405_Statemind/Mellow%20LRT%20Final%20report.pdf) - audit_report_link
- [https://github.com/mellow-finance/mellow-lrt/blob/main/audits/202405_Statemind/Mellow%2520LRT%2520Final%2520report.pdf](https://github.com/mellow-finance/mellow-lrt/blob/main/audits/202405_Statemind/Mellow%2520LRT%2520Final%2520report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.27%20-%20Final%20-%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.27%20-%20Final%20-%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-8-offchain-challenge-protocol-V2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-8-offchain-challenge-protocol-V2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-06-lit-protocol-cait-sith-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-06-lit-protocol-cait-sith-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-discord-dave-protocol-designreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-discord-dave-protocol-designreview.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - ChainSecurity - ChainSecurity Mellow Finance Mellow LRT audit
- unknown - Statemind - Mellow%20LRT%20Final%20report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/mellow-protocol.json
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

- **Generated at:** 2026-05-05T20:37:33.915Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-c067f024
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
