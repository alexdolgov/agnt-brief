# Asymmetry Finance — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every Asymmetry-attributable contract across the four product lines (safETH, afETH, afCVX, veASF/ASF, USDaf), fetched directly from Etherscan v2's `getsourcecode` API. Each contract sits in its own subdirectory with a `metadata.json` and the source files preserving the directory layout the auditor verified against.

**Inventory:** 44 contracts · 1,183 source files · ~8.5 MB total. Fetched 2026-05-16.

**Coverage by product:**

| Product | Contracts fetched | Notes |
|---|---:|---|
| safETH | 8 | 7 user-facing transparent proxies + ProxyAdmin (the OZ upgrades manifest lists 13 proxies total; only the 7 README-named ones are enumerated here) |
| afETH | 6 | 3 ERC1967 proxies + 3 implementations |
| afCVX | 4 | 2 SimpleProxy + 2 implementations |
| veASF + ASF | 2 | governance token + locker |
| USDaf Jan-2025 (dominant deployment) | 21 | 5 protocol + 15 branch (3 branches × 5: WETH/wstETH/rETH) + 1 governance |
| USDaf May-2025 (DL adapter v1) | 2 | CollateralRegistry + BoldToken |
| USDaf Jul-2025 (DL adapter v2) | 1 | CollateralRegistry only |
| **Total** | **44** | All on **Ethereum (chain 1)** only |

**Chains NOT in this inventory:** Asymmetry deploys exclusively on Ethereum mainnet. No L2 / sidechain footprint.

## Per-contract layout

