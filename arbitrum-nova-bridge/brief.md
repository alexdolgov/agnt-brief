# Agentic Audit Brief: Arbitrum Nova Bridge

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: active (Tier 0, 91.4% below peak)
- Generated: 2026-05-22T17:30:08.086Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum
- Contract surface: 55 unique implementations (168 raw deployments)
- DeFi Llama TVL: $19,198,832.41
- On-chain TVL (included contracts): $447,171.38
- TVL by chain: Ethereum $447,171.38

## Project Description

The Arbitrum Nova Bridge enables trustless transfer of assets between Ethereum and Arbitrum Nova, a low-cost L2 chain. It uses a canonical token bridge with gateway contracts to lock tokens on L1 and mint corresponding tokens on L2.

### Architecture

The L1GatewayRouter directs token transfers to the appropriate gateway (L1ERC20Gateway or L1CustomGateway), which lock tokens in the L1Escrow and trigger minting on L2 via the Bridge contract. L1WethGateway handles ETH wrapping/unwrapping, while L2ArbitrumToken represents the bridged asset on Arbitrum Nova.

## Audit Coverage Summary

- Verified implementations audited: 0/48 (0.0%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 55
- Raw deployments: 168
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $447,171.38
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1ERC20Gateway | token | ethereum | 3 deployments: ethereum [`0xb2535b...ac21bf`](./contracts/ethereum-1/0xb2535b988dce19f9d71dfb22db6da744acac21bf/); ethereum `0xb4299a...fde900`; ethereum `0xf852de...c0ef4b` | ⚠️ Unaudited |
| ArbitrumBridgeRegistry | operational_periphery | ethereum | [`0x4c39bd...fd0b13`](./contracts/ethereum-1/0x4c39bd79dcd8827c9bdf54c04b683cdc89fd0b13/) | ⚠️ Unaudited |
| ArbOneAIPArbOS31UpgradeChallengeManagerAction | governance | ethereum | [`0x19b715...e718b5`](./contracts/ethereum-1/0x19b715cf310c28c9020e53aaa11ce9df42e718b5/) | ⚠️ Unaudited |
| BOLDUpgradeAction | unknown | ethereum | 2 deployments: ethereum [`0xd25b25...0f78b5`](./contracts/ethereum-1/0xd25b258b55765c9fb5567ecabb6114b03b0f78b5/); ethereum `0xf795ec...25ac1d` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | 5 deployments: ethereum [`0x041752...68fa7a`](./contracts/ethereum-1/0x041752178b4a7b6800cc38260f3d443fc868fa7a/); ethereum `0x298e5c...caa43d`; ethereum `0x677ecf...a27b89`; ethereum `0xc1ebd0...e276bd`; ethereum `0xc26bc9...46e29a` | ⚠️ Unaudited |
| BridgeCreator | operational_periphery | ethereum | 3 deployments: ethereum [`0xe38f02...bfa04a`](./contracts/ethereum-1/0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a/); ethereum `0xe98c12...7bec5e`; ethereum `0xf2c8b2...965c1c` | ⚠️ Unaudited |
| ChallengeManager | governance | ethereum | 5 deployments: ethereum [`0x02e05a...c8736b`](./contracts/ethereum-1/0x02e05a9245c5853f895dadcc3a8216c953c8736b/); ethereum `0x144095...0f156e`; ethereum `0x914b7b...4e2948`; ethereum `0xbd5be9...b1f97a`; ethereum `0xe129b8...dfd566` | ⚠️ Unaudited |
| DeployHelper | periphery | ethereum | 3 deployments: ethereum [`0x15b791...4c1f32`](./contracts/ethereum-1/0x15b7911c2974dfa95ae12192e2a3387b204c1f32/); ethereum `0x524c56...d4980b`; ethereum `0x6319ff...cf6ec7` | ⚠️ Unaudited |
| DisableGatewayAction | unknown | ethereum | [`0x8d3425...f4188f`](./contracts/ethereum-1/0x8d3425f7039645223517f6f6e60ef04c28f4188f/) | ⚠️ Unaudited |
| EdgeChallengeManager | governance | ethereum | 2 deployments: ethereum [`0x058e1c...d969ea`](./contracts/ethereum-1/0x058e1cbb62096189bc7cc1fe08a0859905d969ea/); ethereum `0x93069f...248524` | ⚠️ Unaudited |
| EnableFastConfirmAction | unknown | ethereum | [`0xe102b5...a6673d`](./contracts/ethereum-1/0xe102b527075b028b6bc6f4d4f11292d2f8a6673d/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | 4 deployments: ethereum [`0x81be1b...dad9d6`](./contracts/ethereum-1/0x81be1bf06cb9b23e8eeda3145c3366a912dad9d6/); ethereum `0x9f6a99...5bcf96`; ethereum `0xd72155...3721c7`; ethereum `0xefa1de...595751` | ⚠️ Unaudited |
| ERC20Inbox | token | ethereum | 3 deployments: ethereum [`0xd210b6...6a1f4e`](./contracts/ethereum-1/0xd210b64ed9d47ef8acf1a3284722fcc7fc6a1f4e/); ethereum `0xd5dcf6...c1880a`; ethereum `0xef56ee...b9bd6d` | ⚠️ Unaudited |
| ERC20Outbox | token | ethereum | 3 deployments: ethereum [`0x103261...cfe7f7`](./contracts/ethereum-1/0x1032615db60c64b902b8f1255afc97270acfe7f7/); ethereum `0x17e0c5...5c0386`; ethereum `0xdf7031...bc0e5f` | ⚠️ Unaudited |
| ERC20RollupEventInbox | token | ethereum | 3 deployments: ethereum [`0x0d079b...95bdee`](./contracts/ethereum-1/0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee/); ethereum `0x2ec583...0e49cb`; ethereum `0x60ced0...6908ea` | ⚠️ Unaudited |
| Inbox | unknown | ethereum | 6 deployments: ethereum [`0x1b2676...fe3d6a`](./contracts/ethereum-1/0x1b2676d32e2f7430a564dd4560641f990dfe3d6a/); ethereum `0x5aed5f...0afe94`; ethereum `0x9c4ce5...091c35`; ethereum `0xa8ad1d...311bf5`; ethereum `0xc23e3f...a3eed4`; ethereum `0xc47ec3...2915d9` | ⚠️ Unaudited |
| L1CustomGateway | unknown | ethereum | 3 deployments: ethereum [`0x23122d...50232f`](./contracts/ethereum-1/0x23122da8c581aa7e0d07a36ff1f16f799650232f/); ethereum `0x973674...39db17`; ethereum `0xc8d26a...80aa45` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | [`0xa2e996...97aad3`](./contracts/ethereum-1/0xa2e996f0cb33575fa0e36e8f62fcd4a9b897aad3/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | ethereum | 4 deployments: ethereum [`0x525950...ff423c`](./contracts/ethereum-1/0x52595021fa01b3e14ec6c88953afc8e35dff423c/); ethereum `0x6d1c57...ccb47b`; ethereum `0xa96105...fd477e`; ethereum `0xc84083...63cd48` | ⚠️ Unaudited |
| L1Token | token | ethereum | [`0xe3dbc4...6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | ⚠️ Unaudited |
| L1WethGateway | token | ethereum | 5 deployments: ethereum [`0x1986a7...1de0b1`](./contracts/ethereum-1/0x1986a7d7a9bb6cdbd87460bc2381d012071de0b1/); ethereum `0x629983...3c4936`; ethereum `0xb63762...ac409c`; ethereum `0xcb5e88...4d0728`; ethereum `0xe4e212...330bae` | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| Multicall2 | periphery | ethereum | [`0x8896d2...a38ea3`](./contracts/ethereum-1/0x8896d23afea159a5e9b72c9eb3dc4e2684a38ea3/) | ⚠️ Unaudited |
| NitroContracts2Point1Point0UpgradeAction | unknown | ethereum | [`0x9e0049...442225`](./contracts/ethereum-1/0x9e0049b901531aee041ad0d63faeeeffbf442225/) | ⚠️ Unaudited |
| NitroContracts2Point1Point2UpgradeAction | unknown | ethereum | [`0x78ee30...35542f`](./contracts/ethereum-1/0x78ee30c74b3ce1aeb38163db3e7d769d9735542f/) | ⚠️ Unaudited |
| NovaAIPArbOS31UpgradeChallengeManagerAction | governance | ethereum | [`0x658afc...fbff27`](./contracts/ethereum-1/0x658afc9d5ec4476fa6bb7033ea465f9901fbff27/) | ⚠️ Unaudited |
| OfficeHoursAction | unknown | ethereum | 2 deployments: ethereum [`0x0da0e8...3ee915`](./contracts/ethereum-1/0x0da0e898d593b330a63044492ffbbf4a553ee915/); ethereum `0x561ee2...8e2a28` | ⚠️ Unaudited |
| OneStepProofEntry | unknown | ethereum | 9 deployments: ethereum [`0x4397fe...5a42d6`](./contracts/ethereum-1/0x4397fe1e959ba81b9d5f1a9679ddd891955a42d6/); ethereum `0x4dc0d3...9b151f`; ethereum `0x83fa8e...48cfeb`; ethereum `0x8f4985...4390f8`; ethereum `0x8faa21...b34dac`; ethereum `0x91cb57...91a64f`; ethereum `0x95b1e6...2e3c7c`; ethereum `0xa328ba...3c6fc7`; ethereum `0xc6e1e6...5c4f7e` | ⚠️ Unaudited |
| OneStepProver0 | unknown | ethereum | 9 deployments: ethereum [`0x273320...aaa7a4`](./contracts/ethereum-1/0x2733206827d957b6a0c6417e4eed5ba59eaaa7a4/); ethereum `0x2dccab...7222b5`; ethereum `0x3111ba...3f410d`; ethereum `0x35fbc5...bdf731`; ethereum `0x7368f7...c15835`; ethereum `0xa174e1...79a58c`; ethereum `0xa4ac11...921d1e`; ethereum `0xd0465e...73c5b6`; ethereum `0xe0e0f9...ba97bf` | ⚠️ Unaudited |
| OneStepProverHostIo | unknown | ethereum | 9 deployments: ethereum [`0x0003a9...c568c4`](./contracts/ethereum-1/0x0003a96b27ce73505b43ea1b71a5ab06bec568c4/); ethereum `0x350608...662b14`; ethereum `0x593ae4...ad3841`; ethereum `0x8d7838...bc2544`; ethereum `0xa07cd1...ca71cf`; ethereum `0xd7f12e...92a63e`; ethereum `0xddad5e...f22d60`; ethereum `0xe427dd...8df76f`; ethereum `0xf2d894...92c81a` | ⚠️ Unaudited |
| OneStepProverMath | unknown | ethereum | 9 deployments: ethereum [`0x0a875d...4d261d`](./contracts/ethereum-1/0x0a875dd455945bc2f8ec50f11a15a58f564d261d/); ethereum `0x221ccc...d5dcaa`; ethereum `0x2c785e...30f7c9`; ethereum `0x97af30...2f71bf`; ethereum `0x998e02...a5351f`; ethereum `0xa8de82...fe642b`; ethereum `0xab9596...0bf921`; ethereum `0xcf4b98...79a6ed`; ethereum `0xd1d752...c5f5e4` | ⚠️ Unaudited |
| OneStepProverMemory | unknown | ethereum | 9 deployments: ethereum [`0x1cd76b...9ad7fb`](./contracts/ethereum-1/0x1cd76b9c33b2e3b04d7b181399d492b3e49ad7fb/); ethereum `0x29efff...fc2283`; ethereum `0x5c9f86...767a18`; ethereum `0x738a25...b75bda`; ethereum `0x8ff4ae...600af5`; ethereum `0x9ef153...085c96`; ethereum `0xb602d0...bbd3ed`; ethereum `0xe0ba77...2ec48b`; ethereum `0xe77319...58af03` | ⚠️ Unaudited |
| Outbox | unknown | ethereum | 3 deployments: ethereum [`0x186267...94cb33`](./contracts/ethereum-1/0x186267690cb723d72a7edbc002476e23d694cb33/); ethereum `0xa7402f...2eb752`; ethereum `0xbc8941...d5f12d` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xa8f7dd...03e560`](./contracts/ethereum-1/0xa8f7dded54a726eb873e98bff2c95abf2d03e560/) | ⚠️ Unaudited |
| RegisterAndSetArbCustomGatewayAction | unknown | ethereum | 2 deployments: ethereum [`0x1fe2d8...119d37`](./contracts/ethereum-1/0x1fe2d8ad9efaef358cbd4ef6e1e9cf7148119d37/); ethereum `0x997668...558969` | ⚠️ Unaudited |
| RegisterL2TokenInArbCustomGatewayAction | token | ethereum | [`0x7a5781...7c8843`](./contracts/ethereum-1/0x7a578141af44095a58b73b1e84a63da3267c8843/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | ethereum | 6 deployments: ethereum [`0x16ad56...cab724`](./contracts/ethereum-1/0x16ad566aaa05fe6977a033de2472c05c84cab724/); ethereum `0x2f9491...c5dc44`; ethereum `0x72f193...4f585f`; ethereum `0x7fc126...d8df17`; ethereum `0x9b56a7...7ca17d`; ethereum `0xbaa095...8cd635` | ⚠️ Unaudited |
| RollupCreator | unknown | ethereum | 3 deployments: ethereum [`0x436980...d0ab44`](./contracts/ethereum-1/0x43698080f40db54dee6871540037b8ab8fd0ab44/); ethereum `0x62b6df...c4119a`; ethereum `0x8c8843...a2f3e1` | ⚠️ Unaudited |
| RollupEventInbox | unknown | ethereum | 3 deployments: ethereum [`0x1ed421...47ec8e`](./contracts/ethereum-1/0x1ed42156d64b52100f005d7e39092d49ed47ec8e/); ethereum `0x7b6784...447662`; ethereum `0x98f503...a66829` | ⚠️ Unaudited |
| RollupProxy | unknown | ethereum | 2 deployments: ethereum [`0x13cf1a...1726bc`](./contracts/ethereum-1/0x13cf1a771156a8674fc5d4c750546888e21726bc/); ethereum `0x1ef371...336b17` | ⚠️ Unaudited |
| RollupUserLogic | unknown | ethereum | 5 deployments: ethereum [`0x4d4237...e12463`](./contracts/ethereum-1/0x4d42373d1d8fc9aef11477984b9be42672e12463/); ethereum `0x5607ea...6d1c34`; ethereum `0x5c93ba...633517`; ethereum `0x5e7147...5580ef`; ethereum `0xa4892f...255451` | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | 10 deployments: ethereum [`0x31da64...792cf7`](./contracts/ethereum-1/0x31da64d19cd31a19cd09f4070366fe2144792cf7/); ethereum `0x6f2e7f...00c324`; ethereum `0x93dcfc...f5bf76`; ethereum `0x9ed1d7...553c0a`; ethereum `0xbf223a...5427d4`; ethereum `0xcc4e9e...0e9afc`; ethereum `0xe154a8...0e4ef4`; ethereum `0xe4be54...7681e3`; ethereum `0xed3492...8e9480`; ethereum `0xff2a93...a306f4` | ⚠️ Unaudited |
| SetGatewayAction | unknown | ethereum | 2 deployments: ethereum [`0x7f089c...09d562`](./contracts/ethereum-1/0x7f089c0daf0181f7afd533f5f3265301bb09d562/); ethereum `0x9a10fd...1166c3` | ⚠️ Unaudited |
| SetValidatorsAction | unknown | ethereum | [`0xbf94af...670aba`](./contracts/ethereum-1/0xbf94afebfbf062a88615bc012da39d0822670aba/) | ⚠️ Unaudited |
| SetWasmModuleRootAction | unknown | ethereum | 2 deployments: ethereum [`0x569117...3a8e7d`](./contracts/ethereum-1/0x569117d8432d161754fc3cd7e0620e02c53a8e7d/); ethereum `0x93c342...c50fb6` | ⚠️ Unaudited |
| UpgradeExecutor | unknown | ethereum | 3 deployments: ethereum [`0x995f93...f6d47a`](./contracts/ethereum-1/0x995f930b4a943620f1341a287c9f2cf093f6d47a/); ethereum `0xde505e...ba35da`; ethereum `0xeab067...662d4b` | ⚠️ Unaudited |
| ValidatorUtils | unknown | ethereum | 2 deployments: ethereum [`0x166f96...7a1654`](./contracts/ethereum-1/0x166f9647b7d21e9e0076bbfeb66c66e18c7a1654/); ethereum `0x34f2d5...0152a3` | ⚠️ Unaudited |
| ValidatorWalletCreator | unknown | ethereum | 3 deployments: ethereum [`0x085c69...4436f1`](./contracts/ethereum-1/0x085c69a44f3df550b6666d052d4621b9b44436f1/); ethereum `0x225ea7...5463ca`; ethereum `0xddd434...b48858` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x42a4da...eccb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4482d0...135136` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x826acc...d86a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa98b1b...b78113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1f1a7...943411` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5f695...3c5097` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe58ea0...389639` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4c39bd...fd0b13`](./contracts/ethereum-1/0x4c39bd79dcd8827c9bdf54c04b683cdc89fd0b13/) | ArbitrumBridgeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b715...e718b5`](./contracts/ethereum-1/0x19b715cf310c28c9020e53aaa11ce9df42e718b5/) | ArbOneAIPArbOS31UpgradeChallengeManagerAction | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd25b25...0f78b5`](./contracts/ethereum-1/0xd25b258b55765c9fb5567ecabb6114b03b0f78b5/) | BOLDUpgradeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x041752...68fa7a`](./contracts/ethereum-1/0x041752178b4a7b6800cc38260f3d443fc868fa7a/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe38f02...bfa04a`](./contracts/ethereum-1/0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a/) | BridgeCreator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02e05a...c8736b`](./contracts/ethereum-1/0x02e05a9245c5853f895dadcc3a8216c953c8736b/) | ChallengeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15b791...4c1f32`](./contracts/ethereum-1/0x15b7911c2974dfa95ae12192e2a3387b204c1f32/) | DeployHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d3425...f4188f`](./contracts/ethereum-1/0x8d3425f7039645223517f6f6e60ef04c28f4188f/) | DisableGatewayAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x058e1c...d969ea`](./contracts/ethereum-1/0x058e1cbb62096189bc7cc1fe08a0859905d969ea/) | EdgeChallengeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe102b5...a6673d`](./contracts/ethereum-1/0xe102b527075b028b6bc6f4d4f11292d2f8a6673d/) | EnableFastConfirmAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81be1b...dad9d6`](./contracts/ethereum-1/0x81be1bf06cb9b23e8eeda3145c3366a912dad9d6/) | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd210b6...6a1f4e`](./contracts/ethereum-1/0xd210b64ed9d47ef8acf1a3284722fcc7fc6a1f4e/) | ERC20Inbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x103261...cfe7f7`](./contracts/ethereum-1/0x1032615db60c64b902b8f1255afc97270acfe7f7/) | ERC20Outbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d079b...95bdee`](./contracts/ethereum-1/0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee/) | ERC20RollupEventInbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b2676...fe3d6a`](./contracts/ethereum-1/0x1b2676d32e2f7430a564dd4560641f990dfe3d6a/) | Inbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2e996...97aad3`](./contracts/ethereum-1/0xa2e996f0cb33575fa0e36e8f62fcd4a9b897aad3/) | L1Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x525950...ff423c`](./contracts/ethereum-1/0x52595021fa01b3e14ec6c88953afc8e35dff423c/) | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3dbc4...6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | L1Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e0049...442225`](./contracts/ethereum-1/0x9e0049b901531aee041ad0d63faeeeffbf442225/) | NitroContracts2Point1Point0UpgradeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78ee30...35542f`](./contracts/ethereum-1/0x78ee30c74b3ce1aeb38163db3e7d769d9735542f/) | NitroContracts2Point1Point2UpgradeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x658afc...fbff27`](./contracts/ethereum-1/0x658afc9d5ec4476fa6bb7033ea465f9901fbff27/) | NovaAIPArbOS31UpgradeChallengeManagerAction | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0da0e8...3ee915`](./contracts/ethereum-1/0x0da0e898d593b330a63044492ffbbf4a553ee915/) | OfficeHoursAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4397fe...5a42d6`](./contracts/ethereum-1/0x4397fe1e959ba81b9d5f1a9679ddd891955a42d6/) | OneStepProofEntry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x273320...aaa7a4`](./contracts/ethereum-1/0x2733206827d957b6a0c6417e4eed5ba59eaaa7a4/) | OneStepProver0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0003a9...c568c4`](./contracts/ethereum-1/0x0003a96b27ce73505b43ea1b71a5ab06bec568c4/) | OneStepProverHostIo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a875d...4d261d`](./contracts/ethereum-1/0x0a875dd455945bc2f8ec50f11a15a58f564d261d/) | OneStepProverMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cd76b...9ad7fb`](./contracts/ethereum-1/0x1cd76b9c33b2e3b04d7b181399d492b3e49ad7fb/) | OneStepProverMemory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x186267...94cb33`](./contracts/ethereum-1/0x186267690cb723d72a7edbc002476e23d694cb33/) | Outbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe2d8...119d37`](./contracts/ethereum-1/0x1fe2d8ad9efaef358cbd4ef6e1e9cf7148119d37/) | RegisterAndSetArbCustomGatewayAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a5781...7c8843`](./contracts/ethereum-1/0x7a578141af44095a58b73b1e84a63da3267c8843/) | RegisterL2TokenInArbCustomGatewayAction | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16ad56...cab724`](./contracts/ethereum-1/0x16ad566aaa05fe6977a033de2472c05c84cab724/) | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x436980...d0ab44`](./contracts/ethereum-1/0x43698080f40db54dee6871540037b8ab8fd0ab44/) | RollupCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ed421...47ec8e`](./contracts/ethereum-1/0x1ed42156d64b52100f005d7e39092d49ed47ec8e/) | RollupEventInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13cf1a...1726bc`](./contracts/ethereum-1/0x13cf1a771156a8674fc5d4c750546888e21726bc/) | RollupProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d4237...e12463`](./contracts/ethereum-1/0x4d42373d1d8fc9aef11477984b9be42672e12463/) | RollupUserLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31da64...792cf7`](./contracts/ethereum-1/0x31da64d19cd31a19cd09f4070366fe2144792cf7/) | SequencerInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f089c...09d562`](./contracts/ethereum-1/0x7f089c0daf0181f7afd533f5f3265301bb09d562/) | SetGatewayAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf94af...670aba`](./contracts/ethereum-1/0xbf94afebfbf062a88615bc012da39d0822670aba/) | SetValidatorsAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x569117...3a8e7d`](./contracts/ethereum-1/0x569117d8432d161754fc3cd7e0620e02c53a8e7d/) | SetWasmModuleRootAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x995f93...f6d47a`](./contracts/ethereum-1/0x995f930b4a943620f1341a287c9f2cf093f6d47a/) | UpgradeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x166f96...7a1654`](./contracts/ethereum-1/0x166f9647b7d21e9e0076bbfeb66c66e18c7a1654/) | ValidatorUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x085c69...4436f1`](./contracts/ethereum-1/0x085c69a44f3df550b6666d052d4621b9b44436f1/) | ValidatorWalletCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
