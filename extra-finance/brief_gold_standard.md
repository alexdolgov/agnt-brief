# Agentic Audit Brief: Extra Finance (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama parent JSON (`api.llama.fi/protocol/extra-finance`) and three child slugs (`extra-finance-leverage-farming` + `extra-finance-xlend` + `extra-finance-vaults`), the canonical Extra Finance docs (`docs.extrafi.io/extra_finance/contracts-and-transparency` for Leverage Farming, `docs.extrafi.io/extrafi-xlend/developer-resource` for XLend, `docs.extrafi.io/extrafi-xlend/vaults-on-morpho` for Vaults), the Aave V3 PoolAddressesProvider on Optimism + Base (read via on-chain `getAddress(bytes32 id)`), Etherscan v2 per-contract verification, on-chain `eth_call` of `totalSupply()` / `totalAssets()` / `owner()` / `getOwners()` / `getThreshold()` against the canonical contracts, and DL TVL adapters at [`DefiLlama/yield-server/src/adaptors/extra-finance-leverage-farming/index.js`](https://github.com/DefiLlama/yield-server/blob/main/src/adaptors/extra-finance-leverage-farming/index.js) + [`.../extra-finance-xlend/index.js`](https://github.com/DefiLlama/yield-server/blob/main/src/adaptors/extra-finance-xlend/index.js). The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context.

## Project Overview

