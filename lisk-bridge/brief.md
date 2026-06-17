# Agentic Audit Brief: Lisk Bridge

## Project Overview

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: active (Tier 0, 90.7% below peak)
- Generated: 2026-06-17T07:00:45.363Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 40 unique implementations (53 raw deployments)
- DeFi Llama TVL: $30,237,349.78
- On-chain TVL (included contracts): $50,911,787.36
- TVL by chain: Ethereum $50,911,787.36

## Project Description

Lisk Bridge is the canonical bridge / bridged-assets surface for Lisk Chain, focused on asset transfers between Ethereum and the Lisk EVM L2 using OP Stack bridge infrastructure. It should be treated separately from the broader Lisk platform, incubator/fund programs, governance, vesting, testing, third-party application contracts, and unrelated token deployments.

### Architecture

The L1 family provides the core OP Stack bridge infrastructure, which is extended by Lisk-specific contracts for custom token bridging and vesting. Lisk Mainnet contracts are standard token implementations that interact with the bridge adapters, while Predeploys and Testing contracts are auxiliary.

## Contract Surface Quality

- Indexed contracts: 220; live-surface contracts included: 53 (50 live, 3 unknown).
- Excluded by liveness: 135 inactive, 32 singleton, 0 uninitialized.
- Deployment units: 16/45 live.
- Detected codebases: none
- Unverified dependencies: 12/62.

## Audit Coverage Summary

- Verified implementations audited: 0/38 (0.0%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 40
- Raw deployments: 53
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $50,911,787.36
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1LiskToken | token | ethereum | n/a | [`0x6033f7...90ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | ⚠️ Unaudited |
| SwarmMarketsToken | token | ethereum | n/a | [`0xb17548...247173`](./contracts/ethereum-1/0xb17548c7b510427baac4e267bea62e800b247173/) | ⚠️ Unaudited |
| UTUToken | token | ethereum | n/a | [`0xa58a4f...94189b`](./contracts/ethereum-1/0xa58a4f5c4bb043d2cc1e170613b74e767c94189b/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | unit-27491 | [`0x7ad0d1...1d9c1e`](./contracts/ethereum-1/0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e/) | ⚠️ Unaudited |
| AssetTokenData | token | ethereum | n/a | [`0x3a5d3f...c2c159`](./contracts/ethereum-1/0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159/) | ⚠️ Unaudited |
| AssetTokenMinimalProxyCCIPFactory | registry | ethereum | unit-27511 | [`0xf1a3de...cd99e1`](./contracts/ethereum-1/0xf1a3de660968b3a6493334413505220c1bcd99e1/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x0a3467...f700fa`](./contracts/ethereum-1/0x0a34677dafcd28916aac0b22123142efabf700fa/); ethereum `0x23afd2...32f7fe`; ethereum `0x281a83...6e0400`; ethereum `0x286213...25b27c`; ethereum `0x55585f...781c5d`; ethereum `0x5f5d43...ffe9cf`; ethereum `0x6eb579...e50fae`; ethereum `0x8192d6...990728`; ethereum `0xab235c...499f23`; ethereum `0xad0624...8fcc09`; ethereum `0xb05963...00fac9`; ethereum `0xb85e3e...e9c248`; ethereum `0xe199e1...629b59` | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | unit-27482 | [`0x31efc2...7c168e`](./contracts/ethereum-1/0x31efc2c8012c56e007e5bdb8e5b7955d197c168e/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | unit-27471 | [`0x0cf7d3...8c282c`](./contracts/ethereum-1/0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-27476 (2 proxies) | 2 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| L1OpEURCBridgeAdapter | operational_periphery | ethereum | unit-27509 | [`0xeb99c8...89f677`](./contracts/ethereum-1/0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677/) | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | operational_periphery | ethereum | unit-27508 | [`0xe36224...6995e6`](./contracts/ethereum-1/0xe3622468ea7dd804702b56ca2a4f88c0936995e6/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-27478 | [`0x265872...d25d08`](./contracts/ethereum-1/0x2658723bf70c7667de6b25f99fcce13a16d25d08/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | unit-27472 | [`0x113cb9...1aa7d6`](./contracts/ethereum-1/0x113cb99283af242da0a0c54347667edf531aa7d6/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0xd00e38...a5b3ad`](./contracts/ethereum-1/0xd00e38514d66bf1b761a8937559c6b2854a5b3ad/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | unit-27480 | [`0x26db93...53f9a7`](./contracts/ethereum-1/0x26db93f8b8b4f7016240af62f7730979d353f9a7/) | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0x095102...6b64f6`](./contracts/ethereum-1/0x095102ec7bea1c5f25090705b196a6ea2e6b64f6/) | ⚠️ Unaudited |
| PermissionManagerV2 | governance | ethereum | unit-27507 | [`0xe214d9...013d91`](./contracts/ethereum-1/0xe214d97ba7ff83144699737f73d271c006013d91/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x9c065e...1be277`](./contracts/ethereum-1/0x9c065e11870b891d214bc2da7ef1f9ddfa1be277/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x92d73c...0bdc0c`](./contracts/ethereum-1/0x92d73c19a6638c46cd0e11360baf4de9950bdc0c/) | ⚠️ Unaudited |
| SmtDistributor | unknown | ethereum | n/a | [`0x6b0f85...8031ac`](./contracts/ethereum-1/0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | unit-27495 | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SwarmBuyerBurner | unknown | ethereum | n/a | [`0x1f8e90...48aeac`](./contracts/ethereum-1/0x1f8e9072b5f07c9de66a2974cfba75636648aeac/) | ⚠️ Unaudited |
| SX1155NFTFactory | registry | ethereum | n/a | [`0xab7aa6...bc8b14`](./contracts/ethereum-1/0xab7aa6495f8694656b59bc6309d3f6190dbc8b14/) | ⚠️ Unaudited |
| Tellor360 | unknown | ethereum | unit-27492 | [`0x88df59...3778a0`](./contracts/ethereum-1/0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenTransferor | token | ethereum | n/a | [`0xa75d8a...cee84c`](./contracts/ethereum-1/0xa75d8afd8d3a36dd3935078e4d05153946cee84c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x707f91...963fc8`](./contracts/ethereum-1/0x707f9118e33a9b8998bea41dd0d46f38bb963fc8/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | unit-27499 | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | unit-27502 | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| XERC20 | token | ethereum | unit-27474 | [`0x1217bf...b6e189`](./contracts/ethereum-1/0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189/) | ⚠️ Unaudited |
| xGold | unknown | ethereum | n/a | [`0x7f9438...4b5244`](./contracts/ethereum-1/0x7f94388a552580712c4ec724f470c6e4a74b5244/) | ⚠️ Unaudited |
| xGoldBundle | unknown | ethereum | n/a | [`0x5e75a1...1bbdee`](./contracts/ethereum-1/0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee/) | ⚠️ Unaudited |
| xGoldBundleStorage | unknown | ethereum | n/a | [`0x2b498b...344456`](./contracts/ethereum-1/0x2b498bae947c80e358f59a277adda90f76344456/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d96f2...861d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328809...afdac6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
