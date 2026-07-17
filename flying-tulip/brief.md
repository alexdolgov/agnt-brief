# Agentic Audit Brief: Flying Tulip

## Project Overview

- Project: Flying Tulip (`flying-tulip`)
- Website: [https://flyingtulip.com/](https://flyingtulip.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.420Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: avalanche, base, bsc, ethereum, sonic
- Contract surface: 75 unique implementations (186 raw deployments)
- DeFi Llama TVL: $10,168,483.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 65 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 8 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 19 common project-authored base contract(s) (reentrancyguardtransient, tokenbalancehelper, constants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 188; live-surface contracts included: 163 (160 live, 3 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/67 (0.0%)
- Deployed-live implementations: 72 of 75 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 75
- Raw deployments: 186
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

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x061d7d04682a6c060cbc4b6fd65adcc724afeadb`](./contracts/ethereum-1/0x061d7d04682a6c060cbc4b6fd65adcc724afeadb/); ethereum `0x0987fb9ae6cdc6e71defcf710833acfc36e3ba7d`; ethereum `0x2e43f825fba9018d6303e9cf978cad9ac54b04ae`; ethereum `0x3e607766adcece773ebc69ad9f2e79ffbbe81f4b`; ethereum `0x51e85e0820a508b0a1034ab1fa4f260372f3db03`; ethereum `0x638a51e61400e228f4300076d95708b5d8962307`; ethereum `0xb804919a6fd9ee6ac90ad3a12bec902c0b29cb4e`; ethereum `0xbe968499626b8f027f93ba7a9b9c686c949dd2da`; sonic `0x216e588e4d726c691679c7eb4944c033e0d3df28`; sonic `0x974ba6aa224f6f3515170f963fbd256df214f8ee`; sonic `0xf09b9d5abde8b84d36578f6da977440332d94dda` | ⚠️ Unaudited |
| CircuitBreaker | unknown | bsc | n/a | 10 deployments: ethereum `0x9676e697399581ab288844cde5f73d0887ec18e0`; ethereum `0xac9994836cc5b52960e4d4e327f1b312c7a17b37`; ethereum `0xcb170bc873b3a1f69f433c25a4b6d0fd4d4d90de`; bsc [`0x2e43f825fba9018d6303e9cf978cad9ac54b04ae`](./contracts/bsc-56/0x2e43f825fba9018d6303e9cf978cad9ac54b04ae/); sonic `0x6b0743d3aff340bcac717320279e441d83673551`; sonic `0x9676e697399581ab288844cde5f73d0887ec18e0`; sonic `0xedc6db35bd00fead7022bb8daa5957a865041960`; base `0xedc6db35bd00fead7022bb8daa5957a865041960`; avalanche `0x5dfbf7754174fc960ed5cb85d68b418f1ce7bf88`; avalanche `0x73384cac18642729102ccdd58da1288aa1a8e355` | ⚠️ Unaudited |
| CircuitBreakerGuardian | governance | ethereum | n/a | 2 deployments: ethereum [`0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea`](./contracts/ethereum-1/0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea/); sonic [`0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea`](./contracts/sonic-146/0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea/) | ⚠️ Unaudited |
| CircuitBreakerOperator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x765224780ad888285b03af221f528d0a6824994d`](./contracts/ethereum-1/0x765224780ad888285b03af221f528d0a6824994d/); sonic [`0x765224780ad888285b03af221f528d0a6824994d`](./contracts/sonic-146/0x765224780ad888285b03af221f528d0a6824994d/) | ⚠️ Unaudited |
| DeltaNeutralStakingStrategy | core_logic | sonic | n/a | [`0x6ec218fc45ac0c7b83d16557befabb62ed7455ae`](./contracts/sonic-146/0x6ec218fc45ac0c7b83d16557befabb62ed7455ae/) | ⚠️ Unaudited |
| EpochRewardsVault | unknown | sonic | n/a | 2 deployments: sonic [`0x0fdd3b7ff34b2e43ee3a0cea72bdfa5519bef61a`](./contracts/sonic-146/0x0fdd3b7ff34b2e43ee3a0cea72bdfa5519bef61a/); sonic `0xc41855eaeb34e9b4531ce1fa9ef3824b5b642647` | ⚠️ Unaudited |
| EpochRewardsVault | core_logic | sonic | n/a | [`0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9`](./contracts/sonic-146/0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9/) | ⚠️ Unaudited |
| EpochRewardsVault | unknown | sonic | n/a | 2 deployments: sonic [`0x5aee4b34df62790581e2f2c31468ddfd7020e841`](./contracts/sonic-146/0x5aee4b34df62790581e2f2c31468ddfd7020e841/); sonic `0xd1e5a86f1005f6356bd022c587de0f430cd2aeb1` | ⚠️ Unaudited |
| EpochSettlerOperator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35e00b1ccb8fd22648d716096b994be6c10d5748`](./contracts/ethereum-1/0x35e00b1ccb8fd22648d716096b994be6c10d5748/); ethereum `0xa97b7423c4ef544be3b5c259eb67729fb0830a39` | ⚠️ Unaudited |
| EpochSettlerOperator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaf76ecb4b7e30c7470cb8aeb213b75a3eb150bbc`](./contracts/ethereum-1/0xaf76ecb4b7e30c7470cb8aeb213b75a3eb150bbc/); ethereum `0xbae14f050fb8cda4d16ab47dbec67793c7c0b566` | ⚠️ Unaudited |
| EpochSettlerOperator | unknown | sonic | n/a | 2 deployments: sonic [`0xa4f83b1dbc76f78c9d71336c687d04c92d103aa1`](./contracts/sonic-146/0xa4f83b1dbc76f78c9d71336c687d04c92d103aa1/); sonic `0xed0077a9e26329327722a81df2db3450f100226f` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | n/a | 3 deployments: bsc `0xa4215daaf3745e14e96e169e0e7706c479ce04f2`; bsc `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa`; sonic [`0x44655c6f83a6acf43403cf61c6050b6784c7cfeb`](./contracts/sonic-146/0x44655c6f83a6acf43403cf61c6050b6784c7cfeb/) | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | n/a | [`0x4577286a6082df1f99adbf790c4104dd90abefbc`](./contracts/ethereum-1/0x4577286a6082df1f99adbf790c4104dd90abefbc/) | ⚠️ Unaudited |
| FlyingTulipModeler | unknown | ethereum | n/a | [`0x3f07ff0e3b80416dc7f7cb41ea862a309663298c`](./contracts/ethereum-1/0x3f07ff0e3b80416dc7f7cb41ea862a309663298c/) | ⚠️ Unaudited |
| FlyingTulipOracle | operational_periphery | sonic | n/a | 8 deployments: ethereum `0xc8c895e2be9511006287ce02e51b5b198ab36793`; bsc `0xc8c895e2be9511006287ce02e51b5b198ab36793`; sonic [`0x2027909d69b501ce0967af62e6a165d24cf90d77`](./contracts/sonic-146/0x2027909d69b501ce0967af62e6a165d24cf90d77/); sonic `0x30f9f53ec295530392ea10dea19a5cc3ac1701b8`; sonic `0xc8c895e2be9511006287ce02e51b5b198ab36793`; base `0xc8c895e2be9511006287ce02e51b5b198ab36793`; avalanche `0xc8c895e2be9511006287ce02e51b5b198ab36793`; avalanche `0xe83c56f4166c96cee84ed6cc652bcdb9c66b0941` | ⚠️ Unaudited |
| FT | unknown | sonic | n/a | 6 deployments: ethereum `0x5dd1a7a369e8273371d2dbf9d83356057088082c`; bsc `0x5dd1a7a369e8273371d2dbf9d83356057088082c`; sonic [`0x26382a5331ddb46e7c0c101fb53480eb64a94ad9`](./contracts/sonic-146/0x26382a5331ddb46e7c0c101fb53480eb64a94ad9/); sonic `0x5dd1a7a369e8273371d2dbf9d83356057088082c`; base `0x5dd1a7a369e8273371d2dbf9d83356057088082c`; avalanche `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | ⚠️ Unaudited |
| ftACL | governance | sonic | n/a | 3 deployments: ethereum `0xa09d08e5a850b26d39ea2a69f8f99fd8aa1359eb`; sonic [`0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b`](./contracts/sonic-146/0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b/); sonic `0xd901ed360a01871825e97fae15823833b716d433` | ⚠️ Unaudited |
| FtLiquidator | operational_periphery | ethereum | n/a | [`0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac`](./contracts/ethereum-1/0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac/) | ⚠️ Unaudited |
| FtUsdMintRedeemOracleProxy | operational_periphery | sonic | n/a | 2 deployments: ethereum `0xa69f7a38b6c91a4bc2477f097dc8a1f16daadff8`; sonic [`0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae`](./contracts/sonic-146/0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae/) | ⚠️ Unaudited |
| ftYieldWrapper | unknown | ethereum | n/a | 19 deployments: ethereum [`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`](./contracts/ethereum-1/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); ethereum `0x267df6b637ddcaa7763d94b64ebe09f01b07cb36`; ethereum `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305`; ethereum `0xa143a9c486a1a4aaf54faeff7252cece2d337573`; ethereum `0xe5270e0458f58b83db3d90aa6a616173c98c97b6`; ethereum `0xe6880fc961b1235c46552e391358a270281b5625`; bsc [`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`](./contracts/bsc-56/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); sonic [`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`](./contracts/sonic-146/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); sonic `0x0e959ea4cc900a3e492759bf87497ed32440ad49`; sonic `0x62ebd646734d0faddd2c70391910b38bec2ede2d`; sonic `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305`; base [`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`](./contracts/base-8453/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); base `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305`; avalanche [`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`](./contracts/avalanche-43114/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/); avalanche `0x0edc9d87e1cfe6905b25e0bd9fca288f2c6b7d38`; avalanche `0x267df6b637ddcaa7763d94b64ebe09f01b07cb36`; avalanche `0x2fa3e7fc699a577e61d520dca62bc4587d6009b0`; avalanche `0x6cd8cbb72d74d2d0fbaff398cd0daff787a54dbf`; avalanche `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | sonic | n/a | [`0x0e794b1fd35a7a5550cd3e305882369ffb2df7f7`](./contracts/sonic-146/0x0e794b1fd35a7a5550cd3e305882369ffb2df7f7/) | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | sonic | n/a | 8 deployments: ethereum `0x28cca8eea2cd0498ce91a9da15772a1ce42347d6`; ethereum `0x6aaf84563cdb03a22cd92ee2553698bee87e837d`; ethereum `0xb44a9c40efc05eb014effeac3cbed6a31f8cb87f`; sonic [`0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a`](./contracts/sonic-146/0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a/); sonic `0x298d44fc5f6a75b2673701bb77fddc923d59515e`; sonic `0x359b1924d6170b806cf1c70c440cca75e069115b`; sonic `0x46b0bf6a209425b895cad2feddb1ac055c4e1ec9`; sonic `0x9acdce593888e52ec7cf70e3d22f0cf50682cd0b` | ⚠️ Unaudited |
| GeniusDollar | unknown | sonic | n/a | [`0x000000000eccff26b795f73fb0a70d48da657fef`](./contracts/sonic-146/0x000000000eccff26b795f73fb0a70d48da657fef/) | ⚠️ Unaudited |
| HopHelper | periphery | ethereum | n/a | [`0x30439b989fdfdf68e08a232799acca68152d9bc9`](./contracts/ethereum-1/0x30439b989fdfdf68e08a232799acca68152d9bc9/) | ⚠️ Unaudited |
| LeveragedRfqFiller | unknown | ethereum | n/a | [`0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8`](./contracts/ethereum-1/0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8/) | ⚠️ Unaudited |
| LeverageRfqEngine | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8263a07504d93cb95e0a74f3627bb15faaf140e2`](./contracts/ethereum-1/0x8263a07504d93cb95e0a74f3627bb15faaf140e2/); sonic [`0x8263a07504d93cb95e0a74f3627bb15faaf140e2`](./contracts/sonic-146/0x8263a07504d93cb95e0a74f3627bb15faaf140e2/) | ⚠️ Unaudited |
| LiquidationHelper | periphery | ethereum | n/a | [`0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a`](./contracts/ethereum-1/0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a8530ad26164896e8e1ba84f3b3bd48c1375dc0`](./contracts/ethereum-1/0x2a8530ad26164896e8e1ba84f3b3bd48c1375dc0/); ethereum `0x3fd484dd5212240bd04c12bf4efa7fac7d5faff6` | ⚠️ Unaudited |
| LockerModeler | unknown | ethereum | n/a | [`0x0778519a236942e6c81f0bfd004bdf4ab1c12a39`](./contracts/ethereum-1/0x0778519a236942e6c81f0bfd004bdf4ab1c12a39/) | ⚠️ Unaudited |
| LongTailIRM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09cd852f47aca224ee6b4accc29bd2694f29ef69`](./contracts/ethereum-1/0x09cd852f47aca224ee6b4accc29bd2694f29ef69/); sonic [`0x09cd852f47aca224ee6b4accc29bd2694f29ef69`](./contracts/sonic-146/0x09cd852f47aca224ee6b4accc29bd2694f29ef69/) | ⚠️ Unaudited |
| MajorIRM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07ec8583b1bc7d97646409a2b51ddbed6725d12f`](./contracts/ethereum-1/0x07ec8583b1bc7d97646409a2b51ddbed6725d12f/); sonic [`0x07ec8583b1bc7d97646409a2b51ddbed6725d12f`](./contracts/sonic-146/0x07ec8583b1bc7d97646409a2b51ddbed6725d12f/) | ⚠️ Unaudited |
| MetaActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2`](./contracts/ethereum-1/0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2/); sonic [`0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2`](./contracts/sonic-146/0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2/) | ⚠️ Unaudited |
| MetaSessionActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f83ac5c8a79986d0916a8849730d9cef63a3497`](./contracts/ethereum-1/0x4f83ac5c8a79986d0916a8849730d9cef63a3497/); sonic [`0x4f83ac5c8a79986d0916a8849730d9cef63a3497`](./contracts/sonic-146/0x4f83ac5c8a79986d0916a8849730d9cef63a3497/) | ⚠️ Unaudited |
| MintAndRedeem | unknown | sonic | n/a | [`0x0c6f8ec81c3ea5bff06f6cd0791780f9f050ee31`](./contracts/sonic-146/0x0c6f8ec81c3ea5bff06f6cd0791780f9f050ee31/) | ⚠️ Unaudited |
| MintAndRedeem | unknown | sonic | n/a | 2 deployments: sonic [`0x5e272c172eb3f385d65d1887d15042eea52c313d`](./contracts/sonic-146/0x5e272c172eb3f385d65d1887d15042eea52c313d/); sonic `0xb9682c6736fad7c8589d43cdfda58a70d53b7fda` | ⚠️ Unaudited |
| MintAndRedeem | unknown | sonic | n/a | [`0xbbf10e78eceb04c4dac655583701c3e9d924a09f`](./contracts/sonic-146/0xbbf10e78eceb04c4dac655583701c3e9d924a09f/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | [`0x50c42deacd8fc9773493ed674b675be577f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| MintModeler | unknown | ethereum | n/a | [`0x94a7afefe7e3037b2619d524e62d352b79cfad36`](./contracts/ethereum-1/0x94a7afefe7e3037b2619d524e62d352b79cfad36/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | ethereum | n/a | [`0xe4372db43d2814750a19b93950157ad81d93674a`](./contracts/ethereum-1/0xe4372db43d2814750a19b93950157ad81d93674a/) | ⚠️ Unaudited |
| OracleWrapper | operational_periphery | sonic | n/a | [`0xe7c36251197aac71fa4b0579960b2e7a5fa28253`](./contracts/sonic-146/0xe7c36251197aac71fa4b0579960b2e7a5fa28253/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0xeb450d21ae68d3303cf5775a54cc84ee7c3fc8ec`](./contracts/ethereum-1/0xeb450d21ae68d3303cf5775a54cc84ee7c3fc8ec/) | ⚠️ Unaudited |
| pFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/ethereum-1/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/); ethereum `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFT | unknown | sonic | n/a | 2 deployments: sonic [`0x1d8051c90076faa5b683a3551ee4369d00f99d67`](./contracts/sonic-146/0x1d8051c90076faa5b683a3551ee4369d00f99d67/); sonic `0xcf047256d5cd7354327213929214e5dad3a83326` | ⚠️ Unaudited |
| pFT | unknown | sonic | n/a | 3 deployments: bsc `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e`; sonic [`0x51d2a9807956378e8d0368339ea2117678e3efeb`](./contracts/sonic-146/0x51d2a9807956378e8d0368339ea2117678e3efeb/); avalanche `0x7f9c1847dc0ea532170faec33cb2cc866eeb7c0d` | ⚠️ Unaudited |
| pFT | unknown | sonic | n/a | 2 deployments: sonic [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/sonic-146/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/); sonic `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFT | unknown | base | n/a | 2 deployments: base [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/base-8453/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/); base `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFT | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/avalanche-43114/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/); avalanche `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFTMarketplace | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f`](./contracts/ethereum-1/0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f/); ethereum `0x31248663adccdbcad155555b7717697b76cf570c` | ⚠️ Unaudited |
| PutManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/ethereum-1/0x90ae2cac15f8d58a258f7b4a243657754469922a/); ethereum `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManager | governance | bsc | n/a | [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/bsc-56/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | ⚠️ Unaudited |
| PutManager | unknown | sonic | n/a | 2 deployments: sonic [`0x2a41a37603c8e7a87880c887a9080ee435d9acad`](./contracts/sonic-146/0x2a41a37603c8e7a87880c887a9080ee435d9acad/); sonic `0xaa8cd6341c8430eacf1c74af58a25e8ac653b202` | ⚠️ Unaudited |
| PutManager | unknown | sonic | n/a | 2 deployments: sonic [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/sonic-146/0x90ae2cac15f8d58a258f7b4a243657754469922a/); sonic `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManager | unknown | sonic | n/a | 2 deployments: sonic [`0x915220f3845d9d0db7960399c4e5ba0038f1170b`](./contracts/sonic-146/0x915220f3845d9d0db7960399c4e5ba0038f1170b/); sonic `0xabd838e9977fc76430d637ed35eccfaf178ce071` | ⚠️ Unaudited |
| PutManager | unknown | base | n/a | 2 deployments: base [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/base-8453/0x90ae2cac15f8d58a258f7b4a243657754469922a/); base `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManager | unknown | avalanche | n/a | 2 deployments: avalanche [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/avalanche-43114/0x90ae2cac15f8d58a258f7b4a243657754469922a/); avalanche `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManagerInvestProxy | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x33c2eefb21da9b1408f2615d02125ff1eba7a666`](./contracts/ethereum-1/0x33c2eefb21da9b1408f2615d02125ff1eba7a666/); ethereum `0x7c2b3bb00a24da15f9a89777ede1cb87fbadb5d5` | ⚠️ Unaudited |
| RelayerAuth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x823a97a2c32985e0f5457fc8103f36698d1f53f4`](./contracts/ethereum-1/0x823a97a2c32985e0f5457fc8103f36698d1f53f4/); sonic [`0x823a97a2c32985e0f5457fc8103f36698d1f53f4`](./contracts/sonic-146/0x823a97a2c32985e0f5457fc8103f36698d1f53f4/) | ⚠️ Unaudited |
| RfqCBLens | periphery | ethereum | n/a | [`0x80e01cc9a202658674e31e1d57767abd12d27316`](./contracts/ethereum-1/0x80e01cc9a202658674e31e1d57767abd12d27316/) | ⚠️ Unaudited |
| RfqEngine | unknown | ethereum | n/a | 2 deployments: ethereum [`0xeb00b335ca52216fb60fdffa361397367c39dc32`](./contracts/ethereum-1/0xeb00b335ca52216fb60fdffa361397367c39dc32/); sonic [`0xeb00b335ca52216fb60fdffa361397367c39dc32`](./contracts/sonic-146/0xeb00b335ca52216fb60fdffa361397367c39dc32/) | ⚠️ Unaudited |
| SessionManager | governance | sonic | n/a | 4 deployments: ethereum `0x2daf4b445e7d659100b22a15c3eeb10e64ac5dc9`; ethereum `0xf9f3ddf2e96cabef94e2634c326dc6dde99360f8`; sonic [`0x109ae72778a0260571b9767477204f1ce41fbdff`](./contracts/sonic-146/0x109ae72778a0260571b9767477204f1ce41fbdff/); sonic `0x2daf4b445e7d659100b22a15c3eeb10e64ac5dc9` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x3f537ef4313297b53bb827c02f3cc381ad080aeb`](./contracts/ethereum-1/0x3f537ef4313297b53bb827c02f3cc381ad080aeb/); ethereum `0x4df6f4f8cda409550a5d8a89ad66de355cf7f2a7`; ethereum `0x4f47c4adc71e1d33fda433fadda596a529307af5`; ethereum `0x852dc7638ad159ec12526d7e47f53f1307756a42`; ethereum `0xcfb9d82c426335c458ed78625b29b013c632ff2c`; ethereum `0xeb5cb93c27a11782d146863a340455e614b10302`; ethereum `0xf20119f84b7d54b6b1d6392efef19658515f99a8`; ethereum `0xfbe0736ebf5668a604d73ba93a5ddbee9c10b0e5` | ⚠️ Unaudited |
| StableIRM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3253739a68640e308c8209384bb44e4ada38710d`](./contracts/ethereum-1/0x3253739a68640e308c8209384bb44e4ada38710d/); sonic [`0x3253739a68640e308c8209384bb44e4ada38710d`](./contracts/sonic-146/0x3253739a68640e308c8209384bb44e4ada38710d/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x3518db98cb1fcb19e0c430b3e7f7f74b2a354707`](./contracts/ethereum-1/0x3518db98cb1fcb19e0c430b3e7f7f74b2a354707/) | ⚠️ Unaudited |
| TreasuryWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9d978c7a7e8e7e93a0d709797bf3f9f4534efd91`](./contracts/ethereum-1/0x9d978c7a7e8e7e93a0d709797bf3f9f4534efd91/); ethereum `0xaa1869e07708c1cc35e2dd6975758864128dfbb3` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | sonic | n/a | 2 deployments: sonic [`0x171ba268b9dff25c44fdeff1c6d08412558c3b21`](./contracts/sonic-146/0x171ba268b9dff25c44fdeff1c6d08412558c3b21/); sonic `0x725897054ea5f968b810f2b092ca51547549a2d3` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | sonic | n/a | 2 deployments: sonic [`0x24db7a17f233d4ffd37a0210a57b0a38f158ecba`](./contracts/sonic-146/0x24db7a17f233d4ffd37a0210a57b0a38f158ecba/); sonic `0xb65a077f4be7d133358dd15c8d48b5c75dfa48ca` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | sonic | n/a | 2 deployments: sonic [`0x3e4815af1dbf57b1e27316cc20fe5d35d1037aea`](./contracts/sonic-146/0x3e4815af1dbf57b1e27316cc20fe5d35d1037aea/); sonic `0x7e362172f273a47e31d2d3a276d9dc22f99fa4a9` | ⚠️ Unaudited |
| UniV2Executor | unknown | ethereum | n/a | [`0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3`](./contracts/ethereum-1/0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3/) | ⚠️ Unaudited |
| UniV3Executor | unknown | ethereum | n/a | [`0xb972e7941f359f9f9460e724d66d3026f6f3869f`](./contracts/ethereum-1/0xb972e7941f359f9f9460e724d66d3026f6f3869f/) | ⚠️ Unaudited |
| VCYieldClaimer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x418856f634813d904a31e5e16848d6711410b9e9`](./contracts/ethereum-1/0x418856f634813d904a31e5e16848d6711410b9e9/); ethereum `0xad12b39eca2b6cb31e1e1b2c7932f62db0909ed9` | ⚠️ Unaudited |
| WrapperModeler | unknown | ethereum | n/a | [`0x65c1fffb85121dd38ed7807e65e33236fb2695b8`](./contracts/ethereum-1/0x65c1fffb85121dd38ed7807e65e33236fb2695b8/) | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | sonic | n/a | 4 deployments: ethereum `0x88432bb6ea62e774cb6d87995cc5277568d01397`; ethereum `0xff81e06af64e92203c1229930426cb41e7fac9e2`; sonic [`0x59222220759efe35b8e46f5563151827e4114628`](./contracts/sonic-146/0x59222220759efe35b8e46f5563151827e4114628/); sonic `0x70fe8da96775b07d360545a7a0c6700b33d669d8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x16564b3f66c05a588fdafc74c07a517673a74e89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4df8ba330d1fadfd2c4ece1b464b38c34f900d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8b2b6ed837c3f8c7487aaac051249937391763e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2e43f825fba9018d6303e9cf978cad9ac54b04ae`](./contracts/bsc-56/0x2e43f825fba9018d6303e9cf978cad9ac54b04ae/) | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea`](./contracts/ethereum-1/0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea/) | CircuitBreakerGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x765224780ad888285b03af221f528d0a6824994d`](./contracts/ethereum-1/0x765224780ad888285b03af221f528d0a6824994d/) | CircuitBreakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6ec218fc45ac0c7b83d16557befabb62ed7455ae`](./contracts/sonic-146/0x6ec218fc45ac0c7b83d16557befabb62ed7455ae/) | DeltaNeutralStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0fdd3b7ff34b2e43ee3a0cea72bdfa5519bef61a`](./contracts/sonic-146/0x0fdd3b7ff34b2e43ee3a0cea72bdfa5519bef61a/) | EpochRewardsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9`](./contracts/sonic-146/0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9/) | EpochRewardsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5aee4b34df62790581e2f2c31468ddfd7020e841`](./contracts/sonic-146/0x5aee4b34df62790581e2f2c31468ddfd7020e841/) | EpochRewardsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35e00b1ccb8fd22648d716096b994be6c10d5748`](./contracts/ethereum-1/0x35e00b1ccb8fd22648d716096b994be6c10d5748/) | EpochSettlerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf76ecb4b7e30c7470cb8aeb213b75a3eb150bbc`](./contracts/ethereum-1/0xaf76ecb4b7e30c7470cb8aeb213b75a3eb150bbc/) | EpochSettlerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa4f83b1dbc76f78c9d71336c687d04c92d103aa1`](./contracts/sonic-146/0xa4f83b1dbc76f78c9d71336c687d04c92d103aa1/) | EpochSettlerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4577286a6082df1f99adbf790c4104dd90abefbc`](./contracts/ethereum-1/0x4577286a6082df1f99adbf790c4104dd90abefbc/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f07ff0e3b80416dc7f7cb41ea862a309663298c`](./contracts/ethereum-1/0x3f07ff0e3b80416dc7f7cb41ea862a309663298c/) | FlyingTulipModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2027909d69b501ce0967af62e6a165d24cf90d77`](./contracts/sonic-146/0x2027909d69b501ce0967af62e6a165d24cf90d77/) | FlyingTulipOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x26382a5331ddb46e7c0c101fb53480eb64a94ad9`](./contracts/sonic-146/0x26382a5331ddb46e7c0c101fb53480eb64a94ad9/) | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b`](./contracts/sonic-146/0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b/) | ftACL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac`](./contracts/ethereum-1/0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac/) | FtLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae`](./contracts/sonic-146/0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae/) | FtUsdMintRedeemOracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`](./contracts/ethereum-1/0x095d8b8d4503d590f647343f7cd880fa2abbbf59/) | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0e794b1fd35a7a5550cd3e305882369ffb2df7f7`](./contracts/sonic-146/0x0e794b1fd35a7a5550cd3e305882369ffb2df7f7/) | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a`](./contracts/sonic-146/0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a/) | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x000000000eccff26b795f73fb0a70d48da657fef`](./contracts/sonic-146/0x000000000eccff26b795f73fb0a70d48da657fef/) | GeniusDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30439b989fdfdf68e08a232799acca68152d9bc9`](./contracts/ethereum-1/0x30439b989fdfdf68e08a232799acca68152d9bc9/) | HopHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8`](./contracts/ethereum-1/0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8/) | LeveragedRfqFiller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8263a07504d93cb95e0a74f3627bb15faaf140e2`](./contracts/ethereum-1/0x8263a07504d93cb95e0a74f3627bb15faaf140e2/) | LeverageRfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a`](./contracts/ethereum-1/0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a/) | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a8530ad26164896e8e1ba84f3b3bd48c1375dc0`](./contracts/ethereum-1/0x2a8530ad26164896e8e1ba84f3b3bd48c1375dc0/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0778519a236942e6c81f0bfd004bdf4ab1c12a39`](./contracts/ethereum-1/0x0778519a236942e6c81f0bfd004bdf4ab1c12a39/) | LockerModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09cd852f47aca224ee6b4accc29bd2694f29ef69`](./contracts/ethereum-1/0x09cd852f47aca224ee6b4accc29bd2694f29ef69/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ec8583b1bc7d97646409a2b51ddbed6725d12f`](./contracts/ethereum-1/0x07ec8583b1bc7d97646409a2b51ddbed6725d12f/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2`](./contracts/ethereum-1/0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2/) | MetaActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f83ac5c8a79986d0916a8849730d9cef63a3497`](./contracts/ethereum-1/0x4f83ac5c8a79986d0916a8849730d9cef63a3497/) | MetaSessionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c6f8ec81c3ea5bff06f6cd0791780f9f050ee31`](./contracts/sonic-146/0x0c6f8ec81c3ea5bff06f6cd0791780f9f050ee31/) | MintAndRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5e272c172eb3f385d65d1887d15042eea52c313d`](./contracts/sonic-146/0x5e272c172eb3f385d65d1887d15042eea52c313d/) | MintAndRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbbf10e78eceb04c4dac655583701c3e9d924a09f`](./contracts/sonic-146/0xbbf10e78eceb04c4dac655583701c3e9d924a09f/) | MintAndRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x50c42deacd8fc9773493ed674b675be577f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94a7afefe7e3037b2619d524e62d352b79cfad36`](./contracts/ethereum-1/0x94a7afefe7e3037b2619d524e62d352b79cfad36/) | MintModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4372db43d2814750a19b93950157ad81d93674a`](./contracts/ethereum-1/0xe4372db43d2814750a19b93950157ad81d93674a/) | OracleRouterChainlink | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe7c36251197aac71fa4b0579960b2e7a5fa28253`](./contracts/sonic-146/0xe7c36251197aac71fa4b0579960b2e7a5fa28253/) | OracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/ethereum-1/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d8051c90076faa5b683a3551ee4369d00f99d67`](./contracts/sonic-146/0x1d8051c90076faa5b683a3551ee4369d00f99d67/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x51d2a9807956378e8d0368339ea2117678e3efeb`](./contracts/sonic-146/0x51d2a9807956378e8d0368339ea2117678e3efeb/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/sonic-146/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/base-8453/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa4215daaf3745e14e96e169e0e7706c479ce04f2`](./contracts/avalanche-43114/0xa4215daaf3745e14e96e169e0e7706c479ce04f2/) | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f`](./contracts/ethereum-1/0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f/) | pFTMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/ethereum-1/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/bsc-56/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | PutManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2a41a37603c8e7a87880c887a9080ee435d9acad`](./contracts/sonic-146/0x2a41a37603c8e7a87880c887a9080ee435d9acad/) | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/sonic-146/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x915220f3845d9d0db7960399c4e5ba0038f1170b`](./contracts/sonic-146/0x915220f3845d9d0db7960399c4e5ba0038f1170b/) | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/base-8453/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x90ae2cac15f8d58a258f7b4a243657754469922a`](./contracts/avalanche-43114/0x90ae2cac15f8d58a258f7b4a243657754469922a/) | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33c2eefb21da9b1408f2615d02125ff1eba7a666`](./contracts/ethereum-1/0x33c2eefb21da9b1408f2615d02125ff1eba7a666/) | PutManagerInvestProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823a97a2c32985e0f5457fc8103f36698d1f53f4`](./contracts/ethereum-1/0x823a97a2c32985e0f5457fc8103f36698d1f53f4/) | RelayerAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80e01cc9a202658674e31e1d57767abd12d27316`](./contracts/ethereum-1/0x80e01cc9a202658674e31e1d57767abd12d27316/) | RfqCBLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb00b335ca52216fb60fdffa361397367c39dc32`](./contracts/ethereum-1/0xeb00b335ca52216fb60fdffa361397367c39dc32/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x109ae72778a0260571b9767477204f1ce41fbdff`](./contracts/sonic-146/0x109ae72778a0260571b9767477204f1ce41fbdff/) | SessionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3253739a68640e308c8209384bb44e4ada38710d`](./contracts/ethereum-1/0x3253739a68640e308c8209384bb44e4ada38710d/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d978c7a7e8e7e93a0d709797bf3f9f4534efd91`](./contracts/ethereum-1/0x9d978c7a7e8e7e93a0d709797bf3f9f4534efd91/) | TreasuryWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x171ba268b9dff25c44fdeff1c6d08412558c3b21`](./contracts/sonic-146/0x171ba268b9dff25c44fdeff1c6d08412558c3b21/) | TreasuryWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x24db7a17f233d4ffd37a0210a57b0a38f158ecba`](./contracts/sonic-146/0x24db7a17f233d4ffd37a0210a57b0a38f158ecba/) | TreasuryWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3e4815af1dbf57b1e27316cc20fe5d35d1037aea`](./contracts/sonic-146/0x3e4815af1dbf57b1e27316cc20fe5d35d1037aea/) | TreasuryWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3`](./contracts/ethereum-1/0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3/) | UniV2Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb972e7941f359f9f9460e724d66d3026f6f3869f`](./contracts/ethereum-1/0xb972e7941f359f9f9460e724d66d3026f6f3869f/) | UniV3Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x418856f634813d904a31e5e16848d6711410b9e9`](./contracts/ethereum-1/0x418856f634813d904a31e5e16848d6711410b9e9/) | VCYieldClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65c1fffb85121dd38ed7807e65e33236fb2695b8`](./contracts/ethereum-1/0x65c1fffb85121dd38ed7807e65e33236fb2695b8/) | WrapperModeler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x59222220759efe35b8e46f5563151827e4114628`](./contracts/sonic-146/0x59222220759efe35b8e46f5563151827e4114628/) | YieldClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