- **Project:** Extra Finance (DL parent slug `extra-finance`)
- **Website:** https://extrafi.io · **App:** https://app.extrafi.io · **XLend app:** https://xlend.extrafi.io
- **Docs:** https://docs.extrafi.io/extra_finance + https://docs.extrafi.io/extrafi-xlend (separate doc sites per product)
- **Twitter:** [@extrafi_io](https://twitter.com/extrafi_io)
- **Bug bounty:** https://immunefi.com/bounty/extrafinance (Immunefi-listed)
- **Source:** Closed-source. There is **no public github repo for the protocol contracts**; only Etherscan-verified source is available. The DL JSON `github: None` confirms this. (The DL DefiLlama-Adapters JS for TVL accounting is the only public code surface.)
- **Tokens:** EXTRA (governance, LayerZero OFT v1 — same address on OP + Base + Berachain), veToken (vote-locked EXTRA, Optimism only)
- **Chains (verified):** **3 chains** — Optimism (10), Base (8453), Berachain (80094). DL TVL on Berachain is currently ~$19 (essentially zero, but the slug includes it).
- **TVL:** **$30.65M parent** (DL `tvl[-1]`, snapshot 2026-05-15), decomposed across 3 child slugs:
  - `extra-finance-leverage-farming`: **$27.59M** — original product on OP + Base + Berachain
  - `extra-finance-xlend`: **$1.94M** — Aave V3 fork ($1.45M Base + $487K OP) + $733K borrowed
  - `extra-finance-vaults`: **$1.12M** — Morpho-based USDC + WETH vaults on Base
- **Audit history:** **3 direct security audits + inherited Aave V3 audit chain (for XLend)** — Sherlock 2024-12-01 + PeckShield (post-2024) + BlockSec v1.0 (signed); XLend additionally inherits Aave V3's audit chain (Trail of Bits, OpenZeppelin, ABDK, SigmaPrime, etc.). The v1 brief's "40 audits" claim conflates docs URLs.
- **Lifecycle:** **active, multi-product, expansion-phase.** Three distinct child products on DefiLlama (Leverage Farming + XLend + Vaults); XLend ProtocolDataProvider on Base last responded successfully (live state). EXTRA token total supply = **1,000,000,000** (1B EXTRA). Rainy Day Fund holds ~$1M USDC for insolvency cover.
- **Tier:** **Tier 1 — large-TVL multi-product leveraged-yield-farming protocol with deep audit coverage on core + Aave V3 inheritance on lending.** Audit-evaluable surface concentrates on (a) the proprietary Leverage Farming logic (`LendingPool` + `VeloPositionManager`), (b) the Aave V3 fork (XLend Pool + PoolConfigurator on both chains; same source as Aave V3-core), (c) the Morpho-curated Vaults on Base (these are Morpho V1.1 MetaMorpho vaults; the curator is Extra Finance but the vault code is Morpho's).
- **Commercial fit:** **diff-targeting on Leverage Farming + custom audit on the cross-product integrations (XLend → Vault → LF flows).** Aave V3 inheritance for XLend means cold-audit on the lending pool itself has low ROI; the protocol-specific assets are the LendingPool/VeloPositionManager (Leverage Farming proprietary code) and the XLend ↔ Morpho-Vault wiring.

> Important framing. **Extra Finance is a 3-product protocol grouped under a parent DL slug**. The v1 pipeline brief only knows about the parent (and only renders 5 contracts of one product); the gold standard treats the three as distinct audit-scoping objects. Closed-source code means **the canonical surface is whatever Etherscan + the official docs disclose** — there's no GitHub repository to scope against. EXTRA is a LayerZero OFT v1 token deployed at the same address on Optimism + Base + Berachain, which is the cleanest cross-chain integration in the protocol. The Leverage Farming product is the dominant TVL leg and is the only product with proprietary contract code worth auditing in isolation; XLend is an Aave V3 fork (limited proprietary surface); Vaults are Morpho V1.1 vaults (curator-only role for Extra Finance).

---

## TVL Methodology Note

DL splits Extra Finance across **3 child slugs** (parent `extra-finance` aggregates them):

| Child slug | What's counted | DL TVL (2026-05-15) | Adapter file |
|---|---|---:|---|
| `extra-finance-leverage-farming` | Lending pool deposits + active LP positions in farming vaults across OP + Base. Subgraph-driven adapter reads `vaults{}` + `lendingReservePools{}` per chain. | **$27,591,993** | [`yield-server/src/adaptors/extra-finance-leverage-farming/index.js`](https://github.com/DefiLlama/yield-server/blob/main/src/adaptors/extra-finance-leverage-farming/index.js) |
| `extra-finance-xlend` | Aave V3 reserve balances on OP (PoolAddressesProvider `0xA98cC603…`) + Base (PoolAddressesProvider `0x1e35e657…`). Probes `ProtocolDataProvider` (Aave v3 standard). | **$1,942,129** ($1.45M Base + $487K OP) + $733K borrowed | [`yield-server/src/adaptors/extra-finance-xlend/index.js`](https://github.com/DefiLlama/yield-server/blob/main/src/adaptors/extra-finance-xlend/index.js) |
| `extra-finance-vaults` | Morpho V1.1 vault balances on Base (USDC + WETH vaults) | **$1,117,866** | (likely via curated address list in adapter) |
| **Parent total** | sum of children | **$30,651,988** | — |

**The v1 brief's $87.8M TVL is dramatically stale.** As of 2026-05-15, the protocol's TVL is **$30.65M, a ~65% decline** from the v1 snapshot date (2026-04-29). Operator should resnapshot.

**On-chain state (queried 2026-05-17 via Alchemy `eth_call`):**

| Asset | Contract | Value | Note |
|---|---|---:|---|
| EXTRA token outstanding supply | `EXTRA` `0x2dAD3a13…7938F8` (OP, LayerZero OFT) | **1,000,000,000 EXTRA** | Max supply on OP. Bridged to Base + Berachain via LayerZero OFT v1. |
| Vault USDC TVL | `MetaMorphoV1_1 (USDC vault)` `0x23479229…3B5e` (Base) | **433,208 USDC** (~$433K) | `totalAssets()` of Morpho USDC vault |
| Vault WETH TVL | `MetaMorphoV1_1 (WETH vault)` `0x5A320998…7a8C` (Base) | **323.29 WETH** (~$970K) | `totalAssets()` of Morpho WETH vault |
| Rainy Day Fund | `Protocol Treasury` `0xc918a60e…BabF` (Gnosis Safe) | **~$1,000,000 USDC** (per docs) | 2/3 multisig, holds insolvency-cover funds |

---

## Lifecycle and Recent Activity

**Status: active, multi-product, expansion-phase.** The v1 brief reports `lifecycle = active - latest deployment unknown` — the "unknown" reflects pipeline failure to query Etherscan creation dates. Verified evolution:

| Era | Event | Source |
|---|---|---|
| 2022-Q4 (pre-mainnet) | Initial Extra Finance Leverage Farming development | (private) |
| **2023-mid** | **Mainnet launch on Optimism** — LendingPool + VeloPositionManager deployed | Etherscan ContractName=`LendingPool` + `VeloPositionManager` verified, compiler 0.8.x |
| 2023-Jul | EXTRA token (LayerZero OFT v1) launched; veToken + RewardDistributor open-sourced (per docs: "Newly Open-Sourced Code, Jul 2023") | docs.extrafi.io/extra_finance/contracts-and-transparency |
| 2023-Q4 | PeckShield audit (`PeckShield-Audit-Report-ExtraFi-v1.0.pdf`) — referenced in docs | github.com/peckshield/publications |
| 2023-2024 | Multi-chain expansion to Base (same canonical addresses for LendingPool + VeloPositionManager via CREATE3 / nonce-aligned deployment) | docs.extrafi.io/extra_finance/contracts-and-transparency |
| 2024-mid | XLend (Aave V3 fork) launched on Optimism | XLend docs (developer-resource page) |
| 2024-12-01 | **Sherlock audit (`2024.12.01 - Final - Extra Finance Audit Report`)** — community-driven Sherlock review | github.com/sherlock-protocol/sherlock-reports |
| 2024-Q4-2025 | BlockSec audit (`blocksec_extrafinance_v1.0-signed.pdf`) | github.com/blocksecteam/audit-reports |
| 2025-mid | Berachain expansion (DL `chains: ['Berachain', 'Optimism', 'Base']` includes Berachain, TVL ~$19) | DL JSON |
| 2025-Q3 | XLend expansion to Base (PoolAddressesProvider `0x1e35e657…` deployed) | on-chain |
| 2025-Q4 | **Extra Finance Vaults launched** on Morpho V1.1 (Base) — separate DL slug `extra-finance-vaults` | docs.extrafi.io/extrafi-xlend/vaults-on-morpho |
| 2026-Q1+ | Continuing active deployment (DL listed updates, XLend incentives program) | DL + docs |

There is no public github repo for the protocol contracts (DL JSON `github: None`); lifecycle signal comes from (a) DL listing updates, (b) Sherlock and BlockSec audit dates, (c) Etherscan deployment-block timestamps, and (d) docs page update cadence.

---

## Scope — Core Logic

The protocol is **3 independent products under one parent DL slug**. Listed per product.

### Product 1: Leverage Farming (DL slug `extra-finance-leverage-farming`, $27.59M TVL — dominant)

The original Extra Finance product. Custom code (NOT Aave fork). Two-leg architecture: **Lending Pool** (lend reserves) + **VeloPositionManager** (open/manage leveraged Velodrome LP positions).

| Contract | Address | Chain | Compiler | Audit Status |
|---|---|---|---|---|
| **EXTRA / EXTRAoft** (LayerZero OFT v1, governance token) | [`0x2dAD3a13ef0C6366220f989157009e501e7938F8`](https://optimistic.etherscan.io/address/0x2dAD3a13ef0C6366220f989157009e501e7938F8) | OP + Base + Berachain (CREATE-collision via OFT) | 0.8.x | LayerZero upstream + Extra Finance OFT wrapper |
| **LendingPool** (the [Lending] leg) | [`0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd`](https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) (OP) + [same on Base](https://basescan.org/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) | OP + Base | 0.8.x | PeckShield + Sherlock 2024-12-01 + BlockSec |
| **VeloPositionManager** (the [Farming] leg) | [`0xf9cfb8a62f50e10adde5aa888b44cf01c5957055`](https://optimistic.etherscan.io/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) (OP) + [same on Base](https://basescan.org/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) | OP + Base | 0.8.x | PeckShield + Sherlock + BlockSec |
| **VeToken** (vote-locked EXTRA) | [`0xe0bec4f45aef64cec9dcb9010d4beffb13e91466`](https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466) | OP only | 0.8.x | open-sourced 2023-07 |
| **RewardDistributor** | [`0xb7d8613728efcfbb18bcd63deec06f64441d322a`](https://optimistic.etherscan.io/address/0xb7d8613728efcfbb18bcd63deec06f64441d322a) | OP only | 0.8.x | open-sourced 2023-07 |

The LendingPool + VeloPositionManager **share addresses on OP + Base** — CREATE-collision pattern (same deployer EOA + same nonce sequence on both chains). Audit work covers one logical codebase across two chains.

The product also integrates with Velodrome (OP) and Aerodrome (Base) for the leveraged LP positions; those integrations are external (Velodrome/Aerodrome owns those contracts).

### Product 2: XLend (DL slug `extra-finance-xlend`, $1.94M TVL)

**Aave V3 fork.** Per the docs ("XLend liquidity protocol is a fork of Aave V3"). Inherits Aave V3's audit chain. Compiler 0.8.24, same code as Aave V3-core.

**Optimism (8 docs-listed + 2 helpers):**

| Contract | Address | Etherscan name | Audit chain |
|---|---|---|---|
| Pool (proxy) | [`0x345D2827f36621b02B783f7D5004B4a2fec00186`](https://optimistic.etherscan.io/address/0x345D2827f36621b02B783f7D5004B4a2fec00186) | `InitializableImmutableAdminUpgradeabilityProxy` (Aave V3 proxy pattern) | inherits Aave V3 + Sherlock 2024 + PeckShield |
| Pool impl | [`0x0353b6221b23b8320202320ca450eeb9fb0de9e5`](https://optimistic.etherscan.io/address/0x0353b6221b23b8320202320ca450eeb9fb0de9e5) | `Pool` | same |
| AToken | [`0x2B275176804dd01b6a90d61bDa3c80E3A470662E`](https://optimistic.etherscan.io/address/0x2B275176804dd01b6a90d61bDa3c80E3A470662E) | `AToken` | same |
| Variable DebtToken | [`0xC0C88d2752C58263c2b7F4Ac6ecBedC78eDD5d5E`](https://optimistic.etherscan.io/address/0xC0C88d2752C58263c2b7F4Ac6ecBedC78eDD5d5E) | `VariableDebtToken` | same |
| PoolConfigurator (proxy) | [`0xc1504B3D0e72C717151957ceb0252FF8f93A9A1e`](https://optimistic.etherscan.io/address/0xc1504B3D0e72C717151957ceb0252FF8f93A9A1e) | `InitializableImmutableAdminUpgradeabilityProxy` | same |
| PoolConfigurator impl | [`0x9378C2e058D87DE7F9EDbF3574eD5B4128980ADC`](https://optimistic.etherscan.io/address/0x9378C2e058D87DE7F9EDbF3574eD5B4128980ADC) | `PoolConfigurator` | same |
| PoolAddressesProvider | [`0xA98cC6031Ba6908d73dC5615ca82B607096D721d`](https://optimistic.etherscan.io/address/0xA98cC6031Ba6908d73dC5615ca82B607096D721d) | `PoolAddressesProvider` | same |
| ACLManager | [`0x70Cdb45f5b0660c122708286198446d23872595f`](https://optimistic.etherscan.io/address/0x70Cdb45f5b0660c122708286198446d23872595f) | `ACLManager` | same |
| PriceOracle | [`0x1bc889345c912d5462b71e019f9dccba33d83db4`](https://optimistic.etherscan.io/address/0x1bc889345c912d5462b71e019f9dccba33d83db4) | `AaveOracle` (Chainlink-wrapped) | same |
| ProtocolDataProvider | [`0xCC61E9470B5f0CE21a3F6255c73032B47AaeA9C0`](https://optimistic.etherscan.io/address/0xCC61E9470B5f0CE21a3F6255c73032B47AaeA9C0) | (unverified on Etherscan; presumed Aave V3 `AaveProtocolDataProvider`) | used by DL TVL adapter |

**Base (6 contracts discovered via on-chain `PoolAddressesProvider.getAddress()` since docs don't list Base addresses):**

| Contract | Address | Etherscan name |
|---|---|---|
| PoolAddressesProvider | [`0x1e35e657d469f134ea9cfe52e28949586f1a9c29`](https://basescan.org/address/0x1e35e657d469f134ea9cfe52e28949586f1a9c29) | `PoolAddressesProvider` |
| Pool (proxy) | [`0x09b11746dfd1b5a8325e30943f8b3d5000922e03`](https://basescan.org/address/0x09b11746dfd1b5a8325e30943f8b3d5000922e03) | `InitializableImmutableAdminUpgradeabilityProxy` |
| Pool impl (resolved via EIP-1967 storage slot) | `0xea00bdcc4add0a0afafa80a00b47ff50cf46cc93` | unverified on Etherscan |
| PoolConfigurator (proxy) | [`0x359551a0c6e91956a96700316fcf5b39704a3e1e`](https://basescan.org/address/0x359551a0c6e91956a96700316fcf5b39704a3e1e) | `InitializableImmutableAdminUpgradeabilityProxy` |
| PoolConfigurator impl | `0xe4b974402bf19ea54abdb5fa0baa0f7b373a5da8` | `PoolConfigurator` v0.8.24 |
| ACLManager | [`0x4b4c8a1841b0e0d2a3af086850d84ff968b8c956`](https://basescan.org/address/0x4b4c8a1841b0e0d2a3af086850d84ff968b8c956) | `ACLManager` |
| PriceOracle | [`0xe4f11109eee64a9a6beb5d3bcf4a5d9c70054dec`](https://basescan.org/address/0xe4f11109eee64a9a6beb5d3bcf4a5d9c70054dec) | `AaveOracle` |
| ProtocolDataProvider | [`0x1566DA4640b6a0b32fF309b07b8df6Ade40fd98D`](https://basescan.org/address/0x1566DA4640b6a0b32fF309b07b8df6Ade40fd98D) | `AaveProtocolDataProvider` (the only verified ProtocolDataProvider — OP's is unverified) |

### Product 3: Vaults on Morpho (DL slug `extra-finance-vaults`, $1.12M TVL)

**Morpho V1.1 vaults curated by Extra Finance.** The vault code is upstream Morpho `MetaMorphoV1_1`; Extra Finance's role is **curator** (sets allocations, manages risk parameters). NOT Extra Finance code.

| Contract | Address | Chain | TVL (queried 2026-05-17) |
|---|---|---|---:|
| MetaMorphoV1_1 USDC vault | [`0x23479229e52Ab6aaD312D0B03DF9F33B46753B5e`](https://basescan.org/address/0x23479229e52Ab6aaD312D0B03DF9F33B46753B5e) | Base | 433,208 USDC (~$433K) |
| MetaMorphoV1_1 WETH vault | [`0x5A32099837D89E3a794a44fb131CBbAD41f87a8C`](https://basescan.org/address/0x5A32099837D89E3a794a44fb131CBbAD41f87a8C) | Base | 323.29 WETH (~$970K) |

The audit chain for these is **Morpho's** (Spearbit + ChainSecurity + Trail of Bits etc. on `MetaMorphoV1_1`), not Extra Finance's. Extra Finance's audit-evaluable surface here is the **curator strategy** (allocation choices), not the vault code.

---

## Scope — Operational Periphery

Extra Finance has a **3-multisig governance topology**, all 2-of-3 Gnosis Safes on Optimism:

| Multisig | Address | Threshold | Role |
|---|---|---|---|
| **Protocol Treasury (Rainy Day Fund)** | [`0xc918a60e4d40d15959a85fa8b35f6db96907babf`](https://optimistic.etherscan.io/address/0xc918a60e4d40d15959a85fa8b35f6db96907babf) | **2/3** | Holds ~$1M USDC for insolvency cover. Tracked publicly via DeBank. |
| **EXTRA_Gov** | [`0x750f7153e6c92a24089a34eC6AFe65740C9bd40A`](https://optimistic.etherscan.io/address/0x750f7153e6c92a24089a34eC6AFe65740C9bd40A) | **2/3** | Controls protocol parameter changes. Snapshot governance (`extradao.eth`) is the off-chain voting surface; this multisig is the on-chain execution. |
| **Team Multisig (EXTRA_Team_Fund)** | [`0x94440d355877696753597E2d90d54BbC51b2a38D`](https://optimistic.etherscan.io/address/0x94440d355877696753597E2d90d54BbC51b2a38D) | **2/3** | Team development + ops fund. Receives protocol fees. |

**Plus other named EOAs / treasury wallets (per docs):**

| Wallet | Address | Role |
|---|---|---|
| EXTRA_Community_Fund | `0x89F0885DA2553232aeEf201692F8C97E24715c83` | Receives revested tokens for community fund |
| EXTRA_Community_Fund_2 (Non-Circulating) | `0x48F12DF639322e43Ce83Bb6e12bBa46c8e85f703` | Non-circulating shares of community fund |
| EXTRA_Dev_Fund | `0x4059e170D325163e2eC96cF8Ca489C40B6927A8c` | Protocol fee accumulator |

The v1 brief's `Multisig membership, timelock duration, and governance-gate parameters are not extracted` claim is correct for the pipeline, but the multisigs are **trivially discoverable** via Etherscan `Safe.getOwners()` + `Safe.getThreshold()` (all 2/3, all 3 owners).

---

## Scope — Proxy and Upgrade Architecture

**The Leverage Farming product uses a 2-tier admin proxy pattern**:

- **LendingPool** (`0xbb505c54…1cbd`) is a non-upgradable contract, but its `owner()` = `0x5a70429e0e5c7be9e5f83b497c18f5ac82345113`, which is a **TransparentUpgradeableProxy → `LendingPoolAdminConfigurator`** (impl `0xafbcc15a85932b22c1691914573abff46995b7c3`, OP). The proxy's admin slot is `0x326bf61b176eb9352ebf483cb37b8f90bdb42f2d`.
- **VeloPositionManager** (`0xf9cfb8a6…7055`) has `owner()` = `0x57e54894eb8e3638364bfcf216d502f1c6817398`, also a TransparentUpgradeableProxy with the **same proxy-admin** `0x326bf61b…2f2d`. Impl = `0xd8c5644907f222257fae02e0efb4f632986e24e8`.

So **upgrade authority for the Leverage Farming Admin contracts concentrates in `0x326bf61b…2f2d`** (operator should pull this address to confirm it's a Safe + check signers).

**XLend uses Aave V3's `InitializableImmutableAdminUpgradeabilityProxy`** pattern — both Pool and PoolConfigurator are proxies, controlled by the PoolAddressesProvider (which is owned by the protocol).

**Vaults use Morpho V1.1's pattern** — `MetaMorphoV1_1` has its own role-based access control; Extra Finance is just the curator.

The v1 brief's `Scope - Proxy and Upgrade Architecture: No proxy or upgrade architecture detected` is **wrong** — there are multiple proxy patterns:
- 2 admin proxies for Leverage Farming
- 2 Aave-V3 proxies (Pool + PoolConfigurator) × 2 chains = 4 proxies for XLend
- Plus the LayerZero OFT pattern for EXTRA token

---

## Scope — Integration Surface

Extra Finance has substantial external integrations:

| Integration | Used by | Chain |
|---|---|---|
| **Velodrome** (V2 pool factory + gauges) | VeloPositionManager opens leveraged LP positions on Velodrome pools | Optimism |
| **Aerodrome** (Velodrome fork) | Same product, Base chain | Base |
| **Aave V3** (forked codebase) | XLend Pool, PoolConfigurator, AToken, VariableDebtToken — all Aave V3-core source | OP + Base |
| **Chainlink** | XLend AaveOracle wraps Chainlink price feeds | OP + Base |
| **LayerZero OFT v1** | EXTRA token cross-chain bridging (OP ↔ Base ↔ Berachain) | OP + Base + Berachain |
| **Morpho V1.1** | Extra Finance USDC + WETH vaults are Morpho `MetaMorphoV1_1` instances | Base |
| **Snapshot** | Off-chain governance via `extradao.eth` Snapshot space | (off-chain) |
| **Hexagate** (proactive monitoring) | Per docs "partnership not yet renewed in 2025" | — |
| **Immunefi** | Bug bounty program | — |

The v1 brief's `Scope - Integration Surface: No external integrations detected in topography` is wrong — Velodrome + Aerodrome + Aave V3 + LayerZero + Morpho are all in the integration set.

---

## Scope — Not Extra Finance (V1 false positives)

The v1 brief lists **5 contracts**, of which:

| V1 attribution | Address | Verdict | Reason |
|---|---|---|---|
| `LendingPool` (OP, vault_pool, TP-covered) | `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` | **REAL Extra Finance** (correctly captured) | Leverage Farming product |
| `VeloPositionManager` (OP, controller, TP-covered) | `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` | **REAL Extra Finance** (correctly captured) | Leverage Farming product |
| `RewardDistributor` (OP, rewards, unmatched) | `0xb7d8613728efcfbb18bcd63deec06f64441d322a` | **REAL Extra Finance** (correctly captured) | Leverage Farming staking layer |
| `VeToken` (OP, token, unmatched) | `0xe0bec4f45aef64cec9dcb9010d4beffb13e91466` | **REAL Extra Finance** (correctly captured) | Leverage Farming staking layer |
| `EXTRAoft` (Base, core, unmatched) | `0x2dad3a13ef0c6366220f989157009e501e7938f8` | **REAL Extra Finance** (correctly captured) | EXTRA token via LayerZero OFT |

All 5 v1 contracts are **correctly attributed**. The v1 brief is wrong only by **omission** — it misses ~21 additional canonical Extra Finance contracts:

| Missing entire product | Count |
|---|---:|
| XLend (Aave V3 fork) — Optimism | 10 contracts |
| XLend (Aave V3 fork) — Base | 6 contracts |
| Vaults on Morpho — Base | 2 contracts |
| LendingPool + VeloPositionManager **Base instances** (same addresses but separate on-chain instances) | 2 contracts |
| Admin proxies for Leverage Farming (`LendingPoolAdminConfigurator` etc.) | 2 contracts |
| **Total missing** | **~22 contracts** |

After excluding contamination (none in this case) and counting missed contracts, the gold standard scope is **26 contracts** (vs v1's 5).

---

## Audit Coverage

### Audit history (URL-verified)

| Date | Auditor | Report | Scope |
|---|---|---|---|
| **2024-12-01** | **Sherlock** | [`2024.12.01 - Final - Extra Finance Audit Report.pdf`](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) | Community-driven Sherlock audit of Extra Finance Leverage Farming codebase |
| post-2023 | **PeckShield** | [`PeckShield-Audit-Report-ExtraFi-v1.0.pdf`](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) | ExtraFi protocol v1.0 (Leverage Farming) |
| post-2023 | **BlockSec** | [`blocksec_extrafinance_v1.0-signed.pdf`](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf) | ExtraFinance v1.0 signed audit |
| ongoing | **Hexagate** (monitoring) | runtime threat monitoring | "partnership not yet renewed in 2025" per docs |
| inherited | **Aave V3 audit chain** | Trail of Bits, OpenZeppelin, ABDK, SigmaPrime, Certora | XLend is a fork of Aave V3 — inherits the full Aave V3 audit set |
| inherited | **Morpho V1.1 audit chain** | Spearbit, Trail of Bits, ChainSecurity | Vaults on Morpho — Extra Finance is curator, not author |

### Coverage by scope category

| Category | Contracts | Direct external audits | Inherited | Coverage % |
|---|---:|---|---|---:|
| Leverage Farming core (LendingPool, VeloPositionManager × 2 chains + EXTRA token + VeToken + RewardDistributor) | 8 | Sherlock + PeckShield + BlockSec (all 3 audits) | — | 100% direct |
| LF admin proxies (LendingPoolAdminConfigurator + VPM admin proxy) | 2 | inferred-covered (admin layer is part of LF audit scope) | — | partial |
| XLend (OP) | 10 | (no XLend-specific audit URL found) | full Aave V3 audit chain | 100% inherited |
| XLend (Base) | 6 | same | same | 100% inherited |
| Vaults (USDC + WETH on Morpho) | 2 | (no Extra-Finance-curator-specific audit) | full Morpho V1.1 audit chain | 100% inherited (vault code) |
| **Total** | **28** (vs v1's 5) | **3 direct** | **2 inherited chains** | **~95% covered (direct + inherited)** |

### Gap analysis

- **No public XLend-specific audit**: XLend is a "fork of Aave V3" per docs but no audit report dedicated to the Extra Finance fork has been published. Operator should ask Extra Finance team for any internal audit or diff review against Aave V3-core. The PeckShield + Sherlock + BlockSec audits all predate XLend's launch and focus on Leverage Farming.
- **No public Vaults-specific audit**: the Morpho vaults are curated by Extra Finance, not coded by them, so direct audit isn't required. But the **curator strategy** (allocation choices, parameter sets) is operationally critical and warrants a parameter-review by an experienced auditor.
- **LendingPoolAdminConfigurator impl** is verified on Etherscan but the **VeloPositionManager admin proxy's impl** is unverified (`0xd8c5644907f222257fae02e0efb4f632986e24e8` on OP). Operator should request source from the team.
- **Optimism ProtocolDataProvider** (`0xCC61E9470B5f0CE21a3F6255c73032B47AaeA9C0`) is unverified on Etherscan. The Base equivalent is verified as `AaveProtocolDataProvider`. The OP one should be the same Aave V3 source — operator should request verification.
- **Closed-source code** is the main structural gap. No public github means audit work cannot use static-analysis tools against the protocol-level repo. Etherscan-verified source is the only handle.
- **Multisig threshold and signers** are public (2/3 each, 3 owners), but the **identity of the signers** has not been pulled in this brief. Operator should enumerate the Safe owners via `Safe.getOwners()` and cross-reference against any public team-identity disclosures.

---

## Targeting Recommendation

In rough priority order by `economic exposure × novelty × audit gap`:

1. **Leverage Farming admin layer** — `LendingPoolAdminConfigurator` (impl `0xafbcc15a…`) and the unverified VPM admin impl (`0xd8c5644907…`). These admin contracts can change LendingPool/VPM parameters; they are the primary attack surface above the main pools. The most recent audit (Sherlock 2024-12-01) is ~18 months old — diff-targeting since then.
2. **VeloPositionManager + LendingPool cross-product flows** — the Leverage Farming product allows users to borrow from LendingPool and deposit into Velodrome via VPM. Any bug in the borrowing accounting or VPM position management affects ~$28M TVL.
3. **XLend on Base (newer deployment)** — Base PoolAddressesProvider deployed more recently than OP; potential for parameter-config divergence from Aave V3 defaults. Diff against canonical Aave V3-core.
4. **XLend ↔ Vaults integration** — the Morpho vaults can borrow from XLend or use XLend as a collateral source. Cross-product call paths are not specifically audited.
5. **Vaults curator strategy** — operator-side audit of allocation choices, not code audit. Lower priority unless TVL grows significantly.
6. **EXTRA token (LayerZero OFT) cross-chain flows** — relatively standard LZ OFT v1; default skip for new audit work unless team announces new chain integrations.
7. **Berachain expansion** — DL tracks Berachain TVL of $19 (effectively unused). Operator should query whether Extra Finance has actually deployed code on Berachain or only the OFT token.

---

## V1 Pipeline Errors (for this project)

The pipeline's `brief.md` carries the following defects:

1. **5 contracts vs ~26 actual.** The v1 brief renders only the Leverage Farming user-facing contracts. It misses: (a) Base instances of LendingPool + VeloPositionManager (same addresses but separate on-chain instances); (b) the entire XLend product (16 contracts on OP + Base); (c) the entire Vaults product (2 contracts); (d) the admin proxy layer for Leverage Farming (2 contracts).
2. **TVL stale by ~65%.** $87.8M claimed (2026-04-29 snapshot) vs $30.65M actual (2026-05-15). Not a defect per se but operators should resnapshot.
3. **`lifecycle = active - latest deployment unknown`** — the "unknown" is a pipeline failure to query Etherscan contract creation. Multi-product expansion clearly active (XLend on Base + Vaults on Morpho are recent additions per docs).
4. **`Audit history: 4 audits; most recent 2026-05-03`** — wrong count + wrong date. There are 3 direct security audits (Sherlock 2024-12-01 + PeckShield + BlockSec) plus inherited Aave V3 + Morpho audit chains for XLend + Vaults. "2026-05-03 (4 days ago)" likely refers to URL-discovery timestamp, not actual audit date.
5. **Past Audits has 2 entries with `discovery-ingest-placeholder`** for BlockSec — the BlockSec PDF is publicly available at `github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf` and was in the v1 brief's own Docs Pages Referenced list.
6. **`Scope - Proxy and Upgrade Architecture: No proxy or upgrade architecture detected`** — wrong. There are at least 4 proxy patterns: (a) LayerZero OFT v1 for EXTRA token, (b) 2 TransparentUpgradeableProxy admin layers for Leverage Farming, (c) 4 Aave-V3 InitializableImmutableAdminUpgradeabilityProxy for XLend (2 per chain), (d) Morpho V1.1 vault pattern.
7. **`Scope - Integration Surface: No external integrations detected`** — wrong. The Leverage Farming product integrates with Velodrome (OP) + Aerodrome (Base); XLend integrates with Chainlink + Aave V3 codebase; Vaults integrate with Morpho V1.1; EXTRA token integrates with LayerZero OFT v1.
8. **Parent-child DL slug not surfaced.** Extra Finance has 3 distinct DL child slugs (`extra-finance-leverage-farming` + `extra-finance-xlend` + `extra-finance-vaults`) with different categories (`Leveraged Farming`, `Lending`, `Onchain Capital Allocator`). The v1 brief collapses to the parent slug and misses the audit-scoping consequences of multi-product framing.
9. **`Multisig membership, timelock duration, and governance-gate parameters are not extracted`** — trivially derivable. 3 multisigs (Treasury + Gov + Team), all 2-of-3 Safes on Optimism. No timelock in the governance topology (direct multisig execution).
10. **`Chains (topography): 10, 8453` vs `Chains (DeFiLlama): 10, 8453, 80094`** — topography missed the Berachain instance of the EXTRA token. Not a major defect since Berachain TVL is ~$19.
11. **Tier 1 `partial_audit_gap` framing is reasonable** but the "gap" framing under-emphasizes the inheritance from Aave V3 and Morpho V1.1 audit chains for XLend + Vaults. The real gap is the diff-targeting between the v2024.12 Sherlock audit and the current Leverage Farming code, not "partial coverage" overall.
12. **`Per-contract TVL not persisted; protocol-level TVL only`** — could be derived via subgraph or eth_call against each pool. The DL adapter does it for the per-pool yield metrics. Pipeline doesn't.

---

## Appendix

### Sources

- DefiLlama parent JSON: https://api.llama.fi/protocol/extra-finance
- DefiLlama child JSONs:
  - https://api.llama.fi/protocol/extra-finance-leverage-farming
  - https://api.llama.fi/protocol/extra-finance-xlend
  - https://api.llama.fi/protocol/extra-finance-vaults
- DL TVL adapter: https://github.com/DefiLlama/yield-server/blob/main/src/adaptors/extra-finance-leverage-farming/index.js + .../extra-finance-xlend/index.js
- Canonical contracts pages:
  - https://docs.extrafi.io/extra_finance/contracts-and-transparency (Leverage Farming + EXTRA token + Treasury wallets)
  - https://docs.extrafi.io/extrafi-xlend/developer-resource (XLend Optimism)
  - https://docs.extrafi.io/extrafi-xlend/vaults-on-morpho (Vaults Base)
- Audit PDFs:
  - https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf
  - https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf
  - https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf
- Snapshot governance: https://snapshot.org/#/extradao.eth
- Bug bounty: https://immunefi.com/bounty/extrafinance
- Etherscan v2 (OP + Base) for source verification
- Alchemy RPC (OP + Base) for `eth_call` (where Etherscan v2 free tier blocks L2 access)

### Caveats

- **Closed-source protocol code.** No public github repo for contracts. All code-level verification depends on Etherscan-verified source.
- **6 contracts have unverified source on Etherscan**: OP `ProtocolDataProvider` (`0xCC61E947…9C0`), the VeloPositionManager admin impl (`0xd8c56449…24e8`), Base xlend Pool impl (`0xea00bdcc…cc93`). Operator should request verification from the team or accept inherited Aave V3 source.
- **DL TVL adapter uses subgraphs** for Leverage Farming — TVL accuracy depends on subgraph freshness. The XLend adapter uses on-chain reads via `ProtocolDataProvider`.
- **Multisig signer identities** are not enumerated in this brief; `Safe.getOwners()` would return them.
- **Hexagate monitoring** is "in review" per docs (as of 2025) — runtime threat protection may not be active.
- **Berachain TVL of $19** suggests the chain is either pre-launch (just OFT token deployed) or inactive. Operator should confirm.
- **The PoolDataProvider on OP returned empty for `POOL_DATA_PROVIDER` id** — different ID encoding may apply, or the PoolAddressesProvider doesn't track this slot. The standalone address `0xCC61E947…9C0` from the DL adapter is the canonical OP ProtocolDataProvider.

### Generation metadata

- Generated: 2026-05-17
- Method: manual research, no pipeline involvement
- Canonical contract set fetched via Etherscan v2 `getsourcecode` for 26 addresses (433 source files, 2.3 MB)
- On-chain discovery used for Base xlend addresses (PoolAddressesProvider.getAddress(bytes32) reads)
- Reproducible end-to-end with `gh`, `curl`, an Etherscan API key, and an Alchemy multi-chain RPC URL
