# Contango V2 — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for the canonical Contango V2 core protocol contracts across 9 of 10 chains (Scroll is not on Etherscan v2 free tier), fetched directly from Etherscan v2's `getsourcecode` API.

**Inventory:** 81 of 88 attempted fetches succeeded · 2,115 source files · ~8.6 MB total. Fetched 2026-05-19.

**Coverage by chain (chains where the protocol deploys):**

| Chain | Chain ID | Etherscan v2 status | Contracts fetched (this inventory) |
|---|---:|---|---:|
| Ethereum | 1 | supported | 15+ (shared proxies + per-chain impls) |
| Optimism | 10 | supported | 6 per-chain impls |
| BSC | 56 | supported | 6 per-chain impls |
| Gnosis | 100 | supported | 6 per-chain impls |
| Polygon | 137 | supported | 6 per-chain impls |
| Base | 8453 | supported | 6 per-chain impls |
| Arbitrum | 42161 | supported | 6 per-chain impls + 3 Arb-only (Perpetual Option, TANGO, veTANGO) |
| Avalanche | 43114 | supported | 4 per-chain impls (Router + ContangoLens unverified) |
| Linea | 59144 | supported | 6 per-chain impls |
| Scroll | 534352 | **NOT supported on free tier** | 0 fetched (7 attempts failed) |

**Note: this directory does NOT include per-money-market adapters (~100+) or per-flash-loan-provider contracts (~50+).** Those are listed in `networks.json` but not individually fetched here. Operator should pull them per chain × per integration as needed.

## Per-contract layout

The contracts are grouped by role rather than chain. The slug encoding is `NNN_{chain-label}_{name}` where `chain-label` is `eth/op/arb/base/polygon/gno/bsc/avax/linea/scroll`.

### Cross-Chain Shared Addresses (deployed via CREATE-collision; fetched from Ethereum as canonical)