### safETH (8 contracts)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `01_eth_safETH_main/` | SafEth (TransparentUpgradeableProxy) | 0.8.19 | [`0x6732…3e5`](https://etherscan.io/address/0x6732Efaf6f39926346BeF8b821a04B6361C4F3e5) |
| `02_eth_safETH_Reth/` | Reth (TUP) | 0.8.19 | [`0x7B66…cA3`](https://etherscan.io/address/0x7B6633c0cD81dC338688A528c0A3f346561F5cA3) |
| `03_eth_safETH_SfrxEth/` | SfrxEth (TUP) | 0.8.19 | [`0x36Ce…20A`](https://etherscan.io/address/0x36Ce17a5c81E74dC111547f5DFFbf40b8BF6B20A) |
| `04_eth_safETH_WstEth/` | WstEth (TUP) | 0.8.19 | [`0x972A…Fad`](https://etherscan.io/address/0x972A53e3A9114f61b98921Fb5B86C517e8F23Fad) |
| `05_eth_safETH_Swell/` | Swell (TUP, current) | 0.8.19 | [`0xFB87…1B1`](https://etherscan.io/address/0xFB8725366b3e3011Ff7445106f40fab97a8371B1) |
| `06_eth_safETH_StaFi/` | StaFi (TUP, current) | 0.8.19 | [`0xc9bb…2DA`](https://etherscan.io/address/0xc9bbccaf813B3329586A2479ff04F1FC794822DA) |
| `07_eth_safETH_Ankr/` | Ankr (TUP, current) | 0.8.19 | [`0xfA2D…82F`](https://etherscan.io/address/0xfA2D4c03b9b48918f37C926f2DD08dca70D7082F) |
| `08_eth_safETH_ProxyAdmin/` | ProxyAdmin (OZ) | 0.8.9 | [`0x2b40…09E`](https://etherscan.io/address/0x2b408df4B4e112276119bd6Ca1710b6C9966809E) |

### afETH (6 contracts)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `10_eth_afETH_proxy/` | SimpleProxy → AfEth | 0.8.20 | [`0x000000…7a11`](https://etherscan.io/address/0x0000000016E6Cb3038203c1129c8B4aEE7af7a11) |
| `11_eth_afETH_impl/` | AfEth | 0.8.20 | [`0x0A36…D6A`](https://etherscan.io/address/0x0A36224486D4E49dEB27b489233c6B64e0241D6A) |
| `12_eth_afETH_Votium_proxy/` | SimpleProxy → VotiumStrategy | 0.8.20 | [`0x000000…0BF`](https://etherscan.io/address/0x00000069aBbB0B1Ad6975bcF753eEe15D318A0BF) |
| `13_eth_afETH_Votium_impl/` | VotiumStrategy | 0.8.20 | [`0x01e111…2E4`](https://etherscan.io/address/0x01e111D815261c8ad6A1271861970E804E4282E4) |
| `14_eth_afETH_Relayer_proxy/` | SimpleProxy → AfEthRelayer | 0.8.20 | [`0x000000…7da`](https://etherscan.io/address/0x0000005aC28De2cbda005a8500A9578921FDB7da) |
| `15_eth_afETH_Relayer_impl/` | AfEthRelayer | 0.8.20 | [`0x47c212…b72`](https://etherscan.io/address/0x47c212ddebcad886d0e7b8482bd13f8a27eb0b72) |

### afCVX (4 contracts)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `20_eth_afCVX_proxy/` | SimpleProxy → AfCvx | 0.8.25 | [`0x8668a1…7Cf`](https://etherscan.io/address/0x8668a15b7b023Dc77B372a740FCb8939E15257Cf) |
| `21_eth_afCVX_impl/` | AfCvx | 0.8.25 | [`0x56664F…799`](https://etherscan.io/address/0x56664FFcCfF6BB282CcA96808AF03d9042e1f799) |
| `22_eth_afCVX_Clever_proxy/` | SimpleProxy → CleverCvxStrategy | 0.8.25 | [`0xB828a3…d2a`](https://etherscan.io/address/0xB828a33aF42ab2e8908DfA8C2470850db7e4Fd2a) |
| `23_eth_afCVX_Clever_impl/` | CleverCvxStrategy | 0.8.25 | [`0xD0F774…aB0`](https://etherscan.io/address/0xD0F77441B70c84aa3366a9F79F2fD16618739aB0) |

### Governance — ASF + veASF (2 contracts)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `25_eth_ASF_token/` | AsfToken | 0.8.20 | [`0x59a529…8Aa`](https://etherscan.io/address/0x59a529070fBb61e6D6c91f952CcB7f35c34Cf8Aa) |
| `26_eth_veASF_locker/` | TokenLocker | 0.8.20 | [`0xf119b5…034`](https://etherscan.io/address/0xf119b5aa93a7755b09952b3a88d04cdaf5329034) |

### USDaf May-2025 deployment (DL adapter v1 — 2 contracts; the only USDaf addresses in v1 brief)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `30_eth_usdafV1_CollateralRegistry/` | CollateralRegistry | 0.8.24 | [`0xCFf0Dc…791`](https://etherscan.io/address/0xCFf0DcAb01563e5324ef9D0AdB0677d9C167d791) |
| `32_eth_usdafV2_BoldToken/` | BoldToken | 0.8.24 | [`0x85e30b…79da`](https://etherscan.io/address/0x85e30b8b263bc64d94b827ed450f2edfee8579da) |

### USDaf Jul-2025 deployment (DL adapter v2 — 1 contract; branches not enumerated)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `31_eth_usdafV2_CollateralRegistry/` | CollateralRegistry | 0.8.24 | [`0x33D680…0Fe`](https://etherscan.io/address/0x33D68055Cd54061991B2e98b9ab326fFCE4d60Fe) |

### USDaf Jan-2025 deployment (dominant by supply — 21 contracts)

Per [`USDaf-v2/contracts/addresses/1.json`](https://github.com/asymmetryfinance/USDaf-v2/blob/main/contracts/addresses/1.json). Liquity-V2 fork with 3 collateral branches: WETH, wstETH, rETH.

| Slug | Etherscan name | Address |
|---|---|---|
| `40_eth_usdafJan_CollateralRegistry/` | CollateralRegistry | [`0xd99de7…3f7`](https://etherscan.io/address/0xd99de73b95236f69a559117ecd6f519af780f3f7) |
| `41_eth_usdafJan_BoldToken/` | BoldToken (USDaf, totalSupply 308,126) | [`0xb01dd8…b98`](https://etherscan.io/address/0xb01dd87b29d187f3e3a4bf6cdaebfb97f3d9ab98) |
| `42_eth_usdafJan_HintHelpers/` | HintHelpers | [`0xe3bb97…ada`](https://etherscan.io/address/0xe3bb97ee79ac4bdfc0c30a95ad82c243c9913ada) |
| `43_eth_usdafJan_MultiTroveGetter/` | MultiTroveGetter | [`0x0C6Ae1…978`](https://etherscan.io/address/0x0C6Ae14FFdfA799b6d456483bEBf52D7bC2Ec978) |
| `44_eth_usdafJan_ExchangeHelpers/` | HybridCurveUniV3ExchangeHelpers | [`0x28c9de…8dc`](https://etherscan.io/address/0x28c9decfacee0e796409b4b63eb263610e5e38dc) |
| `45_eth_usdafJan_WETH_AddressesRegistry/` | AddressesRegistry (WETH branch) | [`0x38e1…6476`](https://etherscan.io/address/0x38e1f07b954cfab7239d7acab49997fbaad96476) |
| `46_eth_usdafJan_WETH_BorrowerOperations/` | BorrowerOperations (WETH) | [`0x0b99…f1c`](https://etherscan.io/address/0x0b995602b5a797823f92027e8b40c0f2d97aff1c) |
| `47_eth_usdafJan_WETH_TroveManager/` | TroveManager (WETH) | [`0x81d7…de66`](https://etherscan.io/address/0x81d78814df42da2cab0e8870c477bc3ed861de66) |
| `48_eth_usdafJan_WETH_StabilityPool/` | StabilityPool (WETH) | [`0xf69e…3cf`](https://etherscan.io/address/0xf69eb8c0d95d4094c16686769460f678727393cf) |
| `49_eth_usdafJan_WETH_PriceFeed/` | WETHPriceFeed | [`0x3279…ec2d`](https://etherscan.io/address/0x3279e2b49ff60dafb276fbaff847383b67a7ec2d) |
| `50_eth_usdafJan_wstETH_AddressesRegistry/` | AddressesRegistry (wstETH) | [`0x2d4e…3c61`](https://etherscan.io/address/0x2d4ef56cb626e9a4c90c156018ba9ce269573c61) |
| `51_eth_usdafJan_wstETH_BorrowerOperations/` | BorrowerOperations (wstETH) | [`0x94c1…a1be`](https://etherscan.io/address/0x94c1610a7373919bd9cfb09ded19894601f4a1be) |
| `52_eth_usdafJan_wstETH_TroveManager/` | TroveManager (wstETH) | [`0xb47e…0046`](https://etherscan.io/address/0xb47ef60132deabc89580fd40e49c062d93070046) |
| `53_eth_usdafJan_wstETH_StabilityPool/` | StabilityPool (wstETH) | [`0xcf46…627f`](https://etherscan.io/address/0xcf46dab575c364a8b91bda147720ff4361f4627f) |
| `54_eth_usdafJan_wstETH_PriceFeed/` | WSTETHPriceFeed | [`0x4c27…00fa`](https://etherscan.io/address/0x4c275608887ad2eb049d9006e6852bc3ee8a00fa) |
| `55_eth_usdafJan_rETH_AddressesRegistry/` | AddressesRegistry (rETH) | [`0x3b48…4a2f`](https://etherscan.io/address/0x3b48169809dd827f22c9e0f2d71ff12ea7a94a2f) |
| `56_eth_usdafJan_rETH_BorrowerOperations/` | BorrowerOperations (rETH) | [`0xa351…a60d`](https://etherscan.io/address/0xa351d5b9cda9eb518727c3ceff02208915fda60d) |
| `57_eth_usdafJan_rETH_TroveManager/` | TroveManager (rETH) | [`0xde02…0fca`](https://etherscan.io/address/0xde026433882a9dded65cac4fff8402fafff40fca) |
| `58_eth_usdafJan_rETH_StabilityPool/` | StabilityPool (rETH) | [`0xc446…4f7a`](https://etherscan.io/address/0xc4463b26be1a6064000558a84ef9b6a58abe4f7a) |
| `59_eth_usdafJan_rETH_PriceFeed/` | RETHPriceFeed | [`0x93d3…de97`](https://etherscan.io/address/0x93d3a2234e67c2ad494735cd6676fb4b79a6de97) |
| `60_eth_usdafJan_Governance/` | Governance (Liquity-V2 epoch voting) | [`0x636deb…6ac`](https://etherscan.io/address/0x636deb767cd7d0f15ca4ab8ea9a9b26e98b426ac) |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, Etherscan-reported contract name, asymmetry-doc role label, compiler version, optimization settings, license, proxy/implementation flags, EVM version.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan (`@openzeppelin/contracts/...`, `src/...`, or `contracts/...` depending on the product's repo conventions).

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract.

## How these were fetched

```python
# /tmp/fetch_asymmetry_sources.py + /tmp/fetch_usdaf_jan.py
GET https://api.etherscan.io/v2/api?chainid=1&module=contract&action=getsourcecode&address=<addr>&apikey=<key>
```

Etherscan v2's unified API covers all chains; Asymmetry uses only chain 1, so a single endpoint suffices. All 44 fetches succeeded.

## Notable observations

- **Compiler version variance reflects product cohorts**: safETH (0.8.19) is the oldest, afETH + ASF/veASF (0.8.20) are the middle generation, afCVX (0.8.25) is the newest of the LST/yield stack, USDaf-Jan (0.8.24) is the Liquity-V2-fork cohort. This per-product compiler clustering tells you which audit cohort each contract belongs to.
- **Three distinct proxy patterns across the four products**: safETH uses OZ TransparentUpgradeableProxy + ProxyAdmin; afETH uses ERC1967 (likely UUPS); afCVX uses a custom `SimpleProxy` pattern. veASF/ASF/USDaf are non-proxy. An auditor scoping the safETH ProxyAdmin upgrade flow should examine `01-08_eth_safETH_*/` together with the ProxyAdmin source.
- **The afCVX `SimpleProxy` shows up at slug `15`, `20`, `22`** — it's a single source pattern reused for all 3 afETH proxies plus the 2 afCVX proxies. Diff among them should be a no-op at the proxy level.
- **USDaf-Jan-2025 contracts (slugs `40-60`) all compile with `0.8.24+commit.e11b9ed9`** — same as Liquity V2's own Bold contracts, confirming the fork is at the same Solidity version. Per-branch contracts (TroveManager, BorrowerOperations, etc.) share source bundles across the 3 branches; only the `AddressesRegistry` differs per-branch.
- **The USDaf-Jan-2025 Governance contract (`60_eth_usdafJan_Governance/`)** is the Liquity governance system with Asymmetry-specific config. Its `Governance.sol` is the only Asymmetry-specific governance code in the inventory; everything else inherits OZ or Liquity patterns.
- **veASF locker (`26_eth_veASF_locker/`) reports as `TokenLocker`** — Asymmetry's veASF is a fork of a generic token-locker pattern (likely inspired by Convex/Curve's vlCVX/vlCRV). Operator should verify which lock-curve was used.
- **No standalone admin/multisig directory**: the admin multisig is a Gnosis Safe at `0x263b03bba0bbbc320928b6026f5eaafad9f1ddeb`. Source would be the standard `GnosisSafeProxy` blob (not fetched here; OZ upstream). Operator should pull `Safe.json` from gnosis/safe-contracts if scoping the Safe directly.

## How to use this inventory

- **For audit scoping:** start with the **post-Apr-2025 afCVX changes** (the audit gap most likely to matter given afCVX has the largest live exposure ~$4.8M CVX).
- **For USDaf scope:** treat the **Jan-2025 deployment (21 contracts in slugs 40-60)** as primary; May-2025 and Jul-2025 are smaller and largely inherit the same Liquity-V2 audit chain.
- **For diff against Liquity V2 upstream:** the USDaf-Jan-2025 contracts are at `0.8.24+commit.e11b9ed9` matching Liquity V2's compiler. Branch-by-branch diff vs Liquity V2 should show only collateral-specific PriceFeed parameterization and the USDaf rebranding.
- **For governance scoping:** the **Asymmetry admin Safe (`0x263b…ddeb`)** + the **USDaf Liquity-style Governance (`0x636deb…6ac`)** are two independent governance layers. Operator must scope both.
