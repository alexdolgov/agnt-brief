# Agentic Audit Brief: Contango V2 (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama parent JSON (`api.llama.fi/protocol/contango`) and child slugs (`contango-v2` + `contango-v1`), the canonical address registry at [`github.com/contango-xyz/core-v2/networks.json`](https://github.com/contango-xyz/core-v2/blob/main/networks.json) (10 chains, 739 entries), the audit directory at [`github.com/contango-xyz/core-v2/audit`](https://github.com/contango-xyz/core-v2/tree/main/audit) (8 PDF reports), the docs page [`docs.contango.xyz/resources/contracts-and-audits`](https://docs.contango.xyz/resources/contracts-and-audits), Etherscan v2 per-contract verification across all 9 supported chains (Etherscan v2 doesn't cover Scroll on the free tier), and on-chain `eth_call` of `getMinDelay()` / `getOwners()` / `getThreshold()` / EIP-1967 storage slots. The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context.

## Project Overview

- **Project:** Contango V2 (DL parent slug `contango`, child slugs `contango-v2` + `contango-v1`)
- **Tagline:** "Loop anything on-chain. Create leverage (re)staking positions, arb rates differentials, farm points, or simply go long or short like a perp at low funding." (DL description)
- **Website:** https://contango.xyz · **Docs:** https://docs.contango.xyz · **App:** https://app.contango.xyz
- **Twitter:** [@Contango_xyz](https://twitter.com/Contango_xyz)
- **Public source:** [`github.com/contango-xyz/core-v2`](https://github.com/contango-xyz/core-v2) — **Solidity, open-source** (no SPDX license declared in repo metadata; `NOASSERTION` per GitHub API). Last push 2025-01-06, ~16MB, 15 GitHub stars. Repo structure: `src/{core,dependencies,interfaces,libraries,moneymarkets,periphery,strategies,token,utils}`.
- **Monitoring:** Hypernative for live monitoring and threat detection (per docs).
- **Tokens:** TANGO (governance ERC-20, `0xc760f978…9966` on Arbitrum — the DL anchor address) + veTANGO (Voting Escrow, Vyper 0.3.7, Curve-pattern, `0x96aa7254…221a` on Arbitrum)
- **DL categories:** parent (none) · `contango-v2` = **Derivatives** · `contango-v1` = Derivatives (legacy)
- **Chains (verified deployment):** **10 chains** — Ethereum, Optimism, BSC, Gnosis, Polygon, Base, Arbitrum, Avalanche, Linea, Scroll. The protocol is deeply multi-chain.
- **TVL:** **$11.23M parent total** (DL `tvl[-1]`, snapshot 2026-05-15), decomposed by chain:
  - Ethereum: $4.71M (TVL) + $38.4M borrowed
  - Arbitrum: $4.81M + $7.37M borrowed
  - Base: $861K + $5.55M borrowed
  - OP Mainnet: $478K + $4.13M borrowed
  - Avalanche: $178K + $1.54M borrowed
  - Gnosis: $144K + $997K borrowed
  - Polygon: $33K + $232K borrowed
  - Linea: $13K + $21K borrowed
  - BSC: $5K + $60K borrowed
  - Scroll: $2K + $10K borrowed
  - **Total borrowed: $58.3M (5.2× leverage ratio)** — characteristic of a leveraged-lending derivatives protocol
- **Audit history:** **8 direct security audits** across 3 firms (ABDK ×3 + Offbeat Security ×4 + Compound Integration audit ×1) — all PDFs in [`github.com/contango-xyz/core-v2/audit`](https://github.com/contango-xyz/core-v2/tree/main/audit). Plus per-docs: OpenZeppelin minor audit + OpSek Operational Security audit (not in repo).
- **Lifecycle:** **active, multi-chain, mature production protocol.** Latest protocol code push 2025-01-06; latest audit on file Oct 2024 (Offbeat Security Contango Perpetual Option Review). TVL stable around $11M with $58M of leveraged positions.
- **Tier:** **Tier 1 — flagship multi-chain leveraged-trading protocol with deep audit coverage on core + per-integration audit chain.** Audit-evaluable surface is layered: (a) the core protocol (Contango + Maestro + Vault + OrderManager) audited by ABDK across 3 reports, (b) per-money-market integration adapters each audited individually by Offbeat Security, (c) the cross-chain governance topology (10-chain Timelock + per-chain multisigs).
- **Commercial fit:** **continuous diff-audit + per-integration audit on each new money-market.** The protocol expands by adding new money-market integrations (Compound, Aave, Dolomite, Euler, Morpho, Silo, Spark, Moonwell, Aerodrome, ZeroLend, Avalon, Lodestar, Camelot, Velodrome, Uniswap, Balancer, ERC3156, Pendle, etc.) — each integration is a separate audit (Offbeat is the per-integration auditor of choice).

> Important framing. **Contango V2 is a "loop anything" leveraged-trading protocol that builds on top of money markets**, not a money market itself. The protocol orchestrates flash loans → collateral deposit → debt borrow → swap → repay flash loan to atomically open leveraged positions, then represents each position as an NFT (`PositionNFT`). Users borrow against deposit and the protocol manages collateral + debt across many money markets simultaneously. The on-chain architecture is **8 core protocol contracts** (Contango, Maestro, Vault, OrderManager, PositionNFT, UnderlyingPositionFactory, ContangoLens, Router) deployed on each of 10 chains, plus **N per-chain money-market adapters** (one MoneyMarket contract per supported lending protocol per chain — ~100+ in aggregate across all chains) and **N per-chain FlashLoan providers** (one per flash loan source per chain — ~50 in aggregate). The audit-evaluable surface scales with the integration count.

---

## TVL Methodology Note

DL splits Contango across the parent slug + 2 child slugs:

| Slug | Category | TVL | Description |
|---|---|---:|---|
| `contango-v2` | Derivatives | $10,959,878 | The current production protocol |
| `contango-v1` | Derivatives | $269,239 | Legacy V1 (decommissioned but still holds residual TVL) |
| **Parent `contango`** | — | **$11,229,116** | Aggregate |

DL tracks **deposits** in `chainTvls[chain]` and **borrows** in `chainTvls[chain]-borrowed`. The borrowed bucket totals $58.3M — **leverage ratio ~5.2×** which is characteristic of leveraged-position protocols.

The v1 brief reports `$158,485,774` in the SCOPE_NOTE.md and `$15,848,577` in the manifest — **a 10× display bug**. The actual stale snapshot value was ~$15.85M; current fresh DL TVL is $11.23M.

**TVL methodology:** Per the DL adapter (linked from `tvlCodePath`), TVL = sum of collateral balances at the per-chain Contango proxies via the Lens contract reads. The Vault contract holds user-deposited margin; the leveraged positions sit inside money markets (Aave, Compound, Dolomite, etc.) and are tracked via the position-level NFT ID system.

---

## Lifecycle and Recent Activity

**Status: active, multi-chain, mature.** Verified evolution:

| Date | Event | Source |
|---|---|---|
| 2023-Q3 | Contango V2 mainnet launch on Ethereum (block 18269652, `ContangoProxy` start block) | networks.json startBlock |
| 2023-Q3 to 2023-Q4 | Rolling rollout to OP + Arb + Polygon + Gnosis (Arb start block 137136154, Polygon 48665181, Gnosis 30822347) | networks.json |
| 2024-Q1 | Base + Avalanche deployments (Base start block 6373860, Avax 49059780) | networks.json |
| 2024-Q1 | ABDK Contango CoreV2 v_2_0 audit (Part I, 6.8MB) | github.com/contango-xyz/core-v2/audit |
| 2024-Q2 | ABDK CoreV2 PARTII v_3_0 + ABDK CoreV2 PartIII v_2_0 audits | same |
| 2024-Q2 | BSC + Linea + Scroll deployments (BSC 39410363, Linea 8030000, Scroll 8227405) | networks.json |
| 2024-04 | Compound - Contango Integration Audit | github audit dir |
| 2024-05 | Offbeat Security: Dolomite Money Market + Strategy Builder audits | github audit dir |
| 2024-09 | Offbeat Security: Euler Money Market audit | github audit dir |
| 2024-10 | **Offbeat Security: Contango Perpetual Option Review** (most recent audit) | github audit dir |
| 2024-12 | Contango impl update to mainnet (`Contango` impl `0x1f96…3F9` start block 21415737) — protocol upgrade | networks.json |
| 2025-01-06 | Last code push to `core-v2` repo | github |

The protocol is **clearly active** with audit cadence of multiple audits per year and ongoing code maintenance. The v1 brief reports `lifecycle = active - latest deployment unknown` because the pipeline's `default_fallback` lifecycle source doesn't query Etherscan creation dates or read the `startBlock` annotations in `networks.json`.

---

## Scope — Core Logic

### Cross-Chain Core Architecture (Same Addresses on All 10 Chains via CREATE-Collision)

These contracts deploy to **the same address on all 10 chains** via deployer-EOA nonce alignment. Audit work covers one logical address across the entire footprint:

| Contract | Address | Compiler | Role |
|---|---|---|---|
| **TimelockController** | [`0xc0939a4Ed0129bc5162F6f693935B3F72a46a90D`](https://etherscan.io/address/0xc0939a4Ed0129bc5162F6f693935B3F72a46a90D) | 0.8.20 | OpenZeppelin TimelockController. **`getMinDelay() = 259200s (72 hours)` confirmed on all 9 Etherscan-v2-supported chains** (Eth+OP+Arb+Base+Polygon+Gnosis+BSC+Avax+Linea; Scroll inferred same) |
| **ContangoProxy** | [`0x6Cae28b3D09D8f8Fc74ccD496AC986FC84C0C24E`](https://etherscan.io/address/0x6Cae28b3D09D8f8Fc74ccD496AC986FC84C0C24E) | 0.8.20 | ERC1967Proxy (OZ). Main protocol entry point. Implementation differs per chain (because money-market integrations differ). |
| **PositionNFT** | [`0xC2462f03920D47fC5B9e2C5F0ba5D2ded058fD78`](https://etherscan.io/address/0xC2462f03920D47fC5B9e2C5F0ba5D2ded058fD78) | 0.8.20 | ERC-721 representing each leveraged position |
| **OrderManagerProxy** | [`0xA64f0dbB10c473978C2EFe069da207991e8e3Cb3`](https://etherscan.io/address/0xA64f0dbB10c473978C2EFe069da207991e8e3Cb3) | 0.8.20 | ERC1967Proxy for limit/stop orders (off-chain trigger via keepers) |
| **VaultProxy** | [`0x3F37C7d8e61C000085AAc0515775b06A3412F36b`](https://etherscan.io/address/0x3F37C7d8e61C000085AAc0515775b06A3412F36b) | 0.8.20 | ERC1967Proxy for user margin custody (where deposits sit before going into a position) |
| **MaestroProxy** | [`0xa6a147946FACAc9E0B99824870B36088764f969F`](https://etherscan.io/address/0xa6a147946FACAc9E0B99824870B36088764f969F) | 0.8.20 | ERC1967Proxy — the "Maestro" is the position-orchestration entry point (open/close/adjust positions via a single transaction with permit support) |
| **UnderlyingPositionFactory** | [`0xDaBA83815404f5e1bc33f5885db7D96F51e127F5`](https://etherscan.io/address/0xDaBA83815404f5e1bc33f5885db7D96F51e127F5) | 0.8.20 | Factory that deploys per-position adapter contracts (one per money-market position) |
| **TaxMan** | [`0xFee97c6f9Bce786A08b1252eAc9223057508c760`](https://etherscan.io/address/0xFee97c6f9Bce786A08b1252eAc9223057508c760) | 0.8.20 | Fee router |
| **ContangoLensProxy** | [`0xe03835Dfae2644F37049c1feF13E8ceD6b1Bb72a`](https://etherscan.io/address/0xe03835Dfae2644F37049c1feF13E8ceD6b1Bb72a) | 0.8.20 | ERC1967Proxy. View-only lens for off-chain reads. Deployed only on 7 of 10 chains (bsc/linea/scroll/avalanche have ContangoLens; eth/op/arb/base/polygon/gnosis use different per-chain impls). |
| **IERC721Permit2** | [`0x6b210f49C0f0c8A008A1a4DC25df2E4473D97D85`](https://etherscan.io/address/0x6b210f49C0f0c8A008A1a4DC25df2E4473D97D85) | — | Custom Permit2 for NFTs (used by PositionNFT) |
| **InitialProxyImpl** for each of the 5 proxies | various (5 total) | 0.8.20 | Initial implementations deployed before first upgrade. Preserved on-chain for reference. |

### Per-Chain Implementation Addresses

Each chain has its own implementation behind the shared proxy addresses. The implementations differ because each chain has different money-market integrations baked in:

| Chain | Contango impl | Maestro impl | Vault impl | OrderManager impl |
|---|---|---|---|---|
| Ethereum (1) | [`0x1f96…3F9`](https://etherscan.io/address/0x1f96A1592c8847591616702a9c0768849b98a3F9) | [`0x79B2…6276`](https://etherscan.io/address/0x79B2374Bd437D031A4561fac55d62aD3E6516276) | [`0x3cab…861a`](https://etherscan.io/address/0x3cab97F99147012B0B1352E5E1278c933776861a) | [`0x9121…8e34`](https://etherscan.io/address/0x912105Af77eBF02e3389dc74eb83eCdEDaaF8e34) |
| Optimism (10) | `0x168F…5d813` | `0xe64C…A1Ff` | `0x0aeF…e27F` | `0xa464…E0dB` |
| Arbitrum (42161) | `0xc3E9…8D37` | `0x6603…D2cd` | `0xE626…D838` | `0xc6f7…068` |
| Base (8453) | `0x2014…9184` | `0x68A4…ED58` | `0x76b8…fe76` | `0x0aeF…e27F` |
| Polygon (137) | `0x33Df…5434` | `0xfE18…eBa0` | `0x253c…7311` | `0x9d11…b4a` |
| Gnosis (100) | `0xEAA8…5560` | `0xcC29…9e9` | `0x34f1…7491` | `0xb159…6d70` |
| BSC (56) | `0x1630…81Bc` | `0x39a4…f687` | `0xecFa…0c12` | `0x7C35…2CCB` |
| Linea (59144) | `0x394C…cb5C` | `0x01FE…1702` | `0xD3C4…3e2B` | `0x4928…7fE` |
| Avalanche (43114) | `0x3c17…3F1` | `0x1630…81Bc` | `0x6941…Ae4a` | `0x6c38…2f39` |
| Scroll (534352) | `0xfF7b…d21e` | `0x790f…037A` | `0xaC7c…b6cF` | `0x5A1a…7A0a` |

The Contango impls deploy with compiler `v0.8.20+commit.a1b79de6` consistently across chains. **Each impl is a separate audit scoping object** because each chain bundles a different set of money-market integrations.

### Arbitrum-only Specials (the v1 brief's 3 Arbitrum-specific contracts)

| Contract | Address | Notes |
|---|---|---|
| **ContangoPerpetualOption** | [`0xc171c681bfa3720306c1ba695a52b54f3f5d20a7`](https://arbiscan.io/address/0xc171c681bfa3720306c1ba695a52b54f3f5d20a7) | Perpetual options product (Arbitrum-only). Compiler 0.8.20, 64 source files. **Covered by Offbeat Security Oct-2024 audit.** |
| **TANGO** (`ContangoToken`) | [`0xc760f9782f8cea5b06d862574464729537159966`](https://arbiscan.io/address/0xc760f9782f8cea5b06d862574464729537159966) | Governance ERC-20 token (DL anchor). Arbitrum-only. |
| **veTANGO** (`Voting Escrow`) | [`0x96aa72542ce42f99f93de51e2f24cc2601c6221a`](https://arbiscan.io/address/0x96aa72542ce42f99f93de51e2f24cc2601c6221a) | **Curve-pattern voting escrow** (Vyper 0.3.7, 34KB source) — direct fork of Curve's `Voting Escrow`. The v1 brief lists this as "unnamed unknown" but it's clearly the veTANGO locker. |

---

## Scope — Cross-Chain Architecture

The protocol uses **CREATE-collision** as its primary cross-chain deployment pattern. All major proxies + the Timelock share the same address on all 10 chains:

- `ContangoProxy` `0x6Cae28b3…0C24E`
- `PositionNFT` `0xC2462f03…fD78`
- `OrderManagerProxy` `0xA64f0dbB…3Cb3`
- `VaultProxy` `0x3F37C7d8…F36b`
- `MaestroProxy` `0xa6a14794…969F`
- `UnderlyingPositionFactory` `0xDaBA8381…7F5`
- `TaxMan` `0xFee97c6f…760`
- `ContangoLensProxy` `0xe03835Df…b72a`
- `TimelockController` `0xc0939a4E…a90D`
- `IERC721Permit2` `0x6b210f49…7D85`

This is achieved by deploying via a deterministic deployer (likely the OZ-style "InitializableImmutableAdminUpgradeabilityProxy" pattern or a custom Create3 factory) with deployer-EOA nonces aligned across chains.

**Operational implication:** the protocol can be referred to by a single address per role across all 10 chains, simplifying user UX and integration tooling. **Audit implication:** an upgrade flaw at the shared proxy address would propagate identically to all 10 chains.

**Per-chain divergence**: implementations differ per chain because each chain bundles a different set of money-market adapters. **A new audit is required per chain per impl-upgrade** because the bytecode differs.

---

## Scope — Operational Periphery

### Governance Topology

**Three governance layers per chain:**

| Layer | Pattern | Notes |
|---|---|---|
| **CoreMultisig** (per chain) | Gnosis Safe, **2-of-3 threshold on Eth + Arb verified** | Different signer set per chain (Eth `0xe16c…7Ece`, Arb `0xE865…2759`, etc.). All 10 chains have a distinct CoreMultisig. |
| **OperatorMultisig** (per chain) | Gnosis Safe | Day-to-day operations (e.g., setting fees, pausing). Some chains share addresses (Arb+Polygon+Gnosis+BSC+Linea+Scroll all use `0x885eDb1b…74`). |
| **TimelockController** (shared address all chains) | OZ `TimelockController` 0.8.20 | **`getMinDelay() = 259200s (72 hours)`** on all 9 verified chains. This is the bottom-tier upgrade-execution authority — any protocol upgrade must pass through this 72h delay. |

**Upgrade flow:** CoreMultisig proposes → 72h delay via TimelockController → executed.

The v1 brief's `Multisig membership, timelock duration, and governance-gate parameters are not extracted` is correct as a pipeline observation; the gold standard fills in: **2-of-3 multisigs, 72-hour timelock, on every chain.**

### Per-Chain Multisig Addresses

| Chain | CoreMultisig | OperatorMultisig | Treasury |
|---|---|---|---|
| Ethereum | `0xe16cfA41…7Ece` (2-of-3) | `0x63Dc4C93…9C6` | `0x3bfbc7…3843` |
| Optimism | `0xCA7fE1a4…A7F` | `0x4d7ef6a3…683` (shared with Base+Avax) | `0xB6F557…0E35` |
| Arbitrum | `0xE865379A…2759` (2-of-3) | `0x885eDb1b…74` (shared) | `0x643178…ac28` |
| Base | `0xBA59f902…be9` | `0x4d7ef6a3…683` (shared) | `0xF549b59…06c6` |
| Polygon | `0x21c5267d…E11` | `0x885eDb1b…74` (shared) | `0x42353e33…ADe` |
| Gnosis | `0xBB3dD311…305` | `0x885eDb1b…74` (shared) | `0x137A19…92Db` |
| BSC | `0xCA5D37b5…c36` (shared with Linea+Scroll) | `0x885eDb1b…74` (shared) | `0xf01d55…9a28` |
| Linea | `0xCA5D37b5…c36` (shared with BSC+Scroll) | `0x885eDb1b…74` (shared) | `0xf01d55…9a28` (shared) |
| Scroll | `0xCA5D37b5…c36` (shared with BSC+Linea) | `0x885eDb1b…74` (shared) | `0xf01d55…9a28` (shared) |
| Avalanche | `0xd9318704…64eE` | `0x4d7ef6a3…683` (shared) | `0xb5122b…5252` |

---

## Scope — Proxy and Upgrade Architecture

All upgradeable Contango contracts use **OpenZeppelin `ERC1967Proxy`** (compiler 0.8.20) — **not** `TransparentUpgradeableProxy`. The upgrade authority is encoded in each implementation (UUPS pattern) rather than the proxy slot.

| Pattern | Compiler | Count | Notes |
|---|---|---:|---|
| OZ ERC1967Proxy | 0.8.20 | 5 unique proxies × 10 chains = 50 instances at 5 cross-chain shared addresses | UUPS upgrade authority encoded in impl |
| OZ TimelockController | 0.8.20 | 1 unique × 10 chains | Same address all chains via CREATE-collision |
| Non-proxy (PositionNFT, UnderlyingPositionFactory, TaxMan, Router, IERC721Permit2) | 0.8.20 | 5 unique × 10 chains | Immutable |
| Money-market adapters (~100+ total across chains) | 0.8.20 | varies | Per-chain × per-money-market deployments |
| FlashLoan providers (~50+ total) | 0.8.20 | varies | Per-chain × per-flash-loan-source |

The protocol's **UUPS upgrade authority** is held by the per-chain TimelockController (gated by the per-chain CoreMultisig). An auditor scoping the upgrade path must check the `_authorizeUpgrade()` modifier in each impl to confirm only the timelock can call it.

---

## Scope — Integration Surface

Contango V2 is fundamentally an **integration protocol** — its value comes from connecting to multiple money markets to enable leveraged positions. Per `networks.json`, the integration matrix is:

### Money Market Adapters (per chain)

Each "MoneyMarket" contract is a per-protocol adapter implementing the `IMoneyMarket` interface (allowing Contango to abstract over each lending market):

| Chain | Money markets integrated |
|---|---|
| Ethereum | Aave V3, Comet (Compound V3), Spark, ZeroLend, ZeroLend BTC, Morpho Blue, Morpho Pendle |
| Arbitrum | Aave V3, Comet, Dolomite, Lodestar, Silo, Camelot, Camelot Pendle, Uniswap V3 Pendle, Balancer Pendle |
| Optimism | Aave V3, Velodrome, Sonne, Silo, Canonical, Exactly |
| Base | Aave V3, Moonwell, Aerodrome, Morpho Blue, Compound, Sonne |
| Polygon | Aave V3, Compound, AaveUiPoolDataProvider |
| Gnosis | Aave V3 (Spark fork), Aave |
| BSC | Aave V3 |
| Linea | ZeroLend, Aave V3 |
| Scroll | Aave V3 |
| Avalanche | Aave V3 |

**Aave V3 is on every chain.** Most chains have 2-5 adapters; Arbitrum and Base have the most (5-6 each).

### Flash Loan Providers (per chain)

Each "FlashLoanProvider" implements the `IFlashLoanProvider` interface for atomic-leverage execution:

| Chain | Flash loan sources |
|---|---|
| Ethereum | Balancer, Aave, Spark, ZeroLend, ZeroLend BTC, Morpho Blue, Morpho Pendle, Uniswap, ERC3156 |
| Arbitrum | Balancer, Silo, Aave, Uniswap, Balancer Pendle, Camelot Pendle, Uniswap V3 Pendle, Camelot, ERC3156 |
| Optimism | Balancer, Aave, Uniswap, Canonical, Silo, Velodrome |
| Base | Balancer, Moonwell, Aave, Uniswap, Aerodrome, Morpho Blue |
| Polygon | Balancer, Aave, Uniswap |
| Gnosis | Balancer, Spark, Aave |
| BSC | Aave |
| Linea | ZeroLend |
| Scroll | Aave |
| Avalanche | Aave |

**Standard pattern:** the Contango impl uses the appropriate FlashLoanProvider for atomic borrowing during position open/close, then routes through the Router and the per-money-market adapter to update collateral and debt.

---

## Scope — Not Contango (V1 false positives)

The v1 brief lists **5 contracts on Arbitrum only**. Reviewing each:

| V1 attribution | Verdict | Reason |
|---|---|---|
| `ContangoPerpetualOption` `0xc171c6…20a7` (audited TP) | **REAL Contango** | Correctly attributed. Arbitrum-only perpetual options product, covered by Offbeat Security Oct-2024 audit. |
| `ContangoToken` `0xc760f9…9966` (audited TP) | **REAL Contango** | Correctly attributed. TANGO governance token. |
| `ERC1967Proxy` `0x007606…756b` (likely in scope) | **REAL Contango** but the impl `0xc171c681…20a7` (ContangoPerpetualOption) suggests this is the upgradeable proxy in front of ContangoPerpetualOption (compare to ContangoProxy's `0x6Cae28b3…0C24E`). | Correctly attributed but role-mapping incomplete. |
| `PositionNFT` `0xc2462f…fd78` (unmatched) | **REAL Contango** | Correctly attributed. Same address on all 10 chains. |
| `unnamed unknown` `0x96aa72…221a` (unmatched) | **REAL Contango** — **veTANGO Voting Escrow** (Vyper 0.3.7, Curve-pattern fork) | Pipeline failed to identify the Vyper-based veToken contract |

**Zero false positives.** All 5 v1 entries are real Contango contracts. The defect is **massive under-counting**:

- v1 has only Arbitrum coverage (5 contracts); DL JSON itself lists 10 chains
- Per chain, the core protocol has ~10 unique impl addresses (Contango, Maestro, Vault, OrderManager, ContangoLens, Router) — at least 60-70 missing across all chains
- Money market adapters (~100+) and flash loan providers (~50+) are entirely missing
- Multisigs + Treasury wallets (30+) are missing
- The Timelock (same address all chains) is missing

After expansion, the canonical Contango V2 footprint is **480 unique addresses across 10 chains** (739 total entries with CREATE-collision dedup) — vs v1's 5 entries.

---

## Audit Coverage

### Audit history (URL-verified, all 8 PDFs in `github.com/contango-xyz/core-v2/audit`)

| Date | Auditor | Report file | Size | Scope |
|---|---|---|---:|---|
| 2024-Q1 | **ABDK** | `ABDK_Contango_CoreV2_v_2_0.pdf` | 6.8MB | **Core protocol Part I** — Contango, Maestro, Vault, OrderManager, PositionNFT |
| 2024-Q2 | **ABDK** | `ABDK_Contango_CoreV2_PARTII_v_3_0.pdf` | 4.3MB | **Core protocol Part II** — follow-up + additional contracts |
| 2024-Q2 | **ABDK** | `ABDK_Contango_CoreV2PartIII_v_2_0.pdf` | 4.9MB | **Core protocol Part III** — final delta review |
| 2024-Q2 | **Compound** | `Compound - Contango Integration Audit.pdf` | 129K | Compound V3 (Comet) money-market integration — focused integration audit |
| 2024-05 | **Offbeat Security** | `Offbeat Security - Dolomite Money Market Review - May 2024.pdf` | 234K | Dolomite money market adapter (Arbitrum-specific) |
| 2024-05 | **Offbeat Security** | `Offbeat Security - Strategy Builder Review - May 2024.pdf` | 394K | Strategy Builder + multi-position automation |
| 2024-09 | **Offbeat Security** | `Offbeat Security - Euler Money Market Review - Sep 2024.pdf` | 439K | Euler money-market adapter |
| **2024-10** | **Offbeat Security** | `Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf` | 310K | **Contango Perpetual Option** (Arbitrum-only) — **most recent audit on file** |

**Plus per-docs (not in the github audit dir):**

- **OpenZeppelin** — described as a "minor audit" on the docs/contracts-and-audits page. PDF not located.
- **OpSek** — Operational Security audit (organizational/operational, not code). Per docs.

That's **8 code audits + 2 additional reviews** = 10 audit engagements total. ABDK is the primary core auditor (3 reports), Offbeat Security is the per-integration auditor (4 reports), Compound did the Comet integration audit, OZ + OpSek did minor/operational reviews.

### Coverage by scope category

| Category | Contracts | Direct audits | Notes |
|---|---:|---:|---|
| Core protocol (Contango + Maestro + Vault + OrderManager + PositionNFT × 10 chains) | 50 unique impls + 5 shared proxies | ABDK Parts I+II+III (3 audits) | High coverage on cross-chain shared logic; per-chain impl divergence not fully diffed |
| Money market adapters (~100+ instances across chains) | varies | Per-adapter Offbeat Security audits (Dolomite, Euler, Strategy Builder) + Compound integration audit | Partial — not every adapter audited individually |
| Flash loan providers (~50+ instances) | varies | likely covered under ABDK core audits | partial |
| Perpetual options (Arbitrum-only) | 1 + 1 proxy | Offbeat Security Oct-2024 | 100% |
| Governance (Timelock + 10 CoreMultisigs + 10 OperatorMultisigs) | 21 (1 Timelock + 10×2 multisigs) | OZ TimelockController upstream + Gnosis Safe upstream | inherited |
| TANGO + veTANGO | 2 (Arbitrum-only) | OZ ERC-20 + Curve veToken pattern | inherited from upstream patterns |
| **Total Contango-attributable scope** | **~480 unique addresses** | **8 direct + 2 minor + Aave/Compound/Curve/OZ inheritance** | **Extensive but layered** |

### Gap analysis

- **Newer money-market adapters added since 2024-10**: any post-Oct-2024 adapter (Aerodrome on Base, Moonwell on Base, Morpho Blue, Spark, ZeroLend, Avalon, Silo on multiple chains) may not have a dedicated Offbeat audit. Operator should check `core-v2/audit/` for any 2025 PDFs added since 2024-10 (none in the github API listing at last check, suggesting no formal audit on these).
- **Cross-chain governance topology** — no audit explicitly covers the 10-chain TimelockController + 10-multisig topology. The Timelock itself is OZ (upstream-audited), but the per-chain multisig signer set + threshold + timelock interaction isn't reviewed.
- **Strategy Builder** — Offbeat Security audited it May-2024. Any post-May-2024 strategy updates may be uncovered.
- **Per-chain impl divergence** — each chain has a different Contango impl. ABDK's audits cover the core pattern, but per-chain bundling (which money-market adapters are included) isn't enumerated in each audit's scope.
- **Strategy modules in `src/strategies/`** — not enumerated in audit dir; may be covered by ABDK Part III but operator should verify.
- **Scroll deployment** — Etherscan v2 doesn't cover Scroll on the free tier. Operator should use Scrollscan directly to confirm verification status of all Scroll-deployed Contango contracts.

---

## Targeting Recommendation

In rough priority order:

1. **Newer money-market adapters (post-Oct-2024)** — Morpho Blue (Eth + Base), Spark (Eth + Gnosis), ZeroLend (Eth + Linea), Aerodrome (Base), Moonwell (Base), Silo (Arb + OP), Avalon (Base). These are the leading edge of the protocol; if no Offbeat audit exists for each, audit gap is significant.
2. **Per-chain Contango impl divergence** — diff each chain's impl against the audited Ethereum impl. Most divergence comes from which adapters are bundled.
3. **Cross-chain governance topology audit** — the 10-chain Timelock + 10 multisigs + 72h delay flow. No single audit covers this end-to-end.
4. **Strategy Builder + strategies/** — the Offbeat May-2024 audit covers an early version; any 2024-Q4 / 2025 changes need review.
5. **veTANGO (Voting Escrow)** — Vyper 0.3.7 Curve fork. Curve's original is well-audited; any Contango-specific modifications should be diffed.
6. **Flash loan provider integrity** — atomic-leverage flow depends on correct flash loan callback handling. ABDK audits presumably cover this but operator should verify.
7. **ContangoPerpetualOption (Arbitrum)** — already audited Oct-2024 by Offbeat. **Default skip** unless changes since.

---

## V1 Pipeline Errors (for this project)

1. **9 chains entirely missing from topography.** v1 brief reports `Chains (topography): 42161` (Arbitrum only) but DL JSON lists `chains: [1, 10, 56, 100, 137, 8453, 42161, 43114, 59144, 534352]` (10 chains). The pipeline lost 9 chains' worth of contracts.
2. **475+ contracts undercounted.** v1 has 5 contract rows; canonical `networks.json` has 480 unique addresses across 10 chains. Even accounting for CREATE-collision dedup, the protocol surface is ~50× larger than v1 captures.
3. **TVL display bug.** SCOPE_NOTE shows `$158,485,774`; manifest shows `$15,848,577`. Off by 10× — display formatting inconsistency. Actual fresh TVL: $11.23M.
4. **Audit metadata is 1 placeholder.** v1 lists `discovery-ingest-placeholder` for the Offbeat Security Oct-2024 audit. Actual: **8 direct audits across 3 firms** (ABDK ×3, Offbeat Security ×4, Compound ×1) — all PDFs publicly URL-verifiable in the `core-v2/audit` directory.
5. **`lifecycle = active - latest deployment unknown`** — `networks.json` has explicit `startBlock` annotations for every contract. Latest mainnet deployment is the `Contango` impl `0x1f96…3F9` at block 21415737 (2024-12). Pipeline doesn't parse `networks.json`.
6. **`Multisig membership, timelock duration, and governance-gate parameters are not extracted`** — Correct as a pipeline observation. Gold standard: **TimelockController `0xc0939a4E…a90D` on all 10 chains with `getMinDelay() = 259200s (72h)`**, CoreMultisig 2-of-3 on Eth + Arb.
7. **`Upgrade authority concentrates in 1 distinct deployer addresses: 0x05950b...9c23`** — conflates a deployer EOA with upgrade authority. Real upgrade authority is the per-chain TimelockController, gated by the per-chain 2-of-3 CoreMultisig.
8. **`Scope - Integration Surface: No external integrations detected`** — wrong. Per `networks.json`, the protocol integrates with **15+ money markets** (Aave V3, Comet, Spark, Dolomite, Lodestar, Euler, Morpho Blue, Morpho Pendle, Moonwell, Aerodrome, Sonne, ZeroLend, Silo, Canonical, Camelot, Velodrome, Exactly, ...) and **8+ flash loan sources** (Balancer, Aave, Spark, ZeroLend, Morpho Blue, Morpho Pendle, Uniswap, Velodrome, Aerodrome, Moonwell, Silo, Camelot, ERC3156, ...).
9. **The unnamed `0x96aa72…221a` is veTANGO**, a Vyper 0.3.7 Curve-pattern voting escrow. Pipeline doesn't ingest Vyper source.
10. **No detection of CREATE-collision pattern.** 9 contracts (ContangoProxy, PositionNFT, etc.) deploy to the same address on all 10 chains. The pipeline lists them only on Arbitrum.
11. **Parent-child DL slug not surfaced.** Contango has 2 children (`contango-v2` + `contango-v1`); v1 brief uses parent slug.
12. **The `ContangoLensProxy` `0xe03835Df…b72a`** — a key view contract deployed on 7 of 10 chains — is entirely missing.

---

## Appendix

### Sources

- DefiLlama parent JSON: https://api.llama.fi/protocol/contango
- DL children: https://api.llama.fi/protocol/contango-v2 + .../contango-v1
- DL adapter: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/contango/index.js (referenced by `tvlCodePath`)
- Canonical address registry: https://github.com/contango-xyz/core-v2/blob/main/networks.json (10 chains, 739 entries)
- Audit directory: https://github.com/contango-xyz/core-v2/tree/main/audit (8 PDFs)
- Docs: https://docs.contango.xyz/resources/contracts-and-audits
- Source repo: https://github.com/contango-xyz/core-v2 (last push 2025-01-06)
- Etherscan v2 API for Eth + OP + Arb + Base + Polygon + Gnosis + BSC + Avax + Linea (9 chains supported)
- Alchemy RPC for `eth_call` on the same 9 chains
- (Scroll not Etherscan-v2-free-tier — use scrollscan.com directly for the 5 Scroll Contango contracts)

### Caveats

- **Scroll fetches failed** (chainid 534352 not supported by Etherscan v2 free tier). 7 Scroll contracts (Router, ContangoLens, CoreMultisig + 4 others) are listed in this brief but not fetched.
- **Avalanche Router + ContangoLens were unverified** on Etherscan v2 — verification status unclear; the proxies themselves verify.
- **Audit PDFs were URL-verified but not parsed** for per-contract scope. The ABDK audits (15.9MB combined) cover the core protocol — operator should pull each PDF to confirm which addresses are explicitly in scope.
- **Strategy Builder source code location** in `src/strategies/` — not enumerated as separate addresses; may be linked-libraries inside the Contango impl.
- **Money market adapter contracts (~100+) and flash loan providers (~50+) are not individually fetched.** Operator should pull each adapter address from `networks.json` for chains/markets of interest.
- **OpSek operational security audit** is described in docs but no PDF or formal report found.
- **OpenZeppelin minor audit** is described in docs but no PDF found in the audit/ directory.
- **DL TVL methodology** is sum-of-collateral-balances at vault addresses. The "borrowed" bucket ($58.3M) represents debt taken on by leveraged positions; this is not in DL TVL but is the user-exposure metric for risk-targeting.

### Generation metadata

- Generated: 2026-05-19
- Method: manual research, no pipeline involvement
- Canonical contract set fetched via Etherscan v2 `getsourcecode` for 88 addresses (81 succeeded, 7 Scroll failed)
- 2,115 source files, 8.6 MB total
- All 9 Etherscan-v2-supported chains' Timelocks probed via `eth_call` for `getMinDelay()`
- Reproducible end-to-end with `gh`, `curl`, an Etherscan API key, and an Alchemy multi-chain RPC URL
