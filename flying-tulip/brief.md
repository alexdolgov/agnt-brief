# Agentic Audit Brief: Flying Tulip

## Project Overview

- Project: Flying Tulip (`flying-tulip`)
- Website: [https://flyingtulip.com/](https://flyingtulip.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:49.564Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, base, bsc, ethereum, sonic
- Contract surface: 51 unique implementations (138 raw deployments)
- DeFi Llama TVL: $6,985,933.27
- On-chain TVL (included contracts): $50,756,981.37
- TVL by chain: Ethereum $49,426,869.01 | Sonic $1,330,112.36

## Project Description

Flying Tulip is a multi-chain DeFi yield aggregation protocol focused on wrapper contracts and automated yield strategies. Its current contract surface includes lending, ftUSD, marketplace, governance, registry, adapter, and other proxy-based components, but public evidence does not currently substantiate describing ftUSD as an options-backed stablecoin or claiming that users mint ftUSD through put-option mechanisms.

### Architecture

The protocol shares infrastructure across families: ftYieldWrapper contracts are used in both Lend and ftPUT to wrap yield-bearing tokens, while oracle and circuit breaker systems are shared between ftUSD and ftPUT. Governance contracts like SessionManager and ACL control access across multiple product lines.

## Contract Surface Quality

- Indexed contracts: 254; live-surface contracts included: 138 (119 live, 19 unknown).
- Excluded by liveness: 0 inactive, 116 singleton, 0 uninitialized.
- Deployment units: 3/62 live.
- Detected codebases: none
- Unverified dependencies: 3/31.

## Audit Coverage Summary

- Verified implementations audited: 0/48 (0.0%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 51
- Raw deployments: 138
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $50,756,981.37
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SparkSavingsStrategy | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x3f537e...080aeb`](./contracts/ethereum-1/0x3f537ef4313297b53bb827c02f3cc381ad080aeb/); ethereum `0x4df6f4...f7f2a7`; ethereum `0x4f47c4...307af5`; ethereum `0x852dc7...756a42`; ethereum `0xcfb9d8...32ff2c`; ethereum `0xeb5cb9...b10302`; ethereum `0xf20119...5f99a8`; ethereum `0xfbe073...10b0e5` | ⚠️ Unaudited |
| DeltaNeutralStakingStrategy | core_logic | sonic | n/a | [`0x6ec218...7455ae`](./contracts/sonic-146/0x6ec218fc45ac0c7b83d16557befabb62ed7455ae/) | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x061d7d...afeadb`](./contracts/ethereum-1/0x061d7d04682a6c060cbc4b6fd65adcc724afeadb/); ethereum `0x0987fb...e3ba7d`; ethereum `0x2e43f8...4b04ae`; ethereum `0x3e6077...e81f4b`; ethereum `0x51e85e...f3db03`; ethereum `0x638a51...962307`; ethereum `0xb80491...29cb4e`; ethereum `0xbe9684...9dd2da`; sonic `0x216e58...d3df28`; sonic `0x974ba6...14f8ee`; sonic `0xf09b9d...d94dda` | ⚠️ Unaudited |
| CircuitBreaker | unknown | bsc | n/a | 10 deployments: ethereum `0x9676e6...ec18e0`; ethereum `0xac9994...a17b37`; ethereum `0xcb170b...4d90de`; bsc [`0x2e43f8...4b04ae`](./contracts/bsc-56/0x2e43f825fba9018d6303e9cf978cad9ac54b04ae/); sonic `0x6b0743...673551`; sonic `0x9676e6...ec18e0`; sonic `0xedc6db...041960`; base `0xedc6db...041960`; avalanche `0x5dfbf7...e7bf88`; avalanche `0x73384c...a8e355` | ⚠️ Unaudited |
| CircuitBreakerGuardian | governance | ethereum | n/a | 2 deployments: ethereum [`0xdc86ad...74c7ea`](./contracts/ethereum-1/0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea/); sonic [`0xdc86ad...74c7ea`](./contracts/sonic-146/0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea/) | ⚠️ Unaudited |
| CircuitBreakerOperator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x765224...24994d`](./contracts/ethereum-1/0x765224780ad888285b03af221f528d0a6824994d/); sonic [`0x765224...24994d`](./contracts/sonic-146/0x765224780ad888285b03af221f528d0a6824994d/) | ⚠️ Unaudited |
| EpochRewardsVault | core_logic | sonic | n/a | [`0x4b8d73...8b24e9`](./contracts/sonic-146/0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | n/a | 3 deployments: bsc `0xa4215d...ce04f2`; bsc `0xba49d0...75ebaa`; sonic [`0x44655c...c7cfeb`](./contracts/sonic-146/0x44655c6f83a6acf43403cf61c6050b6784c7cfeb/) | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | n/a | [`0x457728...abefbc`](./contracts/ethereum-1/0x4577286a6082df1f99adbf790c4104dd90abefbc/) | ⚠️ Unaudited |
| FlyingTulipModeler | unknown | ethereum | n/a | [`0x3f07ff...63298c`](./contracts/ethereum-1/0x3f07ff0e3b80416dc7f7cb41ea862a309663298c/) | ⚠️ Unaudited |
| FlyingTulipOracle | operational_periphery | sonic | n/a | 8 deployments: ethereum `0xc8c895...b36793`; bsc `0xc8c895...b36793`; sonic [`0x202790...f90d77`](./contracts/sonic-146/0x2027909d69b501ce0967af62e6a165d24cf90d77/); sonic `0x30f9f5...1701b8`; sonic `0xc8c895...b36793`; base `0xc8c895...b36793`; avalanche `0xc8c895...b36793`; avalanche `0xe83c56...6b0941` | ⚠️ Unaudited |
| FT | unknown | sonic | n/a | 6 deployments: ethereum `0x5dd1a7...88082c`; bsc `0x5dd1a7...88082c`; sonic [`0x26382a...a94ad9`](./contracts/sonic-146/0x26382a5331ddb46e7c0c101fb53480eb64a94ad9/); sonic `0x5dd1a7...88082c`; base `0x5dd1a7...88082c`; avalanche `0x5dd1a7...88082c` | ⚠️ Unaudited |
| ftACL | governance | sonic | n/a | 3 deployments: ethereum `0xa09d08...1359eb`; sonic [`0x995d9c...9fe65b`](./contracts/sonic-146/0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b/); sonic `0xd901ed...16d433` | ⚠️ Unaudited |
| FtLiquidator | operational_periphery | ethereum | n/a | [`0xd92b58...27d4ac`](./contracts/ethereum-1/0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac/) | ⚠️ Unaudited |
| FtUsdMintRedeemOracleProxy | operational_periphery | sonic | n/a | 2 deployments: ethereum `0xa69f7a...aadff8`; sonic [`0x2c64f6...9b8aae`](./contracts/sonic-146/0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae/) | ⚠️ Unaudited |
| ftYieldWrapper | unknown | ethereum | n/a | 19 deployments: ethereum [`0x095d8b...bbbf59`](./contracts/ethereum-1/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); ethereum `0x267df6...07cb36`; ethereum `0x9d96ba...44e305`; ethereum `0xa143a9...337573`; ethereum `0xe5270e...8c97b6`; ethereum `0xe6880f...1b5625`; bsc [`0x095d8b...bbbf59`](./contracts/bsc-56/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); sonic [`0x095d8b...bbbf59`](./contracts/sonic-146/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); sonic `0x0e959e...40ad49`; sonic `0x62ebd6...2ede2d`; sonic `0x9d96ba...44e305`; base [`0x095d8b...bbbf59`](./contracts/base-8453/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); base `0x9d96ba...44e305`; avalanche [`0x095d8b...bbbf59`](./contracts/avalanche-43114/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); avalanche `0x0edc9d...6b7d38`; avalanche `0x267df6...07cb36`; avalanche `0x2fa3e7...6009b0`; avalanche `0x6cd8cb...a54dbf`; avalanche `0x9d96ba...44e305` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | sonic | unit-29960 | [`0x0e794b...2df7f7`](./contracts/sonic-146/0x0e794b1fd35a7a5550cd3e305882369ffb2df7f7/) | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | sonic | n/a | 8 deployments: ethereum `0x28cca8...2347d6`; ethereum `0x6aaf84...7e837d`; ethereum `0xb44a9c...8cb87f`; sonic [`0x0237a6...97ab6a`](./contracts/sonic-146/0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a/); sonic `0x298d44...59515e`; sonic `0x359b19...69115b`; sonic `0x46b0bf...4e1ec9`; sonic `0x9acdce...82cd0b` | ⚠️ Unaudited |
| GeniusDollar | unknown | sonic | unit-29958 | [`0x000000...657fef`](./contracts/sonic-146/0x000000000eccff26b795f73fb0a70d48da657fef/) | ⚠️ Unaudited |
| HopHelper | periphery | ethereum | n/a | [`0x30439b...2d9bc9`](./contracts/ethereum-1/0x30439b989fdfdf68e08a232799acca68152d9bc9/) | ⚠️ Unaudited |
| LeveragedRfqFiller | unknown | ethereum | n/a | [`0x6a4c8b...f401f8`](./contracts/ethereum-1/0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8/) | ⚠️ Unaudited |
| LeverageRfqEngine | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8263a0...f140e2`](./contracts/ethereum-1/0x8263a07504d93cb95e0a74f3627bb15faaf140e2/); sonic [`0x8263a0...f140e2`](./contracts/sonic-146/0x8263a07504d93cb95e0a74f3627bb15faaf140e2/) | ⚠️ Unaudited |
| LiquidationHelper | periphery | ethereum | n/a | [`0xfb9866...b5c95a`](./contracts/ethereum-1/0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a/) | ⚠️ Unaudited |
| LockerModeler | unknown | ethereum | n/a | [`0x077851...c12a39`](./contracts/ethereum-1/0x0778519a236942e6c81f0bfd004bdf4ab1c12a39/) | ⚠️ Unaudited |
| LongTailIRM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09cd85...29ef69`](./contracts/ethereum-1/0x09cd852f47aca224ee6b4accc29bd2694f29ef69/); sonic [`0x09cd85...29ef69`](./contracts/sonic-146/0x09cd852f47aca224ee6b4accc29bd2694f29ef69/) | ⚠️ Unaudited |
| MajorIRM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07ec85...25d12f`](./contracts/ethereum-1/0x07ec8583b1bc7d97646409a2b51ddbed6725d12f/); sonic [`0x07ec85...25d12f`](./contracts/sonic-146/0x07ec8583b1bc7d97646409a2b51ddbed6725d12f/) | ⚠️ Unaudited |
| MetaActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3633eb...1c29f2`](./contracts/ethereum-1/0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2/); sonic [`0x3633eb...1c29f2`](./contracts/sonic-146/0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2/) | ⚠️ Unaudited |
| MetaSessionActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f83ac...3a3497`](./contracts/ethereum-1/0x4f83ac5c8a79986d0916a8849730d9cef63a3497/); sonic [`0x4f83ac...3a3497`](./contracts/sonic-146/0x4f83ac5c8a79986d0916a8849730d9cef63a3497/) | ⚠️ Unaudited |
| MintAndRedeem | unknown | sonic | n/a | [`0xbbf10e...24a09f`](./contracts/sonic-146/0xbbf10e78eceb04c4dac655583701c3e9d924a09f/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | unit-29966 | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| MintModeler | unknown | ethereum | n/a | [`0x94a7af...cfad36`](./contracts/ethereum-1/0x94a7afefe7e3037b2619d524e62d352b79cfad36/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | ethereum | unit-29955 | [`0xe4372d...93674a`](./contracts/ethereum-1/0xe4372db43d2814750a19b93950157ad81d93674a/) | ⚠️ Unaudited |
| OracleWrapper | operational_periphery | sonic | n/a | [`0xe7c362...a28253`](./contracts/sonic-146/0xe7c36251197aac71fa4b0579960b2e7a5fa28253/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0xeb450d...3fc8ec`](./contracts/ethereum-1/0xeb450d21ae68d3303cf5775a54cc84ee7c3fc8ec/) | ⚠️ Unaudited |
| pFT | unknown | sonic | n/a | 3 deployments: bsc `0xc55253...bf7c5e`; sonic [`0x51d2a9...e3efeb`](./contracts/sonic-146/0x51d2a9807956378e8d0368339ea2117678e3efeb/); avalanche `0x7f9c18...eb7c0d` | ⚠️ Unaudited |
| pFTMarketplace | unknown | ethereum | n/a | [`0x2a35f9...b2da7f`](./contracts/ethereum-1/0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f/) | ⚠️ Unaudited |
| PutManager | governance | bsc | n/a | [`0x90ae2c...69922a`](./contracts/bsc-56/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | ⚠️ Unaudited |
| PutManagerInvestProxy | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x33c2ee...a7a666`](./contracts/ethereum-1/0x33c2eefb21da9b1408f2615d02125ff1eba7a666/); ethereum `0x7c2b3b...adb5d5` | ⚠️ Unaudited |
| RelayerAuth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x823a97...1f53f4`](./contracts/ethereum-1/0x823a97a2c32985e0f5457fc8103f36698d1f53f4/); sonic [`0x823a97...1f53f4`](./contracts/sonic-146/0x823a97a2c32985e0f5457fc8103f36698d1f53f4/) | ⚠️ Unaudited |
| RfqCBLens | periphery | ethereum | n/a | [`0x80e01c...d27316`](./contracts/ethereum-1/0x80e01cc9a202658674e31e1d57767abd12d27316/) | ⚠️ Unaudited |
| RfqEngine | unknown | ethereum | n/a | 2 deployments: ethereum [`0xeb00b3...39dc32`](./contracts/ethereum-1/0xeb00b335ca52216fb60fdffa361397367c39dc32/); sonic [`0xeb00b3...39dc32`](./contracts/sonic-146/0xeb00b335ca52216fb60fdffa361397367c39dc32/) | ⚠️ Unaudited |
| SessionManager | governance | sonic | n/a | 4 deployments: ethereum `0x2daf4b...ac5dc9`; ethereum `0xf9f3dd...9360f8`; sonic [`0x109ae7...1fbdff`](./contracts/sonic-146/0x109ae72778a0260571b9767477204f1ce41fbdff/); sonic `0x2daf4b...ac5dc9` | ⚠️ Unaudited |
| StableIRM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x325373...38710d`](./contracts/ethereum-1/0x3253739a68640e308c8209384bb44e4ada38710d/); sonic [`0x325373...38710d`](./contracts/sonic-146/0x3253739a68640e308c8209384bb44e4ada38710d/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x3518db...354707`](./contracts/ethereum-1/0x3518db98cb1fcb19e0c430b3e7f7f74b2a354707/) | ⚠️ Unaudited |
| UniV2Executor | unknown | ethereum | n/a | [`0xdc9b61...b057a3`](./contracts/ethereum-1/0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3/) | ⚠️ Unaudited |
| UniV3Executor | unknown | ethereum | n/a | [`0xb972e7...f3869f`](./contracts/ethereum-1/0xb972e7941f359f9f9460e724d66d3026f6f3869f/) | ⚠️ Unaudited |
| WrapperModeler | unknown | ethereum | n/a | [`0x65c1ff...2695b8`](./contracts/ethereum-1/0x65c1fffb85121dd38ed7807e65e33236fb2695b8/) | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | sonic | n/a | 4 deployments: ethereum `0x88432b...d01397`; ethereum `0xff81e0...fac9e2`; sonic [`0x592222...114628`](./contracts/sonic-146/0x59222220759efe35b8e46f5563151827e4114628/); sonic `0x70fe8d...d669d8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x16564b...a74e89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4df8ba...900d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8b2b6...91763e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x6ec218...7455ae`](./contracts/sonic-146/0x6ec218fc45ac0c7b83d16557befabb62ed7455ae/) | DeltaNeutralStakingStrategy | core_logic | $1,330,112.36 | Verified native implementation with $1,330,112.36 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e43f8...4b04ae`](./contracts/bsc-56/0x2e43f825fba9018d6303e9cf978cad9ac54b04ae/) | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc86ad...74c7ea`](./contracts/ethereum-1/0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea/) | CircuitBreakerGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x765224...24994d`](./contracts/ethereum-1/0x765224780ad888285b03af221f528d0a6824994d/) | CircuitBreakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4b8d73...8b24e9`](./contracts/sonic-146/0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9/) | EpochRewardsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x457728...abefbc`](./contracts/ethereum-1/0x4577286a6082df1f99adbf790c4104dd90abefbc/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f07ff...63298c`](./contracts/ethereum-1/0x3f07ff0e3b80416dc7f7cb41ea862a309663298c/) | FlyingTulipModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x202790...f90d77`](./contracts/sonic-146/0x2027909d69b501ce0967af62e6a165d24cf90d77/) | FlyingTulipOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x26382a...a94ad9`](./contracts/sonic-146/0x26382a5331ddb46e7c0c101fb53480eb64a94ad9/) | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x995d9c...9fe65b`](./contracts/sonic-146/0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b/) | ftACL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd92b58...27d4ac`](./contracts/ethereum-1/0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac/) | FtLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2c64f6...9b8aae`](./contracts/sonic-146/0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae/) | FtUsdMintRedeemOracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x095d8b...bbbf59`](./contracts/ethereum-1/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/) | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0237a6...97ab6a`](./contracts/sonic-146/0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a/) | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30439b...2d9bc9`](./contracts/ethereum-1/0x30439b989fdfdf68e08a232799acca68152d9bc9/) | HopHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a4c8b...f401f8`](./contracts/ethereum-1/0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8/) | LeveragedRfqFiller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8263a0...f140e2`](./contracts/ethereum-1/0x8263a07504d93cb95e0a74f3627bb15faaf140e2/) | LeverageRfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb9866...b5c95a`](./contracts/ethereum-1/0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a/) | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x077851...c12a39`](./contracts/ethereum-1/0x0778519a236942e6c81f0bfd004bdf4ab1c12a39/) | LockerModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09cd85...29ef69`](./contracts/ethereum-1/0x09cd852f47aca224ee6b4accc29bd2694f29ef69/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ec85...25d12f`](./contracts/ethereum-1/0x07ec8583b1bc7d97646409a2b51ddbed6725d12f/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3633eb...1c29f2`](./contracts/ethereum-1/0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2/) | MetaActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f83ac...3a3497`](./contracts/ethereum-1/0x4f83ac5c8a79986d0916a8849730d9cef63a3497/) | MetaSessionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbbf10e...24a09f`](./contracts/sonic-146/0xbbf10e78eceb04c4dac655583701c3e9d924a09f/) | MintAndRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94a7af...cfad36`](./contracts/ethereum-1/0x94a7afefe7e3037b2619d524e62d352b79cfad36/) | MintModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe7c362...a28253`](./contracts/sonic-146/0xe7c36251197aac71fa4b0579960b2e7a5fa28253/) | OracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x51d2a9...e3efeb`](./contracts/sonic-146/0x51d2a9807956378e8d0368339ea2117678e3efeb/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a35f9...b2da7f`](./contracts/ethereum-1/0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f/) | pFTMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x90ae2c...69922a`](./contracts/bsc-56/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | PutManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33c2ee...a7a666`](./contracts/ethereum-1/0x33c2eefb21da9b1408f2615d02125ff1eba7a666/) | PutManagerInvestProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823a97...1f53f4`](./contracts/ethereum-1/0x823a97a2c32985e0f5457fc8103f36698d1f53f4/) | RelayerAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80e01c...d27316`](./contracts/ethereum-1/0x80e01cc9a202658674e31e1d57767abd12d27316/) | RfqCBLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb00b3...39dc32`](./contracts/ethereum-1/0xeb00b335ca52216fb60fdffa361397367c39dc32/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x109ae7...1fbdff`](./contracts/sonic-146/0x109ae72778a0260571b9767477204f1ce41fbdff/) | SessionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325373...38710d`](./contracts/ethereum-1/0x3253739a68640e308c8209384bb44e4ada38710d/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc9b61...b057a3`](./contracts/ethereum-1/0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3/) | UniV2Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb972e7...f3869f`](./contracts/ethereum-1/0xb972e7941f359f9f9460e724d66d3026f6f3869f/) | UniV3Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65c1ff...2695b8`](./contracts/ethereum-1/0x65c1fffb85121dd38ed7807e65e33236fb2695b8/) | WrapperModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x592222...114628`](./contracts/sonic-146/0x59222220759efe35b8e46f5563151827e4114628/) | YieldClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 3 |
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
