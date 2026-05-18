# Agentic Brief: Extra Finance (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md), [`manifest_gold_standard.json`](manifest_gold_standard.json), and [`contracts_gold_standard/`](contracts_gold_standard/). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** Extra Finance (DL parent slug `extra-finance`)
- **Website:** https://extrafi.io · **XLend:** https://xlend.extrafi.io · **Docs:** docs.extrafi.io
- **Source:** **CLOSED-SOURCE** — no public github for protocol contracts. Etherscan-verified source is the only public code surface. (DL JSON `github: None`.)
- **DL slugs:** **3 child slugs under a parent** — `extra-finance-leverage-farming` (Leveraged Farming) + `extra-finance-xlend` (Lending, Aave V3 fork) + `extra-finance-vaults` (Onchain Capital Allocator, Morpho curator)
- **Chains (verified):** Optimism (10), Base (8453), Berachain (80094) — though Berachain TVL is ~$19
- **TVL:** **$30.65M total** = $27.59M Leverage Farming + $1.94M XLend + $1.12M Vaults + $733K borrowed. The v1 brief reports $87.8M (stale by ~65%).
- **EXTRA token outstanding supply:** **1,000,000,000** (1B EXTRA on Optimism, bridged via LayerZero OFT v1 to Base + Berachain — same address `0x2dAD3a13…7938F8`)
- **Lifecycle:** **active, multi-product, expansion-phase.** XLend on Base + Vaults on Morpho are recent additions (post-2024). 3 direct audits + Aave V3 + Morpho V1.1 inherited chains.
- **Audit history:** **3 direct security audits** (Sherlock 2024-12-01, PeckShield, BlockSec) + inherited Aave V3 audit chain for XLend + Morpho V1.1 audit chain for Vaults.
- **Tier:** **Tier 1 — large-TVL multi-product LYF protocol with deep audit coverage on core + Aave V3 inheritance on lending.**
- **Commercial fit:** **diff-targeting on Leverage Farming + cross-product integration audit** (XLend → Vault → LF flows are the audit gap).

Extra Finance has **26 canonical contracts** enumerated in this gold standard across 3 products + 3 chains:
- Leverage Farming (8): EXTRA token × 2 chains + LendingPool × 2 + VeloPositionManager × 2 + VeToken (OP) + RewardDistributor (OP)
- XLend Aave V3 fork (16): Optimism 10 contracts + Base 6 contracts
- Vaults (2): USDC vault + WETH vault on Morpho (Base)

The v1 pipeline brief renders only **5 contracts** — undercounting by ~5× because it misses entire XLend + Vaults products and the Base instances of LendingPool + VeloPositionManager.

---

## Lifecycle and Recent Activity

Lifecycle status: **ACTIVE**. Verified by:

- DL JSON has 3 child slugs all with non-trivial TVL (LF $27.59M, XLend $1.94M, Vaults $1.12M)
- Most recent audit: Sherlock 2024-12-01 (~17 months before this brief)
- XLend Base deployment + Vaults on Morpho are visibly recent additions (XLend Base PoolAddressesProvider was deployed post-Aave-V3-Base-2024)
- EXTRA token integrated as LayerZero OFT on 3 chains (Optimism + Base + Berachain)
- Snapshot governance (`extradao.eth`) active

Lifecycle source: **Etherscan + DL child slug enumeration + docs page update cadence**. The v1 brief's `lifecycle = active - latest deployment unknown` is correct on "active" but the "unknown deployment" reflects pipeline failure to query Etherscan creation dates.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **26 contracts across 3 products + 3 chains**.

External-audit coverage breakdown:
- **Leverage Farming (8 contracts)**: 100% direct (Sherlock + PeckShield + BlockSec all cover this product). Most recent audit Sherlock 2024-12-01.
- **XLend Aave V3 fork (16 contracts)**: 100% inherited from Aave V3 audit chain (Trail of Bits, OpenZeppelin, ABDK, SigmaPrime, Certora). No XLend-specific public audit found.
- **Vaults on Morpho (2 contracts)**: 100% inherited from Morpho V1.1 audit chain (Spearbit, Trail of Bits, ChainSecurity). Extra Finance role is curator (parameter choice), not vault code author.

**Priority order** (economic exposure × novelty × audit gap):

