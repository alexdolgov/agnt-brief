# Agentic Brief: King Protocol (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md), [`manifest_gold_standard.json`](manifest_gold_standard.json), and [`contracts_gold_standard/`](contracts_gold_standard/). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** King Protocol — **formerly LRT²** (LRT Square) (DL slug `king-protocol`)
- **Builder:** EtherFi
- **Tagline:** "Unified restaking rewards protocol"
- **Website:** kingprotocol.org · **Docs:** docs.kingprotocol.org · **Predecessor docs:** lrt2.gitbook.io/lrt2
- **GitHub org:** [King-Protocol](https://github.com/King-Protocol) (7 public repos) + predecessor [LRT2-protocol](https://github.com/LRT2-protocol)
- **DL category:** Liquid Restaking
- **Chains (verified):** **5 EVM chains** — Ethereum (1), Mantle (5000), Base (8453), Arbitrum (42161), Swell (1923)
- **TVL:** **$1.27M** (DL fresh 2026-05-15, Ethereum-only)
- **KING token totalSupply:** 6,629.93 (queried 2026-05-19)
- **Audit history:** **5 direct security audits** (4 Nethermind + 1 unnamed-firm 11.6MB Retail audit) across 3 repos.
- **Lifecycle:** **active, post-rebrand, expanding (king-vaults Phase I in development).** Mainnet 2024-10-09, cross-chain 2025-02-14, Retail 2025-07-15.
- **Tier:** **Tier 2 — small-TVL specialized restaking-rewards vault with thin audit coverage on a growing surface.**
- **Commercial fit:** **diff-audit + Strategy DRAFT finalization + king-vaults Phase I pre-launch audit.**

King Protocol has **20 EVM contracts** enumerated in this gold standard (across 4 chains; Swell out-of-scope for Etherscan v2). The v1 pipeline brief renders **13 rows** of which **5 are false positives** (4 DEX pools + 1 reclassified-on-chain — Mantle `0xe63ba6…e318` now confirmed as Merchant Moe LP) and **7 King contracts are missing** (PriceProvider × 2, Strategies × 2, BoringVaultPriceProvider, KingOFTL1 × 2).

---

## Per-Chain TVL + Per-Contract On-Chain State (queried 2026-05-19)

DL counts Ethereum only ($1.27M) because that's where the AVS-reward vault sits; L2s are LayerZero OFT v2 bridge endpoints with bridged-derivative KING supply, not independent TVL.

### Per-Chain Snapshot

| Chain | Chain ID | DL TVL (USD) | KING totalSupply (on-chain) | Share of master |
|---|---:|---:|---:|---:|
| Ethereum | 1 | **$1,274,136** | **6,629.87 KING** | 100% (master) |
| Mantle | 5000 | $0 | 255.11 KING | 3.85% |
| Base | 8453 | $0 | 159.55 KING | 2.41% |
| Arbitrum | 42161 | $0 | 72.55 KING | 1.09% |
| Swell | 1923 | $0 | (not queryable) | n/a |
| **Total** | — | **$1,274,136** | **6,629.87 master + ~487 L2 bridged (7.35%)** | — |

### Per-Token AVS Holdings at LRTSquaredProxy (Ethereum)

| Token | Balance | USD Value | % of TVL |
|---|---:|---:|---:|
| EIGEN | 4,690,096.44 | $878,906 | **68.98%** |
| WETH | 136.54 | $291,557 | **22.88%** |
| ETHFI | 210,512.91 | $79,646 | 6.25% |
| MNT | 37,188.85 | $23,391 | 1.84% |
| KERNEL | 9,895.23 | $637 | 0.05% |
| SWELL | 38.72 | $0.054 | 0.00% |
| **Total DL** | — | **$1,274,136** | **100%** |

**Concentration finding:** EIGEN + WETH = 91.86% of TVL. Vault exposure is heavily skewed to two tokens.

### Per-Contract Governance State

| Contract | Field | Value |
|---|---|---|
| LRTSquaredProxy | `owner()` | (empty — uses AccessControl roles, not Ownable) |
| BoringVaultPriceProvider | `owner()` | `0xF46D37…e2B5` (core Safe) |
| KingOFTL1 Proxy | `owner()` | `0x360b82…6B11` (cross-chain Safe) |
| Core Safe | threshold / owners | 4-of-8 / 8 distinct owners |
| Cross-chain Safe | threshold / owners | 3-of-10 / 10 distinct owners |
| **Safe overlap** | shared owners | **3 EOAs sit on both Safes (37.5% of core, 30% of cross-chain)** |
| Distinct human operators across both Safes | — | **15** (not 18 as naive count) |
| Pauser0 | EOA / contract? | EOA (no code) |

**Safe overlap detail (3 shared owners):**
- `0xcfd4ea…2955`
- `0x2210dc…cd02e`
- `0x0fce5c…f444`

These 3 shared keys are insufficient alone to execute either Safe (need 4-of-8 / 3-of-10) but the partial overlap means core and cross-chain governance domains are not fully independent. Material for any post-mortem if a single operator is compromised.

### Proxy Impl Pointers (storage-slot-verified 2026-05-19)

All 6 ERC1967 proxies (LRTSquared + PriceProvider + KingOFTL1 + 3× KingOFTL2) have impl slots matching the canonical `deployments.json` impls. No anomalous proxy bindings.

### Mantle "Unknown" 0xe63ba6 — RESOLVED

Direct eth_call probe shows: `symbol()` = `MoeLP`, `name()` = `Moe LP Token`, `totalSupply()` = 9.42. This is a **Merchant Moe** (Mantle Trader Joe fork) **LP Token** — a 3rd-party DEX integration, NOT King-deployed. Reclassified from `unverified` to `external_dex`. Joins the Curve V2 (Base), generic Pool (Base), and Ramses CL (Arb) entries as a 5th external DEX integration.

---

## Lifecycle and Recent Activity

Lifecycle status: **ACTIVE**. Verified by:

- **2024-10-09** (block 20927127): LRT² mainnet launch — LRTSquaredProxy deployed by EOA `0xf8a86e…421e`
- **2024-11-25** (block 21261269): LRTSquared impl upgrade — current impl `0x1cB489…57dE`
- **2024-Q4**: Nethermind LRT² audit + LRT Square Strategies DRAFT audit
- **2025-Q1**: Rebrand LRT² → King Protocol; DL listed 2025-02-15
- **2025-02-14** (block 21842171): KingOFTL1 cross-chain L1 deployed; Nethermind cross-chain FINAL audit completed same day
- **2025-07-15**: King Retail audit (11.6MB PDF)
- **2025-11-18**: Last push to king-protocol-sc
- **2025-11-21**: king-vaults Phase I development push (audit-in-progress per README)

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **20 EVM contracts** across 4 chains.

External-audit coverage breakdown (5 PDFs):
- **Nethermind ×4**: LRT² core (NM_0314), Strategies DRAFT (NM_0390), Cross-Chain FINAL (NM_0452, Feb-2025), Retail (King-Retail Jul-2025 presumed Nethermind)
- **Unnamed firm**: EtherFi Cross-Chain Cumulative Merkle Smart Contract Security Assessment (10.5MB, undated)

**Priority order:**

1. **NM_0390 Strategies DRAFT finalization** — audit is marked DRAFT in filename; confirm if FINAL version exists. SEthFiStrategy + EEigenStrategy are the highest-value uncovered surface if still DRAFT.
2. **king-vaults Phase I pre-launch audit** — Veda BoringVault + Concrete ERC-4626 integrations; not yet deployed.
3. **Mantle proxy variant** — Mantle uses standard OZ ERC1967Proxy, Base/Arb use custom UUPSProxy; confirm intentional.
4. **Cross-chain Safe asymmetry** — 3-of-10 cross-chain Safe vs 4-of-8 core Safe; review threshold rationale.
5. ~~Unverified Mantle `0xe63ba6…e318`~~ — **resolved 2026-05-19**: Merchant Moe LP Token (3rd-party DEX); no further action needed.
6. **Owner role concentration** — same Safe holds owner + pauser1 + rebalancer; review role separation.
7. **Swell deployment verification** — pull source from Swell explorer.

---

## Scope — Core Logic

### Ethereum — Main Protocol (8 contracts from `king-protocol-sc/deployments/1/deployments.json`)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| LRTSquaredProxy | core | KING vault UUPSProxy (the main King vault contract) | audited (NM_0314) | [0x8F08B7…6040](https://etherscan.io/address/0x8F08B70456eb22f6109F57b8fafE862ED28E6040) |
| LRTSquaredCore | core | Main vault impl (compiler 0.8.25) | audited (NM_0314) | [0x1cB489…57dE](https://etherscan.io/address/0x1cB489ef513E1Cc35C4657c91853A2E6fF1957dE) |
| PriceProviderProxy | oracle | UUPSProxy | inferred-covered NM_0314 | [0x2B9010…19E3](https://etherscan.io/address/0x2B90103cdc9Bba6c0dBCAaF961F0B5b1920F19E3) |
| PriceProvider | oracle | Price provider impl | inferred-covered | [0x28A6e7…F32f](https://etherscan.io/address/0x28A6e7EBB6Aca8f64145952a9565245c3DC1F32f) |
| Swapper1InchV6 | router | 1inch v6 swap router | audited (TP per v1) | [0x747Cac…232E](https://etherscan.io/address/0x747Cac75776b3A0Bba3dE3E61ec12A6A7F52232E) |
| SEthFiStrategy | strategy | sETHFI strategy | NM_0390 **DRAFT** | [0x76C57e…05aD8](https://etherscan.io/address/0x76C57e359C0eDA0aac54d97832fb1b4451805aD8) |
| EEigenStrategy | strategy | eEIGEN strategy | NM_0390 **DRAFT** | [0x2F2342…Cf3e](https://etherscan.io/address/0x2F2342BD9fca72887f46De9522014f4cd154Cf3e) |
| BoringVaultPriceProvider | oracle | Price provider for Veda BoringVault integrations | inferred-covered | [0x130e22…0729](https://etherscan.io/address/0x130e22952DD3DE2c80EBdFC2B256E344ff3A0729) |

### Ethereum — Cross-Chain L1 (2 contracts from `king-cross-chain/deployments/mainnet`)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| KingOFTL1 UUPS proxy | bridge | LayerZero OFT v2 mainnet anchor | audited (NM_0452) | [0x4c8A45…707d](https://etherscan.io/address/0x4c8A4521F2431b0aC003829ac4e6dBC4Ed97707d) |
| KingOFTL1 impl | bridge | LayerZero OFT v2 impl (compiler 0.8.22) | audited (NM_0452) | [0xacCEC8…9d9D](https://etherscan.io/address/0xacCEC895650eB692cAaC4dBfD7ee7b3Ee4fb9d9D) |

### Mantle (chain 5000) — KingOFTL2 mirror + DEX integration

| Contract | Role | Address |
|---|---|---|
| KingOFTL2 (ERC1967Proxy) | bridge | [0x548c41…98ed](https://mantlescan.xyz/address/0x548c4116a97e0138f78000088ea3f155717b98ed) |
| KingOFTL2 impl | bridge | [0x5a57eb…7ab0](https://mantlescan.xyz/address/0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0) |
| Merchant Moe LP Token (`MoeLP`) | external_dex | [0xe63ba6…e318](https://mantlescan.xyz/address/0xe63ba626494f88d5a269b435213f2e8803cce318) — resolved 2026-05-19 via on-chain `symbol()`+`name()`. Not King-deployed. |

### Base (chain 8453) — KingOFTL2 mirror + DEX

| Contract | Role | Address |
|---|---|---|
| KingOFTL2 UUPS proxy | bridge | [0xe22c24…bac0](https://basescan.org/address/0xe22c243c7559c667a1eb94b593369d192c5fbac0) |
| KingOFTL2 impl | bridge | [0x4d6a22…beab](https://basescan.org/address/0x4d6a22986acca58aa890fbb233f3b4563251beab) |

### Arbitrum (chain 42161) — KingOFTL2 mirror

| Contract | Role | Address |
|---|---|---|
| KingOFTL2 UUPS proxy | bridge | [0x2e4124…e275](https://arbiscan.io/address/0x2e412435928efe43b156caa8f4b1068729fee275) |
| KingOFTL2 impl | bridge | [0xb57d20…127f](https://arbiscan.io/address/0xb57d208661adfa911a40ee5a0de6ee0f056d127f) |

### Swell (chain 1923, not in Etherscan v2)

| Contract | Role | Address |
|---|---|---|
| Swell OFT2 KING (UUPS proxy) | bridge | [0xc2606A…6F8](https://explorer.swellnetwork.io/address/0xc2606AADe4bdd978a4fa5a6edb3b66657acEe6F8) |

---

## Scope — Operational Periphery

**Two separate Gnosis Safes for core vs cross-chain:**

| Layer | Address | Threshold | Owners | Role |
|---|---|---|---|---|
| Core multisig | [0xF46D37…e2B5](https://etherscan.io/address/0xF46D3734564ef9a5a16fC3B1216831a28f78e2B5) | **4-of-8** | 8 | LRT² owner + pauser1 + rebalancer (concentrated roles) |
| Cross-chain multisig | [0x360b82…6B11](https://etherscan.io/address/0x360b82E2eF86289e37b29ecfaCaa4b8424796B11) | **3-of-10** | 10 | KingOFTL1 + L2 OFT owners (per cross-chain README) |
| Pauser0 EOA | `0x9AF12989…44D` | n/a | — | Emergency pause (no Safe gate) |

**Notable**: cross-chain threshold (3-of-10 = 30%) is lower than core (4-of-8 = 50%) — asymmetric.

**Deployer EOAs (no post-deployment power):**

| EOA | Role | First seen |
|---|---|---|
| `0xf8a86e…421e` | LRT² core deployer | 2024-10-09 |
| `0x1841e5…903a` | Cross-chain deployer | 2025-02-14 |

---

## Scope — Proxy and Upgrade Architecture

| Pattern | Compiler | Count | Notes |
|---|---|---:|---|
| **UUPSProxy** (LRT² custom-named, OZ ERC1967 underneath) | 0.8.25 | 2 (LRTSquared + PriceProvider) | Eth core |
| **UUPS** proxy (king-cross-chain) | 0.8.22 | 4+ (KingOFTL1 + L2 on Base, Arb, Swell) | Cross-chain |
| **ERC1967Proxy** (OZ standard, Mantle outlier) | 0.8.22 | 1 (Mantle KingOFTL2) | Mantle uses different proxy variant |
| Non-proxy (Swapper, Strategies, BoringVaultPriceProvider) | 0.8.25 | 4 | Immutable |

**Compiler split**: LRT² core = 0.8.25, cross-chain OFT = 0.8.22 — different repos use different Solidity versions.

---

## Scope — Integration Surface

| Integration | Used by | Chain |
|---|---|---|
| **LayerZero OFT v2** | KingOFTL1 + L2 cross-chain bridging | all 5 chains |
| **1inch v6** | Swapper1InchV6 for AVS reward → vault asset swaps | Ethereum |
| **EtherFi (sETHFI + eEIGEN)** | SEthFi + EEigen strategy contracts | Ethereum |
| **Veda BoringVault** | BoringVaultPriceProvider + planned king-vaults | Ethereum |
| **Concrete (ERC-4626)** | Planned king-vaults Phase I | Ethereum |
| **Curve V2 TwocryptoOptimized** | KING liquidity venue | Base |
| **Ramses Exchange** | KING liquidity venue | Arbitrum |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Direct audits | Notes |
|---|---:|---:|---|
| LRT² Core (vault proxy + impl) | 2 | Nethermind NM_0314 (Q4-2024) | Primary audit |
| Strategies (SEthFi + EEigen) | 2 | Nethermind NM_0390 **DRAFT** | Audit marked DRAFT — operator should confirm FINAL |
| Price Providers | 3 | Inferred (NM_0314) | Not separately named |
| Swapper1InchV6 | 1 | Inferred (NM_0314) | Not separately named |
| Cross-chain (KingOFTL1 + L2 ×4) | 10 | Nethermind NM_0452 FINAL (Feb-2025) | Single audit covers all chains |
| EtherFi Cross-Chain Cumulative Merkle | (off-chain) | EtherFi Cross-Chain audit (10.5MB) | Inherited from EtherFi |
| RetailCore minting | 1+ | Nethermind July-2025 (11.6MB) | Separate repo |
| king-vaults Phase I | (not deployed) | Pending | Audit in progress |
| **Total** | **~20** | **5** | Reasonable coverage for surface size |

### Past Audits

| Date | Auditor | Scope | Link |
|---|---|---|---|
| 2024-Q4 | Nethermind | LRT² core | [NM_0314_EtherFi_LRT_2.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) |
| 2024-Q4 (DRAFT) | Nethermind | LRT Square Strategies | [NM_0390_LRT_Square_Strategies_DRAFT.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) |
| (undated) | (unnamed firm) | EtherFi Cross-Chain Cumulative Merkle (10.5MB) | [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) |
| 2025-02-14 | Nethermind | King Cross-Chain | [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) |
| 2025-07-15 | (unnamed firm, presumed Nethermind) | King Retail (11.6MB) | [King(Retail)-audit-report-[15-Jul-2025].pdf](https://github.com/King-Protocol/king-minting-sc/blob/master/audits/King%28Retail%29-audit-report-%5B15-Jul-2025%5D.pdf) |

### Gap Analysis

- **NM_0390 Strategies audit is DRAFT** — confirm FINAL version
- **king-vaults Phase I audit pending** — track for publication
- **EtherFi Cross-Chain Cumulative Merkle audit (10.5MB)** auditor identity unconfirmed; not parsed
- **King Retail audit auditor identity** unconfirmed (presumed Nethermind based on cadence)
- **Mantle `0xe63ba6…e318` resolved** (2026-05-19) — Merchant Moe LP Token (3rd-party DEX); reclassified as external_dex.
- **Swell deployment source verification** outside Etherscan v2

Last direct audit: **King Retail July-2025** — ~10 months before this brief.

---

## Appendix

### Docs Pages Referenced

- https://docs.kingprotocol.org (current docs)
- https://lrt2.gitbook.io/lrt2 (predecessor LRT² docs)
- https://github.com/King-Protocol — main org (7 repos)
- https://github.com/LRT2-protocol — predecessor org (2 repos)

### Audit Reports (full list, time-ordered)

1. 2024-Q4 — Nethermind — LRT² core (NM_0314) — direct
2. 2024-Q4 — Nethermind — Strategies DRAFT (NM_0390) — direct (DRAFT)
3. (undated) — (unnamed) — EtherFi Cross-Chain Cumulative Merkle — direct
4. 2025-02-14 — Nethermind — King Cross-Chain (NM_0452) — direct
5. 2025-07-15 — (unnamed, presumed Nethermind) — King Retail — direct

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) — 20 contracts, 469 source files, ~2.0 MB

### Excluded Contracts (v1 false positives)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| Uniswap V3 pool (external) | 1 | `0x29567ae…1d66` on Eth — Uniswap-deployed pool |
| Curve V2 TwocryptoOptimized (external) | 1 | `0x3253c8…0886` on Base — Curve-deployed pool |
| Generic "Pool" (external DEX) | 1 | `0xdc5f7c…15ac` on Base — 3rd-party DEX pool |
| Ramses BeaconProxy (external) | 1 | `0x93e6e5…c942` on Arb — Ramses Exchange CL pool |
| Merchant Moe LP Token (external) | 1 | `0xe63ba6…e318` on Mantle — `MoeLP` / `Moe LP Token`, resolved 2026-05-19 via on-chain `symbol()`+`name()`. Joins the other DEX pool entries. |
| **Total false positives** | **5** | |

### Data Availability Notes

- **Canonical address sources:** `king-protocol-sc/deployments/1/deployments.json` (Eth core) + `king-cross-chain/deployments/{mainnet,swell}` (cross-chain)
- **Provenance classification:** Per-role mapping from deployment.json + cross-chain README contracts table
- **Multisig metadata:** Core 4-of-8 + cross-chain 3-of-10 (both confirmed via `Safe.getOwners()` + `Safe.getThreshold()`)
- **Timelock:** **None** in the topology (direct multisig → upgrade execution; no delay)
- **Per-contract TVL:** $1.27M total at LRTSquaredProxy address (Ethereum); 100% concentrated at the L1 vault (no DL TVL at any L2 endpoint). EIGEN + WETH together = 91.86% of value. Minor TVL (~$1.4K) at Base "Pool" DEX per v1 manifest is outside DL's count (DL adapter only sums tokens at LRTSquaredProxy).

### Generation Metadata

- **Generated at:** 2026-05-19
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** 2026-05-15
- **Etherscan v2:** Eth + Mantle + Base + Arbitrum (Swell not supported)
- **Alchemy RPC:** Ethereum for `eth_call` verification

---

## Divergences from v1 SCOPE_NOTE.md

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `total_contracts` | 13 | 20 King-attributable EVM (+ 1 Swell out of EVM scope) | V1 missed 7 Eth contracts (PriceProvider × 2 + Strategies × 2 + BoringVaultPriceProvider + KingOFTL1 × 2) + Swell; includes 4 false positives (DEX pools) |
| `chains (topography)` | 1, 5000, 8453, 42161 | 1, 5000, 8453, 42161, 1923 (Swell) | V1 missed Swell |
| `tvl` | $1.35M (stale) | $1.27M (fresh) | Minor staleness |
| `audits` | 2 placeholders | 5 PDFs (4 Nethermind + 1 unnamed) across 3 repos | V1 didn't parse audit-link URLs into structured entries |
| `lifecycle_status_source` | default_fallback | etherscan getcontractcreation + github commits | V1 didn't query Etherscan |
| `proxy_count` | 4 | 7+ (2 UUPSProxy Eth core + 2 UUPS cross-chain L1 + 3+ L2 proxies + 1 Mantle ERC1967Proxy) | V1 missed cross-chain proxies |
| `multisig_metadata` | "not extracted" | Core 4-of-8 + cross-chain 3-of-10 (both Gnosis Safes confirmed) | V1 doesn't query Safe |
| `upgrade_authority` | "2 deployer EOAs (0x1841e5…+0xf8a86e…)" | Conflates deployer EOAs with upgrade authority — actual upgrade authority is **2 Gnosis Safes** (4-of-8 core + 3-of-10 cross-chain) | V1 conflates deployer with upgrade auth |
| `integration_surface` | "No external integrations detected" | LayerZero OFT v2, 1inch v6, EtherFi sETHFI/eEIGEN, Veda BoringVault, Curve V2, Ramses Exchange, Swell Network | V1 doesn't follow integration boundaries |
| `unknown 0xe63ba6…e318` (Mantle) | "unidentified" | **Merchant Moe LP Token (external DEX)** — resolved via on-chain `symbol()`+`name()` 2026-05-19 | Direct eth_call settles identity |
| `false_positives` | 4 DEX pools (Uniswap V3, Curve V2, Pool, Ramses) | **5 DEX pools** (adds Mantle Moe LP) | Pipeline followed integration boundaries |
| `predecessor` | not surfaced | LRT² → King Protocol rebrand 2025-Q1; EtherFi-built; predecessor org `LRT2-protocol` | Material context |
| `tier` | 1 - partial_audit_gap (small_tvl_coverage_filler) | 2 - small-TVL specialized restaking-rewards vault | Tier same; framing refined |
