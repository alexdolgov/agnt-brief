# Agentic Audit Brief: Tetu

## Project Overview

- Project: Tetu (`tetu`)
- Website: [http://tetu.io](http://tetu.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.316Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: base, bsc, ethereum, polygon, sonic
- Contract surface: 257 unique implementations (257 raw deployments)
- DeFi Llama TVL: $411,747.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 237 project-authored contract(s) across 5 chain(s); 1 ERC4626 vault, 13 ERC20 tokens, 7 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 22 common project-authored base contract(s) (administrable, controllablev2, strategystorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 257; live-surface contracts included: 257 (257 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 34/247 (13.8%)
- Deployed-live implementations: 257 of 257 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 34/257
- Verified + Unaudited implementations: 223
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 257
- Raw deployments: 257
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/tetu/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 34 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 29 | 11.3% | 2023-01 |
| unknown | Tier 2 | 6 | 2.3% | n/a |
| CertiK | Tier 2 | 1 | 0.4% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Announcer | unknown | bsc | n/a | [`0x0630d8ce3aec9acead3b78fece1aff67a11a7195`](./contracts/bsc-56/0x0630d8ce3aec9acead3b78fece1aff67a11a7195/) | ✅ Audited |
| BalDepositorChanger | unknown | ethereum | n/a | [`0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8`](./contracts/ethereum-1/0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8/) | ✅ Audited |
| Controller | unknown | polygon | n/a | [`0x00f17fc1eb1a58afdda707a5dde4344c124f7f8f`](./contracts/polygon-137/0x00f17fc1eb1a58afdda707a5dde4344c124f7f8f/) | ✅ Audited |
| ControllerV2 | unknown | polygon | n/a | [`0x128a0b5812828137a5098af532199cd5e56c2691`](./contracts/polygon-137/0x128a0b5812828137a5098af532199cd5e56c2691/) | ✅ Audited |
| FeeRewardForwarder | unknown | polygon | n/a | [`0x11765038a27d21a399e2f240d2a2a506da7324b0`](./contracts/polygon-137/0x11765038a27d21a399e2f240d2a2a506da7324b0/) | ✅ Audited |
| MintHelper | unknown | polygon | n/a | [`0x2a3df2a428eb74b241cf1d3374fb07983c7059f3`](./contracts/polygon-137/0x2a3df2a428eb74b241cf1d3374fb07983c7059f3/) | ✅ Audited |
| NoopStrategy | unknown | polygon | n/a | [`0x0dcc06fa43fcb5f775759652ef3bf7584f30af73`](./contracts/polygon-137/0x0dcc06fa43fcb5f775759652ef3bf7584f30af73/) | ✅ Audited |
| NotifyHelper | unknown | polygon | n/a | [`0x099c314f792e1f91f53765fc64aadccf4dcf1538`](./contracts/polygon-137/0x099c314f792e1f91f53765fc64aadccf4dcf1538/) | ✅ Audited |
| PriceCalculator | unknown | bsc | n/a | [`0x0004fc5b1742abc768d048ce7906eef2e8916ef2`](./contracts/bsc-56/0x0004fc5b1742abc768d048ce7906eef2e8916ef2/) | ✅ Audited |
| ProxyControlled | unknown | polygon | n/a | [`0x0089539becb82ab51bc5c76f93aa61281540ff33`](./contracts/polygon-137/0x0089539becb82ab51bc5c76f93aa61281540ff33/) | ✅ Audited |
| ProxyControlled | unknown | polygon | n/a | [`0x04402ab9faf2a79b0ab2b1a0c55b645cb29547ce`](./contracts/polygon-137/0x04402ab9faf2a79b0ab2b1a0c55b645cb29547ce/) | ✅ Audited |
| ProxyControlled | unknown | polygon | n/a | [`0x09655b50ada39ee0b38124f8ef13b0f9bc57573a`](./contracts/polygon-137/0x09655b50ada39ee0b38124f8ef13b0f9bc57573a/) | ✅ Audited |
| ProxyControlled | unknown | polygon | n/a | [`0x0bcbe4653e96ae39bde24312882faa0eddf03256`](./contracts/polygon-137/0x0bcbe4653e96ae39bde24312882faa0eddf03256/) | ✅ Audited |
| ProxyControlled | unknown | polygon | n/a | [`0x1355506d333b01fe3dec2d46ae29b7cd6c52dd1c`](./contracts/polygon-137/0x1355506d333b01fe3dec2d46ae29b7cd6c52dd1c/) | ✅ Audited |
| ProxyControlled | unknown | polygon | n/a | [`0x1fce21231cd7d8a75162216789d8c9859dfe8757`](./contracts/polygon-137/0x1fce21231cd7d8a75162216789d8c9859dfe8757/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x0004fc5b1742abc768d048ce7906eef2e8916ef2`](./contracts/sonic-146/0x0004fc5b1742abc768d048ce7906eef2e8916ef2/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x0051d87779dec7f9efee7635275449baac7fe505`](./contracts/sonic-146/0x0051d87779dec7f9efee7635275449baac7fe505/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x00ae29e31748898b8b404b4dcf076738f68439d4`](./contracts/sonic-146/0x00ae29e31748898b8b404b4dcf076738f68439d4/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x01d0b17ac7b72cd4b051840e27a2134f25c53265`](./contracts/sonic-146/0x01d0b17ac7b72cd4b051840e27a2134f25c53265/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x32b02579ecb469b68e4a58e31f46b4087f9a2e9a`](./contracts/sonic-146/0x32b02579ecb469b68e4a58e31f46b4087f9a2e9a/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x432dfe55e314f5f7c944e759b401be8e59df83e8`](./contracts/sonic-146/0x432dfe55e314f5f7c944e759b401be8e59df83e8/) | ✅ Audited |
| ProxyControlled | unknown | sonic | n/a | [`0x444e5eb1c33a38fcb184cc95ef8b42a26d616eaa`](./contracts/sonic-146/0x444e5eb1c33a38fcb184cc95ef8b42a26d616eaa/) | ✅ Audited |
| ProxyControlled | unknown | base | n/a | [`0x03fd3ae2758ab37e8692e1844e0692e9b058c735`](./contracts/base-8453/0x03fd3ae2758ab37e8692e1844e0692e9b058c735/) | ✅ Audited |
| ProxyControlled | unknown | base | n/a | [`0x57205cc741f8787a5195b2126607ac505e11b650`](./contracts/base-8453/0x57205cc741f8787a5195b2126607ac505e11b650/) | ✅ Audited |
| RebalanceResolver | unknown | ethereum | n/a | [`0xbf743e4f4cde4ff116a00a443a97f6ff54b423cd`](./contracts/ethereum-1/0xbf743e4f4cde4ff116a00a443a97f6ff54b423cd/) | ✅ Audited |
| RewardToken | unknown | polygon | n/a | [`0x255707b70bf90aa112006e1b07b9aea6de021424`](./contracts/polygon-137/0x255707b70bf90aa112006e1b07b9aea6de021424/) | ✅ Audited |
| StrategyAura | unknown | ethereum | n/a | [`0x1c8f4e0b739090de64d0c33c89950cec791ac7af`](./contracts/ethereum-1/0x1c8f4e0b739090de64d0c33c89950cec791ac7af/) | ✅ Audited |
| StrategyBalancerPool | unknown | ethereum | n/a | [`0x4243a3f941e96e270aabe5ee257c32c3a5feb37e`](./contracts/ethereum-1/0x4243a3f941e96e270aabe5ee257c32c3a5feb37e/) | ✅ Audited |
| StrategyCone | unknown | bsc | n/a | [`0x018986b86bd574889e22aab9c00bfd237958fe4a`](./contracts/bsc-56/0x018986b86bd574889e22aab9c00bfd237958fe4a/) | ✅ Audited |
| StrategySplitterV2 | unknown | polygon | n/a | [`0x07f8adc453544ca280f14f0d85af572049d2479f`](./contracts/polygon-137/0x07f8adc453544ca280f14f0d85af572049d2479f/) | ✅ Audited |
| TetuPawnShop | unknown | polygon | n/a | [`0x0c9fa52d7ed12a6316d3738c80931ecbc6c49907`](./contracts/polygon-137/0x0c9fa52d7ed12a6316d3738c80931ecbc6c49907/) | ✅ Audited |
| TetuVaultV2 | unknown | base | n/a | [`0x3bdbd2ed1a214ca4ba4421ddd7236cca3ef088b6`](./contracts/base-8453/0x3bdbd2ed1a214ca4ba4421ddd7236cca3ef088b6/) | ✅ Audited |
| VeDistributorV2 | unknown | base | n/a | [`0x166df927779ed5086b716beb4180e289496879f7`](./contracts/base-8453/0x166df927779ed5086b716beb4180e289496879f7/) | ✅ Audited |
| VeTetu | unknown | base | n/a | [`0x02404ad1c40410508b6405928ffd3f6ddb19077d`](./contracts/base-8453/0x02404ad1c40410508b6405928ffd3f6ddb19077d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (223)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnycallExecutor | unknown | bsc | n/a | [`0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e`](./contracts/bsc-56/0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | bsc | n/a | [`0x1f681b1c4065057e07b95a1e5e504fb2c85f4625`](./contracts/bsc-56/0x1f681b1c4065057e07b95a1e5e504fb2c85f4625/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | ethereum | n/a | [`0x4f851750a3e6f80f1e1f89c67b56960bfc29a934`](./contracts/ethereum-1/0x4f851750a3e6f80f1e1f89c67b56960bfc29a934/) | ⚠️ Unaudited |
| ApprovalsManager | unknown | polygon | n/a | [`0x2b81010d43c7a82de9b7273e323d3e160346dcbe`](./contracts/polygon-137/0x2b81010d43c7a82de9b7273e323d3e160346dcbe/) | ⚠️ Unaudited |
| ArbitragePoolSolidly | unknown | base | n/a | [`0x4243a3f941e96e270aabe5ee257c32c3a5feb37e`](./contracts/base-8453/0x4243a3f941e96e270aabe5ee257c32c3a5feb37e/) | ⚠️ Unaudited |
| ArbitrageVaultSolidly | unknown | base | n/a | [`0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8`](./contracts/base-8453/0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8/) | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | ethereum | n/a | [`0x8e734e30270292993dbe71c421ad2b128b6dae11`](./contracts/ethereum-1/0x8e734e30270292993dbe71c421ad2b128b6dae11/) | ⚠️ Unaudited |
| AutoRewarder | unknown | polygon | n/a | [`0x1c40c3237289c4d521534111d378ae5c9d420f62`](./contracts/polygon-137/0x1c40c3237289c4d521534111d378ae5c9d420f62/) | ⚠️ Unaudited |
| BABTAdaptor | unknown | bsc | n/a | [`0x43f04360894aef83d02d7a5cdd91ad64144969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/) | ⚠️ Unaudited |
| BalanceOfExcluded | unknown | ethereum | n/a | [`0xd5c5fc773883289778092e864afe015979a10eb9`](./contracts/ethereum-1/0xd5c5fc773883289778092e864afe015979a10eb9/) | ⚠️ Unaudited |
| BalancerStablePoolSwapper | unknown | ethereum | n/a | [`0xa4320b575e86cfa06379b8ed8c76d9149a30f948`](./contracts/ethereum-1/0xa4320b575e86cfa06379b8ed8c76d9149a30f948/) | ⚠️ Unaudited |
| BalLocker | unknown | ethereum | n/a | [`0x9cc56fa7734da21ac88f6a816af10c5b898596ce`](./contracts/ethereum-1/0x9cc56fa7734da21ac88f6a816af10c5b898596ce/) | ⚠️ Unaudited |
| BalVaultPipe | unknown | polygon | n/a | [`0x1dc8acdc552133fdaca94640560863f8d127caa5`](./contracts/polygon-137/0x1dc8acdc552133fdaca94640560863f8d127caa5/) | ⚠️ Unaudited |
| BatchReader | unknown | polygon | n/a | [`0x46d7560d09e4ee13154e9922cfff7cb4d41f0331`](./contracts/polygon-137/0x46d7560d09e4ee13154e9922cfff7cb4d41f0331/) | ⚠️ Unaudited |
| BatchTransfer | unknown | bsc | n/a | [`0xa9d79d8741510dd0fb2df7b741c899334b28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | ⚠️ Unaudited |
| BorrowLib | unknown | base | n/a | [`0xc801956f5da6d6d08a3b543acf4a98b34289c26a`](./contracts/base-8453/0xc801956f5da6d6d08a3b543acf4a98b34289c26a/) | ⚠️ Unaudited |
| BribeDistribution | unknown | base | n/a | [`0x5947868a6842e69cacad068abf6481e1f522063e`](./contracts/base-8453/0x5947868a6842e69cacad068abf6481e1f522063e/) | ⚠️ Unaudited |
| BribeFactory | unknown | polygon | n/a | [`0x5405f6de2a0d7ea0daa2b8f7e018868f9c3c2a02`](./contracts/polygon-137/0x5405f6de2a0d7ea0daa2b8f7e018868f9c3c2a02/) | ⚠️ Unaudited |
| BribeLiquidator | unknown | ethereum | n/a | [`0x1011a0289b2ba6f0d29bcaacb56cf780eb7c19c4`](./contracts/ethereum-1/0x1011a0289b2ba6f0d29bcaacb56cf780eb7c19c4/) | ⚠️ Unaudited |
| CompanyManager | unknown | polygon | n/a | [`0x0d4ce7cd22f2c1dff56444b9d64282f10a3985c2`](./contracts/polygon-137/0x0d4ce7cd22f2c1dff56444b9d64282f10a3985c2/) | ⚠️ Unaudited |
| Cone | unknown | bsc | n/a | [`0x13d862a01d0ab241509a2e47e31d0db04e9b9f49`](./contracts/bsc-56/0x13d862a01d0ab241509a2e47e31d0db04e9b9f49/) | ⚠️ Unaudited |
| ConeFactory | unknown | bsc | n/a | [`0x0efc2d2d054383462f2cd72ea2526ef7687e1016`](./contracts/bsc-56/0x0efc2d2d054383462f2cd72ea2526ef7687e1016/) | ⚠️ Unaudited |
| ConeMinter | unknown | bsc | n/a | [`0x308a756b4f9aa3148cad7ccf8e72c18c758b2ef2`](./contracts/bsc-56/0x308a756b4f9aa3148cad7ccf8e72c18c758b2ef2/) | ⚠️ Unaudited |
| ConeRouter01 | unknown | bsc | n/a | [`0xbf1fc29668e5f5eaa819948599c9ac1b1e03e75f`](./contracts/bsc-56/0xbf1fc29668e5f5eaa819948599c9ac1b1e03e75f/) | ⚠️ Unaudited |
| ConeStacker | unknown | bsc | n/a | [`0x574d055c0d6064f417766a39d6a1c2c13a267f53`](./contracts/bsc-56/0x574d055c0d6064f417766a39d6a1c2c13a267f53/) | ⚠️ Unaudited |
| ConeVoter | unknown | bsc | n/a | [`0xc3b5d80e4c094b17603ea8bb15d2d31ff5954aae`](./contracts/bsc-56/0xc3b5d80e4c094b17603ea8bb15d2d31ff5954aae/) | ⚠️ Unaudited |
| ContractReader | unknown | polygon | n/a | [`0x00dfaaec6b9bcf4da6d48b6019e6260917c20218`](./contracts/polygon-137/0x00dfaaec6b9bcf4da6d48b6019e6260917c20218/) | ⚠️ Unaudited |
| ContractReaderV2 | unknown | base | n/a | [`0x087b137545dbe79594d76f9122a12bdf5cf12ad4`](./contracts/base-8453/0x087b137545dbe79594d76f9122a12bdf5cf12ad4/) | ⚠️ Unaudited |
| ContractUtils | unknown | polygon | n/a | [`0x2d1fa5e3d4a59b65e737a6cf5ee010b106f2e66d`](./contracts/polygon-137/0x2d1fa5e3d4a59b65e737a6cf5ee010b106f2e66d/) | ⚠️ Unaudited |
| ConverterStrategyBaseLib | unknown | base | n/a | [`0x5e427a2bd4da38234c6ebad7a64d7d0007d02382`](./contracts/base-8453/0x5e427a2bd4da38234c6ebad7a64d7d0007d02382/) | ⚠️ Unaudited |
| ConverterStrategyBaseLib2 | unknown | base | n/a | [`0x4089b52f777850ebb8e8252055707b7b36817358`](./contracts/base-8453/0x4089b52f777850ebb8e8252055707b7b36817358/) | ⚠️ Unaudited |
| DataStorage | unknown | sonic | n/a | [`0xefbc16b8c973deca383aaabab07153d2eb676556`](./contracts/sonic-146/0xefbc16b8c973deca383aaabab07153d2eb676556/) | ⚠️ Unaudited |
| DepositHelper | unknown | base | n/a | [`0x2c606e0da0a10d2445be1f32ba8d08f8364b08ff`](./contracts/base-8453/0x2c606e0da0a10d2445be1f32ba8d08f8364b08ff/) | ⚠️ Unaudited |
| DungeonFactory | unknown | sonic | n/a | [`0x19443ba4b21c65a6cf75049332e5515235d1abb8`](./contracts/sonic-146/0x19443ba4b21c65a6cf75049332e5515235d1abb8/) | ⚠️ Unaudited |
| DungeonFactoryLib | unknown | sonic | n/a | [`0x2c550024df438312efd1804231d924ca59b60ca6`](./contracts/sonic-146/0x2c550024df438312efd1804231d924ca59b60ca6/) | ⚠️ Unaudited |
| DungeonLib | unknown | sonic | n/a | [`0x0b26e562c2c39da6a43ce4598ee50a01e16388e3`](./contracts/sonic-146/0x0b26e562c2c39da6a43ce4598ee50a01e16388e3/) | ⚠️ Unaudited |
| Dyst | unknown | polygon | n/a | [`0x39ab6574c289c3ae4d88500eec792ab5b947a5eb`](./contracts/polygon-137/0x39ab6574c289c3ae4d88500eec792ab5b947a5eb/) | ⚠️ Unaudited |
| DystFactory | unknown | polygon | n/a | [`0x1d21db6cde1b18c7e47b0f7f42f4b3f68b9beec9`](./contracts/polygon-137/0x1d21db6cde1b18c7e47b0f7f42f4b3f68b9beec9/) | ⚠️ Unaudited |
| DystMinter | unknown | polygon | n/a | [`0xab9c265a56980955aa46bbab214b2657daff18a7`](./contracts/polygon-137/0xab9c265a56980955aa46bbab214b2657daff18a7/) | ⚠️ Unaudited |
| DystopiaSwapper | unknown | polygon | n/a | [`0x15de78e04ea152482ffb731ba96ad5c99e88933f`](./contracts/polygon-137/0x15de78e04ea152482ffb731ba96ad5c99e88933f/) | ⚠️ Unaudited |
| DystRouter01 | unknown | polygon | n/a | [`0x6bd6979fe0345a9c02bf5fa714003c428627f353`](./contracts/polygon-137/0x6bd6979fe0345a9c02bf5fa714003c428627f353/) | ⚠️ Unaudited |
| DystVoter | unknown | polygon | n/a | [`0x649bdf58b09a0cd4ac848b42c4b5e1390a72a49a`](./contracts/polygon-137/0x649bdf58b09a0cd4ac848b42c4b5e1390a72a49a/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | bsc | n/a | [`0xc3d2405f43adab0a921a129eacae9051e3fc94c3`](./contracts/bsc-56/0xc3d2405f43adab0a921a129eacae9051e3fc94c3/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | bsc | n/a | [`0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | bsc | n/a | [`0xb16e4aa530d050b07ba98be418d2b732c011cdda`](./contracts/bsc-56/0xb16e4aa530d050b07ba98be418d2b732c011cdda/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | ethereum | n/a | [`0x1545473701f011a5c977e48ac43e1404cdf96f11`](./contracts/ethereum-1/0x1545473701f011a5c977e48ac43e1404cdf96f11/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | bsc | n/a | [`0x543b2a89e759696fd3dc46743da5de2439fa259e`](./contracts/bsc-56/0x543b2a89e759696fd3dc46743da5de2439fa259e/) | ⚠️ Unaudited |
| EventLib | unknown | sonic | n/a | [`0x1159ba7378e8b3b4d00be27dfb2d3346e987461f`](./contracts/sonic-146/0x1159ba7378e8b3b4d00be27dfb2d3346e987461f/) | ⚠️ Unaudited |
| ExtraReward | unknown | ethereum | n/a | [`0x4b86747e4d5d664d5bc40bf317e66e1898697392`](./contracts/ethereum-1/0x4b86747e4d5d664d5bc40bf317e66e1898697392/) | ⚠️ Unaudited |
| FacadeStoryControllerExLib | unknown | sonic | n/a | [`0x2c4fc1ce07462ca3cff43e0e3697c7b23519a53f`](./contracts/sonic-146/0x2c4fc1ce07462ca3cff43e0e3697c7b23519a53f/) | ⚠️ Unaudited |
| FactoryPortal | unknown | bsc | n/a | [`0xff9c94f5f5a3e3d65d2375215188140e23d604e3`](./contracts/bsc-56/0xff9c94f5f5a3e3d65d2375215188140e23d604e3/) | ⚠️ Unaudited |
| FantomAnimals | unknown | ethereum | n/a | [`0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3`](./contracts/ethereum-1/0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3/) | ⚠️ Unaudited |
| ForwarderV2 | unknown | polygon | n/a | [`0x03ee6dca512b1365ad534921d4a60eb401b57628`](./contracts/polygon-137/0x03ee6dca512b1365ad534921d4a60eb401b57628/) | ⚠️ Unaudited |
| ForwarderV3 | unknown | polygon | n/a | [`0x01669b47b523eae503b3fe24e96b7518eefca3e5`](./contracts/polygon-137/0x01669b47b523eae503b3fe24e96b7518eefca3e5/) | ⚠️ Unaudited |
| FxERC20 | unknown | polygon | n/a | [`0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f`](./contracts/polygon-137/0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f/) | ⚠️ Unaudited |
| GameObjectController | unknown | sonic | n/a | [`0x0129c37b474fe5f5bd72185441ba79a2b6516f43`](./contracts/sonic-146/0x0129c37b474fe5f5bd72185441ba79a2b6516f43/) | ⚠️ Unaudited |
| GameToken | unknown | sonic | n/a | [`0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2`](./contracts/sonic-146/0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2/) | ⚠️ Unaudited |
| Gauge | unknown | polygon | n/a | [`0x129225ad03306f837ffaf0c3556a8e1d008907a2`](./contracts/polygon-137/0x129225ad03306f837ffaf0c3556a8e1d008907a2/) | ⚠️ Unaudited |
| GaugeFactory | unknown | polygon | n/a | [`0x08bfe3d50f5b55a0fc15d8eaf970b8171803613c`](./contracts/polygon-137/0x08bfe3d50f5b55a0fc15d8eaf970b8171803613c/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x4be13bf2b983c31414b358c634bbb61230c332a7`](./contracts/ethereum-1/0x4be13bf2b983c31414b358c634bbb61230c332a7/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | polygon | n/a | [`0xcc16d636dd05b52ff1d8b9ce09b09bc62b11412b`](./contracts/polygon-137/0xcc16d636dd05b52ff1d8b9ce09b09bc62b11412b/) | ⚠️ Unaudited |
| GOCLib | unknown | sonic | n/a | [`0x012d1be0ab3e7e9b3d5dd1acc30b54dd29b1f43a`](./contracts/sonic-146/0x012d1be0ab3e7e9b3d5dd1acc30b54dd29b1f43a/) | ⚠️ Unaudited |
| GovernanceTreasury | unknown | polygon | n/a | [`0xbd51042d3a9ef62d4d93013315ae96a0c1760d7e`](./contracts/polygon-137/0xbd51042d3a9ef62d4d93013315ae96a0c1760d7e/) | ⚠️ Unaudited |
| GuildController | unknown | sonic | n/a | [`0x03ee6dca512b1365ad534921d4a60eb401b57628`](./contracts/sonic-146/0x03ee6dca512b1365ad534921d4a60eb401b57628/) | ⚠️ Unaudited |
| GuildLib | unknown | sonic | n/a | [`0x14f99ad446e947d62408d49d1d9adb19b2966332`](./contracts/sonic-146/0x14f99ad446e947d62408d49d1d9adb19b2966332/) | ⚠️ Unaudited |
| HardWorkResolver | unknown | polygon | n/a | [`0x2bd8a47b5a1c4dcc8cb1c2d5eaa09d12a0eb1300`](./contracts/polygon-137/0x2bd8a47b5a1c4dcc8cb1c2d5eaa09d12a0eb1300/) | ⚠️ Unaudited |
| HeroBase | unknown | sonic | n/a | [`0x03e510ecd83bef0e890eeb10e3243e98dd4cf8d0`](./contracts/sonic-146/0x03e510ecd83bef0e890eeb10e3243e98dd4cf8d0/) | ⚠️ Unaudited |
| HeroController | unknown | sonic | n/a | [`0x0f32365872e5e64e3474020cc30b9891d2e9909b`](./contracts/sonic-146/0x0f32365872e5e64e3474020cc30b9891d2e9909b/) | ⚠️ Unaudited |
| HeroControllerLib | unknown | sonic | n/a | [`0x1115ba8c6acbeed9d8164ddce037bef892cc35f4`](./contracts/sonic-146/0x1115ba8c6acbeed9d8164ddce037bef892cc35f4/) | ⚠️ Unaudited |
| HeroLib | unknown | sonic | n/a | [`0x0efa6a9a0cee642aff8826d33e3f88e09fbbab3b`](./contracts/sonic-146/0x0efa6a9a0cee642aff8826d33e3f88e09fbbab3b/) | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | [`0x29c0c69c028c5be41a487814aa29ff43f5de4e1a`](./contracts/bsc-56/0x29c0c69c028c5be41a487814aa29ff43f5de4e1a/) | ⚠️ Unaudited |
| InvestFundV2 | unknown | polygon | n/a | [`0x13465e0ca7049509904e275cb44bf82f4c9def32`](./contracts/polygon-137/0x13465e0ca7049509904e275cb44bf82f4c9def32/) | ⚠️ Unaudited |
| ItemBoxController | unknown | sonic | n/a | [`0x0427d1350c1e3b2968aa6d0e19332b8f56ec7134`](./contracts/sonic-146/0x0427d1350c1e3b2968aa6d0e19332b8f56ec7134/) | ⚠️ Unaudited |
| ItemController | unknown | sonic | n/a | [`0x0b4213c3ef6bf61b60f5a30f69f7ea12f638f8dc`](./contracts/sonic-146/0x0b4213c3ef6bf61b60f5a30f69f7ea12f638f8dc/) | ⚠️ Unaudited |
| ItemControllerHelper | unknown | sonic | n/a | [`0x017bffac28212ca748595f063925a12eb6743f77`](./contracts/sonic-146/0x017bffac28212ca748595f063925a12eb6743f77/) | ⚠️ Unaudited |
| ItemLib | unknown | sonic | n/a | [`0x015bdf55ecc3814b555fdc110ba8d82486d005eb`](./contracts/sonic-146/0x015bdf55ecc3814b555fdc110ba8d82486d005eb/) | ⚠️ Unaudited |
| ItemStatsLib | unknown | sonic | n/a | [`0x1e8d45f0cbc360eff1f1353b337bf5cd3ed1d924`](./contracts/sonic-146/0x1e8d45f0cbc360eff1f1353b337bf5cd3ed1d924/) | ⚠️ Unaudited |
| IterationPlanLib | unknown | base | n/a | [`0x6b8dea6cbe9cc5d70384ba223839e8a5dd8ae7c1`](./contracts/base-8453/0x6b8dea6cbe9cc5d70384ba223839e8a5dd8ae7c1/) | ⚠️ Unaudited |
| LiquidityMigrator | unknown | polygon | n/a | [`0x21fd280d35cdbf61e04b892164bda1b4c0b570d7`](./contracts/polygon-137/0x21fd280d35cdbf61e04b892164bda1b4c0b570d7/) | ⚠️ Unaudited |
| MaiCamPipe | unknown | polygon | n/a | [`0x123ede74acf65774a8fba3d753011c89b6421001`](./contracts/polygon-137/0x123ede74acf65774a8fba3d753011c89b6421001/) | ⚠️ Unaudited |
| MaiStablecoinPipe | unknown | polygon | n/a | [`0x017bffac28212ca748595f063925a12eb6743f77`](./contracts/polygon-137/0x017bffac28212ca748595f063925a12eb6743f77/) | ⚠️ Unaudited |
| Migrator | unknown | polygon | n/a | [`0x0b265480f314c8672ac9325ade066793c20a11b7`](./contracts/polygon-137/0x0b265480f314c8672ac9325ade066793c20a11b7/) | ⚠️ Unaudited |
| Minter | unknown | sonic | n/a | [`0x8018ba5e6c05c51e5433123e392334b63a0b6d02`](./contracts/sonic-146/0x8018ba5e6c05c51e5433123e392334b63a0b6d02/) | ⚠️ Unaudited |
| MonsterLib | unknown | sonic | n/a | [`0x3729c3eb4562db8fe43bd644e6f26466bc521d8a`](./contracts/sonic-146/0x3729c3eb4562db8fe43bd644e6f26466bc521d8a/) | ⚠️ Unaudited |
| MonthlyBounty | unknown | bsc | n/a | [`0x27ed9675b109e725067bdcbb2c5a1fd069e18642`](./contracts/bsc-56/0x27ed9675b109e725067bdcbb2c5a1fd069e18642/) | ⚠️ Unaudited |
| MultiBribe | unknown | base | n/a | [`0x0b62ad43837a69ad60289eeea7c6e907e759f6e8`](./contracts/base-8453/0x0b62ad43837a69ad60289eeea7c6e907e759f6e8/) | ⚠️ Unaudited |
| Multicall | unknown | base | n/a | [`0x1ae75d0a2afe092b1ac417c5c43515e54ee12e51`](./contracts/base-8453/0x1ae75d0a2afe092b1ac417c5c43515e54ee12e51/) | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | bsc | n/a | [`0x0550082c40c6a04096b62116f227d110a699967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | ⚠️ Unaudited |
| MultiPriceOracle | unknown | ethereum | n/a | [`0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d`](./contracts/ethereum-1/0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d/) | ⚠️ Unaudited |
| MultiSwap | unknown | polygon | n/a | [`0x0ef2a66aa4feb5f2ebc51183e36148513762402a`](./contracts/polygon-137/0x0ef2a66aa4feb5f2ebc51183e36148513762402a/) | ⚠️ Unaudited |
| NFTFactory | unknown | bsc | n/a | [`0x2c19b304afc2cd7ff8606ac212418d55d07b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/) | ⚠️ Unaudited |
| NFTRouter | unknown | ethereum | n/a | [`0xb0ae108669ceb86e9e98e8fe9e40d98b867855fd`](./contracts/ethereum-1/0xb0ae108669ceb86e9e98e8fe9e40d98b867855fd/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | n/a | [`0x5e42c17caeab64527d9d80d506a3fe01179afa02`](./contracts/base-8453/0x5e42c17caeab64527d9d80d506a3fe01179afa02/) | ⚠️ Unaudited |
| Oracle | unknown | sonic | n/a | [`0x0904cbbec0494b427388541046e882e0a0a300f6`](./contracts/sonic-146/0x0904cbbec0494b427388541046e882e0a0a300f6/) | ⚠️ Unaudited |
| OtherItemLib | unknown | sonic | n/a | [`0x04d7b857a5099d635c7ef966c7f748979755f948`](./contracts/sonic-146/0x04d7b857a5099d635c7ef966c7f748979755f948/) | ⚠️ Unaudited |
| PairBasedStrategyLib | unknown | base | n/a | [`0x713df40f222d36d557e1a66f6f79fdbc0a78457d`](./contracts/base-8453/0x713df40f222d36d557e1a66f6f79fdbc0a78457d/) | ⚠️ Unaudited |
| PairBasedStrategyLogicLib | unknown | base | n/a | [`0x57d3e8ca53878d6aa8b1c48bd8f3e52a3bcec005`](./contracts/base-8453/0x57d3e8ca53878d6aa8b1c48bd8f3e52a3bcec005/) | ⚠️ Unaudited |
| PairBasedStrategyReader | unknown | base | n/a | [`0x566f51b19651b5eecf1d60ad8f08c936015c0dc1`](./contracts/base-8453/0x566f51b19651b5eecf1d60ad8f08c936015c0dc1/) | ⚠️ Unaudited |
| PawnShop | unknown | sonic | n/a | [`0xc9d5917a0cb82450cd687af31ecaac967d7f121c`](./contracts/sonic-146/0xc9d5917a0cb82450cd687af31ecaac967d7f121c/) | ⚠️ Unaudited |
| PawnShopRouterFactory | unknown | sonic | n/a | [`0x0c6868831c504fb0bb61a54fefc6464804380508`](./contracts/sonic-146/0x0c6868831c504fb0bb61a54fefc6464804380508/) | ⚠️ Unaudited |
| PaymentsManager | unknown | polygon | n/a | [`0x119a1c5f6b15b6edcae6614a914d59b13504deca`](./contracts/polygon-137/0x119a1c5f6b15b6edcae6614a914d59b13504deca/) | ⚠️ Unaudited |
| PerfFeeTreasury | unknown | bsc | n/a | [`0x5256b9276974b12501e3cae24f877357cebdddd2`](./contracts/bsc-56/0x5256b9276974b12501e3cae24f877357cebdddd2/) | ⚠️ Unaudited |
| PlatformVoter | unknown | polygon | n/a | [`0x0a2840d27a9761b70daaf9ef86db3ebffa637328`](./contracts/polygon-137/0x0a2840d27a9761b70daaf9ef86db3ebffa637328/) | ⚠️ Unaudited |
| PolygonBridgeSender | unknown | polygon | n/a | [`0x3bf2a8dd8c9d892ec76fbbeea0189ae05a342ef9`](./contracts/polygon-137/0x3bf2a8dd8c9d892ec76fbbeea0189ae05a342ef9/) | ⚠️ Unaudited |
| PremiumHolder | unknown | bsc | n/a | [`0x31c459baead0be6951c1e9697af07c25113730fd`](./contracts/bsc-56/0x31c459baead0be6951c1e9697af07c25113730fd/) | ⚠️ Unaudited |
| PriceCalculatorV2 | unknown | base | n/a | [`0x331a0041bd9a66592b85a4866c7ac51218f60a20`](./contracts/base-8453/0x331a0041bd9a66592b85a4866c7ac51218f60a20/) | ⚠️ Unaudited |
| PriceOracle | unknown | polygon | n/a | [`0x885c60a8f6596f1f07eabeb7e6b70e079b6ba987`](./contracts/polygon-137/0x885c60a8f6596f1f07eabeb7e6b70e079b6ba987/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x3b2ebf3e893e1e56964757f2ab92eefa2049fd9b`](./contracts/bsc-56/0x3b2ebf3e893e1e56964757f2ab92eefa2049fd9b/) | ⚠️ Unaudited |
| PvpAttackLib | unknown | sonic | n/a | [`0x07c793626d1a570a347b8d68955e195d7e3f0a9e`](./contracts/sonic-146/0x07c793626d1a570a347b8d68955e195d7e3f0a9e/) | ⚠️ Unaudited |
| PvpController | unknown | sonic | n/a | [`0x43edb98d43da2545e7faeac701e5c3b91a0c578e`](./contracts/sonic-146/0x43edb98d43da2545e7faeac701e5c3b91a0c578e/) | ⚠️ Unaudited |
| PvpFightLib | unknown | sonic | n/a | [`0x0caef1783c939632f8c890efb8a8d43935366584`](./contracts/sonic-146/0x0caef1783c939632f8c890efb8a8d43935366584/) | ⚠️ Unaudited |
| RebalanceDebtConfig | unknown | base | n/a | [`0x9c0d22325a1a198c892d3b366bc65ff380fd031a`](./contracts/base-8453/0x9c0d22325a1a198c892d3b366bc65ff380fd031a/) | ⚠️ Unaudited |
| ReinforcementController | unknown | sonic | n/a | [`0x05e0463d04dcecabf8d1b2cca88b2844a71b7606`](./contracts/sonic-146/0x05e0463d04dcecabf8d1b2cca88b2844a71b7606/) | ⚠️ Unaudited |
| RewardCalculator | unknown | polygon | n/a | [`0x47b127ef02009d1b17bfa01cb8523d878202c18b`](./contracts/polygon-137/0x47b127ef02009d1b17bfa01cb8523d878202c18b/) | ⚠️ Unaudited |
| RewardDistributor | unknown | bsc | n/a | [`0x103f7d014f46c6bcb9f86217c36368a08abe426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/) | ⚠️ Unaudited |
| RewardHandler_Factory_SlowRelease | unknown | bsc | n/a | [`0x18c792978ccf5f81a2c1dfb44737fc14597d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | bsc | n/a | [`0x411f3e09c66b30e7facfec45cd823b2e19dfad2d`](./contracts/bsc-56/0x411f3e09c66b30e7facfec45cd823b2e19dfad2d/) | ⚠️ Unaudited |
| RewardPortal | unknown | bsc | n/a | [`0x03e72e3f327a731af63a931cc06c84e2627b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/) | ⚠️ Unaudited |
| RewardShare | unknown | bsc | n/a | [`0x13ee726d95742d437ebb664bf0d3feff8dbe2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | ⚠️ Unaudited |
| RewardsPool | unknown | sonic | n/a | [`0x0b62ad43837a69ad60289eeea7c6e907e759f6e8`](./contracts/sonic-146/0x0b62ad43837a69ad60289eeea7c6e907e759f6e8/) | ⚠️ Unaudited |
| RewardsRedirector | unknown | base | n/a | [`0x57577b27814f4166e2340580c49c9726549677e0`](./contracts/base-8453/0x57577b27814f4166e2340580c49c9726549677e0/) | ⚠️ Unaudited |
| RouterConfig | unknown | bsc | n/a | [`0x0aa6262af21b85cbe396caf68d59aad8db3079fa`](./contracts/bsc-56/0x0aa6262af21b85cbe396caf68d59aad8db3079fa/) | ⚠️ Unaudited |
| SacraGem | unknown | sonic | n/a | [`0xfc0dd337b92baa949bc5d25fd9a99cb3b6873204`](./contracts/sonic-146/0xfc0dd337b92baa949bc5d25fd9a99cb3b6873204/) | ⚠️ Unaudited |
| Sale | unknown | sonic | n/a | [`0xc68802de8345b288ce156034c89cb9ec953dad28`](./contracts/sonic-146/0xc68802de8345b288ce156034c89cb9ec953dad28/) | ⚠️ Unaudited |
| ScoreLib | unknown | sonic | n/a | [`0x3fa0cdd337cab5a50a4fd0b13313203f9b768e73`](./contracts/sonic-146/0x3fa0cdd337cab5a50a4fd0b13313203f9b768e73/) | ⚠️ Unaudited |
| ShelterController | unknown | sonic | n/a | [`0x1981c357b278843f6a0a09175cb49ea157161f81`](./contracts/sonic-146/0x1981c357b278843f6a0a09175cb49ea157161f81/) | ⚠️ Unaudited |
| SolidlyLibrary | unknown | bsc | n/a | [`0xbf1e638871c59859db851674c7f94efcb0f40954`](./contracts/bsc-56/0xbf1e638871c59859db851674c7f94efcb0f40954/) | ⚠️ Unaudited |
| SplitterRebalanceResolver | unknown | base | n/a | [`0xb4899743a0a9666aa08754f49a45fe28a2a1ae1d`](./contracts/base-8453/0xb4899743a0a9666aa08754f49a45fe28a2a1ae1d/) | ⚠️ Unaudited |
| SponsoredHero | unknown | sonic | n/a | [`0xa6a2ef41f9e0794c6fa3c9b15c41ff070ce2ae8c`](./contracts/sonic-146/0xa6a2ef41f9e0794c6fa3c9b15c41ff070ce2ae8c/) | ⚠️ Unaudited |
| StatController | unknown | sonic | n/a | [`0x26f7529819f75e18a08c22c260896bc339d1622b`](./contracts/sonic-146/0x26f7529819f75e18a08c22c260896bc339d1622b/) | ⚠️ Unaudited |
| StatControllerLib | unknown | sonic | n/a | [`0x206a6314133a997c604de3cf1ceb84cd7573bbaa`](./contracts/sonic-146/0x206a6314133a997c604de3cf1ceb84cd7573bbaa/) | ⚠️ Unaudited |
| StatReader | unknown | sonic | n/a | [`0x4638c64d2d12a7c42933f5f70c63079445476790`](./contracts/sonic-146/0x4638c64d2d12a7c42933f5f70c63079445476790/) | ⚠️ Unaudited |
| StoryLib | unknown | sonic | n/a | [`0x1eefaf9d93362e218f52bbe97612dfe2c81a815e`](./contracts/sonic-146/0x1eefaf9d93362e218f52bbe97612dfe2c81a815e/) | ⚠️ Unaudited |
| StorySetupLib | unknown | sonic | n/a | [`0x0c30aea00cefefc12c25c2f1c130856927c6bd3e`](./contracts/sonic-146/0x0c30aea00cefefc12c25c2f1c130856927c6bd3e/) | ⚠️ Unaudited |
| StrategyBalBridgedStaking | unknown | polygon | n/a | [`0x534240c8c4614d5c8ba6dee1ad4e8f2c2d7180b1`](./contracts/polygon-137/0x534240c8c4614d5c8ba6dee1ad4e8f2c2d7180b1/) | ⚠️ Unaudited |
| StrategyBalStaking | unknown | ethereum | n/a | [`0x27ae63d81be4e3bfc29c67cb3cea321b33488698`](./contracts/ethereum-1/0x27ae63d81be4e3bfc29c67cb3cea321b33488698/) | ⚠️ Unaudited |
| StrategyCafeSwapLp | unknown | polygon | n/a | [`0x52e34f0a0a2b26800b7a3d5240d2ccadb444dd32`](./contracts/polygon-137/0x52e34f0a0a2b26800b7a3d5240d2ccadb444dd32/) | ⚠️ Unaudited |
| StrategyCosmicSwapLp | unknown | polygon | n/a | [`0x4e14c69b97518e4b36316c92aadd19ef407bae4b`](./contracts/polygon-137/0x4e14c69b97518e4b36316c92aadd19ef407bae4b/) | ⚠️ Unaudited |
| StrategyDForceFold | unknown | polygon | n/a | [`0x151b33c30131cf4b7f1cf0b9801997137c54c0c3`](./contracts/polygon-137/0x151b33c30131cf4b7f1cf0b9801997137c54c0c3/) | ⚠️ Unaudited |
| StrategyDinoPool | unknown | polygon | n/a | [`0x94df96cacb2a4a92f1d11231339595fbcb71ed21`](./contracts/polygon-137/0x94df96cacb2a4a92f1d11231339595fbcb71ed21/) | ⚠️ Unaudited |
| StrategyDinoSwapLp | unknown | polygon | n/a | [`0x893bf5485cd7a568424482071378d10f98252ff4`](./contracts/polygon-137/0x893bf5485cd7a568424482071378d10f98252ff4/) | ⚠️ Unaudited |
| StrategyDinoSwapV2LpAc | unknown | polygon | n/a | [`0x0154b5c0b69b6ce4c968fcc1b16d2e3ffdee9586`](./contracts/polygon-137/0x0154b5c0b69b6ce4c968fcc1b16d2e3ffdee9586/) | ⚠️ Unaudited |
| StrategyHermesSwapLp | unknown | polygon | n/a | [`0x13c69098f256126f680b89a867914502f77f669e`](./contracts/polygon-137/0x13c69098f256126f680b89a867914502f77f669e/) | ⚠️ Unaudited |
| StrategyIronFold | unknown | polygon | n/a | [`0x101ecc7dfc63716f1c0a923c7314a954d6072b12`](./contracts/polygon-137/0x101ecc7dfc63716f1c0a923c7314a954d6072b12/) | ⚠️ Unaudited |
| StrategyIronSwap | unknown | polygon | n/a | [`0x6697d7c8ba6b6fcf7b7584ee4a5a8d95be8a50a5`](./contracts/polygon-137/0x6697d7c8ba6b6fcf7b7584ee4a5a8d95be8a50a5/) | ⚠️ Unaudited |
| StrategyIronUniPair | unknown | polygon | n/a | [`0x2322eddef0be1ebb9cbc4d2dbdc140c4cafd31e5`](./contracts/polygon-137/0x2322eddef0be1ebb9cbc4d2dbdc140c4cafd31e5/) | ⚠️ Unaudited |
| StrategyKlimaStaking | unknown | polygon | n/a | [`0x0ada2a6d79887cf20ef7805d888b473f6fab9e64`](./contracts/polygon-137/0x0ada2a6d79887cf20ef7805d888b473f6fab9e64/) | ⚠️ Unaudited |
| StrategyLib | unknown | base | n/a | [`0x1400dd1250538c7b35756654c7c8c74b4d7df079`](./contracts/base-8453/0x1400dd1250538c7b35756654c7c8c74b4d7df079/) | ⚠️ Unaudited |
| StrategyLib2 | unknown | base | n/a | [`0xb42df1e6b2a79471c18ed626c53f2b8eace10b87`](./contracts/base-8453/0xb42df1e6b2a79471c18ed626c53f2b8eace10b87/) | ⚠️ Unaudited |
| StrategyMeshStaking | unknown | polygon | n/a | [`0x0904985dc41b87db6200600550c6fc14d5fe8c44`](./contracts/polygon-137/0x0904985dc41b87db6200600550c6fc14d5fe8c44/) | ⚠️ Unaudited |
| StrategyPenroseTetuQi | unknown | polygon | n/a | [`0x3d6324da2cabf454bd5142f62ff802e6e4811ea4`](./contracts/polygon-137/0x3d6324da2cabf454bd5142f62ff802e6e4811ea4/) | ⚠️ Unaudited |
| StrategyPenroseTetuUsdPlus | unknown | polygon | n/a | [`0x12b1063634ec6ddc874c1c5efb4e2d616639de33`](./contracts/polygon-137/0x12b1063634ec6ddc874c1c5efb4e2d616639de33/) | ⚠️ Unaudited |
| StrategyProfitHolder | unknown | base | n/a | [`0x3e75231c1cc0e6d30d03346b3b87b92bb3a1f856`](./contracts/base-8453/0x3e75231c1cc0e6d30d03346b3b87b92bb3a1f856/) | ⚠️ Unaudited |
| StrategyQiStaking | unknown | polygon | n/a | [`0x05166dca3a7de293052cb88da0f1e4be4870cab6`](./contracts/polygon-137/0x05166dca3a7de293052cb88da0f1e4be4870cab6/) | ⚠️ Unaudited |
| StrategyQuickSwapLp | unknown | polygon | n/a | [`0x043c9d9fd347462bce1daf53d94416be9180a552`](./contracts/polygon-137/0x043c9d9fd347462bce1daf53d94416be9180a552/) | ⚠️ Unaudited |
| StrategyQuickSwapLpAc | unknown | polygon | n/a | [`0x0085bb209c54b0f90cd20257b930c51fc7b8630a`](./contracts/polygon-137/0x0085bb209c54b0f90cd20257b930c51fc7b8630a/) | ⚠️ Unaudited |
| StrategyQuickSwapLpDualAC | unknown | polygon | n/a | [`0x11253ff148902a837a6f5c7cd113d46b58a5cea5`](./contracts/polygon-137/0x11253ff148902a837a6f5c7cd113d46b58a5cea5/) | ⚠️ Unaudited |
| StrategyQuickSwapLpV2 | unknown | polygon | n/a | [`0x0c35d10ab376c013c5853266ab5f35b8cad551cc`](./contracts/polygon-137/0x0c35d10ab376c013c5853266ab5f35b8cad551cc/) | ⚠️ Unaudited |
| StrategyTetuSelfFarm | unknown | polygon | n/a | [`0x067fe0b44387f03977c67b245ffa9784afd46fdc`](./contracts/polygon-137/0x067fe0b44387f03977c67b245ffa9784afd46fdc/) | ⚠️ Unaudited |
| StrategyTetuSwap | unknown | polygon | n/a | [`0x01309787bc147a2ad56ac2f49d8497e40d263ca6`](./contracts/polygon-137/0x01309787bc147a2ad56ac2f49d8497e40d263ca6/) | ⚠️ Unaudited |
| StrategyVenusSupply | unknown | bsc | n/a | [`0x1616589f2acc9ae962879a29daa62b49346bafd3`](./contracts/bsc-56/0x1616589f2acc9ae962879a29daa62b49346bafd3/) | ⚠️ Unaudited |
| StrategyVesqStaking | unknown | polygon | n/a | [`0x91bcbdd5933a9dd604b90f5fb8b49aae02c65b4e`](./contracts/polygon-137/0x91bcbdd5933a9dd604b90f5fb8b49aae02c65b4e/) | ⚠️ Unaudited |
| StrategyWaultLp | unknown | polygon | n/a | [`0x166df927779ed5086b716beb4180e289496879f7`](./contracts/polygon-137/0x166df927779ed5086b716beb4180e289496879f7/) | ⚠️ Unaudited |
| StrategyWaultLpWithAc | unknown | polygon | n/a | [`0x0a482112da84c8d2af3b8779a1d9dfcb54c2fdc7`](./contracts/polygon-137/0x0a482112da84c8d2af3b8779a1d9dfcb54c2fdc7/) | ⚠️ Unaudited |
| StrategyWaultSingle | unknown | polygon | n/a | [`0x2b7b097b23e0dab93e881a6471cf8b511f14e1f4`](./contracts/polygon-137/0x2b7b097b23e0dab93e881a6471cf8b511f14e1f4/) | ⚠️ Unaudited |
| StringLib | unknown | sonic | n/a | [`0xd87288d4827a1b59c0e1b3b9000f80b8e763aca8`](./contracts/sonic-146/0xd87288d4827a1b59c0e1b3b9000f80b8e763aca8/) | ⚠️ Unaudited |
| SwapLibrary | unknown | bsc | n/a | [`0x01d0b17ac7b72cd4b051840e27a2134f25c53265`](./contracts/bsc-56/0x01d0b17ac7b72cd4b051840e27a2134f25c53265/) | ⚠️ Unaudited |
| TetuBalExtender | unknown | ethereum | n/a | [`0x9daaf475d6773e08aa6bd9d3c10372c3a6ed426f`](./contracts/ethereum-1/0x9daaf475d6773e08aa6bd9d3c10372c3a6ed426f/) | ⚠️ Unaudited |
| TetuLiquidator | unknown | polygon | n/a | [`0x0587c1e628b69ec687ca4f2bd2827758ad842e34`](./contracts/polygon-137/0x0587c1e628b69ec687ca4f2bd2827758ad842e34/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x002fe8b38f7c261dddd2125875413a6ebd7e40d3`](./contracts/polygon-137/0x002fe8b38f7c261dddd2125875413a6ebd7e40d3/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x00ba2b78b3af349a0959defd1a29f54936874e5b`](./contracts/polygon-137/0x00ba2b78b3af349a0959defd1a29f54936874e5b/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x0a0846c978a56d6ea9d2602eeb8f977b21f3207f`](./contracts/polygon-137/0x0a0846c978a56d6ea9d2602eeb8f977b21f3207f/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x0a8356516df3b0772e469ed6eed705a4190aea15`](./contracts/polygon-137/0x0a8356516df3b0772e469ed6eed705a4190aea15/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x0b86cf1167d19fdf71a6d7ce605ff57d65ee19a3`](./contracts/polygon-137/0x0b86cf1167d19fdf71a6d7ce605ff57d65ee19a3/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x0fa7c71a07af3784b0784d058ad104a1471afa36`](./contracts/polygon-137/0x0fa7c71a07af3784b0784d058ad104a1471afa36/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x1ca723b9dc7cba8fbd15b92cf93c61a297db6cd9`](./contracts/polygon-137/0x1ca723b9dc7cba8fbd15b92cf93c61a297db6cd9/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x237114ef61b27fdf57132e6c8c4244eeea8323d3`](./contracts/polygon-137/0x237114ef61b27fdf57132e6c8c4244eeea8323d3/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x26030c3e3790ff4e1236585f2650ae7da56a752c`](./contracts/polygon-137/0x26030c3e3790ff4e1236585f2650ae7da56a752c/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x3231c694c8d67b90465274dd9b424c6702ca4ad8`](./contracts/polygon-137/0x3231c694c8d67b90465274dd9b424c6702ca4ad8/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x4ab6242b727c3bd0b4cd1f90c51ed6316583d5e9`](./contracts/polygon-137/0x4ab6242b727c3bd0b4cd1f90c51ed6316583d5e9/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2`](./contracts/polygon-137/0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x8ffba974efa7c262c97b9521449fd2b3c69be4e6`](./contracts/polygon-137/0x8ffba974efa7c262c97b9521449fd2b3c69be4e6/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0xa0032bc58723c5c2e6559a7ed202729b5760748e`](./contracts/polygon-137/0xa0032bc58723c5c2e6559a7ed202729b5760748e/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0xc443f1e51f4596b81b4ec4223206f47292608a10`](./contracts/polygon-137/0xc443f1e51f4596b81b4ec4223206f47292608a10/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0xf4e5dafa487ba89153b9d3d0bcd49d6c77db388d`](./contracts/polygon-137/0xf4e5dafa487ba89153b9d3d0bcd49d6c77db388d/) | ⚠️ Unaudited |
| TetuProxyGov | unknown | polygon | n/a | [`0x2793fa8d570b99eb9ba7f5d3e2480f6ab06cbe9c`](./contracts/polygon-137/0x2793fa8d570b99eb9ba7f5d3e2480f6ab06cbe9c/) | ⚠️ Unaudited |
| TetuProxyGov | unknown | polygon | n/a | [`0x3dad9fc2235cf00a3d9e142122a26c839a7adc6e`](./contracts/polygon-137/0x3dad9fc2235cf00a3d9e142122a26c839a7adc6e/) | ⚠️ Unaudited |
| TetuProxyGov | unknown | polygon | n/a | [`0x48ad115540a0f9e128ee62df5ce519451ba5f6e0`](./contracts/polygon-137/0x48ad115540a0f9e128ee62df5ce519451ba5f6e0/) | ⚠️ Unaudited |
| TetuQiVotingPower | unknown | polygon | n/a | [`0xda67dbab383a7ce922320a48d515f0fd567aac08`](./contracts/polygon-137/0xda67dbab383a7ce922320a48d515f0fd567aac08/) | ⚠️ Unaudited |
| TetuRewardRelayer | unknown | ethereum | n/a | [`0x5e427a2bd4da38234c6ebad7a64d7d0007d02382`](./contracts/ethereum-1/0x5e427a2bd4da38234c6ebad7a64d7d0007d02382/) | ⚠️ Unaudited |
| TetuSwapFactory | unknown | polygon | n/a | [`0x1f822e6c535a39cb7799200018d943133abba07c`](./contracts/polygon-137/0x1f822e6c535a39cb7799200018d943133abba07c/) | ⚠️ Unaudited |
| TetuSwapRouter | unknown | polygon | n/a | [`0x115b599c173ef6743c149fc5fc40230d932c95b3`](./contracts/polygon-137/0x115b599c173ef6743c149fc5fc40230d932c95b3/) | ⚠️ Unaudited |
| TetuTokenMainnet | unknown | ethereum | n/a | [`0x0f72964fa4b766521d84107991e837c30d0ef2b1`](./contracts/ethereum-1/0x0f72964fa4b766521d84107991e837c30d0ef2b1/) | ⚠️ Unaudited |
| TetuUnpacking | unknown | polygon | n/a | [`0x413b91138077c7105656dbb03185ce18c12bad14`](./contracts/polygon-137/0x413b91138077c7105656dbb03185ce18c12bad14/) | ⚠️ Unaudited |
| TokenFactory | unknown | sonic | n/a | [`0x21a908478c0307742aa535bf5754d43dcb5ad29b`](./contracts/sonic-146/0x21a908478c0307742aa535bf5754d43dcb5ad29b/) | ⚠️ Unaudited |
| TokenPriceConfig | unknown | bsc | n/a | [`0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | ⚠️ Unaudited |
| TokenRetranslatorFactory | unknown | polygon | n/a | [`0x04ae9473abd9a74aeb03cd5eace42d186a376cf9`](./contracts/polygon-137/0x04ae9473abd9a74aeb03cd5eace42d186a376cf9/) | ⚠️ Unaudited |
| TradeBot | unknown | polygon | n/a | [`0x833d22f5c1b01ad2ad34611bd391c246712b9707`](./contracts/polygon-137/0x833d22f5c1b01ad2ad34611bd391c246712b9707/) | ⚠️ Unaudited |
| TradeBot1Inch | unknown | polygon | n/a | [`0x91f29f7be847a050a1554462ea48ac622b150dd2`](./contracts/polygon-137/0x91f29f7be847a050a1554462ea48ac622b150dd2/) | ⚠️ Unaudited |
| TradeBotDystopia | unknown | polygon | n/a | [`0x26e4a4fde42779e1060fc649460e537b4a8d477f`](./contracts/polygon-137/0x26e4a4fde42779e1060fc649460e537b4a8d477f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x060bad68e5d9b0c0dbcef7963925eca257d76f69`](./contracts/bsc-56/0x060bad68e5d9b0c0dbcef7963925eca257d76f69/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x83151af121458611530b49ba1e78f5f27e3d1b81`](./contracts/bsc-56/0x83151af121458611530b49ba1e78f5f27e3d1b81/) | ⚠️ Unaudited |
| Treasury | unknown | sonic | n/a | [`0x13d862a01d0ab241509a2e47e31d0db04e9b9f49`](./contracts/sonic-146/0x13d862a01d0ab241509a2e47e31d0db04e9b9f49/) | ⚠️ Unaudited |
| Uni3Swapper | unknown | base | n/a | [`0x00379dd90b2a337c4652e286e4fbceadef940a21`](./contracts/base-8453/0x00379dd90b2a337c4652e286e4fbceadef940a21/) | ⚠️ Unaudited |
| UniswapV3ConverterStrategy | unknown | base | n/a | [`0x32f7c3a5319a612c1992f021aa70510bc9f16161`](./contracts/base-8453/0x32f7c3a5319a612c1992f021aa70510bc9f16161/) | ⚠️ Unaudited |
| UserController | unknown | sonic | n/a | [`0x3a187ac6e96493f6e8c3a9f37b4f9cc3d3de0862`](./contracts/sonic-146/0x3a187ac6e96493f6e8c3a9f37b4f9cc3d3de0862/) | ⚠️ Unaudited |
| ValueRouterImpl | unknown | ethereum | n/a | [`0x522cb8f25896691bdc5f69aabfccd50647a14aa0`](./contracts/ethereum-1/0x522cb8f25896691bdc5f69aabfccd50647a14aa0/) | ⚠️ Unaudited |
| VaultController | unknown | ethereum | n/a | [`0x099c314f792e1f91f53765fc64aadccf4dcf1538`](./contracts/ethereum-1/0x099c314f792e1f91f53765fc64aadccf4dcf1538/) | ⚠️ Unaudited |
| VaultFactory | unknown | polygon | n/a | [`0x7da32c32e1c05e6572321275925301fdf916fcf5`](./contracts/polygon-137/0x7da32c32e1c05e6572321275925301fdf916fcf5/) | ⚠️ Unaudited |
| VaultInsurance | unknown | base | n/a | [`0x078b7c9304eba754e916016e8a8939527076f991`](./contracts/base-8453/0x078b7c9304eba754e916016e8a8939527076f991/) | ⚠️ Unaudited |
| VaultLibrary | unknown | polygon | n/a | [`0x00bc12bdea08d2d57dfe0ff322d40aa6d6f579f6`](./contracts/polygon-137/0x00bc12bdea08d2d57dfe0ff322d40aa6d6f579f6/) | ⚠️ Unaudited |
| Ve | unknown | polygon | n/a | [`0x060fa7ad32c510f12550c7a967999810dafc5697`](./contracts/polygon-137/0x060fa7ad32c510f12550c7a967999810dafc5697/) | ⚠️ Unaudited |
| ve_query | unknown | ethereum | n/a | [`0x443299d9b347ae68c42d4909efa1892caa35e9ca`](./contracts/ethereum-1/0x443299d9b347ae68c42d4909efa1892caa35e9ca/) | ⚠️ Unaudited |
| VeDist | unknown | polygon | n/a | [`0x3efb1b284a3eba3955c53b728a2cc4182a07e92f`](./contracts/polygon-137/0x3efb1b284a3eba3955c53b728a2cc4182a07e92f/) | ⚠️ Unaudited |
| VeDistributor | unknown | polygon | n/a | [`0x2c4599a079d029f0304b284f4696d009c0281806`](./contracts/polygon-137/0x2c4599a079d029f0304b284f4696d009c0281806/) | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | bsc | n/a | [`0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/) | ⚠️ Unaudited |
| VEShareNFT | unknown | bsc | n/a | [`0x55f8d898760240e6eff3c2cc23974ae8c8fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | ⚠️ Unaudited |
| Vesting | unknown | polygon | n/a | [`0x12a2cd7d359cc69f02215d0b72d39bce66299b2e`](./contracts/polygon-137/0x12a2cd7d359cc69f02215d0b72d39bce66299b2e/) | ⚠️ Unaudited |
| VeTetuLib | unknown | base | n/a | [`0x476e7652a081f749856caec1e2abf563b52aeeea`](./contracts/base-8453/0x476e7652a081f749856caec1e2abf563b52aeeea/) | ⚠️ Unaudited |
| VeTetuLogo | unknown | polygon | n/a | [`0x10c7bdfbd3db8288252aec0f10121ad958eab0bf`](./contracts/polygon-137/0x10c7bdfbd3db8288252aec0f10121ad958eab0bf/) | ⚠️ Unaudited |
| VeTETUVotingPower | unknown | polygon | n/a | [`0x601ac43c21eb4862014e1e71ac5ec1708dc4209e`](./contracts/polygon-137/0x601ac43c21eb4862014e1e71ac5ec1708dc4209e/) | ⚠️ Unaudited |
| VotemarketClaim | unknown | ethereum | n/a | [`0x56087784f94705148329bfcf77a0aa0d22e0ea0c`](./contracts/ethereum-1/0x56087784f94705148329bfcf77a0aa0d22e0ea0c/) | ⚠️ Unaudited |
| ZapContract | unknown | polygon | n/a | [`0x0534ce56642492d51b0b6d3b6f41e1f55a4276d3`](./contracts/polygon-137/0x0534ce56642492d51b0b6d3b6f41e1f55a4276d3/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Me8Xn_pJtAjktHi3oBg%2F-Mk3PCbgu5qmhtNbzxcL%2F-Mk3QDm9D23sE9tIfpI3%2FPeckShield-Audit-Report-Tetu-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Me8Xn_pJtAjktHi3oBg%2Fuploads%2FMxXQOMXoIFZ6uFjz3G4c%2FPeckShield-Audit-Report-Tetuv2-v1.0.pdf) | PeckShield | Audit | 2023-01 | stale | Direct | contract_name | 27 | high |
| [Rendered PDF capture](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Me8Xn_pJtAjktHi3oBg%2F-Mfimt8Ii5RUGI8n3xdQ%2F-MfitjlyTlbQXlA093Ni%2FSecurity_Audit_for_Tetu.io.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 6 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/tetu/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/tetu) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e`](./contracts/bsc-56/0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2b81010d43c7a82de9b7273e323d3e160346dcbe`](./contracts/polygon-137/0x2b81010d43c7a82de9b7273e323d3e160346dcbe/) | ApprovalsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4243a3f941e96e270aabe5ee257c32c3a5feb37e`](./contracts/base-8453/0x4243a3f941e96e270aabe5ee257c32c3a5feb37e/) | ArbitragePoolSolidly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8`](./contracts/base-8453/0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8/) | ArbitrageVaultSolidly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e734e30270292993dbe71c421ad2b128b6dae11`](./contracts/ethereum-1/0x8e734e30270292993dbe71c421ad2b128b6dae11/) | AUTOCOLOR_Technica | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c40c3237289c4d521534111d378ae5c9d420f62`](./contracts/polygon-137/0x1c40c3237289c4d521534111d378ae5c9d420f62/) | AutoRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43f04360894aef83d02d7a5cdd91ad64144969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/) | BABTAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5c5fc773883289778092e864afe015979a10eb9`](./contracts/ethereum-1/0xd5c5fc773883289778092e864afe015979a10eb9/) | BalanceOfExcluded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cc56fa7734da21ac88f6a816af10c5b898596ce`](./contracts/ethereum-1/0x9cc56fa7734da21ac88f6a816af10c5b898596ce/) | BalLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1dc8acdc552133fdaca94640560863f8d127caa5`](./contracts/polygon-137/0x1dc8acdc552133fdaca94640560863f8d127caa5/) | BalVaultPipe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46d7560d09e4ee13154e9922cfff7cb4d41f0331`](./contracts/polygon-137/0x46d7560d09e4ee13154e9922cfff7cb4d41f0331/) | BatchReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9d79d8741510dd0fb2df7b741c899334b28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | BatchTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc801956f5da6d6d08a3b543acf4a98b34289c26a`](./contracts/base-8453/0xc801956f5da6d6d08a3b543acf4a98b34289c26a/) | BorrowLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5947868a6842e69cacad068abf6481e1f522063e`](./contracts/base-8453/0x5947868a6842e69cacad068abf6481e1f522063e/) | BribeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5405f6de2a0d7ea0daa2b8f7e018868f9c3c2a02`](./contracts/polygon-137/0x5405f6de2a0d7ea0daa2b8f7e018868f9c3c2a02/) | BribeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1011a0289b2ba6f0d29bcaacb56cf780eb7c19c4`](./contracts/ethereum-1/0x1011a0289b2ba6f0d29bcaacb56cf780eb7c19c4/) | BribeLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d4ce7cd22f2c1dff56444b9d64282f10a3985c2`](./contracts/polygon-137/0x0d4ce7cd22f2c1dff56444b9d64282f10a3985c2/) | CompanyManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13d862a01d0ab241509a2e47e31d0db04e9b9f49`](./contracts/bsc-56/0x13d862a01d0ab241509a2e47e31d0db04e9b9f49/) | Cone | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0efc2d2d054383462f2cd72ea2526ef7687e1016`](./contracts/bsc-56/0x0efc2d2d054383462f2cd72ea2526ef7687e1016/) | ConeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x308a756b4f9aa3148cad7ccf8e72c18c758b2ef2`](./contracts/bsc-56/0x308a756b4f9aa3148cad7ccf8e72c18c758b2ef2/) | ConeMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf1fc29668e5f5eaa819948599c9ac1b1e03e75f`](./contracts/bsc-56/0xbf1fc29668e5f5eaa819948599c9ac1b1e03e75f/) | ConeRouter01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x574d055c0d6064f417766a39d6a1c2c13a267f53`](./contracts/bsc-56/0x574d055c0d6064f417766a39d6a1c2c13a267f53/) | ConeStacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3b5d80e4c094b17603ea8bb15d2d31ff5954aae`](./contracts/bsc-56/0xc3b5d80e4c094b17603ea8bb15d2d31ff5954aae/) | ConeVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00dfaaec6b9bcf4da6d48b6019e6260917c20218`](./contracts/polygon-137/0x00dfaaec6b9bcf4da6d48b6019e6260917c20218/) | ContractReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x087b137545dbe79594d76f9122a12bdf5cf12ad4`](./contracts/base-8453/0x087b137545dbe79594d76f9122a12bdf5cf12ad4/) | ContractReaderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d1fa5e3d4a59b65e737a6cf5ee010b106f2e66d`](./contracts/polygon-137/0x2d1fa5e3d4a59b65e737a6cf5ee010b106f2e66d/) | ContractUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5e427a2bd4da38234c6ebad7a64d7d0007d02382`](./contracts/base-8453/0x5e427a2bd4da38234c6ebad7a64d7d0007d02382/) | ConverterStrategyBaseLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4089b52f777850ebb8e8252055707b7b36817358`](./contracts/base-8453/0x4089b52f777850ebb8e8252055707b7b36817358/) | ConverterStrategyBaseLib2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xefbc16b8c973deca383aaabab07153d2eb676556`](./contracts/sonic-146/0xefbc16b8c973deca383aaabab07153d2eb676556/) | DataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c606e0da0a10d2445be1f32ba8d08f8364b08ff`](./contracts/base-8453/0x2c606e0da0a10d2445be1f32ba8d08f8364b08ff/) | DepositHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19443ba4b21c65a6cf75049332e5515235d1abb8`](./contracts/sonic-146/0x19443ba4b21c65a6cf75049332e5515235d1abb8/) | DungeonFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2c550024df438312efd1804231d924ca59b60ca6`](./contracts/sonic-146/0x2c550024df438312efd1804231d924ca59b60ca6/) | DungeonFactoryLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0b26e562c2c39da6a43ce4598ee50a01e16388e3`](./contracts/sonic-146/0x0b26e562c2c39da6a43ce4598ee50a01e16388e3/) | DungeonLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39ab6574c289c3ae4d88500eec792ab5b947a5eb`](./contracts/polygon-137/0x39ab6574c289c3ae4d88500eec792ab5b947a5eb/) | Dyst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d21db6cde1b18c7e47b0f7f42f4b3f68b9beec9`](./contracts/polygon-137/0x1d21db6cde1b18c7e47b0f7f42f4b3f68b9beec9/) | DystFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xab9c265a56980955aa46bbab214b2657daff18a7`](./contracts/polygon-137/0xab9c265a56980955aa46bbab214b2657daff18a7/) | DystMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x15de78e04ea152482ffb731ba96ad5c99e88933f`](./contracts/polygon-137/0x15de78e04ea152482ffb731ba96ad5c99e88933f/) | DystopiaSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6bd6979fe0345a9c02bf5fa714003c428627f353`](./contracts/polygon-137/0x6bd6979fe0345a9c02bf5fa714003c428627f353/) | DystRouter01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x649bdf58b09a0cd4ac848b42c4b5e1390a72a49a`](./contracts/polygon-137/0x649bdf58b09a0cd4ac848b42c4b5e1390a72a49a/) | DystVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3d2405f43adab0a921a129eacae9051e3fc94c3`](./contracts/bsc-56/0xc3d2405f43adab0a921a129eacae9051e3fc94c3/) | ERC1155GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/) | ERC20GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb16e4aa530d050b07ba98be418d2b732c011cdda`](./contracts/bsc-56/0xb16e4aa530d050b07ba98be418d2b732c011cdda/) | ERC677GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1545473701f011a5c977e48ac43e1404cdf96f11`](./contracts/ethereum-1/0x1545473701f011a5c977e48ac43e1404cdf96f11/) | ERC721Gateway_MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x543b2a89e759696fd3dc46743da5de2439fa259e`](./contracts/bsc-56/0x543b2a89e759696fd3dc46743da5de2439fa259e/) | ERC721GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1159ba7378e8b3b4d00be27dfb2d3346e987461f`](./contracts/sonic-146/0x1159ba7378e8b3b4d00be27dfb2d3346e987461f/) | EventLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b86747e4d5d664d5bc40bf317e66e1898697392`](./contracts/ethereum-1/0x4b86747e4d5d664d5bc40bf317e66e1898697392/) | ExtraReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2c4fc1ce07462ca3cff43e0e3697c7b23519a53f`](./contracts/sonic-146/0x2c4fc1ce07462ca3cff43e0e3697c7b23519a53f/) | FacadeStoryControllerExLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff9c94f5f5a3e3d65d2375215188140e23d604e3`](./contracts/bsc-56/0xff9c94f5f5a3e3d65d2375215188140e23d604e3/) | FactoryPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3`](./contracts/ethereum-1/0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3/) | FantomAnimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03ee6dca512b1365ad534921d4a60eb401b57628`](./contracts/polygon-137/0x03ee6dca512b1365ad534921d4a60eb401b57628/) | ForwarderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01669b47b523eae503b3fe24e96b7518eefca3e5`](./contracts/polygon-137/0x01669b47b523eae503b3fe24e96b7518eefca3e5/) | ForwarderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f`](./contracts/polygon-137/0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f/) | FxERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0129c37b474fe5f5bd72185441ba79a2b6516f43`](./contracts/sonic-146/0x0129c37b474fe5f5bd72185441ba79a2b6516f43/) | GameObjectController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2`](./contracts/sonic-146/0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2/) | GameToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x129225ad03306f837ffaf0c3556a8e1d008907a2`](./contracts/polygon-137/0x129225ad03306f837ffaf0c3556a8e1d008907a2/) | Gauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08bfe3d50f5b55a0fc15d8eaf970b8171803613c`](./contracts/polygon-137/0x08bfe3d50f5b55a0fc15d8eaf970b8171803613c/) | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x012d1be0ab3e7e9b3d5dd1acc30b54dd29b1f43a`](./contracts/sonic-146/0x012d1be0ab3e7e9b3d5dd1acc30b54dd29b1f43a/) | GOCLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbd51042d3a9ef62d4d93013315ae96a0c1760d7e`](./contracts/polygon-137/0xbd51042d3a9ef62d4d93013315ae96a0c1760d7e/) | GovernanceTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03ee6dca512b1365ad534921d4a60eb401b57628`](./contracts/sonic-146/0x03ee6dca512b1365ad534921d4a60eb401b57628/) | GuildController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x14f99ad446e947d62408d49d1d9adb19b2966332`](./contracts/sonic-146/0x14f99ad446e947d62408d49d1d9adb19b2966332/) | GuildLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2bd8a47b5a1c4dcc8cb1c2d5eaa09d12a0eb1300`](./contracts/polygon-137/0x2bd8a47b5a1c4dcc8cb1c2d5eaa09d12a0eb1300/) | HardWorkResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03e510ecd83bef0e890eeb10e3243e98dd4cf8d0`](./contracts/sonic-146/0x03e510ecd83bef0e890eeb10e3243e98dd4cf8d0/) | HeroBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0f32365872e5e64e3474020cc30b9891d2e9909b`](./contracts/sonic-146/0x0f32365872e5e64e3474020cc30b9891d2e9909b/) | HeroController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1115ba8c6acbeed9d8164ddce037bef892cc35f4`](./contracts/sonic-146/0x1115ba8c6acbeed9d8164ddce037bef892cc35f4/) | HeroControllerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0efa6a9a0cee642aff8826d33e3f88e09fbbab3b`](./contracts/sonic-146/0x0efa6a9a0cee642aff8826d33e3f88e09fbbab3b/) | HeroLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29c0c69c028c5be41a487814aa29ff43f5de4e1a`](./contracts/bsc-56/0x29c0c69c028c5be41a487814aa29ff43f5de4e1a/) | IDCard_V2_Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x13465e0ca7049509904e275cb44bf82f4c9def32`](./contracts/polygon-137/0x13465e0ca7049509904e275cb44bf82f4c9def32/) | InvestFundV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0427d1350c1e3b2968aa6d0e19332b8f56ec7134`](./contracts/sonic-146/0x0427d1350c1e3b2968aa6d0e19332b8f56ec7134/) | ItemBoxController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0b4213c3ef6bf61b60f5a30f69f7ea12f638f8dc`](./contracts/sonic-146/0x0b4213c3ef6bf61b60f5a30f69f7ea12f638f8dc/) | ItemController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x017bffac28212ca748595f063925a12eb6743f77`](./contracts/sonic-146/0x017bffac28212ca748595f063925a12eb6743f77/) | ItemControllerHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x015bdf55ecc3814b555fdc110ba8d82486d005eb`](./contracts/sonic-146/0x015bdf55ecc3814b555fdc110ba8d82486d005eb/) | ItemLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e8d45f0cbc360eff1f1353b337bf5cd3ed1d924`](./contracts/sonic-146/0x1e8d45f0cbc360eff1f1353b337bf5cd3ed1d924/) | ItemStatsLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6b8dea6cbe9cc5d70384ba223839e8a5dd8ae7c1`](./contracts/base-8453/0x6b8dea6cbe9cc5d70384ba223839e8a5dd8ae7c1/) | IterationPlanLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x21fd280d35cdbf61e04b892164bda1b4c0b570d7`](./contracts/polygon-137/0x21fd280d35cdbf61e04b892164bda1b4c0b570d7/) | LiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x123ede74acf65774a8fba3d753011c89b6421001`](./contracts/polygon-137/0x123ede74acf65774a8fba3d753011c89b6421001/) | MaiCamPipe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x017bffac28212ca748595f063925a12eb6743f77`](./contracts/polygon-137/0x017bffac28212ca748595f063925a12eb6743f77/) | MaiStablecoinPipe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b265480f314c8672ac9325ade066793c20a11b7`](./contracts/polygon-137/0x0b265480f314c8672ac9325ade066793c20a11b7/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8018ba5e6c05c51e5433123e392334b63a0b6d02`](./contracts/sonic-146/0x8018ba5e6c05c51e5433123e392334b63a0b6d02/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3729c3eb4562db8fe43bd644e6f26466bc521d8a`](./contracts/sonic-146/0x3729c3eb4562db8fe43bd644e6f26466bc521d8a/) | MonsterLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27ed9675b109e725067bdcbb2c5a1fd069e18642`](./contracts/bsc-56/0x27ed9675b109e725067bdcbb2c5a1fd069e18642/) | MonthlyBounty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b62ad43837a69ad60289eeea7c6e907e759f6e8`](./contracts/base-8453/0x0b62ad43837a69ad60289eeea7c6e907e759f6e8/) | MultiBribe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0550082c40c6a04096b62116f227d110a699967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | MultiHonor_Multichain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d`](./contracts/ethereum-1/0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d/) | MultiPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ef2a66aa4feb5f2ebc51183e36148513762402a`](./contracts/polygon-137/0x0ef2a66aa4feb5f2ebc51183e36148513762402a/) | MultiSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c19b304afc2cd7ff8606ac212418d55d07b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/) | NFTFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0ae108669ceb86e9e98e8fe9e40d98b867855fd`](./contracts/ethereum-1/0xb0ae108669ceb86e9e98e8fe9e40d98b867855fd/) | NFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5e42c17caeab64527d9d80d506a3fe01179afa02`](./contracts/base-8453/0x5e42c17caeab64527d9d80d506a3fe01179afa02/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0904cbbec0494b427388541046e882e0a0a300f6`](./contracts/sonic-146/0x0904cbbec0494b427388541046e882e0a0a300f6/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x04d7b857a5099d635c7ef966c7f748979755f948`](./contracts/sonic-146/0x04d7b857a5099d635c7ef966c7f748979755f948/) | OtherItemLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x713df40f222d36d557e1a66f6f79fdbc0a78457d`](./contracts/base-8453/0x713df40f222d36d557e1a66f6f79fdbc0a78457d/) | PairBasedStrategyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x57d3e8ca53878d6aa8b1c48bd8f3e52a3bcec005`](./contracts/base-8453/0x57d3e8ca53878d6aa8b1c48bd8f3e52a3bcec005/) | PairBasedStrategyLogicLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x566f51b19651b5eecf1d60ad8f08c936015c0dc1`](./contracts/base-8453/0x566f51b19651b5eecf1d60ad8f08c936015c0dc1/) | PairBasedStrategyReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc9d5917a0cb82450cd687af31ecaac967d7f121c`](./contracts/sonic-146/0xc9d5917a0cb82450cd687af31ecaac967d7f121c/) | PawnShop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c6868831c504fb0bb61a54fefc6464804380508`](./contracts/sonic-146/0x0c6868831c504fb0bb61a54fefc6464804380508/) | PawnShopRouterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x119a1c5f6b15b6edcae6614a914d59b13504deca`](./contracts/polygon-137/0x119a1c5f6b15b6edcae6614a914d59b13504deca/) | PaymentsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5256b9276974b12501e3cae24f877357cebdddd2`](./contracts/bsc-56/0x5256b9276974b12501e3cae24f877357cebdddd2/) | PerfFeeTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a2840d27a9761b70daaf9ef86db3ebffa637328`](./contracts/polygon-137/0x0a2840d27a9761b70daaf9ef86db3ebffa637328/) | PlatformVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3bf2a8dd8c9d892ec76fbbeea0189ae05a342ef9`](./contracts/polygon-137/0x3bf2a8dd8c9d892ec76fbbeea0189ae05a342ef9/) | PolygonBridgeSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31c459baead0be6951c1e9697af07c25113730fd`](./contracts/bsc-56/0x31c459baead0be6951c1e9697af07c25113730fd/) | PremiumHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x331a0041bd9a66592b85a4866c7ac51218f60a20`](./contracts/base-8453/0x331a0041bd9a66592b85a4866c7ac51218f60a20/) | PriceCalculatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x885c60a8f6596f1f07eabeb7e6b70e079b6ba987`](./contracts/polygon-137/0x885c60a8f6596f1f07eabeb7e6b70e079b6ba987/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x07c793626d1a570a347b8d68955e195d7e3f0a9e`](./contracts/sonic-146/0x07c793626d1a570a347b8d68955e195d7e3f0a9e/) | PvpAttackLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x43edb98d43da2545e7faeac701e5c3b91a0c578e`](./contracts/sonic-146/0x43edb98d43da2545e7faeac701e5c3b91a0c578e/) | PvpController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0caef1783c939632f8c890efb8a8d43935366584`](./contracts/sonic-146/0x0caef1783c939632f8c890efb8a8d43935366584/) | PvpFightLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9c0d22325a1a198c892d3b366bc65ff380fd031a`](./contracts/base-8453/0x9c0d22325a1a198c892d3b366bc65ff380fd031a/) | RebalanceDebtConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05e0463d04dcecabf8d1b2cca88b2844a71b7606`](./contracts/sonic-146/0x05e0463d04dcecabf8d1b2cca88b2844a71b7606/) | ReinforcementController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47b127ef02009d1b17bfa01cb8523d878202c18b`](./contracts/polygon-137/0x47b127ef02009d1b17bfa01cb8523d878202c18b/) | RewardCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103f7d014f46c6bcb9f86217c36368a08abe426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18c792978ccf5f81a2c1dfb44737fc14597d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/) | RewardHandler_Factory_SlowRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x411f3e09c66b30e7facfec45cd823b2e19dfad2d`](./contracts/bsc-56/0x411f3e09c66b30e7facfec45cd823b2e19dfad2d/) | RewardMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03e72e3f327a731af63a931cc06c84e2627b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/) | RewardPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13ee726d95742d437ebb664bf0d3feff8dbe2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | RewardShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0b62ad43837a69ad60289eeea7c6e907e759f6e8`](./contracts/sonic-146/0x0b62ad43837a69ad60289eeea7c6e907e759f6e8/) | RewardsPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x57577b27814f4166e2340580c49c9726549677e0`](./contracts/base-8453/0x57577b27814f4166e2340580c49c9726549677e0/) | RewardsRedirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0aa6262af21b85cbe396caf68d59aad8db3079fa`](./contracts/bsc-56/0x0aa6262af21b85cbe396caf68d59aad8db3079fa/) | RouterConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfc0dd337b92baa949bc5d25fd9a99cb3b6873204`](./contracts/sonic-146/0xfc0dd337b92baa949bc5d25fd9a99cb3b6873204/) | SacraGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc68802de8345b288ce156034c89cb9ec953dad28`](./contracts/sonic-146/0xc68802de8345b288ce156034c89cb9ec953dad28/) | Sale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3fa0cdd337cab5a50a4fd0b13313203f9b768e73`](./contracts/sonic-146/0x3fa0cdd337cab5a50a4fd0b13313203f9b768e73/) | ScoreLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1981c357b278843f6a0a09175cb49ea157161f81`](./contracts/sonic-146/0x1981c357b278843f6a0a09175cb49ea157161f81/) | ShelterController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf1e638871c59859db851674c7f94efcb0f40954`](./contracts/bsc-56/0xbf1e638871c59859db851674c7f94efcb0f40954/) | SolidlyLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb4899743a0a9666aa08754f49a45fe28a2a1ae1d`](./contracts/base-8453/0xb4899743a0a9666aa08754f49a45fe28a2a1ae1d/) | SplitterRebalanceResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa6a2ef41f9e0794c6fa3c9b15c41ff070ce2ae8c`](./contracts/sonic-146/0xa6a2ef41f9e0794c6fa3c9b15c41ff070ce2ae8c/) | SponsoredHero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x26f7529819f75e18a08c22c260896bc339d1622b`](./contracts/sonic-146/0x26f7529819f75e18a08c22c260896bc339d1622b/) | StatController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x206a6314133a997c604de3cf1ceb84cd7573bbaa`](./contracts/sonic-146/0x206a6314133a997c604de3cf1ceb84cd7573bbaa/) | StatControllerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4638c64d2d12a7c42933f5f70c63079445476790`](./contracts/sonic-146/0x4638c64d2d12a7c42933f5f70c63079445476790/) | StatReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1eefaf9d93362e218f52bbe97612dfe2c81a815e`](./contracts/sonic-146/0x1eefaf9d93362e218f52bbe97612dfe2c81a815e/) | StoryLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c30aea00cefefc12c25c2f1c130856927c6bd3e`](./contracts/sonic-146/0x0c30aea00cefefc12c25c2f1c130856927c6bd3e/) | StorySetupLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x534240c8c4614d5c8ba6dee1ad4e8f2c2d7180b1`](./contracts/polygon-137/0x534240c8c4614d5c8ba6dee1ad4e8f2c2d7180b1/) | StrategyBalBridgedStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27ae63d81be4e3bfc29c67cb3cea321b33488698`](./contracts/ethereum-1/0x27ae63d81be4e3bfc29c67cb3cea321b33488698/) | StrategyBalStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x52e34f0a0a2b26800b7a3d5240d2ccadb444dd32`](./contracts/polygon-137/0x52e34f0a0a2b26800b7a3d5240d2ccadb444dd32/) | StrategyCafeSwapLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4e14c69b97518e4b36316c92aadd19ef407bae4b`](./contracts/polygon-137/0x4e14c69b97518e4b36316c92aadd19ef407bae4b/) | StrategyCosmicSwapLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x151b33c30131cf4b7f1cf0b9801997137c54c0c3`](./contracts/polygon-137/0x151b33c30131cf4b7f1cf0b9801997137c54c0c3/) | StrategyDForceFold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x94df96cacb2a4a92f1d11231339595fbcb71ed21`](./contracts/polygon-137/0x94df96cacb2a4a92f1d11231339595fbcb71ed21/) | StrategyDinoPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x893bf5485cd7a568424482071378d10f98252ff4`](./contracts/polygon-137/0x893bf5485cd7a568424482071378d10f98252ff4/) | StrategyDinoSwapLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0154b5c0b69b6ce4c968fcc1b16d2e3ffdee9586`](./contracts/polygon-137/0x0154b5c0b69b6ce4c968fcc1b16d2e3ffdee9586/) | StrategyDinoSwapV2LpAc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x13c69098f256126f680b89a867914502f77f669e`](./contracts/polygon-137/0x13c69098f256126f680b89a867914502f77f669e/) | StrategyHermesSwapLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x101ecc7dfc63716f1c0a923c7314a954d6072b12`](./contracts/polygon-137/0x101ecc7dfc63716f1c0a923c7314a954d6072b12/) | StrategyIronFold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6697d7c8ba6b6fcf7b7584ee4a5a8d95be8a50a5`](./contracts/polygon-137/0x6697d7c8ba6b6fcf7b7584ee4a5a8d95be8a50a5/) | StrategyIronSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2322eddef0be1ebb9cbc4d2dbdc140c4cafd31e5`](./contracts/polygon-137/0x2322eddef0be1ebb9cbc4d2dbdc140c4cafd31e5/) | StrategyIronUniPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ada2a6d79887cf20ef7805d888b473f6fab9e64`](./contracts/polygon-137/0x0ada2a6d79887cf20ef7805d888b473f6fab9e64/) | StrategyKlimaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1400dd1250538c7b35756654c7c8c74b4d7df079`](./contracts/base-8453/0x1400dd1250538c7b35756654c7c8c74b4d7df079/) | StrategyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb42df1e6b2a79471c18ed626c53f2b8eace10b87`](./contracts/base-8453/0xb42df1e6b2a79471c18ed626c53f2b8eace10b87/) | StrategyLib2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0904985dc41b87db6200600550c6fc14d5fe8c44`](./contracts/polygon-137/0x0904985dc41b87db6200600550c6fc14d5fe8c44/) | StrategyMeshStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d6324da2cabf454bd5142f62ff802e6e4811ea4`](./contracts/polygon-137/0x3d6324da2cabf454bd5142f62ff802e6e4811ea4/) | StrategyPenroseTetuQi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12b1063634ec6ddc874c1c5efb4e2d616639de33`](./contracts/polygon-137/0x12b1063634ec6ddc874c1c5efb4e2d616639de33/) | StrategyPenroseTetuUsdPlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e75231c1cc0e6d30d03346b3b87b92bb3a1f856`](./contracts/base-8453/0x3e75231c1cc0e6d30d03346b3b87b92bb3a1f856/) | StrategyProfitHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05166dca3a7de293052cb88da0f1e4be4870cab6`](./contracts/polygon-137/0x05166dca3a7de293052cb88da0f1e4be4870cab6/) | StrategyQiStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x043c9d9fd347462bce1daf53d94416be9180a552`](./contracts/polygon-137/0x043c9d9fd347462bce1daf53d94416be9180a552/) | StrategyQuickSwapLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0085bb209c54b0f90cd20257b930c51fc7b8630a`](./contracts/polygon-137/0x0085bb209c54b0f90cd20257b930c51fc7b8630a/) | StrategyQuickSwapLpAc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x11253ff148902a837a6f5c7cd113d46b58a5cea5`](./contracts/polygon-137/0x11253ff148902a837a6f5c7cd113d46b58a5cea5/) | StrategyQuickSwapLpDualAC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c35d10ab376c013c5853266ab5f35b8cad551cc`](./contracts/polygon-137/0x0c35d10ab376c013c5853266ab5f35b8cad551cc/) | StrategyQuickSwapLpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x067fe0b44387f03977c67b245ffa9784afd46fdc`](./contracts/polygon-137/0x067fe0b44387f03977c67b245ffa9784afd46fdc/) | StrategyTetuSelfFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01309787bc147a2ad56ac2f49d8497e40d263ca6`](./contracts/polygon-137/0x01309787bc147a2ad56ac2f49d8497e40d263ca6/) | StrategyTetuSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1616589f2acc9ae962879a29daa62b49346bafd3`](./contracts/bsc-56/0x1616589f2acc9ae962879a29daa62b49346bafd3/) | StrategyVenusSupply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x91bcbdd5933a9dd604b90f5fb8b49aae02c65b4e`](./contracts/polygon-137/0x91bcbdd5933a9dd604b90f5fb8b49aae02c65b4e/) | StrategyVesqStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x166df927779ed5086b716beb4180e289496879f7`](./contracts/polygon-137/0x166df927779ed5086b716beb4180e289496879f7/) | StrategyWaultLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a482112da84c8d2af3b8779a1d9dfcb54c2fdc7`](./contracts/polygon-137/0x0a482112da84c8d2af3b8779a1d9dfcb54c2fdc7/) | StrategyWaultLpWithAc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2b7b097b23e0dab93e881a6471cf8b511f14e1f4`](./contracts/polygon-137/0x2b7b097b23e0dab93e881a6471cf8b511f14e1f4/) | StrategyWaultSingle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd87288d4827a1b59c0e1b3b9000f80b8e763aca8`](./contracts/sonic-146/0xd87288d4827a1b59c0e1b3b9000f80b8e763aca8/) | StringLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01d0b17ac7b72cd4b051840e27a2134f25c53265`](./contracts/bsc-56/0x01d0b17ac7b72cd4b051840e27a2134f25c53265/) | SwapLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9daaf475d6773e08aa6bd9d3c10372c3a6ed426f`](./contracts/ethereum-1/0x9daaf475d6773e08aa6bd9d3c10372c3a6ed426f/) | TetuBalExtender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0587c1e628b69ec687ca4f2bd2827758ad842e34`](./contracts/polygon-137/0x0587c1e628b69ec687ca4f2bd2827758ad842e34/) | TetuLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x002fe8b38f7c261dddd2125875413a6ebd7e40d3`](./contracts/polygon-137/0x002fe8b38f7c261dddd2125875413a6ebd7e40d3/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00ba2b78b3af349a0959defd1a29f54936874e5b`](./contracts/polygon-137/0x00ba2b78b3af349a0959defd1a29f54936874e5b/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a0846c978a56d6ea9d2602eeb8f977b21f3207f`](./contracts/polygon-137/0x0a0846c978a56d6ea9d2602eeb8f977b21f3207f/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a8356516df3b0772e469ed6eed705a4190aea15`](./contracts/polygon-137/0x0a8356516df3b0772e469ed6eed705a4190aea15/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b86cf1167d19fdf71a6d7ce605ff57d65ee19a3`](./contracts/polygon-137/0x0b86cf1167d19fdf71a6d7ce605ff57d65ee19a3/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0fa7c71a07af3784b0784d058ad104a1471afa36`](./contracts/polygon-137/0x0fa7c71a07af3784b0784d058ad104a1471afa36/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ca723b9dc7cba8fbd15b92cf93c61a297db6cd9`](./contracts/polygon-137/0x1ca723b9dc7cba8fbd15b92cf93c61a297db6cd9/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x237114ef61b27fdf57132e6c8c4244eeea8323d3`](./contracts/polygon-137/0x237114ef61b27fdf57132e6c8c4244eeea8323d3/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x26030c3e3790ff4e1236585f2650ae7da56a752c`](./contracts/polygon-137/0x26030c3e3790ff4e1236585f2650ae7da56a752c/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3231c694c8d67b90465274dd9b424c6702ca4ad8`](./contracts/polygon-137/0x3231c694c8d67b90465274dd9b424c6702ca4ad8/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ab6242b727c3bd0b4cd1f90c51ed6316583d5e9`](./contracts/polygon-137/0x4ab6242b727c3bd0b4cd1f90c51ed6316583d5e9/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2`](./contracts/polygon-137/0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8ffba974efa7c262c97b9521449fd2b3c69be4e6`](./contracts/polygon-137/0x8ffba974efa7c262c97b9521449fd2b3c69be4e6/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0032bc58723c5c2e6559a7ed202729b5760748e`](./contracts/polygon-137/0xa0032bc58723c5c2e6559a7ed202729b5760748e/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc443f1e51f4596b81b4ec4223206f47292608a10`](./contracts/polygon-137/0xc443f1e51f4596b81b4ec4223206f47292608a10/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf4e5dafa487ba89153b9d3d0bcd49d6c77db388d`](./contracts/polygon-137/0xf4e5dafa487ba89153b9d3d0bcd49d6c77db388d/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2793fa8d570b99eb9ba7f5d3e2480f6ab06cbe9c`](./contracts/polygon-137/0x2793fa8d570b99eb9ba7f5d3e2480f6ab06cbe9c/) | TetuProxyGov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3dad9fc2235cf00a3d9e142122a26c839a7adc6e`](./contracts/polygon-137/0x3dad9fc2235cf00a3d9e142122a26c839a7adc6e/) | TetuProxyGov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x48ad115540a0f9e128ee62df5ce519451ba5f6e0`](./contracts/polygon-137/0x48ad115540a0f9e128ee62df5ce519451ba5f6e0/) | TetuProxyGov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xda67dbab383a7ce922320a48d515f0fd567aac08`](./contracts/polygon-137/0xda67dbab383a7ce922320a48d515f0fd567aac08/) | TetuQiVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e427a2bd4da38234c6ebad7a64d7d0007d02382`](./contracts/ethereum-1/0x5e427a2bd4da38234c6ebad7a64d7d0007d02382/) | TetuRewardRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f822e6c535a39cb7799200018d943133abba07c`](./contracts/polygon-137/0x1f822e6c535a39cb7799200018d943133abba07c/) | TetuSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x115b599c173ef6743c149fc5fc40230d932c95b3`](./contracts/polygon-137/0x115b599c173ef6743c149fc5fc40230d932c95b3/) | TetuSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f72964fa4b766521d84107991e837c30d0ef2b1`](./contracts/ethereum-1/0x0f72964fa4b766521d84107991e837c30d0ef2b1/) | TetuTokenMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x413b91138077c7105656dbb03185ce18c12bad14`](./contracts/polygon-137/0x413b91138077c7105656dbb03185ce18c12bad14/) | TetuUnpacking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x21a908478c0307742aa535bf5754d43dcb5ad29b`](./contracts/sonic-146/0x21a908478c0307742aa535bf5754d43dcb5ad29b/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | TokenPriceConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04ae9473abd9a74aeb03cd5eace42d186a376cf9`](./contracts/polygon-137/0x04ae9473abd9a74aeb03cd5eace42d186a376cf9/) | TokenRetranslatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x833d22f5c1b01ad2ad34611bd391c246712b9707`](./contracts/polygon-137/0x833d22f5c1b01ad2ad34611bd391c246712b9707/) | TradeBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x91f29f7be847a050a1554462ea48ac622b150dd2`](./contracts/polygon-137/0x91f29f7be847a050a1554462ea48ac622b150dd2/) | TradeBot1Inch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x26e4a4fde42779e1060fc649460e537b4a8d477f`](./contracts/polygon-137/0x26e4a4fde42779e1060fc649460e537b4a8d477f/) | TradeBotDystopia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x13d862a01d0ab241509a2e47e31d0db04e9b9f49`](./contracts/sonic-146/0x13d862a01d0ab241509a2e47e31d0db04e9b9f49/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00379dd90b2a337c4652e286e4fbceadef940a21`](./contracts/base-8453/0x00379dd90b2a337c4652e286e4fbceadef940a21/) | Uni3Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3a187ac6e96493f6e8c3a9f37b4f9cc3d3de0862`](./contracts/sonic-146/0x3a187ac6e96493f6e8c3a9f37b4f9cc3d3de0862/) | UserController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x522cb8f25896691bdc5f69aabfccd50647a14aa0`](./contracts/ethereum-1/0x522cb8f25896691bdc5f69aabfccd50647a14aa0/) | ValueRouterImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x099c314f792e1f91f53765fc64aadccf4dcf1538`](./contracts/ethereum-1/0x099c314f792e1f91f53765fc64aadccf4dcf1538/) | VaultController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7da32c32e1c05e6572321275925301fdf916fcf5`](./contracts/polygon-137/0x7da32c32e1c05e6572321275925301fdf916fcf5/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x078b7c9304eba754e916016e8a8939527076f991`](./contracts/base-8453/0x078b7c9304eba754e916016e8a8939527076f991/) | VaultInsurance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00bc12bdea08d2d57dfe0ff322d40aa6d6f579f6`](./contracts/polygon-137/0x00bc12bdea08d2d57dfe0ff322d40aa6d6f579f6/) | VaultLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x060fa7ad32c510f12550c7a967999810dafc5697`](./contracts/polygon-137/0x060fa7ad32c510f12550c7a967999810dafc5697/) | Ve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x443299d9b347ae68c42d4909efa1892caa35e9ca`](./contracts/ethereum-1/0x443299d9b347ae68c42d4909efa1892caa35e9ca/) | ve_query | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3efb1b284a3eba3955c53b728a2cc4182a07e92f`](./contracts/polygon-137/0x3efb1b284a3eba3955c53b728a2cc4182a07e92f/) | VeDist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c4599a079d029f0304b284f4696d009c0281806`](./contracts/polygon-137/0x2c4599a079d029f0304b284f4696d009c0281806/) | VeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/) | VEPowerOracleSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55f8d898760240e6eff3c2cc23974ae8c8fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | VEShareNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12a2cd7d359cc69f02215d0b72d39bce66299b2e`](./contracts/polygon-137/0x12a2cd7d359cc69f02215d0b72d39bce66299b2e/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x476e7652a081f749856caec1e2abf563b52aeeea`](./contracts/base-8453/0x476e7652a081f749856caec1e2abf563b52aeeea/) | VeTetuLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x10c7bdfbd3db8288252aec0f10121ad958eab0bf`](./contracts/polygon-137/0x10c7bdfbd3db8288252aec0f10121ad958eab0bf/) | VeTetuLogo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x601ac43c21eb4862014e1e71ac5ec1708dc4209e`](./contracts/polygon-137/0x601ac43c21eb4862014e1e71ac5ec1708dc4209e/) | VeTETUVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56087784f94705148329bfcf77a0aa0d22e0ea0c`](./contracts/ethereum-1/0x56087784f94705148329bfcf77a0aa0d22e0ea0c/) | VotemarketClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0534ce56642492d51b0b6d3b6f41e1f55a4276d3`](./contracts/polygon-137/0x0534ce56642492d51b0b6d3b6f41e1f55a4276d3/) | ZapContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 247 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=36

Fork inheritance lineage and inherited audits are included when available.
