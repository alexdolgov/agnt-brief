# Peapods Finance — Verified Contract Source Inventory (Gold Standard)

This directory contains verified Solidity source for **26 priority Peapods contracts**, fetched directly from Etherscan v2 (Ethereum, Arbitrum, Base) using the unified API endpoint `https://api.etherscan.io/v2/api`. The fetch script is at [`docs/gold-standard/fetch_peapods_sources.py`](../../../docs/gold-standard/fetch_peapods_sources.py); the consolidated fetch summary is in [`_fetch_summary.json`](_fetch_summary.json).

**Inventory scope.** This is a *priority subset*, not an exhaustive enumeration. The full Peapods footprint is **153 deployed Pods** across 6 chains (enumerated via `IndexManager.allIndexes()` and recorded in [`../manifest_gold_standard.json`](../manifest_gold_standard.json) `contracts[]` with `architecture_layer="pod_instance"`) plus **127 protocol-deployed contracts on Ethereum alone** (from the team deployer `0x21fe3e26…e37`). This directory captures the **implementation set** — every Pod, StakingPoolToken, AutoCompoundingPodLp, and FraxlendPair is a clone of one of these implementations, so auditing the impl is auditing every instance. The priority covers: the PEAS token, both Pod factories (V2 + V3), the LeverageManager (on every Etherscan-v2-supported chain), the LVF orchestrator stack, the lending stack (LendingAssetVault + FraxlendPair + interest model + deployer), sample oracles, sample flash sources, and the helper utilities.

**Inventory totals.** 26 contracts; 473 source files; 2,024 KB (2.02 MB).

## What's in each contract directory

```
NN_<role>_<type>/
├── metadata.json     ← address, chain_id, compiler, optimization, license, proxy/impl
└── <preserved source tree from Etherscan standard-json-input>
   ├── @openzeppelin/contracts/...
   ├── @uniswap/...
   ├── contracts/.../<ContractName>.sol
   └── ...
```

Where multi-file standard-json-input was used by the verifier, the directory tree from the JSON input is preserved 1-to-1. Where the contract was verified as a flattened single file, the source is stored as `<ContractName>.sol` directly under the slug directory.

## Inventory by architecture layer

### Core protocol (Ethereum) — 4 contracts

