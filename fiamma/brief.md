# Agentic Audit Brief: Fiamma

## Project Overview

- Project: Fiamma (`fiamma`)
- Website: [https://www.fiammalabs.io/](https://www.fiammalabs.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:15.347Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, polygon, sei, unichain
- Contract surface: 64 unique implementations (110 raw deployments)
- DeFi Llama TVL: $1,150,915.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 19 project-authored contract(s) across 7 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 8 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 132; live-surface contracts included: 92 (66 live, 26 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/42 (7.1%)
- Deployed-live implementations: 45 of 64 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/45
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 64
- Raw deployments: 110
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 6.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BtcMirror | unknown | bsc | n/a | [`0x5dca1687804b50ecf0b2fa69fcba7f416705483b`](./contracts/bsc-56/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ✅ Audited |
| FiaBTC | unknown | ethereum | n/a | [`0x22f0e0a4c97ff43546dad16d43ef854c773f0e08`](./contracts/ethereum-1/0x22f0e0a4c97ff43546dad16d43ef854c773f0e08/) | ✅ Audited |
| FiaBTC | unknown | bsc | n/a | 4 deployments: ethereum `0x730162f8dddd5361993e033df2e301bcb935d073`; ethereum `0xe398f76fd6af34100d827890e64d6cc84c02edae`; bsc [`0x6f2c9c44e1ff17cbbd8d7cdd3e05f29e4062fb18`](./contracts/bsc-56/0x6f2c9c44e1ff17cbbd8d7cdd3e05f29e4062fb18/); sei `0x8388dcc52767ba0ca188a61afc23c25feafa3672` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitVMBridgeV3 | operational_periphery | ethereum | n/a | [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | ethereum | n/a | [`0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524`](./contracts/ethereum-1/0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | unichain | n/a | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/unichain-130/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | polygon | n/a | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/polygon-137/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x62c737ba25b8ce3b2d6650a1dc44fe75e981b939`](./contracts/hyperliquid-999/0x62c737ba25b8ce3b2d6650a1dc44fe75e981b939/); hyperliquid `0x7f16fd90869fe84e41c20946864fa1753f9e96fe` | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | sei | n/a | 7 deployments: ethereum `0x19438c6b7d59bcc5e779825abe770e15cd13207c`; ethereum `0x53a662992d883c894e2ced814d72cca53f50f555`; ethereum `0xeaec9920004532db1e7323014f54358898ed1c53`; bsc `0x9b7764c6819dcf005436f788e166ee8cec643d17`; bsc `0xcc30d31e0a7f0660a0c19f59bb96e53d98ec83c0`; hyperliquid `0xb93752eda47b5c846332d4f32f7031c63658ecf3`; sei [`0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | base | n/a | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/base-8453/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | arbitrum | n/a | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/arbitrum-42161/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BtcMirror | unknown | unichain | n/a | 2 deployments: unichain [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/unichain-130/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); unichain `0x6036193f34b7a1cba3f9ac130835e972a92917e4` | ⚠️ Unaudited |
| BtcMirror | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/hyperliquid-999/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/); hyperliquid `0x7427f38a490f2c7713679fefa113b448ca0f9430` | ⚠️ Unaudited |
| BtcMirror | unknown | base | n/a | 2 deployments: base [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/base-8453/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); base `0x6036193f34b7a1cba3f9ac130835e972a92917e4` | ⚠️ Unaudited |
| BtcMirror | unknown | arbitrum | n/a | [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/arbitrum-42161/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | ⚠️ Unaudited |
| BtcPeg | unknown | ethereum | n/a | [`0x5dca1687804b50ecf0b2fa69fcba7f416705483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ⚠️ Unaudited |
| BtcPegUpgradeable | unknown | ethereum | n/a | 4 deployments: ethereum [`0x63ec0656ce47061d2b811050d0bcff8a7f59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/); bsc `0x756bcceeda5737238a5b00915e638dca23618a3e`; hyperliquid `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524`; sei `0x7427f38a490f2c7713679fefa113b448ca0f9430` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e64f7641b6ae37395c26d154c6d8457dbc0b931`](./contracts/ethereum-1/0x1e64f7641b6ae37395c26d154c6d8457dbc0b931/); ethereum `0x66ee8d53af69f8ebe9f944e3a471f953fe32d50c` | ⚠️ Unaudited |
| BtcTxVerifier | periphery | ethereum | n/a | 4 deployments: ethereum [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/ethereum-1/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); bsc `0x3c2bcea2e5920886ac67232af2351ee904c5c0a1`; bsc `0x60c230c38af6d86b0277a98a1caeaa345a7b061f`; hyperliquid `0x756bcceeda5737238a5b00915e638dca23618a3e` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | unichain | n/a | 2 deployments: unichain [`0x9c98f151819bd0abdef58b3b0993ca69c0c57378`](./contracts/unichain-130/0x9c98f151819bd0abdef58b3b0993ca69c0c57378/); unichain `0xae07d63eb572058fefab65a4e7788c2eb135ddd0` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | polygon | n/a | 2 deployments: polygon [`0x9c98f151819bd0abdef58b3b0993ca69c0c57378`](./contracts/polygon-137/0x9c98f151819bd0abdef58b3b0993ca69c0c57378/); polygon `0xae07d63eb572058fefab65a4e7788c2eb135ddd0` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbc9afbd085900e0ae8787267a0dec344ef006e85`](./contracts/hyperliquid-999/0xbc9afbd085900e0ae8787267a0dec344ef006e85/); hyperliquid `0xf765b88fe334e9c6af29ebf44c921a17f4bc4a5e` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | base | n/a | 2 deployments: base [`0x1e180ff4a9f12451f9daa2242aee09c8e65914fa`](./contracts/base-8453/0x1e180ff4a9f12451f9daa2242aee09c8e65914fa/); base `0x5b47feb5450d825f5cabfad8a4dface46ff76b92` | ⚠️ Unaudited |
| DataVerificationHub | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d27933f65f039c6b5763150f4cd24842bcd9b68`](./contracts/ethereum-1/0x2d27933f65f039c6b5763150f4cd24842bcd9b68/); ethereum `0x328c96c1399bdfd6e22691de6eb67457ce1c5865` | ⚠️ Unaudited |
| FiaBTC | unknown | unichain | n/a | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/unichain-130/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| FiaBTC | unknown | polygon | n/a | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/polygon-137/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| FiaBTC | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86`](./contracts/hyperliquid-999/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/); hyperliquid `0xf78dcfe6cca8593db244393411c37590634cc9a2` | ⚠️ Unaudited |
| FiaBTC | unknown | base | n/a | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/base-8453/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| FiaBTC | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/arbitrum-42161/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/); arbitrum `0xf78dcfe6cca8593db244393411c37590634cc9a2` | ⚠️ Unaudited |
| FiaBTCOFTAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x5098aa08546728d13fb5801b8eb893e724680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/); hyperliquid `0x8089e6c8c6cd29535d84db3e0c2d3b70fc57e86a`; sei `0xa885d5ba22ce182ebac49e036258eb730dee150f`; sei `0xe35776ac9c18dd94369aabc4461ab45b0c514b9b` | ⚠️ Unaudited |
| LPManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/ethereum-1/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/); ethereum `0x7427f38a490f2c7713679fefa113b448ca0f9430` | ⚠️ Unaudited |
| LPManager | governance | bsc | n/a | [`0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| LPManager | unknown | unichain | n/a | 2 deployments: unichain [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/unichain-130/0x756bcceeda5737238a5b00915e638dca23618a3e/); unichain `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524` | ⚠️ Unaudited |
| LPManager | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x9b7764c6819dcf005436f788e166ee8cec643d17`](./contracts/hyperliquid-999/0x9b7764c6819dcf005436f788e166ee8cec643d17/); hyperliquid `0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7` | ⚠️ Unaudited |
| LPManager | unknown | base | n/a | 2 deployments: base [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/base-8453/0x756bcceeda5737238a5b00915e638dca23618a3e/); base `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524` | ⚠️ Unaudited |
| LPManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/arbitrum-42161/0x756bcceeda5737238a5b00915e638dca23618a3e/); arbitrum `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524` | ⚠️ Unaudited |
| OperatorManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ce121f83613f0eaf131ee48204b7101e8f61c7d`](./contracts/ethereum-1/0x0ce121f83613f0eaf131ee48204b7101e8f61c7d/); ethereum `0xe6ed129b6bfb25d6459019917a42c61ba896b84f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa18e79f726e59cc9d068c7941cd9c4dc4bfc6453`](./contracts/ethereum-1/0xa18e79f726e59cc9d068c7941cd9c4dc4bfc6453/); ethereum `0xd23e84ec7cdc41149b5d74d7cbd1ae455b42c28d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 5 deployments: bsc [`0x7427f38a490f2c7713679fefa113b448ca0f9430`](./contracts/bsc-56/0x7427f38a490f2c7713679fefa113b448ca0f9430/); bsc `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524`; bsc `0xb93752eda47b5c846332d4f32f7031c63658ecf3`; bsc `0xc75de292ffe3ba97dd27895ff2eb1ffbe0a442bd`; bsc `0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/polygon-137/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); polygon `0x6036193f34b7a1cba3f9ac130835e972a92917e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/polygon-137/0x756bcceeda5737238a5b00915e638dca23618a3e/); polygon `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/sei-1329/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); sei `0x6036193f34b7a1cba3f9ac130835e972a92917e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | n/a | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/sei-1329/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/sei-1329/0x756bcceeda5737238a5b00915e638dca23618a3e/); sei `0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | n/a | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/sei-1329/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x34bee5ce6b193dd4513393793bcf47d7e9624a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d086f7062477bfb3ff762b9148755146e3ddaf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6036193f34b7a1cba3f9ac130835e972a92917e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa56cac6833d131adf95b09198fa1f9963027256b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dca1687804b50ecf0b2fa69fcba7f416705483b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x08145b65e2c039abf5009c2ce39c1d795550d6ba` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | 2 deployments: sei `0x3a2d69b6b3598058c7507055239ad4dec6ac504d`; sei `0x90a755487749ab42036ba41d92a5b0c999fa0135` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3d5776569549a32a1c4f56a47c147e53040dba83` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x43f4f524f00aa6683e8320b0cc2e5270e76609ee` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x48c730be58d25772a742f3d7b7b083ecb74e3c22` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5d71e8fc0aee5c07f8ef4ad0241f58566fbf5ea6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5dca1687804b50ecf0b2fa69fcba7f416705483b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5e6c086ed7bce33866001c074388da04f094a8c4` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x8a4442210150cb0ea91010333eeaaf77318cdc53` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9fbb54d7758c94499f4fc1b62210e1841274e6e8` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbd7be9cfb38784e436ca3f43f5d768f8a9a75fcc` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbff39301fd1418985f277283b0f39f97457db5c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf68b3d69e47419df329ba09cce72179ef6c8179f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BitLabs-Bridge-script.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/BitLabs-Bridge-script.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [MoveBits-Bridge-Aptos-Contract.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/MoveBits-Bridge-Aptos-Contract.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Zenith-Bridge-Cairo-Contract.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/Zenith-Bridge-Cairo-Contract.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | BitVMBridgeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524`](./contracts/ethereum-1/0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/unichain-130/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/polygon-137/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x62c737ba25b8ce3b2d6650a1dc44fe75e981b939`](./contracts/hyperliquid-999/0x62c737ba25b8ce3b2d6650a1dc44fe75e981b939/) | BitVMBridgeV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/base-8453/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7`](./contracts/arbitrum-42161/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/unichain-130/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | BtcMirror | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/hyperliquid-999/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | BtcMirror | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/base-8453/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | BtcMirror | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/arbitrum-42161/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | BtcMirror | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dca1687804b50ecf0b2fa69fcba7f416705483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | BtcPeg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63ec0656ce47061d2b811050d0bcff8a7f59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/) | BtcPegUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e64f7641b6ae37395c26d154c6d8457dbc0b931`](./contracts/ethereum-1/0x1e64f7641b6ae37395c26d154c6d8457dbc0b931/) | BtcTxVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7`](./contracts/ethereum-1/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | BtcTxVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x9c98f151819bd0abdef58b3b0993ca69c0c57378`](./contracts/unichain-130/0x9c98f151819bd0abdef58b3b0993ca69c0c57378/) | BtcTxVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9c98f151819bd0abdef58b3b0993ca69c0c57378`](./contracts/polygon-137/0x9c98f151819bd0abdef58b3b0993ca69c0c57378/) | BtcTxVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xbc9afbd085900e0ae8787267a0dec344ef006e85`](./contracts/hyperliquid-999/0xbc9afbd085900e0ae8787267a0dec344ef006e85/) | BtcTxVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e180ff4a9f12451f9daa2242aee09c8e65914fa`](./contracts/base-8453/0x1e180ff4a9f12451f9daa2242aee09c8e65914fa/) | BtcTxVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d27933f65f039c6b5763150f4cd24842bcd9b68`](./contracts/ethereum-1/0x2d27933f65f039c6b5763150f4cd24842bcd9b68/) | DataVerificationHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/unichain-130/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | FiaBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/polygon-137/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | FiaBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86`](./contracts/hyperliquid-999/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | FiaBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/base-8453/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | FiaBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/arbitrum-42161/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | FiaBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5098aa08546728d13fb5801b8eb893e724680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/) | FiaBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60c230c38af6d86b0277a98a1caeaa345a7b061f`](./contracts/ethereum-1/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | LPManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | LPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/unichain-130/0x756bcceeda5737238a5b00915e638dca23618a3e/) | LPManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x9b7764c6819dcf005436f788e166ee8cec643d17`](./contracts/hyperliquid-999/0x9b7764c6819dcf005436f788e166ee8cec643d17/) | LPManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/base-8453/0x756bcceeda5737238a5b00915e638dca23618a3e/) | LPManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x756bcceeda5737238a5b00915e638dca23618a3e`](./contracts/arbitrum-42161/0x756bcceeda5737238a5b00915e638dca23618a3e/) | LPManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ce121f83613f0eaf131ee48204b7101e8f61c7d`](./contracts/ethereum-1/0x0ce121f83613f0eaf131ee48204b7101e8f61c7d/) | OperatorManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [11582] BitLabs-Bridge-script.pdf
- [11583] MoveBits-Bridge-Aptos-Contract.pdf

Fork inheritance lineage and inherited audits are included when available.
