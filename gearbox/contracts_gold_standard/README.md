# Gearbox Protocol — Verified Contract Source Inventory (Gold Standard)

This directory contains verified Solidity source for **56 priority Gearbox V3 / V3.1 / legacy contracts**, fetched directly from Etherscan v2 (mainnet, Optimism, Arbitrum, Sonic) using the unified API endpoint `https://api.etherscan.io/v2/api`. The fetch script is at [`docs/gold-standard/fetch_gearbox_sources.py`](../../../docs/gold-standard/fetch_gearbox_sources.py); the consolidated fetch summary is in [`_fetch_summary.json`](_fetch_summary.json).

**Inventory scope.** This is a *priority subset*, not an exhaustive enumeration. The full Gearbox V3 inventory is 147 deployed contracts on Ethereum (per `v3-scope.md`) plus dynamic V3.1 deployments via the bytecode portal. This directory captures full source for **TVL-bearing pools, the entire credit engine, all governance/registry roots, all multi-chain V3 registry roots, one representative instance per major adapter type, one representative per oracle type, and the operational legacy ("Older contracts" in v3-scope.md)**. The remaining 91 V3 instances share bytecode with their corresponding sample by design (parameterized clones via CREATE2); their addresses are listed in [`../manifest_gold_standard.json`](../manifest_gold_standard.json) `contracts[]` array with the `notes` field citing v3-scope.md.

**Inventory totals.** 56 contracts; 1,405 source files; 7,512 KB.

## What's in each contract directory

```
NN_<role>_<type>/
├── metadata.json     ← address, chain_id, compiler, optimization, license, proxy/impl
└── <preserved source tree from Etherscan standard-json-input>
   ├── @gearbox-protocol/.../ ← npm-style import paths preserved
   ├── @openzeppelin/contracts/...
   ├── @chainlink/contracts/...
   └── contracts/.../<ContractName>.sol
```

Where multi-file standard-json-input was used by the verifier, the directory tree from the JSON input is preserved 1-to-1. Where the contract was verified as a flattened single file, the source is stored as `<ContractName>.sol` directly under the slug directory.

## Inventory by architecture layer

### Pools (3 PoolV3 + 3 PoolQuotaKeeperV3 + 3 LinearInterestRateModelV3 = 9 contracts)