| Slug | Address | Chain | Compiler | Files | KB |
|---|---|---|---|---:|---:|
| `01_PEAS_token` | [`0x02f928…f875`](https://etherscan.io/address/0x02f92800F57BCD74066F5709F1Daa1A4302Df875) | 1 | 0.7.6 | 6 | 21.8 |
| `02_IndexManagerV2_legacy` | [`0x0Bb39ba…AE6B`](https://etherscan.io/address/0x0Bb39ba2eE60f825348676f9a87B7CD1e3B4AE6B) | 1 | 0.7.6 | 4 | 5.3 |
| `03_IndexManagerV3_ethereum` | [`0x6eFFcF…666E`](https://etherscan.io/address/0x6eFFcF94993d6a6081204fc3C30473468Eb7666E) | 1 | 0.8.28 | 8 | 19.4 |
| `04_LeverageManager_ethereum_impl` | [`0x4e1086…403c`](https://etherscan.io/address/0x4e1086aae93f24404c695db4ae06c9bc43ee403c) | 1 | 0.8.28 | 29 | 126.4 |

PEAS deployed 2023-12-12 (Solidity 0.7.6, pre-LVF). The legacy V2 IndexManager was deployed 4 days earlier on 2023-12-08 from the same compiler version. The V3 IndexManager + LeverageManager impl jumped to Solidity 0.8.28 (1.5-year gap between V2 and V3). The Etherscan-listed LeverageManager address `0x4e6EF3…2D0B` is a transparent proxy backed by an UpgradeableBeacon at `0x8c38378f…f90e`; this directory captures the actual implementation behind the beacon.

### Multi-chain registry roots — 4 contracts

| Slug | Address | Chain | Files | KB |
|---|---|---|---|---:|---:|
| `05_IndexManagerV3_arbitrum` | [`0x64511c…4FD8`](https://arbiscan.io/address/0x64511ccE99ab01A6dD136207450eA81263b14FD8) | 42161 | 8 | 19.4 |
| `06_LeverageManager_arbitrum_impl` | [`0xe89c47…3ac46`](https://arbiscan.io/address/0xe89c470751e45966d2e156f03adc007991a3ac46) | 42161 | 29 | 126.4 |
| `07_IndexManagerV3_base` | [`0x556059…ec30`](https://basescan.org/address/0x556059e80CB0073D4A9547081Cf0f80cBB94ec30) | 8453 | 8 | 19.4 |
| `08_LeverageManager_base_impl` | [`0x62eadf…f2a`](https://basescan.org/address/0x62eadf4c53f81f334a898ca307d65b402db05f2a) | 8453 | 29 | 126.4 |

Arbitrum and Base each carry the same V3 IndexManager source (19.4 KB / 8 files) and LeverageManager impl source (126.4 KB / 29 files) as Ethereum — confirmation of cross-chain bytecode equivalence at the source level. Sonic (chain_id 146) and Berachain (chain_id 80094) host the same implementations but Etherscan v2 free tier does not cover those chains, so they are not in this directory.

### Pod layer (Ethereum samples) — 3 contracts

| Slug | Address | Chain | Era | Files | KB |
|---|---|---|---|---:|---:|
| `09_WeightedIndex_v2_verified_sample` | [`0x515e7f…a49b`](https://etherscan.io/address/0x515e7fd1c29263dff8d987f15fa00c12cd10a49b) | 1 | V2 team-verified | 27 | 73.9 |
| `10_WeightedIndex_v3_impl` | [`0x50d2ac…491a`](https://etherscan.io/address/0x50d2acb0d9ee43c39dcf7cf694e94a0f9187491a) | 1 | V3 impl | 39 | 210.9 |
| `11_IndexUtils` | [`0x2bcca7…054c`](https://etherscan.io/address/0x2bcca7ea2c7eca696ace6d71c9719fb171a1054c) | 1 | helper | 30 | 82.9 |

V2 and V3 WeightedIndex implementations are compiled separately (0.7.6 vs 0.8.28). The V3 source is larger (210 KB vs 74 KB) because it integrates with the LVF stack — LeverageManager hooks, AutoCompoundingPodLp wiring, advanced fee accounting, transfer-tax handling. All 26 V3 pods on Ethereum (and the 38 + 10 + 12 + 1 on Base + Arbitrum + Sonic + Berachain respectively) are clones of `10_WeightedIndex_v3_impl`'s bytecode.

### Pod ecosystem helpers — 2 contracts

| Slug | Address | Chain | Files | KB |
|---|---|---|---|---:|---:|
| `12_AutoCompoundingPodLpFactory` | [`0x58a5b1…b4f5`](https://etherscan.io/address/0x58a5b165697126acd3f3ef07133109495a5fb4f5) | 1 | 38 | 208.6 |
| `13_TokenRewards` | [`0x0a7734…18cc`](https://etherscan.io/address/0x0a7734281725f534f83d1bc9d91c40b1e80618cc) | 1 | 21 | 57.4 |

The AutoCompoundingPodLpFactory pulls in the full ERC-4626 vault + StakingPoolToken integration interfaces (208 KB / 38 files — second-largest payload after the LeverageManager impl).

### LVF orchestrator — 2 contracts

| Slug | Address | Chain | Files | KB |
|---|---|---|---|---:|---:|
| `14_LeverageFactory` | [`0x43b9d9…39d3`](https://etherscan.io/address/0x43b9d9b0585e5e8a1e069195170adfd0461939d3) | 1 | 18 | 53.3 |
| `15_LeverageFeeProcessor` | [`0xff673a…ae2b`](https://etherscan.io/address/0xff673afd42f850fcf2f6883bc2a4d7d34fc8ae2b) | 1 | 10 | 26.0 |

LeverageFactory orchestrates per-Pod LVF wiring (deploys FraxlendPair instance, registers LeveragePositions NFT, sets up LeveragePositionCustodian). LeverageFeeProcessor routes the open/close LVF fees to the protocol treasury.

### Lending — FraxLend fork — 4 contracts

| Slug | Address | Chain | Files | KB |
|---|---|---|---|---:|---:|
| `16_LendingAssetVaultFactory` | [`0xbab29f…12c6`](https://etherscan.io/address/0xbab29f09f595bf2c8d4142ee544e1bc1db7912c6) | 1 | 31 | 194.3 |
| `17_FraxlendPairDeployer` | [`0x7769ee…84ec`](https://etherscan.io/address/0x7769ee42787edbd1c189e07a279e11e2196e84ec) | 1 | 17 | 91.9 |
| `18_FraxlendPair_sample` | [`0x0aa984…2980`](https://etherscan.io/address/0x0aa98472e41532546d05232163280495c1b32980) | 1 | 26 | 212.4 |
| `19_VariableInterestRate` | [`0x823e88…ded0`](https://etherscan.io/address/0x823e88f1607f6ffe7b39e06bd4519563e3dfded0) | 1 | 5 | 26.3 |

The Peapods Fraxlend fork compiles with **Solidity 0.8.29** (vs 0.8.28 for the rest of V3) — a minor-version split. FraxlendPair instances are factory-deployed clones (~15 on Ethereum); `18_FraxlendPair_sample` is one of them. The interest model `VariableInterestRate` is shared across all pairs.

### Oracles — 3 contracts

| Slug | Address | Chain | Files | KB |
|---|---|---|---|---:|---:|
| `20_aspTKNMinimalOracleFactory` | [`0x40b7b0…75e2`](https://etherscan.io/address/0x40b7b0efed725118f36a2e6c061d2b836bd275e2) | 1 | 19 | 50.5 |
| `21_UniswapV3SinglePriceOracle` | [`0xc3be78…8115`](https://etherscan.io/address/0xc3be7832734843410dcf1316b03d948f3d998115) | 1 | 13 | 35.0 |
| `22_DIAMultiFeedConverter` | [`0x8b55d5…aa18`](https://etherscan.io/address/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18) | 1 | 5 | 5.0 |

Per-Pod aspTKN oracle is deployed by `20_aspTKNMinimalOracleFactory`. Single-price-feed adapters wrap external sources: UniV3 TWAP via `21_UniswapV3SinglePriceOracle`, DIA Oracle V2 via `22_DIAMultiFeedConverter`. Other adapters not fetched here (Chainlink, Camelot V3, HydrexV3) follow the same interface.

### Flash sources + utility — 4 contracts

| Slug | Address | Chain | Files | KB |
|---|---|---|---|---:|---:|
| `23_BalancerFlashSource` | [`0xf514d3…b49eac`](https://etherscan.io/address/0xf514d35a0d82a54ad4e2e3a083c5381a39b49eac) | 1 | 11 | 21.8 |
| `24_PodFlashMintSource` | [`0x4c86a6…4350`](https://etherscan.io/address/0x4c86a67d0f29d6f23bcc9bd5bf4c917f87344350) | 1 | 13 | 28.9 |
| `25_PodVaultUtility` | [`0xebebc4…9910`](https://etherscan.io/address/0xebebc4ce9ff6520b793f4f96aff28d9f4d159910) | 1 | 12 | 46.0 |
| `26_StakingVault_latest` | [`0xdab17556…ecc`](https://etherscan.io/address/0xdab17556ae10062f5939e56d44063c12eb7b1ecc) | 1 | 17 | 134.8 |

The Sherlock contest scope included `BalancerFlashSource`, `FlashSourceBase`, `PodFlashSource`, and `UniswapV3FlashSource`. `PodFlashMintSource` (24) is one of the 8 flash sources added **post-Sherlock** and merits per-source review. `StakingVault_latest` is the most recent protocol contract deployed by the team (2025-12-09), introduced after the Sherlock contest's final report.

## Summary by compiler

| Solidity version | Contracts | Use |
|---|---:|---|
| 0.7.6+commit.7338295f | 3 | Legacy V2 era — PEAS, IndexManagerV2, V2 WeightedIndex |
| 0.8.28+commit.7893614a | 22 | V3 / LVF era — everything except Fraxlend fork |
| 0.8.29+commit.ab55807c | 2 | FraxLend fork — FraxlendPairDeployer + FraxlendPair |

The 0.7.6 → 0.8.28 jump corresponds to the V2 → V3 (LVF) launch in Jan-Feb 2025. The 0.8.29 sub-version on FraxLend reflects the upstream Frax fork being compiled with a slightly newer toolchain than the rest of V3.

## What's *not* in this directory

- **153 user-deployed Pod instances.** Enumerated in [`../manifest_gold_standard.json`](../manifest_gold_standard.json) under `contracts[]` with `architecture_layer="pod_instance"`. They are bytecode-equivalent to the WeightedIndex implementation (`10_WeightedIndex_v3_impl` for V3, `09_WeightedIndex_v2_verified_sample` for V2) so source verification is by-construction.
- **Per-Pod satellite contracts.** Every Pod has 3–5 satellites (StakingPoolToken, AutoCompoundingPodLp, FraxlendPair, aspTKNMinimalOracle, TokenRewards instance). With 153 Pods × ~4 satellites = ~600 additional addresses. Each is a clone of one of the audited implementations in this directory; per-instance source verification would mostly duplicate the impl-level review.
- **Sonic / Berachain / Mode deployments.** Etherscan v2 free tier does not cover these chains; their source is on chain-native explorers ([sonicscan.org](https://sonicscan.org), [berascan.com](https://berascan.com), [modescan.io](https://modescan.io)). Bytecode equivalence with the Ethereum / Arbitrum / Base impls is presumed but not asserted here.
- **DEX adapters** (`AerodromeDexAdapter` for Base, `CamelotDexAdapter` for Arbitrum, `ShadowDexAdapter` for Sonic, `PancakeswapDexAdapter`, `UniswapDexAdapter`) — present in the repo at [`peapodsfinance/contracts/contracts/dex/`](https://github.com/peapodsfinance/contracts/tree/main/contracts/dex) but the deployed instances are not separately fetched here.
- **TWAP utility contracts** (`V3TwapAerodromeUtilities`, `V3TwapCamelotUtilities`, `V3TwapKimUtilities`, etc.) — 7 chain-specific utilities; appear post-Sherlock; not enumerated.
- **Voting contracts** (`VotingPool`, `ConversionFactorPTKN`, `ConversionFactorSPTKN`) — present in repo but deployed addresses not yet pinned.
- **PodUnwrapLocker** — Sherlock H-1 finding target. The post-fix version may exist at a different address than the contest commit; the deployed address could not be reliably resolved at fetch time.
- **CCIP contracts** (`TokenBridge.sol`, `TokenRouter.sol`) — present in repo but never audited; deployed addresses not yet pinned.

## How to re-run

```bash
cd /Users/alexdolgov/Meat-audit/meta-audit
export ETHERSCAN_API_KEY=...
python3 docs/gold-standard/fetch_peapods_sources.py
```

The script reads `$ETHERSCAN_API_KEY` from the environment (does not log the value), walks the 26-contract priority list, and writes `metadata.json` + extracted source tree under each `NN_<slug>/` directory. The `_fetch_summary.json` file at this directory's root records per-contract file/byte counts.
