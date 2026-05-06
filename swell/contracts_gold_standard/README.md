# Swell — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md) and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every Swell-attributable contract, fetched directly from Etherscan's `getsourcecode` API. Each contract sits in its own subdirectory with a `metadata.json` and the source files preserving the directory layout the auditor verified against.

**Inventory:** 22 contracts · 351 source files · 2,010.7 KB total. Fetched 2026-05-06.

## Per-contract layout

| Slug | Etherscan name | Compiler | Files | Size | Address |
|---|---|---|---:|---:|---|
| `01_swETH_proxy/` | TransparentUpgradeableProxy | Solidity v0.8.9 | 13 | 36.8 KB | [`0xf951…ED78`](https://etherscan.io/address/0xf951E335afb289353dc249e82926178EaC7DEd78) |
| `02_swETH_impl/` | swETH | Solidity v0.8.16 | 49 | 258.1 KB | [`0xce95…ffbc`](https://etherscan.io/address/0xce95ba824ae9a4df9b303c0bbf4d605ba2affbfc) |
| `03_rswETH_proxy/` | TransparentUpgradeableProxy | Solidity v0.8.9 | 13 | 36.8 KB | [`0xFAe1…a6c0`](https://etherscan.io/address/0xFAe103DC9cf190eD75350761e95403b7b8aFa6c0) |
| `04_rswETH_impl/` | RswETH | Solidity v0.8.16 | 66 | 393.7 KB | [`0x4796…2362`](https://etherscan.io/address/0x4796d939b22027c2876d5ce9fde52da9ec4e2362) |
| `05_DepositManager_proxy/` | TransparentUpgradeableProxy | Solidity v0.8.9 | 13 | 36.8 KB | [`0xb3D9…8f39`](https://etherscan.io/address/0xb3D9cf8E163bbc840195a97E81F8A34E295B8f39) |
| `06_DepositManager_impl/` | DepositManager | Solidity v0.8.16 | 22 | 129.0 KB | [`0xEeE6…524B`](https://etherscan.io/address/0xEeE6207D514c2845394b5f4b9f12b6d155F4524B) |
| `07_NodeOperatorRegistry_proxy/` | TransparentUpgradeableProxy | Solidity v0.8.9 | 13 | 36.8 KB | [`0x46Dd…1A1d`](https://etherscan.io/address/0x46DdC39E780088B1B146Aba8cBBe15DC321A1A1d) |
| `08_NodeOperatorRegistry_impl/` | NodeOperatorRegistry | Solidity v0.8.16 | 21 | 144.1 KB | [`0xEA6c…e68a`](https://etherscan.io/address/0xEA6c9A14b96777a448687272bf0e6f6d9ce0e68a) |
| `09_AccessControlManager_proxy/` | TransparentUpgradeableProxy | Solidity v0.8.9 | 13 | 36.8 KB | [`0x6250…5EAC`](https://etherscan.io/address/0x625087d72c762254a72CB22cC2ECa40da6b95EAC) |
| `10_AccessControlManager_impl/` | AccessControlManager | Solidity v0.8.16 | 26 | 149.4 KB | [`0xBB7B…3E64`](https://etherscan.io/address/0xBB7B99C2be525c0a6b719344f89a4255ef593e64) |
| `11_swBTC_vault/` | Yearn V3 Vault | Vyper 0.3.10 | 1 | 79.5 KB | [`0x8DB2…64dDE`](https://etherscan.io/address/0x8DB2350D78aBc13f5673A411D4700BCF87864dDE) |
| `12_swBTC_impl/` | Yearn V3 Vault | Vyper 0.3.10 | 1 | 79.5 KB | [`0x2826…77aea`](https://etherscan.io/address/0x2826d136f5630ada89c1678b64a61620aab77aea) |
| `13_SimpleStakingERC20/` | SimpleStakingERC20 | Solidity v0.8.23 | 10 | 34.4 KB | [`0x38d4…d774`](https://etherscan.io/address/0x38d43a6cb8da0e855a42fb6b0733a0498531d774) |
| `14_SWELL_token/` | SwellToken | Solidity v0.8.23 | 5 | 16.6 KB | [`0x0a6E…5676`](https://etherscan.io/address/0x0a6E7Ba5042B38349e437ec6Db6214AEC7B35676) |
| `15_earnETH_BoringVault/` | BoringVault | Solidity v0.8.21 | 14 | 44.5 KB | [`0x9ed1…5f22`](https://etherscan.io/address/0x9ed15383940cc380faef0a75edace507cc775f22) |
| `16_earnETH_Manager/` | ManagerWithMerkleVerification | Solidity v0.8.21 | 18 | 63.8 KB | [`0x69fc…50c0`](https://etherscan.io/address/0x69fc700226e9e12d8c5e46a4b50a78efb64f50c0) |
| `17_earnETH_Accountant/` | AccountantWithRateProviders | Solidity v0.8.21 | 16 | 61.7 KB | [`0x411c…2755`](https://etherscan.io/address/0x411c78bc8c36c3c66784514f28c56209e1df2755) |
| `18_earnETH_Teller/` | MultiChainLayerZeroTellerWithMultiAssetSupport | Solidity v0.8.21 | 1 | 231.1 KB | [`0x6D20…18Dba`](https://etherscan.io/address/0x6D207874DDc8B1C3954a0BB2b21c6Fce2Aa18Dba) |
| `19_earnETH_RolesAuthority/` | RolesAuthority | Solidity v0.8.21 | 2 | 6.4 KB | [`0x1f5d…a016`](https://etherscan.io/address/0x1f5dddf627c3796a589c6271b36a570f18d3a016) |
| `20_OptimismPortalProxy/` | Proxy | Solidity v0.8.15 | 10 | 58.6 KB | [`0x758E…7812`](https://etherscan.io/address/0x758E0EE66102816F5C3Ec9ECc1188860fbb87812) |
| `21_L1ERC20TokenBridge_proxy/` | OssifiableProxy | Solidity v0.8.10 | 8 | 26.2 KB | [`0xecf3…4121`](https://etherscan.io/address/0xecf3376512EDAcA4FBB63d2c67d12a0397d24121) |
| `22_L1ERC20TokenBridge_impl/` | L1ERC20TokenBridge | Solidity v0.8.10 | 16 | 50.4 KB | [`0x7e97…65A2`](https://etherscan.io/address/0x7e97935FbDF2a27EA35c4fdDdaCf5ACd685e65A2) |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — address, Etherscan-reported contract name, compiler version, optimization settings, license, proxy/implementation flags.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan (e.g. `lib/openzeppelin/contracts/proxy/...`, `src/contracts/swETH.sol`). Single-file Vyper contracts are stored as `Yearn V3 Vault.vy`.

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract (file count, byte size, error if any).

## How these were fetched

```python
# docs/gold-standard/fetch_swell_sources.py (in the meta-audit repo)
GET https://api.etherscan.io/v2/api?chainid=1&module=contract&action=getsourcecode&address=<addr>&apikey=<key>
```

For multi-file verifications, Etherscan returns the source as a `{{...}}`-wrapped standard-json-input string; the script parses that and recreates each file's path. Rate-limited at ~3 calls/second (well under Etherscan's free-tier 5/sec cap). All 22 fetches succeeded on first attempt.

## What's NOT in this directory

- **Pendle PT tokens, Eigenpie LRTs, Frax frxETH/sfrxETH, Lido wstETH, ether.fi weETH, Renzo ezETH, AltLayer ALT, StakeStone STONE, etc.** — these are integration / deposit-asset graph, not Swell's contract code; their source belongs in their respective project directories.
- **Swellchain L2-side mirrors** of swETH, rswETH, swBTC, earnETH, SWELL, rSWELL — these are deployed on Swellchain (not Ethereum); their source is on `explorer.swellnetwork.io` (Blockscout) rather than Etherscan.
- **L1 bridge stack contracts without on-chain TVL** (AddressManager, AnchorStateRegistryProxy, BatchSubmitter EOA, SystemConfigProxy, L1CrossDomainMessengerProxy, L1ERC721BridgeProxy) — they are standard OP-stack templates and their source is identical to the upstream Optimism Bedrock release.

## Cross-references

- Brief: [`../brief_gold_standard.md`](../brief_gold_standard.md)
- Manifest: [`../manifest_gold_standard.json`](../manifest_gold_standard.json)
- Internal verification ledger (in meta-audit repo): `docs/gold-standard/swell_verification_ledger.md`
- Pipeline defect trace (in meta-audit repo): `docs/gold-standard/swell_v1_diff_analysis.md`