| Slug | Address | Chain | Underlying | TVL (USD) |
|---|---|---|---|---:|
| `01_PoolV3_main_a` | [`0xda0000…bF8E`](https://etherscan.io/address/0xda00000035fef4082F78dEF6A8903bee419FbF8E) | 1 | USDC | $979,748 |
| `02_PoolV3_main_b` | [`0xda0001…757d`](https://etherscan.io/address/0xda00010eDA646913F273E10E7A5d1F659242757d) | 1 | WBTC | $633,946 |
| `03_PoolV3_main_c` | [`0xda0002…6F4f`](https://etherscan.io/address/0xda0002859B2d05F66a753d8241fCDE8623f26F4f) | 1 | WETH | $2,293,377 |
| `04_PoolQuotaKeeperV3_a..c` | (3 instances) | 1 | one per pool | n/a |
| `07_LinearInterestRateModelV3_a..c` | (3 instances) | 1 | one per pool | n/a |

### Credit engine (9 CreditManagerV3 + 9 CreditFacadeV3 + 1 sample CreditConfiguratorV3 = 19 contracts)

| Slug | Address | Chain | Notes |
|---|---|---|---|
| `10_CreditManagerV3_01..09` | (9 instances, e.g. [`0x3EB954…3556`](https://etherscan.io/address/0x3EB95430FdB99439A86d3c6D7D01C3c561393556)) | 1 | Per-market credit manager |
| `19_CreditFacadeV3_01..09` | (9 instances, e.g. [`0x958cBC…2c0C`](https://etherscan.io/address/0x958cBC4AEA076640b5D9019c61e7F78F4F682c0C)) | 1 | Per-market user-facing entry |
| `28_CreditConfiguratorV3_sample` | [`0x7504B2…a6C2`](https://etherscan.io/address/0x7504B2119710C23818A31a0B5dDA04d84A3DA6C2) | 1 | Sample of 9 instances; configurator code is parameterized clone |

### Core / governance (8 contracts)

| Slug | Address | Chain |
|---|---|---|
| `29_AddressProviderV3_ethereum` | [`0x9ea7b0…321D`](https://etherscan.io/address/0x9ea7b04Da02a5373317D745c1571c84aaD03321D) | 1 |
| `30_BotListV3` | [`0x6B2418…053a`](https://etherscan.io/address/0x6B24183313074ABb6E3B30Ea206F20c12205053a) | 1 |
| `31_ControllerTimelockV3` | [`0xD8CeB2…3347`](https://etherscan.io/address/0xD8CeB2580F22E13D17031740af2e91e9e7A13347) | 1 |
| `32_GearStakingV3` | [`0x2fcbD0…9c33`](https://etherscan.io/address/0x2fcbD02d5B1D52FC78d4c02890D7f4f47a459c33) | 1 |
| `33_PriceOracleV3` | [`0x599f58…fb85`](https://etherscan.io/address/0x599f585D1042A14aAb194AC8031b2048dEFdFB85) | 1 |
| `34_Governor` | [`0x29B97F…f2c7`](https://etherscan.io/address/0x29B97F37B3E0C704bCFD785F5b7bBa2A0B7df2c7) | 1 |
| `35_Create2Factory` | [`0x45d146…c873`](https://etherscan.io/address/0x45d146CAA25aa565Cfc7434926633f4F1C97c873) | 1 |
| `36_GaugeV3_sample` | [`0xFFD0C7…B217`](https://etherscan.io/address/0xFFD0C7474B074F8469a627a2d062D106ABc3B217) | 1 |

### Multi-chain registry roots (3 contracts — AddressProviderV3 on each non-Ethereum V3 chain)

| Slug | Address | Chain | Explorer |
|---|---|---|---|
| `37_AddressProviderV3_optimism` | [`0x3761ca…6726`](https://optimistic.etherscan.io/address/0x3761ca4bfacfcffc1b8034e69f19116dd6756726) | 10 | optimistic.etherscan.io |
| `38_AddressProviderV3_arbitrum` | [`0x7d04ec…f2af`](https://arbiscan.io/address/0x7d04ecdb892ae074f03b5d0aba03796f90f3f2af) | 42161 | arbiscan.io |
| `39_AddressProviderV3_sonic` | [`0x4b27b2…c41b`](https://sonicscan.org/address/0x4b27b296273b72d7c7bfee1ace93dc081467c41b) | 146 | sonicscan.org |

### Adapter samples (6 contracts — one representative per major type, plus a UniswapV2 second sample)

| Slug | Address | Type | Instances in v3-scope.md |
|---|---|---|---:|
| `40_UniswapV3Adapter_sample` | [`0xea8199…D257`](https://etherscan.io/address/0xea8199179D6A589A0C2Df225095C1DB39A12D257) | Uniswap V3 | 9 |
| `41_CurveV1Adapter3Assets_sample` | [`0xf4E52a…6d75`](https://etherscan.io/address/0xf4E52a80B8C48810822d1FA20716e528d38A6d75) | Curve (3-asset) | 11 |
| `42_CurveV1AdapterStETH_sample` | [`0x316Bd4…A5DA`](https://etherscan.io/address/0x316Bd4d614681525ceBdb4EE54B7cE140127A5DA) | Curve (stETH) | 3 |
| `43_ERC4626Adapter_sample` | [`0xcA2Bbf…3231`](https://etherscan.io/address/0xcA2Bbf4cE5E7b56bBc1e7b711856f7f38Dc23231) | Generic ERC4626 | 2 |
| `44_YearnV2Adapter_sample` | [`0x765Bac…392a`](https://etherscan.io/address/0x765Bac2c89dF16f24d4397FEA752905611f4392a) | Yearn V2 | 6 |
| `45_UniswapV2Adapter_sample` | [`0x2C2a0a…F24f`](https://etherscan.io/address/0x2C2a0a6E9bF743388831662Df136D4Af63FdF24f) | Uniswap V2 | 21 |

The remaining 55 adapter / 12 zapper instances share bytecode with their type's sample. Bytecode equivalence is verifiable via Etherscan's "Compare contract code" feature on any pair.

### Oracle samples (3 contracts — one per major type)

| Slug | Address | Type | Instances in v3-scope.md |
|---|---|---|---:|
| `46_CompositePriceFeed_sample` | [`0xE72aFa…91ED`](https://etherscan.io/address/0xE72aFa8bA8845Bda2eDf13556C03A1B976bc91ED) | Composite | 3 |
| `47_CurveCryptoLPPriceFeed_sample` | [`0xAA5cBD…4Bab`](https://etherscan.io/address/0xAA5cBD81aC90c31Ad3E8A6532969D9e7825E4Bab) | Curve crypto LP | 3 |
| `48_RedstonePriceFeed_sample` | [`0xB7552e…9AAa`](https://etherscan.io/address/0xB7552ef2A3Db35be75fe1C83BCB99edd2C8A9AAa) | Redstone | 13 |

### Legacy V1/V2 ("Older contracts" in v3-scope.md, 8 contracts)

| Slug | Address | Era | Compiler |
|---|---|---|---|
| `49_ACL` | [`0x523dA3…6bb3`](https://etherscan.io/address/0x523dA3a8961E4dD4f6206DBf7E6c749f51796bb3) | V1 (2021) | v0.7.6 |
| `50_AccountFactory_v1v2` | [`0x444CD4…9C04`](https://etherscan.io/address/0x444CD42BaEdDEB707eeD823f7177b9ABcC779C04) | V1 (2021) | v0.7.6 |
| `51_ContractsRegister` | [`0xA50d4E…4D99`](https://etherscan.io/address/0xA50d4E7D8946a7c90652339CDBd262c375d54D99) | V1 (2021) | v0.7.6 |
| `52_CurveV1StETHPoolGateway` | [`0xEf0D72…15b1`](https://etherscan.io/address/0xEf0D72C594b28252BF7Ea2bfbF098792430815b1) | V2 (2022) | v0.8.10 |
| `53_DegenNFT` | [`0xB829a5…E599`](https://etherscan.io/address/0xB829a5b349b01fc71aFE46E50dD6Ec0222A6E599) | V2 (2022) | v0.8.10 |
| `54_GearToken` | [`0xBa3335…9Ab5D`](https://etherscan.io/address/0xBa3335588D9403515223F109EdC4eB7269a9Ab5D) | V1 (2021) | v0.7.6 |
| `55_LidoV1Gateway` | [`0x6f4b4a…C29D`](https://etherscan.io/address/0x6f4b4aB5142787c05b7aB9A9692A0f46b997C29D) | V2 (2022) | v0.8.10 |
| `56_Timelock_legacy` | [`0xa133C9…f23b`](https://etherscan.io/address/0xa133C9A92Fb8dDB962Af1cbae58b2723A0bdf23b) | V2 (2023-06) | v0.5.16 |

GearToken (the GEAR governance token) is included for completeness; the bug bounty applies to it as a legacy contract per v3-scope.md.

## What's NOT in this directory

Several categories of Gearbox-related contracts are intentionally excluded:

- **Non-priority adapter / zapper instances** (61 of 67 V3 adapters/zappers). These share bytecode with the included samples; verification on Etherscan is sufficient evidence. Manifest entries reference their addresses.
- **Non-priority oracle instances** (23 of 26 V3 oracles). Same reasoning — bytecode-equivalent to one of the three sample types.
- **CreditConfiguratorV3 instances 2–9** (8 of 9). Bytecode-equivalent to the included sample. The 9th instance was deployed slightly later but has the same source code.
- **CreditAccountV3 user instances** (factory-deployed clones, count is dynamic per active borrower). Bytecode is from a single template baked into AccountFactoryV3.
- **V2 legacy contracts** (253 contracts in v2-scope.md). Severity-reduced bounty; not retargeted in this gold standard. Summary inventory in `manifest_gold_standard.json` `v2_legacy_contract_summary[]`.
- **V3.1 permissionless deployments** (dynamic via Bytecode Repository Portal). Discoverable at runtime via the V3.1 [AddressProvider](https://etherscan.io/address/0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38) registry. Their source is in [github.com/Gearbox-protocol/permissionless](https://github.com/Gearbox-protocol/permissionless), which is the canonical reference per v3_1-scope.md.
- **V3.1 AddressProvider source** (the V3.1 registry root at `0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38`). This was source-verified via Etherscan v2 (`AddressProvider`, compiler v0.8.23) but is not fetched here because its source is in the [permissionless repo](https://github.com/Gearbox-protocol/permissionless), not in `core-v3`/`integrations-v3` and not part of the v3-scope.md inventory.
- **Multi-chain non-AddressProviderV3 contracts** on Optimism, Arbitrum, Sonic. Discoverable via each chain's APV3 registry; not enumerated here because per-chain TVL is small ($98K aggregate) and Etherscan v2's free-tier RPC proxy does not support `eth_call` on these chains.
- **External adapter target contracts** (Uniswap V3 router, Curve pools, Lido stETH, Yearn vaults, etc.). These belong to their respective foreign protocols and are not in Gearbox's audit scope.

## Fetch methodology

Each contract directory was populated by a single Etherscan v2 `getsourcecode` request. The script:

1. Reads `ETHERSCAN_API_KEY` from environment.
2. Iterates the contract list with a 250 ms sleep between requests (~3 calls/sec, well under 5/sec free-tier cap).
3. Parses the `SourceCode` field, which is one of three formats:
   - **Multi-file standard JSON input**: wrapped in `{{...}}` with a `sources` map. Each file's relative path is preserved.
   - **Plain JSON object**: `{ "Filename.sol": { "content": "..." } }`. Treated as multi-file.
   - **Single-file**: written as `<ContractName>.sol`.
4. Writes the per-contract `metadata.json` with `address`, `chain_id`, `etherscan_contract_name`, `compiler_version`, `optimization_used`, `runs`, `license_type`, `evm_version`, `proxy`, `implementation`.
5. Records a per-contract entry in the consolidated [`_fetch_summary.json`](_fetch_summary.json) at this directory root.

All 56 fetches returned `status: "1"` with non-empty source. Notable findings:

- **All V3 contracts have `proxy=0`** — Gearbox does not use upgradeable proxy patterns. New versions are fresh deployments (see brief "Architecture Overview" → "Versioning model").
- **All V3 contracts compile with Solidity v0.8.17** (`v0.8.17+commit.8df45f5f`).
- **Legacy V1/V2 contracts compile with v0.7.6 (V1 era), v0.8.10 (V2 LM era), or v0.5.16 (legacy timelock)**, reflecting Gearbox's compiler-pin discipline per era.
- **AddressProviderV3 has identical bytecode across Ethereum, Optimism, Arbitrum, and Sonic** (subjective verification — all four show the same `AddressProviderV3` ContractName and v0.8.17 compiler; full bytecode equivalence is not established here but inferred from same compiler+source per v3-scope.md).

## Cross-references

- [Brief](../brief_gold_standard.md) — narrative summary
- [Manifest](../manifest_gold_standard.json) — machine-readable inventory of 151 contracts + 30 audits + 40 V2 summary entries
- [Verification ledger](../../../docs/gold-standard/gearbox_verification_ledger.md) — internal evidence trail
- [v1 diff analysis](../../../docs/gold-standard/gearbox_v1_diff_analysis.md) — pipeline defect attribution
- [Fetcher script](../../../docs/gold-standard/fetch_gearbox_sources.py) — Python source for `getsourcecode` calls
- [v1 brief](../SCOPE_NOTE.md) — pipeline output (untouched)
