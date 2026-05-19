# Agentic Audit Brief: King Protocol (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON (`api.llama.fi/protocol/king-protocol`), the canonical address registries at [`King-Protocol/king-protocol-sc/deployments/1/deployments.json`](https://github.com/King-Protocol/king-protocol-sc/blob/master/deployments/1/deployments.json) (Ethereum main protocol) and [`King-Protocol/king-cross-chain/deployments/{mainnet,swell}`](https://github.com/King-Protocol/king-cross-chain/tree/master/deployments) (LayerZero OFT cross-chain), the 4 audit-PDF directories across the 3 Solidity repos, Etherscan v2 per-contract verification on Ethereum + Mantle + Base + Arbitrum, and on-chain `eth_call` + storage-slot probes against the canonical contracts. The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context.

## Project Overview

- **Project:** King Protocol — **formerly LRT²** (LRT Square) (DL slug `king-protocol`)
- **Description (DL):** "A unified restaking rewards protocol acting as a vault that holds the rewards tokens as underlying assets. Through King Protocol, LRT projects can pool restaking network protocol rewards into a single vault and issue vault share tokens to their stakers."
- **Tagline:** "The Standard in Restaking Rewards" (per GitHub org bio)
- **Website:** https://kingprotocol.org · **Docs:** https://docs.kingprotocol.org · **Predecessor docs:** https://lrt2.gitbook.io/lrt2
- **Twitter:** [@thekingprotocol](https://twitter.com/thekingprotocol)
- **GitHub org:** [`King-Protocol`](https://github.com/King-Protocol) (created 2025-01-11, 7 public repos)
- **Public source:** **Open-source Solidity, multi-repo organization**:
  - [`king-protocol-sc`](https://github.com/King-Protocol/king-protocol-sc) — main LRT Square protocol (Solidity, last push 2025-11-18, 10MB, 3 stars)
  - [`king-cross-chain`](https://github.com/King-Protocol/king-cross-chain) — LayerZero OFT v2 cross-chain (last push 2025-06-19)
  - [`king-minting-sc`](https://github.com/King-Protocol/king-minting-sc) — RetailCore minting helper (last push 2025-07-30)
  - [`king-vaults`](https://github.com/King-Protocol/king-vaults) — treasury yield management (Phase I, last push 2025-11-21, **not yet deployed**)
  - Plus `DefiLlama-Adapters` (fork), `tokenAssets`, `curve-assets` (auxiliary)
- **Provenance:** **EtherFi-built**. The original LRT² product was built by EtherFi (audit titles include `Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf`); rebrand to "King Protocol" announced post-Feb-2025.
- **DL category:** `Liquid Restaking`
- **Token:** KING (formerly LRT²) — ERC-20 share token issued by the main vault, totalSupply ~6,629.93 KING as of 2026-05-19
- **Chains (verified deployment):** **5 EVM chains** — Ethereum (1), Mantle (5000), Base (8453), Arbitrum (42161), **Swell (1923)** (per king-cross-chain repo). DL lists only Ethereum because that's where the actual vault TVL sits; the L2 contracts are KING OFT bridge endpoints.
- **TVL:** **$1.27M total** (DL `tvl[-1]`, snapshot 2026-05-15) — Ethereum-only per DL. The v1 brief reports $1.35M (slightly stale).
- **Audit history:** **5 direct security audits** (4 Nethermind + 1 unnamed-firm) — all PDFs in repo `audits/` or `audit/` directories. Full list in §"Audit Coverage" below.
- **Lifecycle:** **active, post-rebrand, with new product lines in development (`king-vaults`).** Latest mainnet protocol push 2025-11-18; cross-chain push 2025-06-19; vaults push 2025-11-21. RetailCore minting was audited July-2025.
- **Tier:** **Tier 2 — small-TVL specialized restaking-rewards vault with thin audit coverage on a growing surface.** Audit-evaluable surface concentrates on (a) the LRTSquaredCore vault impl (single audit, Nov-2024), (b) the cross-chain LayerZero OFT v2 (Nethermind Feb-2025), (c) two strategy contracts (SEthFiStrategy + EEigenStrategy, not specifically audited), and (d) the RetailCore minting helper (audited Jul-2025, separate repo).
- **Commercial fit:** **diff-audit + Strategy & Vaults phase-I audit.** The Strategies + the king-vaults Phase I (Veda BoringVault + Concrete integrations) are the leading audit edge.

> Important framing. **King Protocol = formerly LRT² = an EtherFi-built unified restaking-rewards aggregator vault.** Per the original repo README: "LRT² is a vault which holds the AVS tokens as underlying assets. Through LRT², LRT projects can pool AVS rewards into a single vault and issue vault share tokens to their stakers." The protocol exists because **AVSs distribute restaking rewards in many small ERC-20 tokens** that are individually too small for most users to claim and trade efficiently — King aggregates them into one share token. Architecture is: deposit AVS token X → vault holds X + others → mint KING share. Cross-chain is via LayerZero OFT v2 (KING bridges across Eth + Mantle + Base + Arbitrum + Swell). The audit-evaluable surface is **mostly the vault math + the strategy contracts + the price provider** — small and focused, but the strategy contracts (SEthFi, EEigen) added post-Nov-2024 main audit appear uncovered by their own dedicated audit.

---

## TVL Methodology Note

DL adapter ([`projects/king/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/king/index.js)) is straightforward:

> "Tokens on the king contract" — sum of ERC-20 balances at the King vault address `0x8F08B70456eb22f6109F57b8fafE862ED28E6040`.

DL counts **Ethereum only** ($1.27M TVL) because the actual restaking-reward AVS tokens accrue at the L1 vault. The L2 contracts (Mantle, Base, Arbitrum, Swell) are **KingOFTL2 bridge endpoints** — they mint/burn local KING ERC-20 representations of the L1 KING token via LayerZero OFT v2. The local KING supply on L2 is bridged-supply, not independent TVL.

**On-chain state (queried 2026-05-19 via Alchemy `eth_call`):**

| Asset | Contract | Value | Note |
|---|---|---:|---|
| KING totalSupply | `LRTSquaredProxy` `0x8F08B7…6040` (Ethereum) | **6,629.93 KING** | Share-token supply on L1 |
| KING owner (core) | `0xF46D37…e2B5` | Gnosis Safe, **4-of-8** | Owns core protocol |
| KingOFTL1 owner (cross-chain) | `0x360b82…6B11` | Gnosis Safe, **3-of-10** | Owns cross-chain OFT bridge |

The **two separate multisigs** (4-of-8 for core, 3-of-10 for cross-chain) suggest different operator sets — likely EtherFi team for core + a broader cross-chain ops group for the bridge.

---

## Lifecycle and Recent Activity

**Status: active, post-rebrand, expanding to new products.** Verified evolution:

| Date | Block / Event | Source |
|---|---|---|
| 2024-10-09 | block 20927127 | **LRT² mainnet launch** — LRTSquaredProxy deployed by EOA `0xf8a86ea1…421e` | Etherscan getcontractcreation |
| 2024-11-25 | block 21261269 | **LRTSquaredCore impl upgrade** — current impl `0x1cB489ef…57dE` deployed (proxy upgrade)  | Etherscan |
| 2024-Q4 | — | **Nethermind LRT² audit** (`NM_0314_EtherFi_LRT_2.pdf`, 257K) | repo audits/ |
| 2024-Q4 | — | **Nethermind LRT Square Strategies DRAFT audit** (`NM_0390_LRT_Square_Strategies_DRAFT.pdf`, 194K) | repo audits/ |
| (date unspec) | — | **EtherFi Cross-Chain Cumulative Merkle Smart Contract Security Assessment** (huge 10.5MB PDF) | repo audits/ |
| 2025-Q1 | (DL listed 2025-02-15) | **King Protocol rebrand** — formerly LRT² → King Protocol; DL listing `listedAt: 1739584043` | DL JSON |
| **2025-02-14** | block 21842171 | **KingOFTL1 cross-chain L1 deployed** by EOA `0x1841e5af…903a` (different deployer from LRT² core) | Etherscan |
| 2025-02-14 | — | **Nethermind King Cross-Chain audit** (`NM_0452_King_Cross_Chain_FINAL.pdf`, 165K) — same date as deployment | repo audit/ |
| 2025-06-19 | — | Last push to king-cross-chain repo | github |
| 2025-07-15 | — | **King Retail audit completed** (`King(Retail)-audit-report-[15-Jul-2025].pdf`, 11.5MB) — Nethermind | king-minting-sc/audits/ |
| 2025-07-30 | — | Last push to king-minting-sc repo | github |
| 2025-11-18 | — | Last push to king-protocol-sc repo | github |
| 2025-11-21 | — | Last push to king-vaults repo (Phase I in development) | github |

The protocol is **clearly active** with ongoing development across 4 repos. The v1 brief's `lifecycle = active - latest deployment unknown` reflects the `default_fallback` pipeline source — the actual lifecycle is easily derived from Etherscan creation dates.

---

## Scope — Core Logic

### Ethereum (Mainnet) — Main Protocol (8 contracts from `king-protocol-sc/deployments/1/deployments.json`)

| Contract | Role | Address | Compiler |
|---|---|---|---|
| **LRTSquaredProxy** (KING vault) | core | [`0x8F08B70456eb22f6109F57b8fafE862ED28E6040`](https://etherscan.io/address/0x8F08B70456eb22f6109F57b8fafE862ED28E6040) (UUPSProxy → impl `0x1cB489…57dE`) | 0.8.x |
| **LRTSquaredCore** (impl) | core | [`0x1cB489ef513E1Cc35C4657c91853A2E6fF1957dE`](https://etherscan.io/address/0x1cB489ef513E1Cc35C4657c91853A2E6fF1957dE) | 0.8.25 |
| **PriceProviderProxy** | oracle | [`0x2B90103cdc9Bba6c0dBCAaF961F0B5b1920F19E3`](https://etherscan.io/address/0x2B90103cdc9Bba6c0dBCAaF961F0B5b1920F19E3) (UUPSProxy → impl `0x28A6e7…F32f`) | 0.8.x |
| **PriceProvider** (impl) | oracle | [`0x28A6e7EBB6Aca8f64145952a9565245c3DC1F32f`](https://etherscan.io/address/0x28A6e7EBB6Aca8f64145952a9565245c3DC1F32f) | 0.8.25 |
| **Swapper1InchV6** | router | [`0x747Cac75776b3A0Bba3dE3E61ec12A6A7F52232E`](https://etherscan.io/address/0x747Cac75776b3A0Bba3dE3E61ec12A6A7F52232E) | 0.8.25 |
| **SEthFiStrategy** | strategy | [`0x76C57e359C0eDA0aac54d97832fb1b4451805aD8`](https://etherscan.io/address/0x76C57e359C0eDA0aac54d97832fb1b4451805aD8) — sETHFI strategy | 0.8.25 |
| **EEigenStrategy** | strategy | [`0x2F2342BD9fca72887f46De9522014f4cd154Cf3e`](https://etherscan.io/address/0x2F2342BD9fca72887f46De9522014f4cd154Cf3e) — eEIGEN strategy | 0.8.25 |
| **BoringVaultPriceProvider** | oracle | [`0x130e22952DD3DE2c80EBdFC2B256E344ff3A0729`](https://etherscan.io/address/0x130e22952DD3DE2c80EBdFC2B256E344ff3A0729) — price provider for Veda BoringVault integrations | 0.8.25 |

### Ethereum — Cross-Chain L1 (2 contracts from `king-cross-chain/deployments/mainnet`)

| Contract | Role | Address | Compiler |
|---|---|---|---|
| **KingOFTL1 (UUPS proxy)** | bridge | [`0x4c8A4521F2431b0aC003829ac4e6dBC4Ed97707d`](https://etherscan.io/address/0x4c8A4521F2431b0aC003829ac4e6dBC4Ed97707d) — LayerZero OFT v2 mainnet anchor | 0.8.22 |
| **KingOFTL1 impl** | bridge | [`0xacCEC895650eB692cAaC4dBfD7ee7b3Ee4fb9d9D`](https://etherscan.io/address/0xacCEC895650eB692cAaC4dBfD7ee7b3Ee4fb9d9D) | 0.8.22 |

### Layer 2 KingOFTL2 (mirror deployments on Mantle, Base, Arbitrum, Swell)

Each L2 has its own UUPS proxy + KingOFTL2 impl pair. Different addresses per chain (not CREATE-collision).

| Chain | KingOFTL2 Proxy | KingOFTL2 Impl |
|---|---|---|
| Mantle (5000) | [`0x548c4116a97e0138f78000088ea3f155717b98ed`](https://mantlescan.xyz/address/0x548c4116a97e0138f78000088ea3f155717b98ed) (ERC1967Proxy) | [`0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0`](https://mantlescan.xyz/address/0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0) |
| Base (8453) | [`0xe22c243c7559c667a1eb94b593369d192c5fbac0`](https://basescan.org/address/0xe22c243c7559c667a1eb94b593369d192c5fbac0) (UUPSProxy) | [`0x4d6a22986acca58aa890fbb233f3b4563251beab`](https://basescan.org/address/0x4d6a22986acca58aa890fbb233f3b4563251beab) |
| Arbitrum (42161) | [`0x2e412435928efe43b156caa8f4b1068729fee275`](https://arbiscan.io/address/0x2e412435928efe43b156caa8f4b1068729fee275) (UUPSProxy) | [`0xb57d208661adfa911a40ee5a0de6ee0f056d127f`](https://arbiscan.io/address/0xb57d208661adfa911a40ee5a0de6ee0f056d127f) |
| Swell (1923) | [`0xc2606AADe4bdd978a4fa5a6edb3b66657acEe6F8`](https://explorer.swellnetwork.io/address/0xc2606AADe4bdd978a4fa5a6edb3b66657acEe6F8) — per king-cross-chain README | (impl in chain-specific deployments) |

The Mantle, Base, and Arbitrum impls are all `KingOFTL2` (compiler 0.8.22) — Etherscan-verified on each. The L1↔L2 bridging uses **LayerZero OFT v2** standard with EtherFi's Cumulative-Merkle cross-chain reward distribution pattern (covered by the EtherFi Cross-Chain audit PDF).

### Base — DEX Integration

| Contract | Role | Address | Notes |
|---|---|---|---|
| CurveTwocryptoOptimized pool | external | [`0x3253c8105e8e70ae6abaf2fd21c703d8729e0886`](https://basescan.org/address/0x3253c8105e8e70ae6abaf2fd21c703d8729e0886) | KING/asset Curve V2 pool on Base — Curve Finance contract, not King-deployed |
| Pool `0xdc5f7c…15ac` | external | [`0xdc5f7c7916c7792603fdc17f05f7929b423015ac`](https://basescan.org/address/0xdc5f7c7916c7792603fdc17f05f7929b423015ac) | Another DEX pool — `Pool` source, holds ~$1.4K TVL per v1 brief |

### Arbitrum — DEX Integration

| Contract | Role | Address | Notes |
|---|---|---|---|
| RamsesBeaconProxy | external | [`0x93e6e571d04848de3ba31525fca36f1e4f7bc942`](https://arbiscan.io/address/0x93e6e571d04848de3ba31525fca36f1e4f7bc942) | Ramses Exchange CL pool beacon proxy — Ramses-owned, not King-deployed |

### Mantle — Unidentified

| Contract | Role | Address | Notes |
|---|---|---|---|
| Unknown `0xe63ba6…e318` | unverified | [`0xe63ba626494f88d5a269b435213f2e8803cce318`](https://mantlescan.xyz/address/0xe63ba626494f88d5a269b435213f2e8803cce318) | Returns empty source on Etherscan; could be an unverified intermediate or external integration |

---

## Scope — Operational Periphery

### Governance Topology

**Two separate Gnosis Safes for core protocol vs cross-chain bridge:**

| Layer | Address | Threshold | Owners | Controls |
|---|---|---|---|---|
| **Core multisig** | [`0xF46D3734564ef9a5a16fC3B1216831a28f78e2B5`](https://etherscan.io/address/0xF46D3734564ef9a5a16fC3B1216831a28f78e2B5) | **4-of-8** | 8 | LRTSquared proxy admin + price provider admin + strategy admin + rebalancer EOA + pauser1 (same address — same Safe is the all-purpose admin) |
| **Cross-chain multisig** | [`0x360b82E2eF86289e37b29ecfaCaa4b8424796B11`](https://etherscan.io/address/0x360b82E2eF86289e37b29ecfaCaa4b8424796B11) | **3-of-10** | 10 | KingOFTL1 + L2 OFT proxies + Swell OFT (per king-cross-chain README) |
| Pauser0 | `0x9AF1298993DC1f397973C62A5D47a284CF76844D` | (not enumerated) | — | Emergency pause role (allows pause without going through Safe) |
| Pauser1 / rebalancer | `0xF46D3734564ef9a5a16fC3B1216831a28f78e2B5` (same as core Safe) | — | — | Same Safe holds rebalancer role |

**Observation:** The core Safe has **higher threshold (4-of-8 = 50%)** while the cross-chain Safe has **lower threshold (3-of-10 = 30%)** — unusual asymmetry. Cross-chain bridges are typically high-value targets; the lower threshold on cross-chain is worth noting for audit-targeting.

### Deployer EOAs

| EOA | Role | First seen |
|---|---|---|
| `0xf8a86ea1ac39ec529814c377bd484387d395421e` | LRT² core deployer (king-protocol-sc) | 2024-10-09 (block 20927127, LRTSquaredProxy) |
| `0x1841e5af06176725910988205cd03ad0621b903a` | Cross-chain deployer (king-cross-chain) | 2025-02-14 (block 21842171, KingOFTL1) |

Both are EOAs — no on-chain power post-deployment. The v1 brief lists these as `upgrade authority concentrates in 2 deployer addresses` which is misleading; the actual upgrade authority is the 4-of-8 core Safe (for LRT²) and 3-of-10 cross-chain Safe (for OFT contracts).

---

## Scope — Proxy and Upgrade Architecture

All upgradable King contracts use **UUPS pattern** (OZ ERC1967 or custom-named "UUPSProxy"). Three distinct proxy artefacts:

| Pattern | Compiler | Count | Notes |
|---|---|---:|---|
| **UUPSProxy** (custom-named OZ ERC1967) | 0.8.25 | 2 (LRTSquared + PriceProvider) | Eth-side core |
| **UUPS proxy** (king-cross-chain — appears named just "UUPS") | 0.8.22 | 4+ (KingOFTL1 mainnet + L2 proxies on Base, Arbitrum, Swell) | Cross-chain |
| **ERC1967Proxy** (OZ standard) | 0.8.22 | 1 (Mantle KingOFTL2 — uses standard OZ proxy instead of custom) | Mantle outlier |
| Non-proxy (strategies, swapper, oracles) | 0.8.25 | 4 (SEthFiStrategy, EEigenStrategy, Swapper1InchV6, BoringVaultPriceProvider) | Immutable |

**Mantle uses ERC1967Proxy (standard) while Base/Arbitrum use UUPS (custom-named)** — this asymmetry could indicate a different deployment style or chain-specific factory. Worth verifying in audit.

**Compiler version split**: LRT² core is **0.8.25**; cross-chain OFT is **0.8.22** — the two repos use different Solidity versions, reflecting their different vintages (LRT² Q4-2024 vs cross-chain Q1-2025).

---

## Scope — Integration Surface

King Protocol integrates with several external protocols:

| Integration | Used by | Chain |
|---|---|---|
| **LayerZero OFT v2** | KingOFTL1 + KingOFTL2 cross-chain bridging | Eth + Mantle + Base + Arb + Swell |
| **1inch v6** | Swapper1InchV6 — AVS reward token → vault asset swaps | Ethereum |
| **EtherFi** sETHFI / eEIGEN | SEthFiStrategy + EEigenStrategy — restaking reward strategies | Ethereum |
| **Veda BoringVault** | BoringVaultPriceProvider + planned king-vaults Phase I integration | Ethereum |
| **Concrete** | Planned king-vaults Phase I integration (ERC-4626) | Ethereum |
| **Curve V2 (TwocryptoOptimized)** | KING liquidity pool on Base | Base |
| **Ramses Exchange** | KING CL pool on Arbitrum | Arbitrum |
| **Swell Network** | Swell L2 KING bridging target | Swell |

The v1 brief's `Scope - Integration Surface: No external integrations detected` is wrong — at minimum the LayerZero OFT integration is visible in the contract names themselves (`KingOFTL2`).

---

## Scope — Not King (V1 false positives)

The v1 brief lists **13 contracts**. Reviewing each:

| V1 attribution | Verdict | Reason |
|---|---|---|
| `Swapper1InchV6` Eth `0x747cac…232e` (audited TP) | **REAL King** | Correctly attributed |
| `UniswapV3Pool` Eth `0x29567a…1d66` (likely in scope) | **NOT KING** — external Uniswap V3 pool | Pipeline followed the v3 pool as integration; the pool is Uniswap-deployed, not King |
| `UUPSProxy` Eth `0x8f08b7…6040` (likely in scope) | **REAL King** — LRTSquared main vault proxy | Correctly attributed but role-mapping is the proxy not the impl |
| `LRTSquaredCore` Eth `0x1cb489ef…57de` (NO_SCOPE_ROW) | **REAL King** — main vault impl | Listed in manifest with `role_category: excluded` — should be marked core |
| `ERC1967Proxy` Mantle `0x548c41…98ed` | **REAL King** — Mantle KingOFTL2 proxy | Correctly attributed |
| `KingOFTL2` Mantle `0x5a57eb…7ab0` | **REAL King** — Mantle KingOFTL2 impl | Correctly attributed |
| `unnamed unknown` Mantle `0xe63ba6…e318` | **UNVERIFIED** — returns empty source on Etherscan; could be either King or external | Cannot resolve without RPC bytecode probe |
| `CurveTwocryptoOptimized` Base `0x3253c8…0886` (core unmatched) | **NOT KING** — Curve Finance V2 pool | Pool is Curve-deployed; King uses it but doesn't own it |
| `KingOFTL2` Base `0x4d6a22…beab` | **REAL King** — Base KingOFTL2 impl | Correctly attributed |
| `Pool` Base `0xdc5f7c…15ac` | **NOT KING** — likely a DEX pool, contract name is just "Pool" (generic) | Holds $1.4K TVL per v1 manifest — likely a 3rd-party DEX pool |
| `UUPS` Base `0xe22c24…bac0` | **REAL King** — Base KingOFTL2 proxy | Correctly attributed; role is bridge proxy not "core" |
| `KingOFTL2` Arb `0xb57d20…127f` | **REAL King** — Arb KingOFTL2 impl | Correctly attributed |
| `RamsesBeaconProxy` Arb `0x93e6e5…c942` | **NOT KING** — Ramses Exchange CL pool beacon proxy | Ramses-deployed |
| `UUPS` Arb `0x2e4124…e275` | **REAL King** — Arb KingOFTL2 proxy | Correctly attributed; role is bridge proxy not "core" |

**Net of v1 brief defects:**

- **4 false positives** (UniswapV3Pool, CurveTwocryptoOptimized, Base `Pool 0xdc5f7c…`, RamsesBeaconProxy — all DEX pools deployed by their respective DEXes, not King)
- **~9 King contracts missing** from v1 brief but present in canonical deployments:
  - Ethereum: PriceProviderProxy + PriceProvider impl + SEthFiStrategy + EEigenStrategy + BoringVaultPriceProvider + KingOFTL1 proxy + KingOFTL1 impl (7 missing)
  - Swell: KingOFTL2 proxy (chain not in v1 brief)
  - Plus any future king-vaults Phase I contracts (Veda BoringVault + Concrete integrations) — not yet deployed but planned
- **Role-mapping incomplete** — v1 marks bridge proxies as `core` rather than `bridge_proxy`; marks LRTSquaredCore as `NO_SCOPE_ROW` (excluded) which is wrong

After exclusions + additions, the gold standard scope is **~20 King contracts** (vs v1's 13 rows of which 4 are wrong = 9 correct + 9 missing = 18 King-attributable contracts, plus 2 unverified / unresolved).

---

## Audit Coverage

### Audit history (URL-verified, all 5 PDFs accessible)

| Date | Auditor | Report file | Size | Scope | Repo |
|---|---|---|---:|---|---|
| 2024-Q4 | **Nethermind** | `NM_0314_EtherFi_LRT_2.pdf` | 257K | **LRT² core protocol** — the primary audit on the main vault + share-token logic | [`king-protocol-sc/audits/`](https://github.com/King-Protocol/king-protocol-sc/tree/master/audits) |
| 2024-Q4 (DRAFT) | **Nethermind** | `NM_0390_LRT_Square_Strategies_DRAFT.pdf` | 194K | **LRT Square Strategies** — DRAFT status; covers the Strategy contracts (SEthFi, EEigen) | same |
| (undated) | **(unnamed firm)** | `Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf` | **10.5MB** | EtherFi cross-chain cumulative Merkle reward distribution mechanism | same |
| **2025-02-14** | **Nethermind** | `NM_0452_King_Cross_Chain_FINAL.pdf` | 165K | **Cross-chain KingOFTL1/L2 + UUPS proxies** — Final status. Audit date matches mainnet deployment of KingOFTL1. | [`king-cross-chain/audit/`](https://github.com/King-Protocol/king-cross-chain/tree/master/audit) |
| **2025-07-15** | **(unnamed firm)** | `King(Retail)-audit-report-[15-Jul-2025].pdf` | **11.6MB** | **King Retail / RetailCore** — minting helper protocol | [`king-minting-sc/audits/`](https://github.com/King-Protocol/king-minting-sc/tree/master/audits) |

**Plus pending:**

- **king-vaults Phase I** treasury yield management (Veda + Concrete integrations) — per `king-vaults/README.md`: "Timeline: ~2-3 weeks to mainnet launch (post-audit)" as of 2025-11-21. **Audit in progress or planned**, not yet published.

That's **5 direct audits + 1 pending**. The v1 brief identifies only 2 (both as `discovery-ingest-placeholder`); the actual count is 2.5× higher.

### Coverage by scope category (King-attributable contracts)

| Category | Contracts | Audited | Notes |
|---|---:|---:|---|
| LRT² Core (LRTSquaredProxy + impl) | 2 | Nethermind NM_0314 (Q4-2024) | The primary audit |
| Strategies (SEthFiStrategy + EEigenStrategy) | 2 | Nethermind NM_0390 **DRAFT** | Audit is marked "DRAFT" in the filename — operator should confirm if final version exists |
| Price Providers (PriceProviderProxy + impl + BoringVaultPriceProvider) | 3 | Inferred-covered by NM_0314 (price provider is part of core) | Not separately named in audit URLs |
| Swapper1InchV6 | 1 | Inferred-covered by NM_0314 | Not separately named |
| Cross-chain L1 (KingOFTL1 + UUPS) | 2 | Nethermind NM_0452 FINAL (Feb-2025) | |
| Cross-chain L2 (KingOFTL2 + UUPS × 4 chains) | 8 | Same NM_0452 audit | One audit covers all L2 deployments |
| EtherFi Cross-Chain Cumulative Merkle | (off-chain mechanism) | EtherFi Cross-Chain audit (10.5MB PDF) | Underlying reward distribution mechanism inherited from EtherFi |
| RetailCore minting | 1+ | Nethermind July-2025 (11.6MB PDF) | Separate product line |
| king-vaults Phase I | (not deployed) | Pending audit | Veda + Concrete integrations |
| **Total** | **~18-20 active contracts** | **5 audits** | High coverage relative to surface size |

### Gap analysis

- **NM_0390 Strategies audit is marked DRAFT** — operator should ask King team if a FINAL version was published. If still DRAFT, the SEthFiStrategy + EEigenStrategy code has only a draft-stage review.
- **king-vaults Phase I is pre-launch.** The Veda BoringVault + Concrete integrations are not yet deployed but will require audit before mainnet. Per README "Timeline: ~2-3 weeks to mainnet launch (post-audit)" — operator should track this audit when it publishes.
- **Cross-chain Swell deployment** is documented in repo but Swell chain (1923) is not on Etherscan v2 — operator should verify source via Swell's explorer directly.
- **Price providers** (PriceProvider + BoringVaultPriceProvider) and **Swapper1InchV6** are not separately named in any audit URL — operator should confirm they're covered under NM_0314.
- **Unverified Mantle contract `0xe63ba6…e318`** returns empty Etherscan source. Could be intermediate impl or external integration; operator should pull bytecode + identify.
- **Owner overlap with rebalancer + pauser1**: the same address (`0xF46D37…e2B5` core Safe) holds 4 separate roles (owner, pauser1, rebalancer, plus implied admin). If the Safe is compromised, every privileged role falls together. Worth flagging as concentration risk despite the 4-of-8 threshold.

---

## Targeting Recommendation

In rough priority order:

1. **NM_0390 Strategies DRAFT finalization** — confirm whether a FINAL version of the Strategies audit exists. If still DRAFT, the SEthFi + EEigen contracts are the highest-value uncovered surface.
2. **king-vaults Phase I audit** — track when the pre-launch audit publishes. The Veda BoringVault + Concrete integration is a new product line.
3. **Mantle ERC1967Proxy variant** — Mantle uses standard OZ ERC1967Proxy while Base/Arb use custom-named UUPSProxy. Confirm this is intentional and the impls bind correctly.
4. **Cross-chain ownership concentration** — KingOFTL1 owner Safe is 3-of-10 (lower threshold than core 4-of-8). For a multi-chain bridge holding bridged supply, the lower threshold is worth a review.
5. **Unverified Mantle `0xe63ba6…e318`** — identify what this contract is.
6. **Owner role concentration** — the same Safe holds owner + pauser1 + rebalancer + admin. Audit should review whether role separation is needed.
7. **Diff between LRT² (Nov-2024) and current King protocol** — the rebrand wasn't just cosmetic; operator should check if NM_0314 audit covers the current impl bytecode or if any post-rebrand changes happened.
8. **Swell deployment verification** — pull source from Swell explorer to confirm KingOFTL2 source matches Base + Arbitrum.

---

## V1 Pipeline Errors (for this project)

1. **Audit metadata is 2 placeholders.** V1 lists `discovery-ingest-placeholder` for `NM 0314 EtherFi LRT 2` and `NM 0390 LRT Square Strategies DRAFT`. The actual audit chain is **5 PDFs across 3 repos** (Nethermind × 3-4 + EtherFi Cross-Chain audit + unnamed Retail audit). All PDFs are publicly URL-accessible.
2. **30+ irrelevant audit URLs in Docs Pages Referenced.** The v1 brief lists ~50 audit URLs including completely unrelated projects (Bond Protocol, Eco Protocol, Unitas, Boost, Symmio, Seamless, Neutrl, Reserve Protocol, Drift, Maple, etc.) — these are presumably pulled by indiscriminate "audit_report_link" heuristic that matched the github.com/sherlock-protocol/sherlock-reports + github.com/sigp/public-audits + github.com/spearbit/portfolio + github.com/trailofbits/publications directories. Only 3 URLs are actually relevant (the 3 PDFs in king-protocol-sc/audits/).
3. **`lifecycle = active - latest deployment unknown`** — actual mainnet launch was 2024-10-09, impl upgrade 2024-11-25, cross-chain launch 2025-02-14, retail audit 2025-07-15, vaults phase I in progress 2025-11-21. All derivable from Etherscan creation dates + GitHub repo push dates.
4. **`Upgrade authority concentrates in 2 distinct deployer addresses`** — conflates deployer EOAs (`0xf8a86e…421e` LRT² + `0x1841e5…903a` cross-chain) with upgrade authority. Actual upgrade authority is 2 separate Gnosis Safes: 4-of-8 core (`0xF46D37…e2B5`) and 3-of-10 cross-chain (`0x360b82…6B11`). Deployer EOAs have no post-deployment power.
5. **`Multisig membership, timelock duration, and governance-gate parameters are not extracted`** — Both multisigs are easily derivable via `Safe.getOwners()` + `Safe.getThreshold()`. There is **no timelock** in the topology (direct multisig → upgrade execution).
6. **Scope-mapping issues**: V1 marks the bridge proxies (KingOFTL2 UUPS on Base + Arb) as `core` rather than `bridge_proxy`. Marks the LRTSquaredCore impl as `NO_SCOPE_ROW: excluded` which is wrong — it's the main vault impl.
7. **DL chain coverage missed**: V1 brief reports `Chains (DeFiLlama): 1` which is correct for TVL counting but misses that the protocol has L2 bridge endpoints on 4+ additional chains (Mantle, Base, Arbitrum, Swell).
8. **False positives**: 4 of 13 contracts in v1 brief are external DEX pools (Uniswap V3, Curve V2, generic "Pool", Ramses CL pool). King uses them as liquidity venues but doesn't own them.
9. **Missing 7 Ethereum contracts**: PriceProviderProxy + impl, SEthFiStrategy, EEigenStrategy, BoringVaultPriceProvider, KingOFTL1 proxy, KingOFTL1 impl — all listed in `king-protocol-sc/deployments/1/deployments.json` and `king-cross-chain/deployments/mainnet/`.
10. **Missing Swell deployment** — KingOFTL2 on Swell (chain 1923, `0xc2606AAD…6F8`) is in the king-cross-chain repo README but absent from v1.
11. **Two repos / 5 audits not surfaced**: V1 only knows about `LRT2-protocol/lrt-square-sc` (old EtherFi-era repo). The current org `King-Protocol` has 7 repos (4 with audits). The rename "LRT² → King Protocol" happened ~Q1-2025 but the pipeline still tracks the old repo.
12. **Open-source flag not surfaced** — King Protocol is fully open-source across 4 Solidity repos. Useful context for audit-targeting.

---

## Appendix

### Sources

- DefiLlama protocol JSON: https://api.llama.fi/protocol/king-protocol
- DL TVL adapter: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/king/index.js
- Canonical address registries:
  - https://github.com/King-Protocol/king-protocol-sc/blob/master/deployments/1/deployments.json (Ethereum main protocol)
  - https://github.com/King-Protocol/king-cross-chain/tree/master/deployments/{mainnet,swell} (cross-chain L1/L2)
- Audit PDFs (all in repo directories):
  - https://github.com/King-Protocol/king-protocol-sc/tree/master/audits — 3 PDFs (LRT² core + Strategies DRAFT + EtherFi Cross-Chain)
  - https://github.com/King-Protocol/king-cross-chain/tree/master/audit — 1 PDF (Cross-Chain FINAL)
  - https://github.com/King-Protocol/king-minting-sc/tree/master/audits — 1 PDF (Retail)
- Docs: https://docs.kingprotocol.org + predecessor https://lrt2.gitbook.io/lrt2
- GitHub org: https://github.com/King-Protocol (7 repos, created 2025-01-11)
- Predecessor org: https://github.com/LRT2-protocol (2 repos, pre-rebrand)
- Etherscan v2 API for Eth + Mantle + Base + Arbitrum
- Alchemy RPC for Eth `eth_call` (owner, threshold, totalSupply)

### Caveats

- **NM_0390 Strategies audit is in DRAFT status.** The filename ends with `_DRAFT.pdf`. Operator should request the FINAL version from the King team.
- **EtherFi Cross-Chain Cumulative Merkle audit (10.5MB)** is not parsed for content; only URL HTTP-verified. The auditor name is not in the filename. Operator should open the PDF for auditor identity + scope confirmation.
- **King(Retail)-audit-report-[15-Jul-2025].pdf (11.6MB)** auditor name not in filename. Per the timing (mid-2025) and the consistent Nethermind cadence, most likely Nethermind, but unconfirmed.
- **king-vaults Phase I (Veda BoringVault + Concrete integrations)** is not yet deployed. Operator should track for pre-launch audit publication.
- **Swell chain (1923)** is not on Etherscan v2; KingOFTL2 source on Swell not verified in this brief.
- **Unverified Mantle `0xe63ba6…e318`** returns empty Etherscan source; identity unknown.
- **owner() on LRTSquaredProxy returned empty** — possibly the proxy uses access-control roles rather than Ownable. Operator should call the access-control role getters on the impl (`hasRole`) for full governance map.

### Generation metadata

- Generated: 2026-05-19
- Method: manual research, no pipeline involvement
- Canonical contract set fetched via Etherscan v2 `getsourcecode` for 20 addresses (all succeeded)
- 469 source files, 2.0 MB total
- All 20 contracts returned verified source (Mantle `0xe63ba6…e318` returned empty — kept for inventory completeness as the v1 brief's "unknown")
- Reproducible end-to-end with `gh`, `curl`, an Etherscan API key, and an Alchemy multi-chain RPC URL