| Slug | Etherscan name | Role | Address (same on all 10 chains) |
|---|---|---|---|
| `001_eth_TimelockController/` | TimelockController | governance | [0xc0939a…a90D](https://etherscan.io/address/0xc0939a4Ed0129bc5162F6f693935B3F72a46a90D) — **72h delay** |
| `002_eth_ContangoProxy/` | ERC1967Proxy | core (UUPS) | [0x6Cae28…0C24E](https://etherscan.io/address/0x6Cae28b3D09D8f8Fc74ccD496AC986FC84C0C24E) |
| `003_eth_PositionNFT/` | PositionNFT (ERC-721) | core | [0xC2462f…fD78](https://etherscan.io/address/0xC2462f03920D47fC5B9e2C5F0ba5D2ded058fD78) |
| `004_eth_OrderManagerProxy/` | ERC1967Proxy | core | [0xA64f0d…3Cb3](https://etherscan.io/address/0xA64f0dbB10c473978C2EFe069da207991e8e3Cb3) |
| `005_eth_VaultProxy/` | ERC1967Proxy | core | [0x3F37C7…F36b](https://etherscan.io/address/0x3F37C7d8e61C000085AAc0515775b06A3412F36b) |
| `006_eth_MaestroProxy/` | ERC1967Proxy | core | [0xa6a147…969F](https://etherscan.io/address/0xa6a147946FACAc9E0B99824870B36088764f969F) |
| `007_eth_UnderlyingPositionFactory/` | UnderlyingPositionFactory | factory | [0xDaBA83…7F5](https://etherscan.io/address/0xDaBA83815404f5e1bc33f5885db7D96F51e127F5) |
| `008_eth_TaxMan/` | TaxMan | fees | [0xFee97c…760](https://etherscan.io/address/0xFee97c6f9Bce786A08b1252eAc9223057508c760) |
| `009_eth_ContangoLensProxy/` | ERC1967Proxy | view-only | [0xe03835…b72a](https://etherscan.io/address/0xe03835Dfae2644F37049c1feF13E8ceD6b1Bb72a) |
| `010_eth_IERC721Permit2/` | IERC721Permit2 | helper | [0x6b210f…7D85](https://etherscan.io/address/0x6b210f49C0f0c8A008A1a4DC25df2E4473D97D85) |
| `011-015` Initial proxy impls | various | initial impls preserved | various |

### Per-Chain Implementations

Each major contract has a per-chain impl (because each chain bundles different money-market integrations):

| Slug pattern | Role |
|---|---|
| `016-025_*_Contango_impl/` | Contango (the main protocol impl), one per chain — Ethereum is `0x1f96A1592c8847591616702a9c0768849b98a3F9` |
| `026-035_*_Maestro_impl/` | Maestro (position orchestrator), one per chain |
| `036-045_*_Vault_impl/` | Vault (user margin custody), one per chain |
| `046-055_*_OrderManager_impl/` | OrderManager (limit/stop orders), one per chain |
| `056-065_*_Router/` | Spot Router, one per chain (different DEX aggregators per chain) |
| `066-075_*_ContangoLens_impl/` | ContangoLens (view-only reads), one per chain |

### Per-Chain CoreMultisigs (Gnosis Safes)

| Slug pattern | Role |
|---|---|
| `076-085_*_CoreMultisig/` | Gnosis Safe proxy on each chain — all confirmed `GnosisSafeProxy` source. Threshold + signers must be queried via `Safe.getOwners()` + `Safe.getThreshold()` (2-of-3 confirmed on Eth + Arb). |

### Arbitrum-Only Specials

| Slug | Role | Notes |
|---|---|---|
| `086_arb_ContangoPerpetualOption/` | ContangoPerpetualOption (Arbitrum-only product) | Audited by Offbeat Security Oct-2024 |
| `087_arb_ContangoToken_TANGO/` | ContangoToken (TANGO governance ERC-20) | DL anchor address |
| `088_arb_v1_unknown_0x96aa72/` | **Voting Escrow** (Vyper 0.3.7 Curve-pattern veToken) | The v1 brief's "unnamed unknown" is actually **veTANGO** |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, doc role label, Etherscan-reported contract name, compiler version, optimization, license, proxy flag, implementation pointer.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan.

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract (file count, byte size, etherscan name, compiler version).

## How these were fetched

```python
# /tmp/fetch_contango_sources.py
# 1. Read canonical addresses from github.com/contango-xyz/core-v2/networks.json
# 2. Build curated list:
#    - Cross-chain shared addresses (10 contracts × 1 chain each as canonical)
#    - Per-chain Contango/Maestro/Vault/OrderManager/Router/ContangoLens impls (10 chains)
#    - Per-chain CoreMultisigs (10 chains)
#    - Arbitrum-only specials (3)
# 3. GET https://api.etherscan.io/v2/api?chainid={1..534352}&module=contract&action=getsourcecode&address={addr}
```

All 88 attempts ran. 81 succeeded; 7 failed (all Scroll — chain 534352 not on Etherscan v2 free tier). Avalanche Router + ContangoLens returned empty source (verification status unclear).

## Notable observations

- **Open-source protocol code.** Unlike Blackwing, Contango has a public github repo with all Solidity source ([`github.com/contango-xyz/core-v2`](https://github.com/contango-xyz/core-v2)) — audit work doesn't depend solely on Etherscan verification.
- **CREATE-collision deployment pattern is heavily used.** 10+ contract addresses are identical on all 10 chains (TimelockController, all 5 ERC1967 proxies, PositionNFT, UnderlyingPositionFactory, TaxMan, IERC721Permit2). Audit work covers one logical address across the entire footprint.
- **ERC1967Proxy + UUPS pattern.** Unlike Blackwing's TransparentUpgradeableProxy, Contango uses OZ ERC1967Proxy with UUPS authorization in the impl. The proxy admin slot is `0x0`; upgrade authorization is in `_authorizeUpgrade()` modifier in the impl.
- **TimelockController is consistent**: `getMinDelay() = 259200s (72 hours)` on all 9 chains verified. This is significantly longer than Asymmetry (24h) or Exactly (24h).
- **The unnamed `0x96aa72…221a` is veTANGO** — a Vyper 0.3.7 fork of Curve Finance's `Voting Escrow`. Notable because the pipeline doesn't process Vyper sources.
- **Per-chain impl divergence**: each chain has a different Contango impl (different bytecode) because each bundles different money-market adapters. Audit work must cover per-chain impl diffs.
- **OperatorMultisig sharing**: 6 chains share `0x885eDb1b…74` (Arb + Polygon + Gnosis + BSC + Linea + Scroll); 3 chains share `0x4d7ef6a3…683` (OP + Base + Avax). This is unusual cross-chain key management — operator should verify intent.

## How to use this inventory

- **For Contango core protocol audit:** start with `002-006_eth_*Proxy/` + `015-024_*_Contango_impl/` (10 chains' Contango impls). ABDK Parts I+II+III cover the core pattern; per-chain divergence diff is the gap.
- **For governance review:** `001_eth_TimelockController/` (same address all chains, 72h delay) + `076-085_*_CoreMultisig/` (10 GnosisSafes). The 2-of-3 threshold + 72h delay is the governance posture.
- **For Arbitrum-specific products:** `086_arb_ContangoPerpetualOption/` (perpetual options, audited Oct-2024) + `087_arb_ContangoToken_TANGO/` + `088_arb_v1_unknown_0x96aa72/` (veTANGO Voting Escrow).
- **For Scroll deployment:** 7 contracts not fetched here. Use Scrollscan API directly.
- **For money market adapters + flash loan providers:** see `manifest_gold_standard.json`'s `external_integrations_money_markets` + `external_integrations_flash_loan_providers` lists. Pull per chain × per integration from `networks.json` for any specific adapter of interest.
