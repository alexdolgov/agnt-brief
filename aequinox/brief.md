# Agentic Audit Brief: Aequinox

## Project Overview

- Project: Aequinox (`aequinox`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:58.039Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 78 unique implementations (78 raw deployments)
- DeFi Llama TVL: $627,190.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 77 project-authored contract(s) across 1 chain(s); 18 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (stratmanager, feemanager, stablepool). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 78 (78 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/57 (0.0%)
- Deployed-live implementations: 78 of 78 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 78
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

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaltoToken | unknown | bsc | n/a | [`0x8521adb56cfb340a980aa48e092d40c967a89610`](./contracts/bsc-56/0x8521adb56cfb340a980aa48e092d40c967a89610/) | ⚠️ Unaudited |
| AeqDelayRecovery | unknown | bsc | n/a | [`0x4be42e82a3401dbbd9bf5d703f453cc26238e81d`](./contracts/bsc-56/0x4be42e82a3401dbbd9bf5d703f453cc26238e81d/) | ⚠️ Unaudited |
| AequinoxToken | unknown | bsc | n/a | [`0x0ddef12012ed645f12aeb1b845cb5ad61c7423f5`](./contracts/bsc-56/0x0ddef12012ed645f12aeb1b845cb5ad61c7423f5/) | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | bsc | n/a | [`0xc36e4d42ee9ea51ea876161fdb31f2670a3860b3`](./contracts/bsc-56/0xc36e4d42ee9ea51ea876161fdb31f2670a3860b3/) | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | bsc | n/a | [`0x2c9ce53f90457e72cea8291232ca225207ef616f`](./contracts/bsc-56/0x2c9ce53f90457e72cea8291232ca225207ef616f/) | ⚠️ Unaudited |
| BALTokenHolder | unknown | bsc | n/a | [`0x84e4992f913bc64f92c48665be454d739ef2279b`](./contracts/bsc-56/0x84e4992f913bc64f92c48665be454d739ef2279b/) | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | bsc | n/a | [`0x5bcb2fba3f757ff32cf3bb508790eed51c05155b`](./contracts/bsc-56/0x5bcb2fba3f757ff32cf3bb508790eed51c05155b/) | ⚠️ Unaudited |
| BscPayoutListener | unknown | bsc | n/a | [`0x3d8d163c2d6c07de11f408742200d48c142ea0c9`](./contracts/bsc-56/0x3d8d163c2d6c07de11f408742200d48c142ea0c9/) | ⚠️ Unaudited |
| BscPayoutManager | unknown | bsc | n/a | [`0x012f1ccb40db36868a36cfc64e852fd0f595cef7`](./contracts/bsc-56/0x012f1ccb40db36868a36cfc64e852fd0f595cef7/) | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | bsc | n/a | [`0xfd50f5ead870bdcfa69940c41a5c10f015b419e7`](./contracts/bsc-56/0xfd50f5ead870bdcfa69940c41a5c10f015b419e7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x01b239a3910f6f12653698b1bd376318db532d9f`](./contracts/bsc-56/0x01b239a3910f6f12653698b1bd376318db532d9f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x049915356d236a93ff235098042fb27301a9bdf4`](./contracts/bsc-56/0x049915356d236a93ff235098042fb27301a9bdf4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0681429cc0b3f3e181237fe0095fa008abf78916`](./contracts/bsc-56/0x0681429cc0b3f3e181237fe0095fa008abf78916/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x08c1f9cf8601ed74d7b89ba64c7b23d13127a5b1`](./contracts/bsc-56/0x08c1f9cf8601ed74d7b89ba64c7b23d13127a5b1/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0a1d6ca79cf1a346c458fd21511d5d5509817401`](./contracts/bsc-56/0x0a1d6ca79cf1a346c458fd21511d5d5509817401/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0cc9cc5ebfb92bc02f4262d3a8a2286b5e34d90e`](./contracts/bsc-56/0x0cc9cc5ebfb92bc02f4262d3a8a2286b5e34d90e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0e1c88230527e646a7f2e555b92c7f2e379fac52`](./contracts/bsc-56/0x0e1c88230527e646a7f2e555b92c7f2e379fac52/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x13b8883fce15f9dc035621d09b97afe46cf11934`](./contracts/bsc-56/0x13b8883fce15f9dc035621d09b97afe46cf11934/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2070a825b8aeb4c7dca076fb0a7a50f145b3aa77`](./contracts/bsc-56/0x2070a825b8aeb4c7dca076fb0a7a50f145b3aa77/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x3e62b3605148082aaff1916d3667f73af2ce52de`](./contracts/bsc-56/0x3e62b3605148082aaff1916d3667f73af2ce52de/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x4e55b26f3be9e954ab26ca0fc28cce8498310cb9`](./contracts/bsc-56/0x4e55b26f3be9e954ab26ca0fc28cce8498310cb9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x5335e87930b410b8c5bb4d43c3360aca15ec0c8c`](./contracts/bsc-56/0x5335e87930b410b8c5bb4d43c3360aca15ec0c8c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x549e68a9dfc9acebe13cc7339f223713af32363c`](./contracts/bsc-56/0x549e68a9dfc9acebe13cc7339f223713af32363c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x642ab9e4ae1651eb1ef7407aa3b89180faecb14e`](./contracts/bsc-56/0x642ab9e4ae1651eb1ef7407aa3b89180faecb14e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x7f947d141fed32595916e150740a5e60d479e95f`](./contracts/bsc-56/0x7f947d141fed32595916e150740a5e60d479e95f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x9489d4769d3abd3483421fbff41bd6c7fe8541ca`](./contracts/bsc-56/0x9489d4769d3abd3483421fbff41bd6c7fe8541ca/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xaae3a8725bae9a799c78bcd19b592bc9dbbd7a32`](./contracts/bsc-56/0xaae3a8725bae9a799c78bcd19b592bc9dbbd7a32/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xb9d731080b9e862c3a6b7eaf0e5a086614d0a2d9`](./contracts/bsc-56/0xb9d731080b9e862c3a6b7eaf0e5a086614d0a2d9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xe4be0f206828be0b5d48142f465abd4e57db58d4`](./contracts/bsc-56/0xe4be0f206828be0b5d48142f465abd4e57db58d4/) | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | bsc | n/a | [`0x202fe8ba86ca85872577fab79ba78ad192e79c02`](./contracts/bsc-56/0x202fe8ba86ca85872577fab79ba78ad192e79c02/) | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | bsc | n/a | [`0xab31c0e1019a8e08748235a76f94497af9d8718e`](./contracts/bsc-56/0xab31c0e1019a8e08748235a76f94497af9d8718e/) | ⚠️ Unaudited |
| GovernanceToken | unknown | bsc | n/a | [`0x5be975013095aea033db098787c56e5867107060`](./contracts/bsc-56/0x5be975013095aea033db098787c56e5867107060/) | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | bsc | n/a | [`0x0fa1097a49f54420cc5895455345dc605ee8d3c4`](./contracts/bsc-56/0x0fa1097a49f54420cc5895455345dc605ee8d3c4/) | ⚠️ Unaudited |
| Mark2Market | unknown | bsc | n/a | [`0x319d9e35ef3f3375d24fa4b0b24aa317520d2400`](./contracts/bsc-56/0x319d9e35ef3f3375d24fa4b0b24aa317520d2400/) | ⚠️ Unaudited |
| Market | unknown | bsc | n/a | [`0x5d0c9eef4fd6d1c07b5a71da6b7519b85768f524`](./contracts/bsc-56/0x5d0c9eef4fd6d1c07b5a71da6b7519b85768f524/) | ⚠️ Unaudited |
| MetaStablePoolFactory | unknown | bsc | n/a | [`0x1af7cb48aca54a3d94929204e7961b356fca8636`](./contracts/bsc-56/0x1af7cb48aca54a3d94929204e7961b356fca8636/) | ⚠️ Unaudited |
| Migrator | unknown | bsc | n/a | [`0x66085c15b51279ccbb78867fdec715ad97e7786b`](./contracts/bsc-56/0x66085c15b51279ccbb78867fdec715ad97e7786b/) | ⚠️ Unaudited |
| OvnGovernor | unknown | bsc | n/a | [`0x53242b160e050d97202c33cb1b5c07428a2789ff`](./contracts/bsc-56/0x53242b160e050d97202c33cb1b5c07428a2789ff/) | ⚠️ Unaudited |
| OvnTimelockController | unknown | bsc | n/a | [`0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d`](./contracts/bsc-56/0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d/) | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | bsc | n/a | [`0xae5c815cb1a7d7790406355f3df5b3780e02b3c7`](./contracts/bsc-56/0xae5c815cb1a7d7790406355f3df5b3780e02b3c7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x15c08cccc1a992915a48346b944de855f50bb95e`](./contracts/bsc-56/0x15c08cccc1a992915a48346b944de855f50bb95e/) | ⚠️ Unaudited |
| QuartzVault | unknown | bsc | n/a | [`0x25b5118229061cde8b7a46a49184d6174bf89345`](./contracts/bsc-56/0x25b5118229061cde8b7a46a49184d6174bf89345/) | ⚠️ Unaudited |
| QueryProcessor | unknown | bsc | n/a | [`0x0ab5941d13c04a6fa1c4f3f0a500d0c827145adc`](./contracts/bsc-56/0x0ab5941d13c04a6fa1c4f3f0a500d0c827145adc/) | ⚠️ Unaudited |
| SharesVault | unknown | bsc | n/a | [`0x2873f782d761bd47ef575ce447a96c0ece5e5d89`](./contracts/bsc-56/0x2873f782d761bd47ef575ce447a96c0ece5e5d89/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | bsc | n/a | [`0x0f7ab431d830fa1c84bf39540178d940ffa7d852`](./contracts/bsc-56/0x0f7ab431d830fa1c84bf39540178d940ffa7d852/) | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | bsc | n/a | [`0xd3b0fec464290268e43684eeb05013ea01af64bc`](./contracts/bsc-56/0xd3b0fec464290268e43684eeb05013ea01af64bc/) | ⚠️ Unaudited |
| StrategyAequinoxBusdUsdcUsdt | unknown | bsc | n/a | [`0x05bb0d73a5d62c21de515052ad9270a90ac5d104`](./contracts/bsc-56/0x05bb0d73a5d62c21de515052ad9270a90ac5d104/) | ⚠️ Unaudited |
| StrategyConeBusdUsdc | unknown | bsc | n/a | [`0x166fec4db5dbf8ffd75c19fabfa100d938d73bf8`](./contracts/bsc-56/0x166fec4db5dbf8ffd75c19fabfa100d938d73bf8/) | ⚠️ Unaudited |
| StrategyEllipsisDotDotBusd | unknown | bsc | n/a | [`0x02803f6fcb3eda19c854b2defb39cbc3817ed986`](./contracts/bsc-56/0x02803f6fcb3eda19c854b2defb39cbc3817ed986/) | ⚠️ Unaudited |
| StrategyMagpieBusd | unknown | bsc | n/a | [`0x5904847b6040e95fc6c5a9f165c7c2dabbe1df7d`](./contracts/bsc-56/0x5904847b6040e95fc6c5a9f165c7c2dabbe1df7d/) | ⚠️ Unaudited |
| StrategyMagpieUsdc | unknown | bsc | n/a | [`0x6d27c7e1091cfe78b7b80c3ae52b7a4ee6051613`](./contracts/bsc-56/0x6d27c7e1091cfe78b7b80c3ae52b7a4ee6051613/) | ⚠️ Unaudited |
| StrategyQuartzLP | unknown | bsc | n/a | [`0x177ba7dd27699f8a3df1481d39948d8c53908a4e`](./contracts/bsc-56/0x177ba7dd27699f8a3df1481d39948d8c53908a4e/) | ⚠️ Unaudited |
| StrategyRadpieUsdt | unknown | bsc | n/a | [`0x2784ff8581778ce0e9d6b795fb8e1ec8b8684e0e`](./contracts/bsc-56/0x2784ff8581778ce0e9d6b795fb8e1ec8b8684e0e/) | ⚠️ Unaudited |
| StrategySharesLP | unknown | bsc | n/a | [`0x00876bcdddacf055a25b89c7a396a9977955f533`](./contracts/bsc-56/0x00876bcdddacf055a25b89c7a396a9977955f533/) | ⚠️ Unaudited |
| StrategyThenaBusdUsdc | unknown | bsc | n/a | [`0xad8fcfc1454a8ed328e780588aa779ab2e14a088`](./contracts/bsc-56/0xad8fcfc1454a8ed328e780588aa779ab2e14a088/) | ⚠️ Unaudited |
| StrategyThenaBusdUsdt | unknown | bsc | n/a | [`0x578ada3ecbc3ed31d1755b927c8b2988a761078a`](./contracts/bsc-56/0x578ada3ecbc3ed31d1755b927c8b2988a761078a/) | ⚠️ Unaudited |
| StrategyThenaUsdcUsdt | unknown | bsc | n/a | [`0xe2fe8783cdc724ec021ff9052ee8ebed00e6248e`](./contracts/bsc-56/0xe2fe8783cdc724ec021ff9052ee8ebed00e6248e/) | ⚠️ Unaudited |
| StrategyThenaUsdtUsdc | unknown | bsc | n/a | [`0xfc572d81a1295a5b62641c216e621375856defcb`](./contracts/bsc-56/0xfc572d81a1295a5b62641c216e621375856defcb/) | ⚠️ Unaudited |
| StrategyUnknownBusdTusd | unknown | bsc | n/a | [`0x31921eed60d8654814152e55bd0f83da9b548540`](./contracts/bsc-56/0x31921eed60d8654814152e55bd0f83da9b548540/) | ⚠️ Unaudited |
| StrategyUsdcUsdtPlus | unknown | bsc | n/a | [`0x6a7b6be5d18951293a4550d7d84e6828e5e21b60`](./contracts/bsc-56/0x6a7b6be5d18951293a4550d7d84e6828e5e21b60/) | ⚠️ Unaudited |
| StrategyUsdPlusUsdt | unknown | bsc | n/a | [`0x2262d82e682eedbe7fbe25dbe891322d9474a739`](./contracts/bsc-56/0x2262d82e682eedbe7fbe25dbe891322d9474a739/) | ⚠️ Unaudited |
| StrategyVenusBusd | unknown | bsc | n/a | [`0x09e1902abcfb29f688049ef8d13e1b3ba2966cba`](./contracts/bsc-56/0x09e1902abcfb29f688049ef8d13e1b3ba2966cba/) | ⚠️ Unaudited |
| StrategyVenusUsdc | unknown | bsc | n/a | [`0x1e9c2b867597592eaad09fd6159f6b9a9dac535a`](./contracts/bsc-56/0x1e9c2b867597592eaad09fd6159f6b9a9dac535a/) | ⚠️ Unaudited |
| StrategyVenusUsdt | unknown | bsc | n/a | [`0x4a3ebae2fb28aa96cf570854715cbe37d9d9d475`](./contracts/bsc-56/0x4a3ebae2fb28aa96cf570854715cbe37d9d9d475/) | ⚠️ Unaudited |
| StrategyWombatBusdUsdc | unknown | bsc | n/a | [`0x2de53ad924375f5fbaed7694eea98c7b678c73e0`](./contracts/bsc-56/0x2de53ad924375f5fbaed7694eea98c7b678c73e0/) | ⚠️ Unaudited |
| StrategyWombexBusd | unknown | bsc | n/a | [`0x1609b0849ce1ea7f1438ef86157cd9c8e800b583`](./contracts/bsc-56/0x1609b0849ce1ea7f1438ef86157cd9c8e800b583/) | ⚠️ Unaudited |
| StrategyWombexUsdc | unknown | bsc | n/a | [`0x5d5696dec88be163de85d6da3a18c3ac175f915e`](./contracts/bsc-56/0x5d5696dec88be163de85d6da3a18c3ac175f915e/) | ⚠️ Unaudited |
| StrategyWombexUsdt | unknown | bsc | n/a | [`0x0f946dcac86b4a27d5a37d9a7facb976bb971ba7`](./contracts/bsc-56/0x0f946dcac86b4a27d5a37d9a7facb976bb971ba7/) | ⚠️ Unaudited |
| TimelockAuthorizer | unknown | bsc | n/a | [`0xd5dcc8ef9b87e1f966e9b1ca3a7b319a85e45429`](./contracts/bsc-56/0xd5dcc8ef9b87e1f966e9b1ca3a7b319a85e45429/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1eb564ce4ae3d337dc5a47eb6f412c478ab11a6a`](./contracts/bsc-56/0x1eb564ce4ae3d337dc5a47eb6f412c478ab11a6a/) | ⚠️ Unaudited |
| UsdPlusToken | unknown | bsc | n/a | [`0x064bd8876750419de0814dd07f9969c2319e3e48`](./contracts/bsc-56/0x064bd8876750419de0814dd07f9969c2319e3e48/) | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | [`0x283405ed2b159adb6e2ef79d5049e05e9e829fc5`](./contracts/bsc-56/0x283405ed2b159adb6e2ef79d5049e05e9e829fc5/) | ⚠️ Unaudited |
| VestingVault | unknown | bsc | n/a | [`0xd4afeae1d8e7b88f334d175c56604e2bf34cc8ef`](./contracts/bsc-56/0xd4afeae1d8e7b88f334d175c56604e2bf34cc8ef/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | [`0x06aba6e8f69a0be680f96d923efb682e63db6a9f`](./contracts/bsc-56/0x06aba6e8f69a0be680f96d923efb682e63db6a9f/) | ⚠️ Unaudited |
| WeightedPool2TokensFactory | unknown | bsc | n/a | [`0x7e29fe79cbbe9eaca251bcddd57c97377a97e8c6`](./contracts/bsc-56/0x7e29fe79cbbe9eaca251bcddd57c97377a97e8c6/) | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | bsc | n/a | [`0x28bcef6c737eb4ab77c8eb2c30587c1704e7d3b5`](./contracts/bsc-56/0x28bcef6c737eb4ab77c8eb2c30587c1704e7d3b5/) | ⚠️ Unaudited |
| WrappedRebaseToken | unknown | bsc | n/a | [`0x12b70d84dab272dc5a24f49bdbf6a4c4605f15da`](./contracts/bsc-56/0x12b70d84dab272dc5a24f49bdbf6a4c4605f15da/) | ⚠️ Unaudited |
| ZapperFlex | unknown | bsc | n/a | [`0x795a82143e7a580e24a6603624ea3b63894c87a7`](./contracts/bsc-56/0x795a82143e7a580e24a6603624ea3b63894c87a7/) | ⚠️ Unaudited |

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
| bsc | [`0x8521adb56cfb340a980aa48e092d40c967a89610`](./contracts/bsc-56/0x8521adb56cfb340a980aa48e092d40c967a89610/) | AaltoToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4be42e82a3401dbbd9bf5d703f453cc26238e81d`](./contracts/bsc-56/0x4be42e82a3401dbbd9bf5d703f453cc26238e81d/) | AeqDelayRecovery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ddef12012ed645f12aeb1b845cb5ad61c7423f5`](./contracts/bsc-56/0x0ddef12012ed645f12aeb1b845cb5ad61c7423f5/) | AequinoxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc36e4d42ee9ea51ea876161fdb31f2670a3860b3`](./contracts/bsc-56/0xc36e4d42ee9ea51ea876161fdb31f2670a3860b3/) | AuthorizerAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c9ce53f90457e72cea8291232ca225207ef616f`](./contracts/bsc-56/0x2c9ce53f90457e72cea8291232ca225207ef616f/) | AuthorizerAdaptorEntrypoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84e4992f913bc64f92c48665be454d739ef2279b`](./contracts/bsc-56/0x84e4992f913bc64f92c48665be454d739ef2279b/) | BALTokenHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bcb2fba3f757ff32cf3bb508790eed51c05155b`](./contracts/bsc-56/0x5bcb2fba3f757ff32cf3bb508790eed51c05155b/) | BatchRelayerLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d8d163c2d6c07de11f408742200d48c142ea0c9`](./contracts/bsc-56/0x3d8d163c2d6c07de11f408742200d48c142ea0c9/) | BscPayoutListener | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x012f1ccb40db36868a36cfc64e852fd0f595cef7`](./contracts/bsc-56/0x012f1ccb40db36868a36cfc64e852fd0f595cef7/) | BscPayoutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd50f5ead870bdcfa69940c41a5c10f015b419e7`](./contracts/bsc-56/0xfd50f5ead870bdcfa69940c41a5c10f015b419e7/) | ComposableStablePoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x202fe8ba86ca85872577fab79ba78ad192e79c02`](./contracts/bsc-56/0x202fe8ba86ca85872577fab79ba78ad192e79c02/) | ERC4626LinearPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xab31c0e1019a8e08748235a76f94497af9d8718e`](./contracts/bsc-56/0xab31c0e1019a8e08748235a76f94497af9d8718e/) | GaugeControllerQuerier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5be975013095aea033db098787c56e5867107060`](./contracts/bsc-56/0x5be975013095aea033db098787c56e5867107060/) | GovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fa1097a49f54420cc5895455345dc605ee8d3c4`](./contracts/bsc-56/0x0fa1097a49f54420cc5895455345dc605ee8d3c4/) | LiquidityGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x319d9e35ef3f3375d24fa4b0b24aa317520d2400`](./contracts/bsc-56/0x319d9e35ef3f3375d24fa4b0b24aa317520d2400/) | Mark2Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d0c9eef4fd6d1c07b5a71da6b7519b85768f524`](./contracts/bsc-56/0x5d0c9eef4fd6d1c07b5a71da6b7519b85768f524/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1af7cb48aca54a3d94929204e7961b356fca8636`](./contracts/bsc-56/0x1af7cb48aca54a3d94929204e7961b356fca8636/) | MetaStablePoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66085c15b51279ccbb78867fdec715ad97e7786b`](./contracts/bsc-56/0x66085c15b51279ccbb78867fdec715ad97e7786b/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53242b160e050d97202c33cb1b5c07428a2789ff`](./contracts/bsc-56/0x53242b160e050d97202c33cb1b5c07428a2789ff/) | OvnGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d`](./contracts/bsc-56/0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d/) | OvnTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae5c815cb1a7d7790406355f3df5b3780e02b3c7`](./contracts/bsc-56/0xae5c815cb1a7d7790406355f3df5b3780e02b3c7/) | ProtocolFeePercentagesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25b5118229061cde8b7a46a49184d6174bf89345`](./contracts/bsc-56/0x25b5118229061cde8b7a46a49184d6174bf89345/) | QuartzVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ab5941d13c04a6fa1c4f3f0a500d0c827145adc`](./contracts/bsc-56/0x0ab5941d13c04a6fa1c4f3f0a500d0c827145adc/) | QueryProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2873f782d761bd47ef575ce447a96c0ece5e5d89`](./contracts/bsc-56/0x2873f782d761bd47ef575ce447a96c0ece5e5d89/) | SharesVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f7ab431d830fa1c84bf39540178d940ffa7d852`](./contracts/bsc-56/0x0f7ab431d830fa1c84bf39540178d940ffa7d852/) | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd3b0fec464290268e43684eeb05013ea01af64bc`](./contracts/bsc-56/0xd3b0fec464290268e43684eeb05013ea01af64bc/) | StablePhantomPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05bb0d73a5d62c21de515052ad9270a90ac5d104`](./contracts/bsc-56/0x05bb0d73a5d62c21de515052ad9270a90ac5d104/) | StrategyAequinoxBusdUsdcUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x166fec4db5dbf8ffd75c19fabfa100d938d73bf8`](./contracts/bsc-56/0x166fec4db5dbf8ffd75c19fabfa100d938d73bf8/) | StrategyConeBusdUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02803f6fcb3eda19c854b2defb39cbc3817ed986`](./contracts/bsc-56/0x02803f6fcb3eda19c854b2defb39cbc3817ed986/) | StrategyEllipsisDotDotBusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5904847b6040e95fc6c5a9f165c7c2dabbe1df7d`](./contracts/bsc-56/0x5904847b6040e95fc6c5a9f165c7c2dabbe1df7d/) | StrategyMagpieBusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6d27c7e1091cfe78b7b80c3ae52b7a4ee6051613`](./contracts/bsc-56/0x6d27c7e1091cfe78b7b80c3ae52b7a4ee6051613/) | StrategyMagpieUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x177ba7dd27699f8a3df1481d39948d8c53908a4e`](./contracts/bsc-56/0x177ba7dd27699f8a3df1481d39948d8c53908a4e/) | StrategyQuartzLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2784ff8581778ce0e9d6b795fb8e1ec8b8684e0e`](./contracts/bsc-56/0x2784ff8581778ce0e9d6b795fb8e1ec8b8684e0e/) | StrategyRadpieUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00876bcdddacf055a25b89c7a396a9977955f533`](./contracts/bsc-56/0x00876bcdddacf055a25b89c7a396a9977955f533/) | StrategySharesLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad8fcfc1454a8ed328e780588aa779ab2e14a088`](./contracts/bsc-56/0xad8fcfc1454a8ed328e780588aa779ab2e14a088/) | StrategyThenaBusdUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x578ada3ecbc3ed31d1755b927c8b2988a761078a`](./contracts/bsc-56/0x578ada3ecbc3ed31d1755b927c8b2988a761078a/) | StrategyThenaBusdUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe2fe8783cdc724ec021ff9052ee8ebed00e6248e`](./contracts/bsc-56/0xe2fe8783cdc724ec021ff9052ee8ebed00e6248e/) | StrategyThenaUsdcUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfc572d81a1295a5b62641c216e621375856defcb`](./contracts/bsc-56/0xfc572d81a1295a5b62641c216e621375856defcb/) | StrategyThenaUsdtUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31921eed60d8654814152e55bd0f83da9b548540`](./contracts/bsc-56/0x31921eed60d8654814152e55bd0f83da9b548540/) | StrategyUnknownBusdTusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a7b6be5d18951293a4550d7d84e6828e5e21b60`](./contracts/bsc-56/0x6a7b6be5d18951293a4550d7d84e6828e5e21b60/) | StrategyUsdcUsdtPlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2262d82e682eedbe7fbe25dbe891322d9474a739`](./contracts/bsc-56/0x2262d82e682eedbe7fbe25dbe891322d9474a739/) | StrategyUsdPlusUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09e1902abcfb29f688049ef8d13e1b3ba2966cba`](./contracts/bsc-56/0x09e1902abcfb29f688049ef8d13e1b3ba2966cba/) | StrategyVenusBusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e9c2b867597592eaad09fd6159f6b9a9dac535a`](./contracts/bsc-56/0x1e9c2b867597592eaad09fd6159f6b9a9dac535a/) | StrategyVenusUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4a3ebae2fb28aa96cf570854715cbe37d9d9d475`](./contracts/bsc-56/0x4a3ebae2fb28aa96cf570854715cbe37d9d9d475/) | StrategyVenusUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2de53ad924375f5fbaed7694eea98c7b678c73e0`](./contracts/bsc-56/0x2de53ad924375f5fbaed7694eea98c7b678c73e0/) | StrategyWombatBusdUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1609b0849ce1ea7f1438ef86157cd9c8e800b583`](./contracts/bsc-56/0x1609b0849ce1ea7f1438ef86157cd9c8e800b583/) | StrategyWombexBusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d5696dec88be163de85d6da3a18c3ac175f915e`](./contracts/bsc-56/0x5d5696dec88be163de85d6da3a18c3ac175f915e/) | StrategyWombexUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f946dcac86b4a27d5a37d9a7facb976bb971ba7`](./contracts/bsc-56/0x0f946dcac86b4a27d5a37d9a7facb976bb971ba7/) | StrategyWombexUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd5dcc8ef9b87e1f966e9b1ca3a7b319a85e45429`](./contracts/bsc-56/0xd5dcc8ef9b87e1f966e9b1ca3a7b319a85e45429/) | TimelockAuthorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x064bd8876750419de0814dd07f9969c2319e3e48`](./contracts/bsc-56/0x064bd8876750419de0814dd07f9969c2319e3e48/) | UsdPlusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x283405ed2b159adb6e2ef79d5049e05e9e829fc5`](./contracts/bsc-56/0x283405ed2b159adb6e2ef79d5049e05e9e829fc5/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4afeae1d8e7b88f334d175c56604e2bf34cc8ef`](./contracts/bsc-56/0xd4afeae1d8e7b88f334d175c56604e2bf34cc8ef/) | VestingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06aba6e8f69a0be680f96d923efb682e63db6a9f`](./contracts/bsc-56/0x06aba6e8f69a0be680f96d923efb682e63db6a9f/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e29fe79cbbe9eaca251bcddd57c97377a97e8c6`](./contracts/bsc-56/0x7e29fe79cbbe9eaca251bcddd57c97377a97e8c6/) | WeightedPool2TokensFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28bcef6c737eb4ab77c8eb2c30587c1704e7d3b5`](./contracts/bsc-56/0x28bcef6c737eb4ab77c8eb2c30587c1704e7d3b5/) | WeightedPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12b70d84dab272dc5a24f49bdbf6a4c4605f15da`](./contracts/bsc-56/0x12b70d84dab272dc5a24f49bdbf6a4c4605f15da/) | WrappedRebaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x795a82143e7a580e24a6603624ea3b63894c87a7`](./contracts/bsc-56/0x795a82143e7a580e24a6603624ea3b63894c87a7/) | ZapperFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 21 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