1. **Leverage Farming admin layer** — `LendingPoolAdminConfigurator` impl `0xafbcc15a85932b22c1691914573abff46995b7c3` (OP) + VPM admin impl `0xd8c5644907f222257fae02e0efb4f632986e24e8` (OP, unverified). These admin contracts can change LF parameters — primary attack surface above the main pools. 18 months since last audit.
2. **VeloPositionManager + LendingPool cross-product flows** — bugs here affect ~$28M TVL.
3. **XLend on Base (newer deployment)** — diff against Aave V3-core baseline.
4. **XLend ↔ Vaults integration** — cross-product call paths not specifically audited.
5. **Vaults curator strategy** — operator-side parameter audit, not code audit.
6. **EXTRA token LayerZero OFT cross-chain flows** — standard LZ pattern. **Default skip**.

---

## Scope — Core Logic

### Product 1: Leverage Farming (dominant — $27.59M TVL)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| EXTRA / EXTRAoft | token | LayerZero OFT v1 governance token (10B max supply); same address on OP + Base + Berachain | LZ upstream + protocol audits | [0x2dAD3a…7938F8](https://optimistic.etherscan.io/address/0x2dAD3a13ef0C6366220f989157009e501e7938F8) |
| LendingPool (OP) | vault_pool | The [Lending] leg — reserves to borrow against for leveraged LP | audited (Sherlock + PeckShield + BlockSec) | [0xbb505c…1cbd](https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) |
| LendingPool (Base) | vault_pool | Same address slot, separate on-chain instance | audited | [0xbb505c…1cbd](https://basescan.org/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) |
| VeloPositionManager (OP) | controller | The [Farming] leg — opens & manages leveraged Velodrome LP positions | audited | [0xf9cfb8…7055](https://optimistic.etherscan.io/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) |
| VeloPositionManager (Base) | controller | Same address slot, separate on-chain instance | audited | [0xf9cfb8…7055](https://basescan.org/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) |
| VeToken | governance | Vote-locked EXTRA (Optimism only) | open-sourced 2023-07 | [0xe0bec4…1466](https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466) |
| RewardDistributor | rewards | Distributes EXTRA rewards (Optimism only) | open-sourced 2023-07 | [0xb7d861…322a](https://optimistic.etherscan.io/address/0xb7d8613728efcfbb18bcd63deec06f64441d322a) |

### Product 2: XLend (Aave V3 fork — $1.94M TVL)

**Optimism (10 contracts, all per docs `developer-resource` page + DL adapter):**

| Contract | Role | Address |
|---|---|---|
| Pool (proxy) | core | [0x345D28…0186](https://optimistic.etherscan.io/address/0x345D2827f36621b02B783f7D5004B4a2fec00186) |
| Pool (impl) | core | [0x0353b6…e9e5](https://optimistic.etherscan.io/address/0x0353b6221b23b8320202320ca450eeb9fb0de9e5) |
| AToken | token | [0x2B2751…62E](https://optimistic.etherscan.io/address/0x2B275176804dd01b6a90d61bDa3c80E3A470662E) |
| VariableDebtToken | token | [0xC0C88d…d5E](https://optimistic.etherscan.io/address/0xC0C88d2752C58263c2b7F4Ac6ecBedC78eDD5d5E) |
| PoolConfigurator (proxy) | admin | [0xc1504B…A1e](https://optimistic.etherscan.io/address/0xc1504B3D0e72C717151957ceb0252FF8f93A9A1e) |
| PoolConfigurator (impl) | admin | [0x9378C2…ADC](https://optimistic.etherscan.io/address/0x9378C2e058D87DE7F9EDbF3574eD5B4128980ADC) |
| PoolAddressesProvider | registry | [0xA98cC6…21d](https://optimistic.etherscan.io/address/0xA98cC6031Ba6908d73dC5615ca82B607096D721d) |
| ACLManager | admin | [0x70Cdb4…95f](https://optimistic.etherscan.io/address/0x70Cdb45f5b0660c122708286198446d23872595f) |
| PriceOracle (AaveOracle) | oracle | [0x1bc889…3db4](https://optimistic.etherscan.io/address/0x1bc889345c912d5462b71e019f9dccba33d83db4) |
| ProtocolDataProvider | helper | [0xCC61E9…9C0](https://optimistic.etherscan.io/address/0xCC61E9470B5f0CE21a3F6255c73032B47AaeA9C0) (unverified) |

**Base (6 canonical contracts via on-chain `PoolAddressesProvider.getAddress()`):**

| Contract | Role | Address |
|---|---|---|
| PoolAddressesProvider | registry | [0x1e35e6…c29](https://basescan.org/address/0x1e35e657d469f134ea9cfe52e28949586f1a9c29) |
| Pool (proxy) | core | [0x09b117…e03](https://basescan.org/address/0x09b11746dfd1b5a8325e30943f8b3d5000922e03) |
| PoolConfigurator (proxy) | admin | [0x359551…3e1e](https://basescan.org/address/0x359551a0c6e91956a96700316fcf5b39704a3e1e) |
| ACLManager | admin | [0x4b4c8a…956](https://basescan.org/address/0x4b4c8a1841b0e0d2a3af086850d84ff968b8c956) |
| PriceOracle (AaveOracle) | oracle | [0xe4f111…dec](https://basescan.org/address/0xe4f11109eee64a9a6beb5d3bcf4a5d9c70054dec) |
| ProtocolDataProvider (AaveProtocolDataProvider) | helper | [0x1566DA…98D](https://basescan.org/address/0x1566DA4640b6a0b32fF309b07b8df6Ade40fd98D) |

### Product 3: Vaults on Morpho (Base only — $1.12M TVL)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| MetaMorphoV1_1 USDC vault | vault | Morpho V1.1 USDC vault curated by Extra Finance | inherited from Morpho | [0x234792…3B5e](https://basescan.org/address/0x23479229e52Ab6aaD312D0B03DF9F33B46753B5e) |
| MetaMorphoV1_1 WETH vault | vault | Morpho V1.1 WETH vault curated by Extra Finance | inherited from Morpho | [0x5A3209…7a8C](https://basescan.org/address/0x5A32099837D89E3a794a44fb131CBbAD41f87a8C) |

---

## Scope — Operational Periphery

**3-multisig governance topology, all 2-of-3 Gnosis Safes on Optimism:**

| Multisig | Address | Threshold | Owners | Role |
|---|---|---|---|---|
| Protocol Treasury (Rainy Day Fund) | [0xc918a6…BabF](https://optimistic.etherscan.io/address/0xc918a60e4d40d15959a85fa8b35f6db96907babf) | 2/3 | 3 | Holds ~$1M USDC for insolvency cover |
| EXTRA_Gov | [0x750f71…d40A](https://optimistic.etherscan.io/address/0x750f7153e6c92a24089a34eC6AFe65740C9bd40A) | 2/3 | 3 | Protocol parameter changes |
| Team Multisig (EXTRA_Team_Fund) | [0x94440d…A38D](https://optimistic.etherscan.io/address/0x94440d355877696753597E2d90d54BbC51b2a38D) | 2/3 | 3 | Team development + ops fund + fee accumulator |

**Other named EOAs / treasury wallets** (per docs):

- EXTRA_Community_Fund: `0x89F0885DA2553232aeEf201692F8C97E24715c83` (receives revested tokens)
- EXTRA_Community_Fund_2 (Non-Circulating): `0x48F12DF639322e43Ce83Bb6e12bBa46c8e85f703`
- EXTRA_Dev_Fund: `0x4059e170D325163e2eC96cF8Ca489C40B6927A8c`

**Leverage Farming admin proxies** (TransparentUpgradeableProxy pattern, proxy admin `0x326bf61b176eb9352ebf483cb37b8f90bdb42f2d`):

- LendingPool owner = `0x5a70429e0e5c7be9e5f83b497c18f5ac82345113` → impl `0xafbcc15a85932b22c1691914573abff46995b7c3` (`LendingPoolAdminConfigurator`, verified)
- VeloPositionManager owner = `0x57e54894eb8e3638364bfcf216d502f1c6817398` → impl `0xd8c5644907f222257fae02e0efb4f632986e24e8` (unverified)

---

## Scope — Proxy and Upgrade Architecture

Multiple proxy patterns in production:

| Pattern | Used by | Notes |
|---|---|---|
| LayerZero OFT v1 | EXTRA token cross-chain | Standard LZ pattern; same address on OP + Base + Berachain |
| OpenZeppelin TransparentUpgradeableProxy (compiler 0.8.20) | LendingPoolAdminConfigurator + VPM admin proxy | Both share proxy admin `0x326bf61b…2f2d` |
| Aave V3 `InitializableImmutableAdminUpgradeabilityProxy` | XLend Pool + PoolConfigurator (× 2 chains) | Standard Aave V3 pattern; admin via `PoolAddressesProvider` |
| Morpho V1.1 `MetaMorphoV1_1` | Vaults on Morpho | Upstream Morpho pattern |
| Non-proxy | LendingPool, VeloPositionManager, VeToken, RewardDistributor | Direct deployments; upgrade via ownership transfer |

The v1 brief's "No proxy or upgrade architecture detected" is wrong — there are 4 proxy patterns in use.

---

## Scope — Factory Architecture

No major factory architecture beyond the Aave V3 standard (Pool deploys AToken/DebtToken per reserve).

---

## Scope — Integration Surface

| Integration | Product | Chain |
|---|---|---|
| Velodrome (V2 pool factory + gauges) | Leverage Farming VPM | Optimism |
| Aerodrome (Velodrome fork) | Leverage Farming VPM | Base |
| Aave V3 codebase (fork) | XLend Pool, PoolConfigurator, AToken, VariableDebtToken | OP + Base |
| Chainlink | XLend AaveOracle | OP + Base |
| LayerZero OFT v1 | EXTRA token cross-chain | OP + Base + Berachain |
| Morpho V1.1 | Vaults (USDC + WETH) | Base |
| Snapshot | Off-chain governance (`extradao.eth`) | off-chain |
| Hexagate | Monitoring (per docs: not renewed in 2025) | — |
| Immunefi | Bug bounty program | — |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Direct external | Inherited | Coverage % |
|---|---:|---|---|---:|
| Leverage Farming (8) | 8 | Sherlock 2024-12 + PeckShield + BlockSec | — | 100% direct |
| LF admin proxies (2) | 2 | inferred-covered (admin layer in LF scope) | — | partial |
| XLend OP (10) | 10 | none specifically | Aave V3 audit chain (ToB, OZ, ABDK, etc.) | 100% inherited |
| XLend Base (6) | 6 | none specifically | same | 100% inherited |
| Vaults Morpho (2) | 2 | none specifically (curator role) | Morpho V1.1 audit chain (Spearbit, ToB, ChainSecurity) | 100% inherited |
| **Total** | **26** | **3 direct audits** | **2 inherited audit chains** | **~95% covered** |

### Past Audits

| Date | Auditor | Scope | Relationship | Link |
|---|---|---|---|---|
| 2024-12-01 | Sherlock | Extra Finance Audit Report (Leverage Farming) | direct | [`sherlock-protocol/sherlock-reports/.../2024.12.01...pdf`](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) |
| post-2023 | PeckShield | ExtraFi v1.0 | direct | [`peckshield/publications/.../PeckShield-Audit-Report-ExtraFi-v1.0.pdf`](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) |
| post-2023 | BlockSec | ExtraFinance v1.0 signed | direct | [`blocksecteam/audit-reports/.../blocksec_extrafinance_v1.0-signed.pdf`](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf) |
| inherited | (multiple) | Aave V3 audit chain | inherited (XLend) | https://github.com/aave-dao/aave-v3-origin/tree/main/audits |
| inherited | (multiple) | Morpho V1.1 audit chain | inherited (Vaults) | https://github.com/morpho-org/metamorpho-v1.1/tree/main/audits |

### Gap Analysis

- **No XLend-specific external audit**: XLend is "fork of Aave V3" per docs but no Extra-Finance-fork audit published. PeckShield + Sherlock + BlockSec all focus on Leverage Farming, not XLend.
- **No Vaults-specific external audit**: Morpho vaults are curated, not coded by Extra Finance. Audit gap is on the curator's parameter choices, not the code.
- **VPM admin impl unverified**: `0xd8c5644907…24e8` (OP) returns empty source on Etherscan. Operator should request verification.
- **OP ProtocolDataProvider unverified**: `0xCC61E9470B…9C0` returns empty source. Same as Aave V3 source presumably.
- **Closed-source code** means audit work cannot use static-analysis tools against a protocol-level repo. Etherscan-verified source is the only handle.
- **Multisig signer identity** not enumerated in this brief — `Safe.getOwners()` would return them.
- **Berachain TVL of $19** suggests either pre-launch state or inactive deployment.

Last direct audit: **Sherlock 2024-12-01** — 17 months before this brief.

---

## Appendix

### Docs Pages Referenced

- https://docs.extrafi.io/extra_finance/contracts-and-transparency — Leverage Farming + EXTRA token + Treasury wallets
- https://docs.extrafi.io/extrafi-xlend/developer-resource — XLend Optimism canonical addresses
- https://docs.extrafi.io/extrafi-xlend/vaults-on-morpho — Vaults Base
- https://docs.extrafi.io/extrafi-xlend/security/audits-and-security — XLend audit page
- https://docs.extrafi.io/extra_finance/audits-and-security — Leverage Farming audit page
- https://docs.extrafi.io/extra_finance/welcome-to-extra-finance — Leverage Farming overview
- https://docs.extrafi.io/extrafi-xlend/governance — XLend governance via veEXTRA + Snapshot (`extradao.eth`)
- https://immunefi.com/bounty/extrafinance — Bug bounty

### Audit Reports (full list, time-ordered)

1. (post-2023) PeckShield ExtraFi v1.0 — direct
2. (post-2023) BlockSec ExtraFinance v1.0 signed — direct
3. 2024-12-01 Sherlock Extra Finance Audit Report — direct
4. (continuous) Aave V3 audit chain — inherited (XLend)
5. (continuous) Morpho V1.1 audit chain — inherited (Vaults)

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) — 26 contracts, 433 source files, ~2.3 MB

### Excluded Contracts (v1 false positives)

The v1 brief's 5 contracts are all correctly attributed — no exclusions. The defect is exclusively **under-counting** (~22 missing contracts).

### Data Availability Notes

- **Canonical address sources:**
  - docs.extrafi.io/extra_finance/contracts-and-transparency (Leverage Farming + treasury)
  - docs.extrafi.io/extrafi-xlend/developer-resource (XLend OP)
  - On-chain `PoolAddressesProvider.getAddress(bytes32)` for XLend Base
  - docs.extrafi.io/extrafi-xlend/vaults-on-morpho (Vaults)
- **Provenance classification:** Manually mapped per-product (Leverage Farming, XLend, Vaults).
- **Multisig metadata:** 3 Safes confirmed via `getOwners()` + `getThreshold()` (all 2/3, 3 owners each).
- **Per-contract TVL:** Vaults via `totalAssets()` (USDC vault $433K, WETH vault $970K). EXTRA token via `totalSupply()` (1B). Leverage Farming TVL via subgraph (not enumerated per-pool here).
- **Docs extraction status:** 3 separate docs sites (extra_finance + extrafi-xlend + extra_finance/contracts-and-transparency) — all cross-checked.

### Generation Metadata

- **Generated at:** 2026-05-17
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** 2026-05-15 (parent + 3 child slugs)
- **Etherscan v2:** chains 10 + 8453 (OP + Base)
- **Alchemy RPC:** used for L2 `eth_call` (Etherscan v2 free tier limited on OP/Base)

---

## Divergences from v1 SCOPE_NOTE.md

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `total_contracts` | 5 | **26** | V1 captures only Leverage Farming user-facing contracts; misses XLend (16) + Vaults (2) + Base instances of LF (2) + LF admin proxies (2) |
| `chains` | topography 10, 8453; DL 10, 8453, 80094 | OP + Base + Berachain (Berachain TVL ~$19) | Same chains; topography missed Berachain because no DL pool data |
| `tvl` | $87.8M (snapshot 2026-04-29, stale) | **$30.65M** (snapshot 2026-05-15) | V1 stale by ~65% |
| `audits` | 6 entries (4 placeholders + 2 partial) | **3 direct + 2 inherited audit chains** | V1 didn't parse the audit-link URLs into structured entries |
| `lifecycle_status_source` | `default_fallback` | etherscan + DL child slugs + docs | V1 didn't enumerate child products |
| `proxy_architecture` | "No proxy or upgrade architecture detected" | 4 patterns: LZ OFT (EXTRA) + TUP (LF admin) + Aave V3 (XLend, 4 proxies) + Morpho V1.1 (Vaults) | V1 missed all proxy patterns |
| `integration_surface` | "No external integrations detected" | 9 integrations: Velodrome, Aerodrome, Aave V3 (forked), Chainlink, LayerZero, Morpho, Snapshot, Hexagate, Immunefi | V1 doesn't follow integration boundaries |
| `parent_child_dl_slugs` | uses parent only | 3 child slugs surfaced (Leveraged Farming + Lending + Onchain Capital Allocator) | V1 collapses to parent |
| `multisig metadata` | "not extracted" | 3 Safes confirmed (all 2-of-3), Treasury holds ~$1M USDC | V1 doesn't query Safes |
| `tier` | 1 - partial_audit_gap | 1 - large-TVL multi-product LYF with deep audit coverage | Same tier; rephrased to reflect Aave V3 + Morpho inheritance |
