# King Protocol — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for the canonical King Protocol (formerly LRT²) contracts across Ethereum, Mantle, Base, and Arbitrum, fetched directly from Etherscan v2's `getsourcecode` API.

**Inventory:** 20 contracts · 469 source files · ~2.0 MB total. Fetched 2026-05-19.

**Coverage by chain:**

| Chain | Chain ID | Etherscan v2 status | Contracts fetched |
|---|---:|---|---:|
| Ethereum | 1 | supported | 10 (8 core + 2 cross-chain L1) |
| Mantle | 5000 | supported | 3 (KingOFTL2 + 1 unidentified) |
| Base | 8453 | supported | 4 (KingOFTL2 + 2 external DEX pools) |
| Arbitrum | 42161 | supported | 3 (KingOFTL2 + 1 Ramses pool) |
| Swell | 1923 | **NOT supported** | 0 (Swell KingOFTL2 documented but not fetched) |
| **Total** | — | — | **20** |

## Per-contract layout

### Ethereum — Main Protocol (8 contracts from `king-protocol-sc/deployments/1/deployments.json`)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `01_eth_LRTSquared_proxy/` | UUPSProxy (LRTSquared main vault) | 0.8.x | [`0x8F08B7…6040`](https://etherscan.io/address/0x8F08B70456eb22f6109F57b8fafE862ED28E6040) |
| `02_eth_LRTSquared_impl/` | LRTSquaredCore | 0.8.25 | [`0x1cB489…57dE`](https://etherscan.io/address/0x1cB489ef513E1Cc35C4657c91853A2E6fF1957dE) |
| `03_eth_PriceProvider_proxy/` | UUPSProxy (PriceProvider) | 0.8.x | [`0x2B9010…19E3`](https://etherscan.io/address/0x2B90103cdc9Bba6c0dBCAaF961F0B5b1920F19E3) |
| `04_eth_PriceProvider_impl/` | PriceProvider | 0.8.25 | [`0x28A6e7…F32f`](https://etherscan.io/address/0x28A6e7EBB6Aca8f64145952a9565245c3DC1F32f) |
| `05_eth_Swapper1InchV6/` | Swapper1InchV6 | 0.8.25 | [`0x747Cac…232E`](https://etherscan.io/address/0x747Cac75776b3A0Bba3dE3E61ec12A6A7F52232E) |
| `06_eth_SEthFiStrategy/` | SEthFiStrategy | 0.8.25 | [`0x76C57e…05aD8`](https://etherscan.io/address/0x76C57e359C0eDA0aac54d97832fb1b4451805aD8) |
| `07_eth_EEigenStrategy/` | EEigenStrategy | 0.8.25 | [`0x2F2342…Cf3e`](https://etherscan.io/address/0x2F2342BD9fca72887f46De9522014f4cd154Cf3e) |
| `08_eth_BoringVaultPriceProvider/` | BoringVaultPriceProvider | 0.8.25 | [`0x130e22…0729`](https://etherscan.io/address/0x130e22952DD3DE2c80EBdFC2B256E344ff3A0729) |

### Ethereum — Cross-Chain L1 (2 contracts from `king-cross-chain/deployments/mainnet`)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `09_eth_KingOFTL1_proxy/` | UUPS (KingOFTL1 proxy) | 0.8.22 | [`0x4c8A45…707d`](https://etherscan.io/address/0x4c8A4521F2431b0aC003829ac4e6dBC4Ed97707d) |
| `10_eth_KingOFTL1_impl/` | KingOFTL1 | 0.8.22 | [`0xacCEC8…9d9D`](https://etherscan.io/address/0xacCEC895650eB692cAaC4dBfD7ee7b3Ee4fb9d9D) |

### Mantle (chain 5000) — KingOFTL2 mirror + unidentified

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `20_mantle_KingOFTL2_proxy/` | ERC1967Proxy (Mantle outlier — OZ standard) | 0.8.22 | [`0x548c41…98ed`](https://mantlescan.xyz/address/0x548c4116a97e0138f78000088ea3f155717b98ed) |
| `21_mantle_KingOFTL2_impl/` | KingOFTL2 | 0.8.22 | [`0x5a57eb…7ab0`](https://mantlescan.xyz/address/0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0) |
| `22_mantle_unknown_0xe63ba6/` | (unverified) | — | [`0xe63ba6…e318`](https://mantlescan.xyz/address/0xe63ba626494f88d5a269b435213f2e8803cce318) |

### Base (chain 8453) — KingOFTL2 mirror + external DEX pools

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `30_base_KingOFTL2_proxy/` | UUPS (KingOFTL2 proxy) | 0.8.22 | [`0xe22c24…bac0`](https://basescan.org/address/0xe22c243c7559c667a1eb94b593369d192c5fbac0) |
| `31_base_KingOFTL2_impl/` | KingOFTL2 | 0.8.22 | [`0x4d6a22…beab`](https://basescan.org/address/0x4d6a22986acca58aa890fbb233f3b4563251beab) |
| `32_base_CurveTwocryptoOptimized/` | CurveTwocryptoOptimized (**NOT King — Curve V2 pool**) | Vyper | [`0x3253c8…0886`](https://basescan.org/address/0x3253c8105e8e70ae6abaf2fd21c703d8729e0886) |
| `33_base_Pool_0xdc5f7c/` | Pool (**NOT King — external DEX pool**) | varies | [`0xdc5f7c…15ac`](https://basescan.org/address/0xdc5f7c7916c7792603fdc17f05f7929b423015ac) |

### Arbitrum (chain 42161) — KingOFTL2 mirror + external Ramses pool

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `40_arb_KingOFTL2_proxy/` | UUPS (KingOFTL2 proxy) | 0.8.22 | [`0x2e4124…e275`](https://arbiscan.io/address/0x2e412435928efe43b156caa8f4b1068729fee275) |
| `41_arb_KingOFTL2_impl/` | KingOFTL2 | 0.8.22 | [`0xb57d20…127f`](https://arbiscan.io/address/0xb57d208661adfa911a40ee5a0de6ee0f056d127f) |
| `42_arb_RamsesBeaconProxy/` | RamsesBeaconProxy (**NOT King — Ramses CL pool**) | 0.8.x | [`0x93e6e5…c942`](https://arbiscan.io/address/0x93e6e571d04848de3ba31525fca36f1e4f7bc942) |

### Swell (chain 1923) — out of EVM scope for Etherscan v2

| Slug | Etherscan name | Address |
|---|---|---|
| (not fetched) | Swell KingOFTL2 UUPS proxy | `0xc2606AADe4bdd978a4fa5a6edb3b66657acEe6F8` |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, doc role label, Etherscan-reported contract name, compiler version, optimization, license, proxy flag, implementation pointer.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan.

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract.

## How these were fetched

```python
# /tmp/fetch_king_sources.py
# 1. Read canonical addresses from:
#    - github.com/King-Protocol/king-protocol-sc/deployments/1/deployments.json (Eth main)
#    - github.com/King-Protocol/king-cross-chain/deployments/{mainnet,swell} (cross-chain)
#    - v1 brief manifest (Mantle/Base/Arbitrum)
# 2. GET https://api.etherscan.io/v2/api?chainid={1,5000,8453,42161}&module=contract&action=getsourcecode&address={addr}
```

All 20 fetches ran. 19 returned verified source; 1 (`22_mantle_unknown_0xe63ba6`) returned empty source — kept for inventory completeness as the v1 brief's "unknown" address.

## Notable observations

- **Open-source protocol code** across 4 Solidity repos under `King-Protocol` org. Etherscan verification confirms each contract's source matches.
- **Two compiler versions**: LRT² core uses **0.8.25** (newer, Cancun-era); cross-chain OFT uses **0.8.22** (older, Shanghai-era). The two repos have different vintages — core launched Oct-2024, cross-chain launched Feb-2025 but with older Solidity.
- **Two distinct proxy variants**: core protocol uses custom-named "UUPSProxy"; cross-chain uses custom-named "UUPS". Both are OZ ERC1967 underneath but with different naming. **Mantle is the outlier** — uses standard OZ "ERC1967Proxy" instead of the custom "UUPS" name.
- **Per-asset strategies**: SEthFiStrategy (`0x76C57e…`) and EEigenStrategy (`0x2F2342…`) are separate contracts for each restaking-reward asset. The Strategies audit (NM_0390) is marked DRAFT.
- **Predecessor org**: King Protocol was previously LRT² built by EtherFi. The predecessor github org `LRT2-protocol/lrt-square-sc` exists and is the source of the older audit PDFs preserved in the new repo's `audits/` dir.
- **External DEX pools mis-attributed by v1 brief**: Uniswap V3 pool (Eth), Curve V2 TwocryptoOptimized (Base), generic "Pool" (Base), Ramses BeaconProxy (Arb) are all 3rd-party DEX contracts King uses as liquidity venues but doesn't own.

## How to use this inventory

- **For LRT² core audit:** start with `01-02_eth_LRTSquared_*/` (proxy + impl). NM_0314 audit covers the Nov-2024 version; diff against any post-audit changes.
- **For Strategies audit gap:** `06_eth_SEthFiStrategy/` + `07_eth_EEigenStrategy/`. The DRAFT NM_0390 audit covers these; operator should confirm if FINAL exists.
- **For cross-chain audit:** `09-10_eth_KingOFTL1_*/` + `20-21_mantle_KingOFTL2_*/` + `30-31_base_KingOFTL2_*/` + `40-41_arb_KingOFTL2_*/`. NM_0452 FINAL covers all chains.
- **For Mantle proxy variant:** `20_mantle_KingOFTL2_proxy/` — note this is OZ ERC1967Proxy (standard) vs. UUPS (custom) elsewhere. Audit the binding/initialization.
- **For pending king-vaults Phase I audit:** track when Veda BoringVault + Concrete integrations publish their pre-launch audit.
- **For Swell deployment verification:** Swell chain not on Etherscan v2 — use Swell explorer directly.
