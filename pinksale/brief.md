# Agentic Audit Brief: PinkSale

## Project Overview

- Project: PinkSale (`pinksale`)
- Website: [https://www.pinksale.finance](https://www.pinksale.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.171Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 60 unique implementations (60 raw deployments)
- DeFi Llama TVL: $137,811,795.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 58 project-authored contract(s) across 4 chain(s); 25 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, erc20basic). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **UNCX Network** (`uncx-network`) in the BabyDogeLocker subsystem.
15 audits inherited from `uncx-network`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 60 (60 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/56 (0.0%)
- Deployed-live implementations: 60 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 15 (0 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlyaMiner | unknown | bsc | n/a | [`0x1fd1fec84c2e03d8df0f50e19ee22e2407c0dfa2`](./contracts/bsc-56/0x1fd1fec84c2e03d8df0f50e19ee22e2407c0dfa2/) | ⚠️ Unaudited |
| AlyaMultiSender | unknown | bsc | n/a | [`0x057872f9c6888fcd97afdd6bc6ec3793fad6adc9`](./contracts/bsc-56/0x057872f9c6888fcd97afdd6bc6ec3793fad6adc9/) | ⚠️ Unaudited |
| AlyaToken | unknown | bsc | n/a | [`0x49a9f9a2271d8c5da44c57e7102aca79c222f4a9`](./contracts/bsc-56/0x49a9f9a2271d8c5da44c57e7102aca79c222f4a9/) | ⚠️ Unaudited |
| AntiBotBABYTOKEN | unknown | polygon | n/a | [`0x37c334e088f3540e191ac36a46b61d393187876c`](./contracts/polygon-137/0x37c334e088f3540e191ac36a46b61d393187876c/) | ⚠️ Unaudited |
| AntiBotBuybackBabyToken | unknown | bsc | n/a | [`0xcba6e5b41c1ecd8035e4d36eaf1bd831a9968fb6`](./contracts/bsc-56/0xcba6e5b41c1ecd8035e4d36eaf1bd831a9968fb6/) | ⚠️ Unaudited |
| AntiBotLiquidityGeneratorToken | unknown | bsc | n/a | [`0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c`](./contracts/bsc-56/0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c/) | ⚠️ Unaudited |
| AntiBotStandardERC20 | unknown | polygon | n/a | [`0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c`](./contracts/polygon-137/0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c/) | ⚠️ Unaudited |
| BABYTOKEN | unknown | polygon | n/a | [`0x069fd156c0d22e5d5f68e92f3237624b8eb6ae9c`](./contracts/polygon-137/0x069fd156c0d22e5d5f68e92f3237624b8eb6ae9c/) | ⚠️ Unaudited |
| BABYTOKENDividendTracker | unknown | ethereum | n/a | [`0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c`](./contracts/ethereum-1/0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c/) | ⚠️ Unaudited |
| BatchGetBalances | unknown | bsc | n/a | [`0x9d1ca3b0ac570d88ef8c63e4cea579e5460db5d7`](./contracts/bsc-56/0x9d1ca3b0ac570d88ef8c63e4cea579e5460db5d7/) | ⚠️ Unaudited |
| BuybackBabyToken | unknown | bsc | n/a | [`0x08de30a06fdf55637c54b335fdba22fc098d6458`](./contracts/bsc-56/0x08de30a06fdf55637c54b335fdba22fc098d6458/) | ⚠️ Unaudited |
| ChangeFuture | unknown | bsc | n/a | [`0x354452b32b39c04bc80770807ff70de17cd85fff`](./contracts/bsc-56/0x354452b32b39c04bc80770807ff70de17cd85fff/) | ⚠️ Unaudited |
| CoinToken | unknown | bsc | n/a | [`0x4aee9d30893c5c73e5a5b8637a10d9537497f1c8`](./contracts/bsc-56/0x4aee9d30893c5c73e5a5b8637a10d9537497f1c8/) | ⚠️ Unaudited |
| ContractChecker | unknown | polygon | n/a | [`0x38296f0efbf5a8b8d496468f791b9f75d8eefa21`](./contracts/polygon-137/0x38296f0efbf5a8b8d496468f791b9f75d8eefa21/) | ⚠️ Unaudited |
| DegenFacet | unknown | bsc | n/a | [`0x7ab01a962f2f7670f21e6b96d325ce16589bfcb0`](./contracts/bsc-56/0x7ab01a962f2f7670f21e6b96d325ce16589bfcb0/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | bsc | n/a | [`0x154eb42f708e088844a0d9b5bb0c732e90de093c`](./contracts/bsc-56/0x154eb42f708e088844a0d9b5bb0c732e90de093c/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | bsc | n/a | [`0x7207fc8e007ec37436225ad2663248cadd798095`](./contracts/bsc-56/0x7207fc8e007ec37436225ad2663248cadd798095/) | ⚠️ Unaudited |
| Digger | unknown | bsc | n/a | [`0x339cca50e9a4a01beb061747c75aba61a7e087c7`](./contracts/bsc-56/0x339cca50e9a4a01beb061747c75aba61a7e087c7/) | ⚠️ Unaudited |
| DiggerDesign | unknown | bsc | n/a | [`0x186a030029e46533afdc6f6bd761eb59f0a5773a`](./contracts/bsc-56/0x186a030029e46533afdc6f6bd761eb59f0a5773a/) | ⚠️ Unaudited |
| DividendDistributor | unknown | bsc | n/a | [`0xe7a05a33f1021183695950694091df2ffec9aa8f`](./contracts/bsc-56/0xe7a05a33f1021183695950694091df2ffec9aa8f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x03d58e3ea16836a9483f1a62a8fdab04d05b1826`](./contracts/avalanche-43114/0x03d58e3ea16836a9483f1a62a8fdab04d05b1826/) | ⚠️ Unaudited |
| FANSPEL | unknown | bsc | n/a | [`0xb0228eb6c0b49f8265e6e161c3a987eed7471f42`](./contracts/bsc-56/0xb0228eb6c0b49f8265e6e161c3a987eed7471f42/) | ⚠️ Unaudited |
| FUTURECOIN | unknown | bsc | n/a | [`0x013bdaadb346082e45508b1f43e000df8adaad51`](./contracts/bsc-56/0x013bdaadb346082e45508b1f43e000df8adaad51/) | ⚠️ Unaudited |
| FutureCoinBridge | unknown | bsc | n/a | [`0xb9df4ed47894bdd11c08d153e0b5003855ecb1ef`](./contracts/bsc-56/0xb9df4ed47894bdd11c08d153e0b5003855ecb1ef/) | ⚠️ Unaudited |
| GiftToken | unknown | bsc | n/a | [`0x4e9760f376003be4854af1ab732c4785175e4d25`](./contracts/bsc-56/0x4e9760f376003be4854af1ab732c4785175e4d25/) | ⚠️ Unaudited |
| GnomeMines | unknown | bsc | n/a | [`0x2cf6fac6ec946df83bc44a68e8841567a6a415fd`](./contracts/bsc-56/0x2cf6fac6ec946df83bc44a68e8841567a6a415fd/) | ⚠️ Unaudited |
| House | unknown | bsc | n/a | [`0x37cee1dbaa55aa056ba20b54df3fa3957cc09e6c`](./contracts/bsc-56/0x37cee1dbaa55aa056ba20b54df3fa3957cc09e6c/) | ⚠️ Unaudited |
| HouseDesign | unknown | bsc | n/a | [`0xa951f0ae97c406196f9b23af8ef8b95778be3ebd`](./contracts/bsc-56/0xa951f0ae97c406196f9b23af8ef8b95778be3ebd/) | ⚠️ Unaudited |
| IterableMapping | unknown | ethereum | n/a | [`0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771`](./contracts/ethereum-1/0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771/) | ⚠️ Unaudited |
| JST | unknown | bsc | n/a | [`0xee6cacddd3a9370d87db581ee6728226883578e5`](./contracts/bsc-56/0xee6cacddd3a9370d87db581ee6728226883578e5/) | ⚠️ Unaudited |
| LendingPool | unknown | bsc | n/a | [`0x8a6f7834a9d60090668f5db33fec353a7fb4704b`](./contracts/bsc-56/0x8a6f7834a9d60090668f5db33fec353a7fb4704b/) | ⚠️ Unaudited |
| LiquidityGeneratorToken | unknown | bsc | n/a | [`0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771`](./contracts/bsc-56/0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771/) | ⚠️ Unaudited |
| ManagerFacet | unknown | bsc | n/a | [`0x0bc2c16ff6250749575594c62ff10dbdb49f01db`](./contracts/bsc-56/0x0bc2c16ff6250749575594c62ff10dbdb49f01db/) | ⚠️ Unaudited |
| MetaMerce | unknown | bsc | n/a | [`0x618951276a25a7fed805c68c1813f1b8c39c7dd3`](./contracts/bsc-56/0x618951276a25a7fed805c68c1813f1b8c39c7dd3/) | ⚠️ Unaudited |
| MLand | unknown | bsc | n/a | [`0x723d7849e072ffd116138e56f5bc617626d204f4`](./contracts/bsc-56/0x723d7849e072ffd116138e56f5bc617626d204f4/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x5942ce9067300d07d4091601a50ca59b9defedd8`](./contracts/bsc-56/0x5942ce9067300d07d4091601a50ca59b9defedd8/) | ⚠️ Unaudited |
| PinkLock | unknown | polygon | n/a | [`0x2a6ce789e25573819e0c47820ec6f887bca361ea`](./contracts/polygon-137/0x2a6ce789e25573819e0c47820ec6f887bca361ea/) | ⚠️ Unaudited |
| PinkLock02 | unknown | bsc | n/a | [`0x407993575c91ce7643a4d4ccacc9a98c36ee1bbe`](./contracts/bsc-56/0x407993575c91ce7643a4d4ccacc9a98c36ee1bbe/) | ⚠️ Unaudited |
| PinkLock03 | unknown | ethereum | n/a | [`0x29aed81d274f94cea037d05bb61eb93223a48a77`](./contracts/ethereum-1/0x29aed81d274f94cea037d05bb61eb93223a48a77/) | ⚠️ Unaudited |
| PinkMoon | unknown | bsc | n/a | [`0xb6090a50f66046e3c6afb9311846a6432e45060a`](./contracts/bsc-56/0xb6090a50f66046e3c6afb9311846a6432e45060a/) | ⚠️ Unaudited |
| PinkMultisend | unknown | ethereum | n/a | [`0x5addc939a3df02c5c2b966e5a057f5e95c9ec8d5`](./contracts/ethereum-1/0x5addc939a3df02c5c2b966e5a057f5e95c9ec8d5/) | ⚠️ Unaudited |
| PinkSaleToken | unknown | bsc | n/a | [`0x602ba546a7b06e0fc7f58fd27eb6996ecc824689`](./contracts/bsc-56/0x602ba546a7b06e0fc7f58fd27eb6996ecc824689/) | ⚠️ Unaudited |
| PreSalePool | unknown | bsc | n/a | [`0x00217430626f32be2258f131cdaa1fb86f042e74`](./contracts/bsc-56/0x00217430626f32be2258f131cdaa1fb86f042e74/) | ⚠️ Unaudited |
| PrivateSale | unknown | bsc | n/a | [`0x403f402fb7811bce200ab3123cc97b44601c6fbc`](./contracts/bsc-56/0x403f402fb7811bce200ab3123cc97b44601c6fbc/) | ⚠️ Unaudited |
| PrivateSalePool | unknown | bsc | n/a | [`0x2dfdf22bb64b2944cbb4b7d9ede903f77d789bd7`](./contracts/bsc-56/0x2dfdf22bb64b2944cbb4b7d9ede903f77d789bd7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x33d4cc8716beb13f814f538ad3b2de3b036f5e2a`](./contracts/avalanche-43114/0x33d4cc8716beb13f814f538ad3b2de3b036f5e2a/) | ⚠️ Unaudited |
| Repair | unknown | bsc | n/a | [`0x12209cd8b7302e049157782bfdc89f98f9446e80`](./contracts/bsc-56/0x12209cd8b7302e049157782bfdc89f98f9446e80/) | ⚠️ Unaudited |
| ROCKET | unknown | bsc | n/a | [`0x38a4abee7eb7d095df93f677805f8776709add6f`](./contracts/bsc-56/0x38a4abee7eb7d095df93f677805f8776709add6f/) | ⚠️ Unaudited |
| RunnerLandToken | unknown | bsc | n/a | [`0x851b7cb21d7428fa1ed87a7c45da8048079b0a90`](./contracts/bsc-56/0x851b7cb21d7428fa1ed87a7c45da8048079b0a90/) | ⚠️ Unaudited |
| ShimbaInu | unknown | bsc | n/a | [`0xdb9b2ee7e2652fab00bc1f67ab3582689d8e0fd4`](./contracts/bsc-56/0xdb9b2ee7e2652fab00bc1f67ab3582689d8e0fd4/) | ⚠️ Unaudited |
| SmardexPair | unknown | ethereum | n/a | [`0xd626661e2d4f93a1c4122d386fa9ea0f62b5ab0b`](./contracts/ethereum-1/0xd626661e2d4f93a1c4122d386fa9ea0f62b5ab0b/) | ⚠️ Unaudited |
| StandardERC20 | unknown | polygon | n/a | [`0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771`](./contracts/polygon-137/0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771/) | ⚠️ Unaudited |
| StandardToken | unknown | bsc | n/a | [`0x0b705953b3581ebb50063a9570339415d95105b0`](./contracts/bsc-56/0x0b705953b3581ebb50063a9570339415d95105b0/) | ⚠️ Unaudited |
| SUKUYANA | unknown | bsc | n/a | [`0x485f66f20f6732017345ff3437377ec84ea75039`](./contracts/bsc-56/0x485f66f20f6732017345ff3437377ec84ea75039/) | ⚠️ Unaudited |
| TiFiLock | unknown | bsc | n/a | [`0xa015263066da13e94526a8b897edb0e3cd55b19a`](./contracts/bsc-56/0xa015263066da13e94526a8b897edb0e3cd55b19a/) | ⚠️ Unaudited |
| TiFiReservior | unknown | bsc | n/a | [`0x0aeff3d761f6706295f3828c87cce29c9418a93b`](./contracts/bsc-56/0x0aeff3d761f6706295f3828c87cce29c9418a93b/) | ⚠️ Unaudited |
| TiFiToken | unknown | bsc | n/a | [`0x17e65e6b9b166fb8e7c59432f0db126711246bc0`](./contracts/bsc-56/0x17e65e6b9b166fb8e7c59432f0db126711246bc0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x18f349ad12d7d7f029b3b22e0b01c6d88a0d2066`](./contracts/avalanche-43114/0x18f349ad12d7d7f029b3b22e0b01c6d88a0d2066/) | ⚠️ Unaudited |
| USDT | unknown | bsc | n/a | [`0xa736c22371c3dec1ffead126eafc4001818fc511`](./contracts/bsc-56/0xa736c22371c3dec1ffead126eafc4001818fc511/) | ⚠️ Unaudited |
| Wavepaycoin | unknown | bsc | n/a | [`0x25f6212eb410e22956856ccb0383ec1a86fceaf9`](./contracts/bsc-56/0x25f6212eb410e22956856ccb0383ec1a86fceaf9/) | ⚠️ Unaudited |

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
| [01_Certificate_Unicrypt.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [01_Certificate_Unicrypt_Locking_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_Locking_V2.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [01_Certificate_Unicrypt_Presale.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_Presale.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [01_Certificate_Unicrypt_TokenVesting.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_TokenVesting.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Program_Audit_Unicrypt_Locker_Solana.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Program_Audit_Unicrypt_Locker_Solana.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Smart Contract Audit Unicrypt_Farm.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Farm.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Smart Contract Audit Unicrypt_Locking_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Locking_V2.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Smart Contract Audit Unicrypt_Presale.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Presale.pdf) | unknown | Audit | n/a | unknown | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [www.openzeppelin.com/news/uncx-uniswapv3-liquidity-locker-audit](https://www.openzeppelin.com/news/uncx-uniswapv3-liquidity-locker-audit) | OpenZeppelin | Audit | 2024-02 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf) | unknown | Audit | 2023-07 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf) | unknown | Audit | 2023-04 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf) | unknown | Audit | 2023-01 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Smart_Contract_Audit_Unicrypt_UNCX.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_UNCX.pdf) | unknown | Audit | 2022-03 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit_Unicrypt_LP_Locking_v3.pdf) | unknown | Audit | 2022-02 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |
| [02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf) | unknown | Audit | 2022-02 | stale | Inherited from UNCX Network — forked code, scoped to BabyDogeLocker | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1fd1fec84c2e03d8df0f50e19ee22e2407c0dfa2`](./contracts/bsc-56/0x1fd1fec84c2e03d8df0f50e19ee22e2407c0dfa2/) | AlyaMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x057872f9c6888fcd97afdd6bc6ec3793fad6adc9`](./contracts/bsc-56/0x057872f9c6888fcd97afdd6bc6ec3793fad6adc9/) | AlyaMultiSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x49a9f9a2271d8c5da44c57e7102aca79c222f4a9`](./contracts/bsc-56/0x49a9f9a2271d8c5da44c57e7102aca79c222f4a9/) | AlyaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x37c334e088f3540e191ac36a46b61d393187876c`](./contracts/polygon-137/0x37c334e088f3540e191ac36a46b61d393187876c/) | AntiBotBABYTOKEN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcba6e5b41c1ecd8035e4d36eaf1bd831a9968fb6`](./contracts/bsc-56/0xcba6e5b41c1ecd8035e4d36eaf1bd831a9968fb6/) | AntiBotBuybackBabyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c`](./contracts/bsc-56/0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c/) | AntiBotLiquidityGeneratorToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c`](./contracts/polygon-137/0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c/) | AntiBotStandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x069fd156c0d22e5d5f68e92f3237624b8eb6ae9c`](./contracts/polygon-137/0x069fd156c0d22e5d5f68e92f3237624b8eb6ae9c/) | BABYTOKEN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c`](./contracts/ethereum-1/0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c/) | BABYTOKENDividendTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d1ca3b0ac570d88ef8c63e4cea579e5460db5d7`](./contracts/bsc-56/0x9d1ca3b0ac570d88ef8c63e4cea579e5460db5d7/) | BatchGetBalances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08de30a06fdf55637c54b335fdba22fc098d6458`](./contracts/bsc-56/0x08de30a06fdf55637c54b335fdba22fc098d6458/) | BuybackBabyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x354452b32b39c04bc80770807ff70de17cd85fff`](./contracts/bsc-56/0x354452b32b39c04bc80770807ff70de17cd85fff/) | ChangeFuture | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4aee9d30893c5c73e5a5b8637a10d9537497f1c8`](./contracts/bsc-56/0x4aee9d30893c5c73e5a5b8637a10d9537497f1c8/) | CoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38296f0efbf5a8b8d496468f791b9f75d8eefa21`](./contracts/polygon-137/0x38296f0efbf5a8b8d496468f791b9f75d8eefa21/) | ContractChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7ab01a962f2f7670f21e6b96d325ce16589bfcb0`](./contracts/bsc-56/0x7ab01a962f2f7670f21e6b96d325ce16589bfcb0/) | DegenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x154eb42f708e088844a0d9b5bb0c732e90de093c`](./contracts/bsc-56/0x154eb42f708e088844a0d9b5bb0c732e90de093c/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7207fc8e007ec37436225ad2663248cadd798095`](./contracts/bsc-56/0x7207fc8e007ec37436225ad2663248cadd798095/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x339cca50e9a4a01beb061747c75aba61a7e087c7`](./contracts/bsc-56/0x339cca50e9a4a01beb061747c75aba61a7e087c7/) | Digger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x186a030029e46533afdc6f6bd761eb59f0a5773a`](./contracts/bsc-56/0x186a030029e46533afdc6f6bd761eb59f0a5773a/) | DiggerDesign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe7a05a33f1021183695950694091df2ffec9aa8f`](./contracts/bsc-56/0xe7a05a33f1021183695950694091df2ffec9aa8f/) | DividendDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb0228eb6c0b49f8265e6e161c3a987eed7471f42`](./contracts/bsc-56/0xb0228eb6c0b49f8265e6e161c3a987eed7471f42/) | FANSPEL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x013bdaadb346082e45508b1f43e000df8adaad51`](./contracts/bsc-56/0x013bdaadb346082e45508b1f43e000df8adaad51/) | FUTURECOIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb9df4ed47894bdd11c08d153e0b5003855ecb1ef`](./contracts/bsc-56/0xb9df4ed47894bdd11c08d153e0b5003855ecb1ef/) | FutureCoinBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e9760f376003be4854af1ab732c4785175e4d25`](./contracts/bsc-56/0x4e9760f376003be4854af1ab732c4785175e4d25/) | GiftToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2cf6fac6ec946df83bc44a68e8841567a6a415fd`](./contracts/bsc-56/0x2cf6fac6ec946df83bc44a68e8841567a6a415fd/) | GnomeMines | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x37cee1dbaa55aa056ba20b54df3fa3957cc09e6c`](./contracts/bsc-56/0x37cee1dbaa55aa056ba20b54df3fa3957cc09e6c/) | House | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa951f0ae97c406196f9b23af8ef8b95778be3ebd`](./contracts/bsc-56/0xa951f0ae97c406196f9b23af8ef8b95778be3ebd/) | HouseDesign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771`](./contracts/ethereum-1/0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771/) | IterableMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xee6cacddd3a9370d87db581ee6728226883578e5`](./contracts/bsc-56/0xee6cacddd3a9370d87db581ee6728226883578e5/) | JST | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8a6f7834a9d60090668f5db33fec353a7fb4704b`](./contracts/bsc-56/0x8a6f7834a9d60090668f5db33fec353a7fb4704b/) | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771`](./contracts/bsc-56/0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771/) | LiquidityGeneratorToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bc2c16ff6250749575594c62ff10dbdb49f01db`](./contracts/bsc-56/0x0bc2c16ff6250749575594c62ff10dbdb49f01db/) | ManagerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x618951276a25a7fed805c68c1813f1b8c39c7dd3`](./contracts/bsc-56/0x618951276a25a7fed805c68c1813f1b8c39c7dd3/) | MetaMerce | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x723d7849e072ffd116138e56f5bc617626d204f4`](./contracts/bsc-56/0x723d7849e072ffd116138e56f5bc617626d204f4/) | MLand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5942ce9067300d07d4091601a50ca59b9defedd8`](./contracts/bsc-56/0x5942ce9067300d07d4091601a50ca59b9defedd8/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2a6ce789e25573819e0c47820ec6f887bca361ea`](./contracts/polygon-137/0x2a6ce789e25573819e0c47820ec6f887bca361ea/) | PinkLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x407993575c91ce7643a4d4ccacc9a98c36ee1bbe`](./contracts/bsc-56/0x407993575c91ce7643a4d4ccacc9a98c36ee1bbe/) | PinkLock02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29aed81d274f94cea037d05bb61eb93223a48a77`](./contracts/ethereum-1/0x29aed81d274f94cea037d05bb61eb93223a48a77/) | PinkLock03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb6090a50f66046e3c6afb9311846a6432e45060a`](./contracts/bsc-56/0xb6090a50f66046e3c6afb9311846a6432e45060a/) | PinkMoon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5addc939a3df02c5c2b966e5a057f5e95c9ec8d5`](./contracts/ethereum-1/0x5addc939a3df02c5c2b966e5a057f5e95c9ec8d5/) | PinkMultisend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x602ba546a7b06e0fc7f58fd27eb6996ecc824689`](./contracts/bsc-56/0x602ba546a7b06e0fc7f58fd27eb6996ecc824689/) | PinkSaleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00217430626f32be2258f131cdaa1fb86f042e74`](./contracts/bsc-56/0x00217430626f32be2258f131cdaa1fb86f042e74/) | PreSalePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x403f402fb7811bce200ab3123cc97b44601c6fbc`](./contracts/bsc-56/0x403f402fb7811bce200ab3123cc97b44601c6fbc/) | PrivateSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2dfdf22bb64b2944cbb4b7d9ede903f77d789bd7`](./contracts/bsc-56/0x2dfdf22bb64b2944cbb4b7d9ede903f77d789bd7/) | PrivateSalePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12209cd8b7302e049157782bfdc89f98f9446e80`](./contracts/bsc-56/0x12209cd8b7302e049157782bfdc89f98f9446e80/) | Repair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x851b7cb21d7428fa1ed87a7c45da8048079b0a90`](./contracts/bsc-56/0x851b7cb21d7428fa1ed87a7c45da8048079b0a90/) | RunnerLandToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdb9b2ee7e2652fab00bc1f67ab3582689d8e0fd4`](./contracts/bsc-56/0xdb9b2ee7e2652fab00bc1f67ab3582689d8e0fd4/) | ShimbaInu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd626661e2d4f93a1c4122d386fa9ea0f62b5ab0b`](./contracts/ethereum-1/0xd626661e2d4f93a1c4122d386fa9ea0f62b5ab0b/) | SmardexPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771`](./contracts/polygon-137/0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771/) | StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b705953b3581ebb50063a9570339415d95105b0`](./contracts/bsc-56/0x0b705953b3581ebb50063a9570339415d95105b0/) | StandardToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x485f66f20f6732017345ff3437377ec84ea75039`](./contracts/bsc-56/0x485f66f20f6732017345ff3437377ec84ea75039/) | SUKUYANA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa015263066da13e94526a8b897edb0e3cd55b19a`](./contracts/bsc-56/0xa015263066da13e94526a8b897edb0e3cd55b19a/) | TiFiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0aeff3d761f6706295f3828c87cce29c9418a93b`](./contracts/bsc-56/0x0aeff3d761f6706295f3828c87cce29c9418a93b/) | TiFiReservior | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x17e65e6b9b166fb8e7c59432f0db126711246bc0`](./contracts/bsc-56/0x17e65e6b9b166fb8e7c59432f0db126711246bc0/) | TiFiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa736c22371c3dec1ffead126eafc4001818fc511`](./contracts/bsc-56/0xa736c22371c3dec1ffead126eafc4001818fc511/) | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25f6212eb410e22956856ccb0383ec1a86fceaf9`](./contracts/bsc-56/0x25f6212eb410e22956856ccb0383ec1a86fceaf9/) | Wavepaycoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19117] 01_Certificate_Unicrypt.pdf
- [19118] 01_Certificate_Unicrypt_Locking_V2.pdf
- [19119] 01_Certificate_Unicrypt_Presale.pdf
- [19120] 01_Certificate_Unicrypt_TokenVesting.pdf
- [19121] 02_Program_Audit_Unicrypt_Locker_Solana.pdf
- [19122] 02_Smart Contract Audit Unicrypt_Farm.pdf
- [19123] 02_Smart Contract Audit Unicrypt_Locking_V2.pdf
- [19124] 02_Smart Contract Audit Unicrypt_Presale.pdf
- [24916] www.openzeppelin.com/news/uncx-uniswapv3-liquidity-locker-audit
- [24917] Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf
- [24918] Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf
- [24919] Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf
- [24920] 02_Smart_Contract_Audit_Unicrypt_UNCX.pdf
- [24921] 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf
- [24922] 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf

Fork inheritance lineage and inherited audits are included when available.
