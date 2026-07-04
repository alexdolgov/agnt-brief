# Agentic Audit Brief: redstone-oracles

## Project Overview

- Project: redstone-oracles (`redstone-oracles`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.268Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, bsc, ethereum
- Contract surface: 180 unique implementations (180 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 92 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 45 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (redstoneconsumernumericbase, redstoneconsumerbase, calldataextractor). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **cap** (`cap`) in the EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, EthereumPriceFeedBtcWithoutRoundsV1, EthereumPriceFeedEgethFundamentalWithoutRoundsV1, … subsystem.
8 audits inherited from `cap`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 180; live-surface contracts included: 180 (179 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/179 (8.9%)
- Deployed-live implementations: 179 of 180 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/180
- Verified + Unaudited implementations: 164
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 180
- Raw deployments: 180
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.9% (Certora, Sherlock, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 16 | 8.9% | 2025-09 |
| Electisec | Tier 2 | 16 | 8.9% | 2025-05 |
| Octane | Tier 2 | 16 | 8.9% | 2026-03 |
| Recon | Tier 2 | 16 | 8.9% | 2025-07 |
| Sherlock | Tier 1 | 16 | 8.9% | 2025-09 |
| Spearbit | Tier 1 | 16 | 8.9% | 2025-11 |
| Trail of Bits | Tier 1 | 16 | 8.9% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | ethereum | n/a | [`0x14449c...cb97f9`](./contracts/ethereum-1/0x14449cc3185dec0421c3cb37074215f1aacb97f9/) | ✅ Audited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | ethereum | n/a | [`0x46a2b8...286021`](./contracts/ethereum-1/0x46a2b84901410a81c6421104a12d6555ca286021/) | ✅ Audited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x6a1c87...14170d`](./contracts/ethereum-1/0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d/) | ✅ Audited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xc9e11c...98a86e`](./contracts/ethereum-1/0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e/) | ✅ Audited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x24edd6...7a9187`](./contracts/ethereum-1/0x24edd61cda334bff871a80deb135073a7d7a9187/) | ✅ Audited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x29d295...791346`](./contracts/ethereum-1/0x29d295409d5a20b2c851df18054d32a442791346/) | ✅ Audited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | ethereum | n/a | [`0x65ed6a...23e4db`](./contracts/ethereum-1/0x65ed6a4ac085620ee943c0b15525c4428d23e4db/) | ✅ Audited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | ethereum | n/a | [`0xe7f71d...bd74f4`](./contracts/ethereum-1/0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4/) | ✅ Audited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0xae02d5...237979`](./contracts/ethereum-1/0xae02d5be17a23c8fdd0676c6a5f9143d91237979/) | ✅ Audited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3401da...c3df29`](./contracts/ethereum-1/0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29/) | ✅ Audited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | ethereum | n/a | [`0x84ad47...92f96b`](./contracts/ethereum-1/0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b/) | ✅ Audited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4cec96...a66da0`](./contracts/ethereum-1/0x4cec96a68cb9a979621b104f3c94884be1a66da0/) | ✅ Audited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x243507...e32ece`](./contracts/ethereum-1/0x243507c8c114618d7c8ad94b51118db7b4e32ece/) | ✅ Audited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | ethereum | n/a | [`0x096396...d80dc8`](./contracts/ethereum-1/0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8/) | ✅ Audited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4e202a...0eaaa8`](./contracts/ethereum-1/0x4e202a7e713d00804f9ce397260362bf5e0eaaa8/) | ✅ Audited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | ethereum | n/a | [`0x56b13a...191d71`](./contracts/ethereum-1/0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71/) | ✅ Audited |

### ⚠️ Verified + Unaudited (164)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseMultiFeedAdapterWithoutRoundsV1 | unknown | base | n/a | [`0xf030a9...417f56`](./contracts/base-8453/0xf030a9ad2707c6c628f58372fa3b355264417f56/) | ⚠️ Unaudited |
| BaseMultiFeedAdapterWithoutRoundsV3 | unknown | base | n/a | [`0xb81131...96c2db`](./contracts/base-8453/0xb81131b6368b3f0a83af09db4e39ac23da96c2db/) | ⚠️ Unaudited |
| BasePriceFeedAeroWithoutRoundsV1 | unknown | base | n/a | [`0xa8a94d...74aa43`](./contracts/base-8453/0xa8a94da411425634e3ed6c331a32ab4fd774aa43/) | ⚠️ Unaudited |
| BasePriceFeedBioWithoutRoundsV1 | unknown | base | n/a | [`0x13433b...28414e`](./contracts/base-8453/0x13433b1949d9141be52ae13ad7e7e4911228414e/) | ⚠️ Unaudited |
| BasePriceFeedBtcWithoutRoundsV1 | unknown | base | n/a | [`0x24edd6...7a9187`](./contracts/base-8453/0x24edd61cda334bff871a80deb135073a7d7a9187/) | ⚠️ Unaudited |
| BasePriceFeedCbbtcWithoutRoundsV1 | unknown | base | n/a | [`0x8b4736...dedf20`](./contracts/base-8453/0x8b4736f5ead8ed579ecf65a13f9c1e8b44dedf20/) | ⚠️ Unaudited |
| BasePriceFeedCetesWithoutRoundsV1 | unknown | base | n/a | [`0x26fb59...410a3d`](./contracts/base-8453/0x26fb59e5562405f42f55661f790fa1bd2f410a3d/) | ⚠️ Unaudited |
| BasePriceFeedEurobWithoutRoundsV1 | unknown | base | n/a | [`0x6f57ff...5b2904`](./contracts/base-8453/0x6f57ff507735bcd3d86af83af77abd10395b2904/) | ⚠️ Unaudited |
| BasePriceFeedFbombWithoutRoundsV1 | unknown | base | n/a | [`0xe4bfe4...913020`](./contracts/base-8453/0xe4bfe4071d363e1d4274fb8f79cb510b75913020/) | ⚠️ Unaudited |
| BasePriceFeedFrxusdWithoutRoundsV1 | unknown | base | n/a | [`0x2d4f31...92654e`](./contracts/base-8453/0x2d4f3199a80b848f3d094745f3bbd4224892654e/) | ⚠️ Unaudited |
| BasePriceFeedFxusdWithoutRoundsV1 | unknown | base | n/a | [`0x4a784c...4f44a2`](./contracts/base-8453/0x4a784cb1e0b4c07aef60f98c561f04b4414f44a2/) | ⚠️ Unaudited |
| BasePriceFeedGiltsWithoutRoundsV1 | unknown | base | n/a | [`0x22d476...347b0a`](./contracts/base-8453/0x22d47686b3aec9068768f84efd8ce2637a347b0a/) | ⚠️ Unaudited |
| BasePriceFeedKaitoWithoutRoundsV1 | unknown | base | n/a | [`0x3fd49f...385ac4`](./contracts/base-8453/0x3fd49f2146fe0e10c4ae7e3fe04b3d5126385ac4/) | ⚠️ Unaudited |
| BasePriceFeedKtbWithoutRoundsV1 | unknown | base | n/a | [`0x65d0f1...6b815b`](./contracts/base-8453/0x65d0f14f7809cdc4f90c3978c753c4671b6b815b/) | ⚠️ Unaudited |
| BasePriceFeedLbtcFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x5c4c8d...b7e48f`](./contracts/base-8453/0x5c4c8d6f6bf79b718f3e8399aabdfed01cb7e48f/) | ⚠️ Unaudited |
| BasePriceFeedMxneWithoutRoundsV1 | unknown | base | n/a | [`0x31a36c...361803`](./contracts/base-8453/0x31a36cdf4465ba61ce78f5cdba26fdf8ec361803/) | ⚠️ Unaudited |
| BasePriceFeedPrimeEchelonWithoutRoundsV1 | unknown | base | n/a | [`0x197225...04c57c`](./contracts/base-8453/0x197225b3b017eb9b72ac356d6b3c267d0c04c57c/) | ⚠️ Unaudited |
| BasePriceFeedPromptWithoutRoundsV1 | unknown | base | n/a | [`0xb89cc2...84624a`](./contracts/base-8453/0xb89cc2ce1cad0d26fed6794c1f4cf4b28684624a/) | ⚠️ Unaudited |
| BasePriceFeedPufferWithoutRoundsV1 | unknown | base | n/a | [`0x85c4f8...bfe97d`](./contracts/base-8453/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | ⚠️ Unaudited |
| BasePriceFeedSusdpBaseFundamentalusdWithoutRoundsV1 | unknown | base | n/a | [`0x4af6b7...6f7a78`](./contracts/base-8453/0x4af6b78d92432d32e3a635e824d3a541866f7a78/) | ⚠️ Unaudited |
| BasePriceFeedSusdxBnbFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x096396...d80dc8`](./contracts/base-8453/0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8/) | ⚠️ Unaudited |
| BasePriceFeedSusdzFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x24c896...ea42cc`](./contracts/base-8453/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | ⚠️ Unaudited |
| BasePriceFeedTesouroWithoutRoundsV1 | unknown | base | n/a | [`0x98dc6e...268633`](./contracts/base-8453/0x98dc6e90d4c2f212ed9d124ad2afba4833268633/) | ⚠️ Unaudited |
| BasePriceFeedThbillFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x0d9b42...327ebb`](./contracts/base-8453/0x0d9b42a2a73ec528759701d0b70ccf974a327ebb/) | ⚠️ Unaudited |
| BasePriceFeedUsdcWithoutRoundsV1 | unknown | base | n/a | [`0x7a9b67...e5e263`](./contracts/base-8453/0x7a9b672fc20b5c89d6774514052b3e0899e5e263/) | ⚠️ Unaudited |
| BasePriceFeedUsdpFundamentalusdWithoutRoundsV1 | unknown | base | n/a | [`0xd15862...a69b8c`](./contracts/base-8453/0xd15862fc3d5407a03b696548b6902d6464a69b8c/) | ⚠️ Unaudited |
| BasePriceFeedUsrWithoutRoundsV1 | unknown | base | n/a | [`0x4bad96...ea7a57`](./contracts/base-8453/0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57/) | ⚠️ Unaudited |
| BasePriceFeedUstryWithoutRoundsV1 | unknown | base | n/a | [`0xe94c9f...8a5f8c`](./contracts/base-8453/0xe94c9f9a1893f23be38a5c0394e46ac05e8a5f8c/) | ⚠️ Unaudited |
| BasePriceFeedUtyFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x3401da...c3df29`](./contracts/base-8453/0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29/) | ⚠️ Unaudited |
| BasePriceFeedUtyPeggedFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x4f67fd...410add`](./contracts/base-8453/0x4f67fd74cff274ef2942223c0f3166b856410add/) | ⚠️ Unaudited |
| BasePriceFeedWstethWithoutRoundsV1 | unknown | base | n/a | [`0xab7f62...3c28fc`](./contracts/base-8453/0xab7f623fb2f6fea6601d4350fa0e2290663c28fc/) | ⚠️ Unaudited |
| BasePriceFeedXvsWithoutRoundsV1 | unknown | base | n/a | [`0x368ee5...bc7ca4`](./contracts/base-8453/0x368ee51e47a594fe1e9908b48228748a30bc7ca4/) | ⚠️ Unaudited |
| BasePriceFeedYusdFundamentalWithoutRoundsV1 | unknown | base | n/a | [`0x5708d9...9974e1`](./contracts/base-8453/0x5708d924fc996edee46962cdb6815f90639974e1/) | ⚠️ Unaudited |
| BnbMultiFeedAdapterWithoutRoundsV1 | unknown | bsc | n/a | [`0xbf228a...d99cd1`](./contracts/bsc-56/0xbf228a9131ab3bb8ca8c7a4ad574932253d99cd1/) | ⚠️ Unaudited |
| BnbMultiFeedAdapterWithoutRoundsV5 | unknown | bsc | n/a | [`0x5e21f6...62d184`](./contracts/bsc-56/0x5e21f6530f656a38cae4f55500944753f662d184/) | ⚠️ Unaudited |
| BnbMultiFeedAdapterWithoutRoundsV7 | unknown | bsc | n/a | [`0xb9bd79...3524a4`](./contracts/bsc-56/0xb9bd795bb71012c0f3cd1d9c9a4c686f2d3524a4/) | ⚠️ Unaudited |
| BnbPriceFeedAsbnbFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x4eadec...64c1d1`](./contracts/bsc-56/0x4eadec6aa1fe2fe2559cee2ebcf32dd06b64c1d1/) | ⚠️ Unaudited |
| BnbPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x197225...04c57c`](./contracts/bsc-56/0x197225b3b017eb9b72ac356d6b3c267d0c04c57c/) | ⚠️ Unaudited |
| BnbPriceFeedEthWithoutRoundsV1 | unknown | bsc | n/a | [`0x767619...fb7b11`](./contracts/bsc-56/0x767619674cc4758cf64bf19de46964dac8fb7b11/) | ⚠️ Unaudited |
| BnbPriceFeedFilWithoutRoundsV1 | unknown | bsc | n/a | [`0xb3c5be...35ec51`](./contracts/bsc-56/0xb3c5be567817f127412d1758048b376d4d35ec51/) | ⚠️ Unaudited |
| BnbPriceFeedSolvbtcBbnbtcWithoutRoundsV1 | unknown | bsc | n/a | [`0xa8a94d...74aa43`](./contracts/bsc-56/0xa8a94da411425634e3ed6c331a32ab4fd774aa43/) | ⚠️ Unaudited |
| BnbPriceFeedSolvbtcBnbWithoutRoundsV1 | unknown | bsc | n/a | [`0x3b9c09...a7685f`](./contracts/bsc-56/0x3b9c09bde7776c32c518e2e787412a9bbaa7685f/) | ⚠️ Unaudited |
| BnbPriceFeedSolvbtcFundamentalusdWithoutRoundsV1 | unknown | bsc | n/a | [`0x607eb0...6f58d0`](./contracts/bsc-56/0x607eb00a05b849a663c909285337e51c2c6f58d0/) | ⚠️ Unaudited |
| BnbPriceFeedSolvbtcFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x3fcfa6...1a0788`](./contracts/bsc-56/0x3fcfa6fd31fad7e1681b19b7bdc43b9bc31a0788/) | ⚠️ Unaudited |
| BnbPriceFeedSusdeFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x368ee5...bc7ca4`](./contracts/bsc-56/0x368ee51e47a594fe1e9908b48228748a30bc7ca4/) | ⚠️ Unaudited |
| BnbPriceFeedSusdxBnbFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x3fd49f...385ac4`](./contracts/bsc-56/0x3fd49f2146fe0e10c4ae7e3fe04b3d5126385ac4/) | ⚠️ Unaudited |
| BnbPriceFeedTheWithoutRoundsV1 | unknown | bsc | n/a | [`0xe4bfe4...913020`](./contracts/bsc-56/0xe4bfe4071d363e1d4274fb8f79cb510b75913020/) | ⚠️ Unaudited |
| BnbPriceFeedTwtWithoutRoundsV1 | unknown | bsc | n/a | [`0x6e7407...31562d`](./contracts/bsc-56/0x6e7407fcd5021e3fe5f75959575b20c85231562d/) | ⚠️ Unaudited |
| BnbPriceFeedUsd1WithoutRoundsV1 | unknown | bsc | n/a | [`0x5708d9...9974e1`](./contracts/bsc-56/0x5708d924fc996edee46962cdb6815f90639974e1/) | ⚠️ Unaudited |
| BnbPriceFeedUsdcWithoutRoundsV1 | unknown | bsc | n/a | [`0x025f4e...c86491`](./contracts/bsc-56/0x025f4e1b951d14b69e83ba6f6f069d5538c86491/) | ⚠️ Unaudited |
| BnbPriceFeedUsdeWithoutRoundsV1 | unknown | bsc | n/a | [`0x096396...d80dc8`](./contracts/bsc-56/0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8/) | ⚠️ Unaudited |
| BnbPriceFeedUsdtWithoutRoundsV1 | unknown | bsc | n/a | [`0x2ddfa9...e33568`](./contracts/bsc-56/0x2ddfa9b00d2989798186321da38dfdd1c6e33568/) | ⚠️ Unaudited |
| BnbPriceFeedUsdxWithoutRoundsV1 | unknown | bsc | n/a | [`0x3587a7...0bc2cc`](./contracts/bsc-56/0x3587a73aa02519335a8a6053a97657bece0bc2cc/) | ⚠️ Unaudited |
| BnbPriceFeedVbillBnbFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x4f67fd...410add`](./contracts/bsc-56/0x4f67fd74cff274ef2942223c0f3166b856410add/) | ⚠️ Unaudited |
| BnbPriceFeedWbethFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x9c861d...42adc5`](./contracts/bsc-56/0x9c861de57060f7b7f18c5f65bc940b6adb42adc5/) | ⚠️ Unaudited |
| BnbPriceFeedWlfiWithoutRoundsV1 | unknown | bsc | n/a | [`0x65ed6a...23e4db`](./contracts/bsc-56/0x65ed6a4ac085620ee943c0b15525c4428d23e4db/) | ⚠️ Unaudited |
| BnbPriceFeedWstethethWithoutRoundsV1 | unknown | bsc | n/a | [`0xb260b1...a7abb3`](./contracts/bsc-56/0xb260b15a4ae8392531e6d8667067ca2c67a7abb3/) | ⚠️ Unaudited |
| BnbPriceFeedXvsWithoutRoundsV1 | unknown | bsc | n/a | [`0x31a36c...361803`](./contracts/bsc-56/0x31a36cdf4465ba61ce78f5cdba26fdf8ec361803/) | ⚠️ Unaudited |
| BnbPriceFeedYusdFundamentalWithoutRoundsV1 | unknown | bsc | n/a | [`0x24edd6...7a9187`](./contracts/bsc-56/0x24edd61cda334bff871a80deb135073a7d7a9187/) | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | ethereum | n/a | [`0x4b2c40...7a942b`](./contracts/ethereum-1/0x4b2c406f0dbf7624a32971277da7b4c43a7a942b/) | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xd6bcbb...65d51c`](./contracts/ethereum-1/0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c/) | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x767b89...241db9`](./contracts/ethereum-1/0x767b8971ca1dc117f624d3ee3053d2881d241db9/) | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x105eac...022021`](./contracts/ethereum-1/0x105eac28b82b872a8b10218bd237a4c097022021/) | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3f2c69...8818de`](./contracts/ethereum-1/0x3f2c697fcce450a65092eb50ad6f24bd478818de/) | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0x4f67fd...410add`](./contracts/ethereum-1/0x4f67fd74cff274ef2942223c0f3166b856410add/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2d4f31...92654e`](./contracts/ethereum-1/0x2d4f3199a80b848f3d094745f3bbd4224892654e/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4f4e63...baf52e`](./contracts/ethereum-1/0x4f4e639745cfb234b6176e96c6afd83269baf52e/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xf2db7b...c17bf3`](./contracts/ethereum-1/0xf2db7b3455077fb177215d45d62d441df3c17bf3/) | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0xe13e2b...0ae049`](./contracts/ethereum-1/0xe13e2bbab029bfb324f49048ced0e95ea30ae049/) | ⚠️ Unaudited |
| EthereumPriceFeedCurrEodWithoutRoundsV1 | unknown | ethereum | n/a | [`0xbbafa6...5a13b4`](./contracts/ethereum-1/0xbbafa68719ebf4a174971032588f4aeedf5a13b4/) | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2d7a68...b92bcb`](./contracts/ethereum-1/0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb/) | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4c8996...8282fd`](./contracts/ethereum-1/0x4c89968338b75551243c99b452c84a01888282fd/) | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | ethereum | n/a | [`0x51a855...039ba5`](./contracts/ethereum-1/0x51a855867ae59d6292d5675b654c776147039ba5/) | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2ee5ce...8cb86d`](./contracts/ethereum-1/0x2ee5ce6556599e16c226579ba14f94926d8cb86d/) | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09f9a1...eb577e`](./contracts/ethereum-1/0x09f9a127fba172c41d8c29e49b3c1326d2eb577e/) | ⚠️ Unaudited |
| EthereumPriceFeedFgnxEodWithoutRoundsV1 | unknown | ethereum | n/a | [`0x48acab...f2c4c4`](./contracts/ethereum-1/0x48acab99130b3f319f2b272619e83985a3f2c4c4/) | ⚠️ Unaudited |
| EthereumPriceFeedFgnxpEodWithoutRoundsV1 | unknown | ethereum | n/a | [`0x37b34c...039e75`](./contracts/ethereum-1/0x37b34c551c12e356ba9290d002e5594c99039e75/) | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4bad96...ea7a57`](./contracts/ethereum-1/0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57/) | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x1f14a5...4398d7`](./contracts/ethereum-1/0x1f14a50ba904a28cf6088e71b6a15561074398d7/) | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x031380...22a05f`](./contracts/ethereum-1/0x03138081aed44e2e0eb10361ee41d84edd22a05f/) | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x573bb5...6e96f8`](./contracts/ethereum-1/0x573bb572049ff50156e94823bb99920d406e96f8/) | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x89621c...9a3e9a`](./contracts/ethereum-1/0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a/) | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x636eca...e32a7b`](./contracts/ethereum-1/0x636eca78f6b46a69ab233ef513c1fb4703e32a7b/) | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09ba94...cd5b06`](./contracts/ethereum-1/0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06/) | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x5e7281...c19d95`](./contracts/ethereum-1/0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95/) | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | ethereum | n/a | [`0xc328cd...7146b6`](./contracts/ethereum-1/0xc328cdf06cbc77134b84e1f6ed452774947146b6/) | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | ethereum | n/a | [`0x25a23c...f5da40`](./contracts/ethereum-1/0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40/) | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | ethereum | n/a | [`0x197225...04c57c`](./contracts/ethereum-1/0x197225b3b017eb9b72ac356d6b3c267d0c04c57c/) | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0x85c4f8...bfe97d`](./contracts/ethereum-1/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0xb7699e...f1d6be`](./contracts/ethereum-1/0xb7699e81acf22456fa83696573738dfa25f1d6be/) | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0xb60224...0d2c94`](./contracts/ethereum-1/0xb60224122830fd6cf5119f548477a190310d2c94/) | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3587a7...0bc2cc`](./contracts/ethereum-1/0x3587a73aa02519335a8a6053a97657bece0bc2cc/) | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x24c896...ea42cc`](./contracts/ethereum-1/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3f145f...f5a721`](./contracts/ethereum-1/0x3f145fd2cc3ed0806cae3eba73472e5991f5a721/) | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x97e3c4...c0147a`](./contracts/ethereum-1/0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a/) | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x6dd1e6...78cd52`](./contracts/ethereum-1/0x6dd1e6799b67434601fd0c65cf13d4df9278cd52/) | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x041a85...5f33d7`](./contracts/ethereum-1/0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7/) | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x0a6fd5...dc77b3`](./contracts/ethereum-1/0x0a6fd5820f797e517297feff90aaecd8e2dc77b3/) | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x9d0ab8...c18519`](./contracts/ethereum-1/0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519/) | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x80b073...5a2c93`](./contracts/ethereum-1/0x80b0735616b27b647233d3ab67078c95ba5a2c93/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | ethereum | n/a | [`0x3ebfaa...76607b`](./contracts/ethereum-1/0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdeWithoutRoundsV1 | unknown | ethereum | n/a | [`0xbc5fbc...5cfd58`](./contracts/ethereum-1/0xbc5fbcf58ceaea19d523abc76515b9aefb5cfd58/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | ethereum | n/a | [`0x02e1f8...b54ed2`](./contracts/ethereum-1/0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2/) | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | ethereum | n/a | [`0x107dd3...0779ee`](./contracts/ethereum-1/0x107dd3391a6357248f2093698014e7c6130779ee/) | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x261997...6b7f3f`](./contracts/ethereum-1/0x2619976127c90de2eea94b368ac5156ef16b7f3f/) | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2240ae...a54840`](./contracts/ethereum-1/0x2240ae461b34cc56d654ba5fa5830a243ca54840/) | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x40ea33...4a63cc`](./contracts/ethereum-1/0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc/) | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x019697...958de9`](./contracts/ethereum-1/0x019697e7832dba533c320c0e2a36faa2da958de9/) | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | ethereum | n/a | [`0x131141...bf4a7e`](./contracts/ethereum-1/0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e/) | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | ethereum | n/a | [`0xa7b024...d5da98`](./contracts/ethereum-1/0xa7b0247d2da6b11ff2740491cb433a1520d5da98/) | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | ethereum | n/a | [`0x84c698...978f64`](./contracts/ethereum-1/0x84c698e69d420aea702e10acc01850ef57978f64/) | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3d0124...1daeb9`](./contracts/ethereum-1/0x3d01242aadc0425209544520093e74fd151daeb9/) | ⚠️ Unaudited |
| MergedAdapterWithoutRoundsBnbV1 | unknown | bsc | n/a | [`0xc49f0d...f3a161`](./contracts/bsc-56/0xc49f0dd98f38c525a7ce15e73e60675456f3a161/) | ⚠️ Unaudited |
| MergedAdapterWithoutRoundsBtcV1 | unknown | bsc | n/a | [`0x100c8e...dd7272`](./contracts/bsc-56/0x100c8e61ab3bea812a42976199fc3dafbcdd7272/) | ⚠️ Unaudited |
| MergedAdapterWithoutRoundsWeethfundamentalV1 | unknown | bsc | n/a | [`0x6c5090...b33e4d`](./contracts/bsc-56/0x6c5090e85a65038ca6ab207cdb9e7a897cb33e4d/) | ⚠️ Unaudited |
| MergedAdapterWithRoundsEzethethV1 | unknown | bsc | n/a | [`0x0e2d75...632942`](./contracts/bsc-56/0x0e2d75d760b12ac1f2ae84cd2ff9fd13cb632942/) | ⚠️ Unaudited |
| MergedAdapterWithRoundsRsethethV1 | unknown | ethereum | n/a | [`0xd83ba0...9f7a4f`](./contracts/ethereum-1/0xd83ba0fba552862d679d77d074e01cdf259f7a4f/) | ⚠️ Unaudited |
| MergedAdapterWithRoundsStoneV1 | unknown | bsc | n/a | [`0x1bb8f2...d5144b`](./contracts/bsc-56/0x1bb8f2df000553e5af2aed5c42fed3a73cd5144b/) | ⚠️ Unaudited |
| PriceFeedsAdapterVenusBnbTrx | unknown | bsc | n/a | [`0xa1e354...3b160e`](./contracts/bsc-56/0xa1e35422d4ac6b7cd700402f768db3c0e93b160e/) | ⚠️ Unaudited |
| PriceFeedsAdapterWithoutRoundsUsdeSusdeV1 | unknown | ethereum | n/a | [`0xa6ab34...fc705f`](./contracts/ethereum-1/0xa6ab34c11accfaf8c72635fc814ea4e1b7fc705f/) | ⚠️ Unaudited |
| PriceFeedsAdapterWithoutRoundsUsdeSusdeV2 | unknown | ethereum | n/a | [`0x1b9b4b...30c1c5`](./contracts/ethereum-1/0x1b9b4b6705797968954a597362898ace5f30c1c5/) | ⚠️ Unaudited |
| PriceFeedVenusBnbTrxTrx | unknown | bsc | n/a | [`0x6313ab...ddadc1`](./contracts/bsc-56/0x6313ab8ca7b39422db8f2fd619c2c1f3c9ddadc1/) | ⚠️ Unaudited |
| PriceFeedWithoutRoundsSusdeV1 | unknown | ethereum | n/a | [`0xb7e2d6...1a7643`](./contracts/ethereum-1/0xb7e2d66d9c09a10e5ca7116bd76f7a7e1e1a7643/) | ⚠️ Unaudited |
| PriceFeedWithoutRoundsUsdeV1 | unknown | ethereum | n/a | [`0x40e36b...9c5c96`](./contracts/ethereum-1/0x40e36bf05a4641bb3966ca04aa9288aaeb9c5c96/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x6663b8...ad2d4e`](./contracts/bsc-56/0x6663b8cd78e22a4cc398334e16d726bdf2ad2d4e/) | ⚠️ Unaudited |
| RedstoneToken | unknown | ethereum | n/a | [`0xc43c6b...0bb5de`](./contracts/ethereum-1/0xc43c6bfeda065fe2c4c11765bf838789bd0bb5de/) | ⚠️ Unaudited |
| TerminatedContract | unknown | base | n/a | [`0x65ed6a...23e4db`](./contracts/base-8453/0x65ed6a4ac085620ee943c0b15525c4428d23e4db/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2e65b1...7aa4f6`](./contracts/ethereum-1/0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x354d1e...2aae3e`](./contracts/ethereum-1/0x354d1e7d9cf90841dfa252547881db96af2aae3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x613769...3d6bb6`](./contracts/ethereum-1/0x61376924babe5a0fa982fff2c8be8013be3d6bb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6682c5...c7bf47`](./contracts/ethereum-1/0x6682c5b9b47ec0d18beb2088779f14535fc7bf47/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb99d17...d4733f`](./contracts/ethereum-1/0xb99d174ed06c83588af997c8859f93e83dd4733f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x05c70f...02f631`](./contracts/bsc-56/0x05c70f0a77c02cdb50a146d95efe826a6b02f631/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0abe8c...ec59d0`](./contracts/bsc-56/0x0abe8c71dc476a1cb4a9a3544169120f56ec59d0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0be692...fcdcec`](./contracts/bsc-56/0x0be6929fd4ad87347e97a525db6ac8e884fcdcec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x107dd3...0779ee`](./contracts/bsc-56/0x107dd3391a6357248f2093698014e7c6130779ee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1b0fda...915a6f`](./contracts/bsc-56/0x1b0fda12d125b864756bbf191ad20eab10915a6f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x22d476...347b0a`](./contracts/bsc-56/0x22d47686b3aec9068768f84efd8ce2637a347b0a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x24c896...ea42cc`](./contracts/bsc-56/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x26fb59...410a3d`](./contracts/bsc-56/0x26fb59e5562405f42f55661f790fa1bd2f410a3d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x29d2fe...ddbcae`](./contracts/bsc-56/0x29d2fec890b037b2d34f061f9a50f76f85ddbcae/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2d4f31...92654e`](./contracts/bsc-56/0x2d4f3199a80b848f3d094745f3bbd4224892654e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x3401da...c3df29`](./contracts/bsc-56/0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x4a784c...4f44a2`](./contracts/bsc-56/0x4a784cb1e0b4c07aef60f98c561f04b4414f44a2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x56b13a...191d71`](./contracts/bsc-56/0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x5c4c8d...b7e48f`](./contracts/bsc-56/0x5c4c8d6f6bf79b718f3e8399aabdfed01cb7e48f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x6f57ff...5b2904`](./contracts/bsc-56/0x6f57ff507735bcd3d86af83af77abd10395b2904/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x7a9b67...e5e263`](./contracts/bsc-56/0x7a9b672fc20b5c89d6774514052b3e0899e5e263/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x85c4f8...bfe97d`](./contracts/bsc-56/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x8d89d6...cc5bbc`](./contracts/bsc-56/0x8d89d6c114193154f111d7c83299d285c9cc5bbc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x90196f...033ccf`](./contracts/bsc-56/0x90196f6d52fce394c79d1614265d36d3f0033ccf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x97c19d...ed76d4`](./contracts/bsc-56/0x97c19d3ae8e4d74e25ef3aff3a277fb614ed76d4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x98dc6e...268633`](./contracts/bsc-56/0x98dc6e90d4c2f212ed9d124ad2afba4833268633/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x98ece0...b274eb`](./contracts/bsc-56/0x98ece0d516f891a35278e3186772fb1545b274eb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x9b2c94...8da1ab`](./contracts/bsc-56/0x9b2c948dba5952a1f5ab6fa16101c1392b8da1ab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa17362...90b916`](./contracts/bsc-56/0xa17362dd9ad6d0af646d7c8f8578fddbfc90b916/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa51738...2d9f55`](./contracts/bsc-56/0xa51738d1937ffc553d5070f43300b385aa2d9f55/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa75cc4...77b00f`](./contracts/bsc-56/0xa75cc459de167de5bc21ccdeccdb85e86377b00f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xc44be6...6cbc13`](./contracts/bsc-56/0xc44be6d00307c3565fdf753e852fc003036cbc13/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xd65d50...32ba0f`](./contracts/bsc-56/0xd65d50eba419facb6ac4957b564765dde932ba0f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xe46308...5a4e96`](./contracts/bsc-56/0xe4630835ea31abd4247e449a550fb92c8a5a4e96/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xec7c6a...6538e4`](./contracts/bsc-56/0xec7c6adcc867e1c22713d14797339750e36538e4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xf5f641...fa4550`](./contracts/bsc-56/0xf5f641ff3c7e39876a76e77e84041c300dfa4550/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0xe8d9fb...a76fb2`](./contracts/base-8453/0xe8d9fbc10e00ecc9f0694617075fdaf657a76fb2/) | ⚠️ Unaudited |

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
| [2026-03-24-Octane.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2026-03-24-Octane.pdf) | Octane | Audit | 2026-03 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-11-27-Spearbit (PR Review).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-11-27-Spearbit%20(PR%20Review).pdf) | Spearbit | Audit | 2025-11 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-09-15-Certora (EigenAVS).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-15-Certora%20(EigenAVS).pdf) | Certora | Audit | 2025-09 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-09-03-Sherlock.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-03-Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-07-04-Recon.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-07-04-Recon.pdf) | Recon | Audit | 2025-07 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-06-23-Spearbit.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-06-23-Spearbit.pdf) | Spearbit | Audit | 2025-06 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-05-25-Electisec.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-25-Electisec.pdf) | Electisec | Audit | 2025-05 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-05-15-TrailOfBits.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-15-TrailOfBits.pdf) | Trail of Bits | Audit | 2025-05 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 180 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=128

Fork inheritance lineage and inherited audits are included when available.
