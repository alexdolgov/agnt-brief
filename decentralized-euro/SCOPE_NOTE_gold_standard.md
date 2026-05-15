# Agentic Brief: Decentralized Euro (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md) (narrative + audit context), [`manifest_gold_standard.json`](manifest_gold_standard.json) (machine-readable), and [`contracts_gold_standard/`](contracts_gold_standard/) (verified source). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** Decentralized Euro (decentralized-euro)
- **Website:** deuro.com
- **Source repo:** https://github.com/d-EURO/smartContracts (MIT, friendly fork of Frankencoin-ZCHF at commit `a2ce625c`)
- **Canonical address registry:** [`@deuro/eurocoin@2.1.0/exports/address.config.ts`](https://www.npmjs.com/package/@deuro/eurocoin) (authoritative; published by the dEURO core team)
- **Category:** CDP
- **Chains (verified deployment):** 1 (Ethereum, all logic), 10 (Optimism, L2 wrapper only), 8453 (Base, L2 wrapper only). **NOT deployed on:** 137 (Polygon), 42161 (Arbitrum). The v1 pipeline includes Polygon + Arbitrum due to external-contract contamination — see "Divergences" below.
- **Chains (DeFiLlama):** 1 (only Ethereum)
- **TVL:** **$2,120,492** (DL `tvl[-1]`, snapshot 2026-05-15T10:11:47Z, freshly verified)
- **Lifecycle:** **active, freshly migrated to V3** — V3 mainnet deployment 2026-03-23 (block 24721024–24721298), most recent code change StablecoinBridgeV2 merged 2026-04-26 (not yet deployed). Mainnet launch 2025-03-20 (block 22088283).
- **Audit history:** 5 inherited Frankencoin audits (Blockbite 2023-02 + Code4rena 2023-06 + ChainSecurity V1 2023-10 + Decurity 2024-09 + ChainSecurity V2 2024-11) + 2 dEURO-specific external audits (ChainSecurity delta + an unnamed second auditor) + 1 V3 internal audit (12-file markdown deliverable, 2026-03-04 commit). **No external audit yet for the V3 contracts deployed 2026-03-23.**
- **Tier:** **Tier 2 — small-but-active stablecoin with deep audit history.** Audit-evaluable surface is small (27 contracts), non-upgradable codebase (no proxy/admin attack surface), and audit coverage is unusually heavy for the TVL. Interesting gap concentrates in V3 deltas + bridge multiplicity.
- **Commercial fit:** Frankencoin-fork-V3-delta-audit. The high-value uncovered surface is the V3 minting/savings path; the inherited Frankencoin-V2 code has had 5 external reviews and is mature.

Decentralized Euro has **27 dEURO-attributable contracts** across the 3 chains where it actually deploys: 24 on Ethereum (10 V3 active + 5 V2 retained + 9 StablecoinBridge instances) + 1 on Optimism + 2 on Base. The v1 pipeline brief renders 43 rows but **16 of those are external/wrong** (12 external EUR-stablecoin contracts that dEURO bridges accept as source assets + 3 Polygon-bridge wrappers + 1 Arbitrum bridge proxy).

---

## Lifecycle and Recent Activity

Lifecycle status: **active**. Verified by Etherscan `getcontractcreation` against every contract in the canonical registry:

- **Mainnet launch 2025-03-20** (block 22088283) — 9 V2 core contracts deployed in a single batch by deployer `0x01ae4c…86d7`.
- **Bridge expansion 2025-04 to 2025-11** — 8 additional `StablecoinBridge` instances added in 4 batches (Apr 2025: EUROP/EURR/EURI; Jul 2025: EURA; Sep 2025: EURC; Nov 2025: EURS/EURE/VEUR).
- **CoinLendingGateway + SavingsVaultV2** added 2025-10-02 to 2025-10-06.
- **V3 migration 2026-03-23** (block 24721024–24721298) — 5 V3 contracts (Savings, MintingHub, PositionRoller, PositionFactory, SavingsVaultDEURO) deployed in a single batch by deployer `0xdee786…6b45`.
- **StablecoinBridgeV2 merged 2026-04-26** to `develop` (PR #168) — **not yet deployed to mainnet**.

Lifecycle source: **etherscan_getcontractcreation** (per-contract block + timestamp), **github_commits** (V3 PR + StablecoinBridgeV2 PR), **on_chain_state** (`totalSupply` / `balanceOf` queried 2026-05-15). Most recent deployment: **53 days ago** (V3 batch on 2026-03-23). The v1 pipeline reports `lifecycle = default_fallback` and "latest deployment unknown"; both are derivable from public APIs.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **27 contracts across 3 chains**.

External-audit coverage breakdown:
- **V3 active set (10 contracts):** 5 contracts (DecentralizedEURO, Equity, DEPSWrapper, FrontendGateway, plus the V2 ancestors of MintingHub/Savings/PositionFactory/PositionRoller/SavingsVault) inherit external coverage from Frankencoin V2 audits + dEURO delta audit. The 5 V3-specific deltas (Savings, MintingHub, PositionFactory, PositionRoller, SavingsVaultDEURO at the new V3 addresses) have ONLY the internal V3 audit.
- **V2 retained set (5 contracts):** fully covered by external audits (Frankencoin V2 + dEURO delta).
- **StablecoinBridge family (9 contracts):** covered by Frankencoin V1 audit (original `StablecoinBridge`) + dEURO delta (SafeERC20 update). All 9 use the same source.
- **L2 wrappers (3 contracts):** OP-stack `IOptimismMintableERC20` is upstream-audited; the dEURO-specific `BridgedToken.sol` composition (adds ERC-3009 + ERC-Permit) is not in any external audit's explicit scope.

**Priority order** (economic exposure × novelty × audit gap):
1. **V3 Savings + SavingsVaultDEURO** — 917K dEURO under internal-only review.
2. **V3 MintingHub + PositionFactory + PositionRoller** — non-trivial logic changes (native ETH/WETH, leadrate integration, interest-on-usable-mint-only, reference-position cooldown), internal-only.
3. **CoinLendingGateway** — dEURO-specific (no Frankencoin upstream), no external coverage.
4. **FrontendGateway / SavingsGateway / MintingHubGateway** — referral/reward layer with non-trivial accounting math.
5. **StablecoinBridge multi-bridge aggregate-mint-limit composition** — not a per-bridge issue but a system property worth a fresh look.
6. **BridgedToken L2 wrapper** — small composition surface, low priority.
7. **V2 retained set** — fully audited externally; **default skip**.

---

## Scope — Core Logic

### Ethereum (chain_id 1) — V3 active set

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| DecentralizedEURO | core | dEURO ERC-20 stablecoin (mint via veto-able minters + ERC-3009) | audited (inherited+direct) | [0xba3f53...a3ea](https://etherscan.io/address/0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea) |
| Equity | core | nDEPS share token, voting + reserve + buy/sell against surplus | audited (inherited+direct) | [0xc71104...8ee6](https://etherscan.io/address/0xc71104001a3ccda1bef1177d765831bd1bfe8ee6) |
| DEPSWrapper | core | Wraps nDEPS shares into transferable DEPS ERC-20 | audited (inherited+direct) | [0x103747...a380](https://etherscan.io/address/0x103747924e74708139a9400e4ab4bea79fffa380) |
| Savings (V3) | core | V3 savings module with Leadrate integration | internal-audit only | [0x760233...d3d9](https://etherscan.io/address/0x760233b90e45d186a9a98e911b115f7f4b90d3d9) |
| MintingHub (V3) | core | V3 collateralized-mint plugin with native ETH/WETH + Leadrate | internal-audit only | [0x66acc5...4f7b](https://etherscan.io/address/0x66acc54a0c64255137b8993cb4972b0901684f7b) |
| PositionFactory (V3) | factory | Clones V3 Position contracts | internal-audit only | [0x3a3985...fe81](https://etherscan.io/address/0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81) |
| PositionRoller (V3) | core | Rolls expiring positions into new ones (free reprice on leadrate change) | internal-audit only | [0x5c22d5...c5cd](https://etherscan.io/address/0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd) |
| SavingsVaultDEURO (V3) | vault_pool | ERC-4626 vault wrapper for V3 Savings | internal-audit only | [0x75beb3...2979](https://etherscan.io/address/0x75beb37a3c86ee4c38931e2a9319e078da612979) |
| FrontendGateway | core | Referral/rewards layer over deposit + redeem paths | audited (direct) | [0x5c49c0...0994](https://etherscan.io/address/0x5c49c00f897bd970d964bfb8c3065ae65a180994) |
| CoinLendingGateway | core | EUR-stablecoin → dEURO routing via positions | not audited externally | [0x1da37d...89d2](https://etherscan.io/address/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2) |

### Ethereum (chain_id 1) — V2 retained set

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| MintingHubGateway (V2) | core | V2 mint hub + FrontendGateway bridge; still emits `PositionOpened` events that DL TVL adapter listens to | audited (inherited+direct) | [0x8b3c41...4618](https://etherscan.io/address/0x8b3c41c649b9c7085c171cbb82337889b3604618) |
| SavingsGateway (V2) | core | Holds 549K dEURO of legacy savings | audited (direct) | [0x073493...2303](https://etherscan.io/address/0x073493d73258c4beb6542e8dd3e1b2891c972303) |
| PositionFactory (V2) | factory | Legacy V2 position factory | audited (inherited) | [0x167144...e5a8](https://etherscan.io/address/0x167144d66ac1d02eaafca3649ef3305ea31ee5a8) |
| PositionRoller (V2) | core | Legacy V2 roller | audited (inherited) | [0x4ce0ab...dc79](https://etherscan.io/address/0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79) |
| SavingsVault (V2) | vault_pool | Legacy V2 ERC-4626 vault | audited (direct) | [0x1e9f00...fa40](https://etherscan.io/address/0x1e9f008b1c538be32f190516735bf1c634b4fa40) |

### Ethereum (chain_id 1) — Stablecoin Bridge family

All 9 bridges use the same Solidity source (`StablecoinBridge.sol`); they differ only in constructor immutables (`eur` source token, `limit`, `horizon`). Each was deployed in one of 5 batches (2025-03-20, 2025-04-23, 2025-07-17, 2025-09-20, 2025-11-20).

| Contract | Source EUR stablecoin | Audit Status | Address |
|---|---|---|---|
| StablecoinBridge (EURT) | Tether EURT @ `0xC581…E491` | audited (inherited+direct) | [0x2353d1...609f](https://etherscan.io/address/0x2353d16869f717bfcd22dabc0adbf4dca62c609f) |
| StablecoinBridge (EUROP) | Schuman EUROP @ `0x8888…5E51` | audited (inherited+direct) | [0x3ef3d0...0341](https://etherscan.io/address/0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341) |
| StablecoinBridge (EURR) | Hadron EURR @ `0x5075…e408` | audited (inherited+direct) | [0x20b0a1...f1a7](https://etherscan.io/address/0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7) |
| StablecoinBridge (EURI) | Banking Circle EURI @ `0x9d1A…bae7` | audited (inherited+direct) | [0xb66a40...9afe](https://etherscan.io/address/0xb66a40934a996373fa7602de9820c6bf3e8c9afe) |
| StablecoinBridge (EURA) | Angle EURA @ `0x1a7e…bce8` | audited (inherited+direct) | [0x05620f...1702](https://etherscan.io/address/0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702) |
| StablecoinBridge (EURC) | Circle EURC @ `0x1aBa…C33c` — holds 439K EURC ≈ $475K USD | audited (inherited+direct) | [0xb4ff74...2fd1](https://etherscan.io/address/0xb4ff7412f08c22d7381885e8bda9ee9825092fd1) |
| StablecoinBridge (EURS) | Stasis EURS @ `0xdb25…7ad8` | audited (inherited+direct) | [0x73f38c...5897](https://etherscan.io/address/0x73f38ca06b27eaefb1612d062d885f58924f5897) |
| StablecoinBridge (EURE) | Monerium EURe @ `0x3231…273f` | audited (inherited+direct) | [0x4dfd46...13b1](https://etherscan.io/address/0x4dfd460d54854087af195906a2f260aa483a13b1) |
| StablecoinBridge (VEUR) | VNX VEUR @ `0x6ba7…b5d3` — v1 mis-classified as "unnamed" | audited (inherited+direct) | [0x76d8f5...692b](https://etherscan.io/address/0x76d8f514554a4a8e5d6103875f2dd7a67543692b) |

### Optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgedDecentralizedEURO | bridge | OP-stack L2 wrapper of L1 dEURO | partial (OP-stack upstream + ERC-3009 inherited from L1 dEURO) | [0x1b5f7f...a264](https://optimistic.etherscan.io/address/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264) |

### Base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgedDecentralizedEURO | bridge | OP-stack L2 wrapper of L1 dEURO (same address as Optimism, CREATE2-deterministic) | partial | [0x1b5f7f...a264](https://basescan.org/address/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264) |
| BridgedDEPS | bridge | OP-stack L2 wrapper of L1 DEPS (Base only) | partial | [0x5f674b...2722](https://basescan.org/address/0x5f674bf6d559229bdd29d642d2e0978f1e282722) |

---

## Scope — Operational Periphery

**There is none.** dEURO inherits Frankencoin's no-admin-keys design:

- **No multisig.** All on-chain admin actions are governed by nDEPS share-weighted voting (minter veto, emergency bridge stop), or are permissionless.
- **No timelock contract.** New minters go through a `MIN_APPLICATION_PERIOD` (default 10 days) during which qualified nDEPS holders can call `denyMinter`. There is no separate OZ `TimelockController`.
- **No ProxyAdmin.** All 27 dEURO-attributable contracts are non-upgradable (Etherscan `Proxy: 0` on every one).
- **No oracle.** The MintingHub uses an auction/challenge mechanism (no Chainlink/Pyth/etc. dependency).

The closest thing to "operational periphery" is the **deployer EOA cluster** (6 distinct EOAs deploying contracts in batches, none retaining on-chain power post-deployment). Full timeline + EOA mapping in [`brief_gold_standard.md`](brief_gold_standard.md) §"Lifecycle and Recent Activity".

---

## Scope — Factory Architecture

Two `PositionFactory` instances:
- **V3 active**: `0x3a3985…fE81` — used by the V3 `MintingHub` to clone new Position contracts.
- **V2 retained**: `0x167144…e5A8` — legacy, still serves V2 positions.

Both factories clone the inline `Position` contract whose source lives in the canonical `contracts/MintingHubV3/Position.sol`. Position instances are not pre-deployed — they are created on demand via the factory when a user opens a position. The V3 README enumerates substantial Position logic deltas vs V2 (interest accrual model, principal-vs-debt separation, `forceSale` semantics).

---

## Scope — Proxy and Upgrade Architecture

**Zero proxies in dEURO's own contract set.** Every contract in the canonical `@deuro/eurocoin` registry deploys as a single non-proxy implementation. Etherscan returns `Proxy: 0` for all 27 dEURO contracts.

V3 was implemented as a *new deployment* registered with the existing dEURO token via the `suggestMinter` veto-able governance flow, not as a proxy upgrade. The V2 contracts remain on-chain and continue to hold legacy state.

The "6 proxies" the v1 pipeline reports are entirely **external EUR-stablecoin proxies** that dEURO bridges accept as source assets (`TetherToken` proxy, `EURSToken` proxy, `EUROPToken` proxy, `HadronToken` proxy, `VNXCToken` proxy, Banking Circle `EURIToken` proxy). They are owned by their respective issuers (Tether, Stasis, Schuman, Hadron, VNX, Banking Circle), not by dEURO.

---

## Scope — Integration Surface

**External integrations: 9 EUR stablecoins** accepted via the StablecoinBridge family. Listed above. The bridges are 1:1 swap interfaces (modulo decimal normalization), each with a per-bridge `limit` and `horizon` enforced in storage.

**Cross-chain:** OP-stack `StandardBridge` predeploy (`0x4200…0010`) on Optimism and Base. No LayerZero/Wormhole/Axelar.

**No other integrations** — dEURO does not embed Chainlink/Pyth/UMA price feeds, does not integrate with lending/yield protocols, does not depend on any AMM. The MintingHub uses an internal auction-challenge mechanism for price discovery.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited (external) | Audited (internal-only) | Unaudited | Coverage % |
|---|---:|---:|---:|---:|---:|
| Core logic — V3 active (10) | 10 | 5 (DecentralizedEURO, Equity, DEPSWrapper, FrontendGateway, plus V2 ancestors) | 5 (V3-specific deltas: Savings, MintingHub, PositionFactory, PositionRoller, SavingsVaultDEURO) | 0 | 50% external, 100% with internal |
| Core logic — V2 retained (5) | 5 | 5 | 0 | 0 | 100% external |
| StablecoinBridge family (9) | 9 | 9 | 0 | 0 | 100% external |
| L2 wrappers (3 instances) | 3 | partial | 0 | 0 | partial |
| **Total** | **27** | **22 fully external + 3 partial** | **5 V3 internal-only** | **0** | **~81% fully external** |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-02-10 | Blockbite | Frankencoin V1 — `Frankencoin`, `Equity`, `MintingHub`, `Position`, `StablecoinBridge` | unspecified | inherited | [`Frankencoin-ZCHF/audits/V1/blockbite-audit.pdf`](https://github.com/Frankencoin-ZCHF/FrankenCoin/blob/main/audits/V1/blockbite-audit.pdf) |
| 2023-06-09 | Code4rena | Frankencoin V1 — same scope as Blockbite, peer-reviewed contest | unspecified | inherited | [`code4rena.com/reports/2023-04-frankencoin`](https://code4rena.com/reports/2023-04-frankencoin) |
| 2023-10-30 | ChainSecurity | Frankencoin V1 — final external audit | unspecified | inherited | [`Frankencoin-ZCHF/audits/V1/ChainSecurity-audit.pdf`](https://github.com/Frankencoin-ZCHF/FrankenCoin/blob/main/audits/V1/ChainSecurity-audit.pdf) |
| 2024-09-25 | Decurity | Frankencoin V2 — minting module v2, Leadrate, Savings, PositionRoller | unspecified | inherited | [`d-EURO/smartContracts/audits/V2/frankencoin-audit-report-2024-1.1.pdf`](https://github.com/d-EURO/smartContracts/blob/develop/audits/V2/frankencoin-audit-report-2024-1.1.pdf) |
| 2024-11-28 | ChainSecurity | Frankencoin V2 — final V2 audit | unspecified | inherited | [`d-EURO/smartContracts/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf`](https://github.com/d-EURO/smartContracts/blob/develop/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) |
| post-fork | ChainSecurity | dEURO-specific delta audit — renamings, 2% exchange fee, MinterContract burn restrictions, ERC-3009, OZ V5 ERC20 migration, EUR-StablecoinBridge family, gateway contracts | unspecified | direct | [`d-EURO/landingPage/audits/ChainSecurity_dEURO_dEURO_audit.pdf`](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) |
| post-fork | (auditor unnamed in filename — operator-confirm) | dEURO-specific audit — second auditor on the same delta scope | unspecified | direct | [`d-EURO/landingPage/audits/deuro_audit_report.pdf`](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) |
| 2026-03-04 (commit) | dEURO core team | V3 deltas — internal audit covering Savings V3, MintingHub V3, PositionRoller V3, PositionFactory V3, SavingsVaultDEURO, with semgrep + fuzzing + token-analysis + code-maturity backing files | unspecified | internal | [`d-EURO/smartContracts/audits/V3/internal-audit/FINAL_REPORT.md`](https://github.com/d-EURO/smartContracts/tree/develop/audits/V3/internal-audit) |

Plus a **regulatory document** (NOT a security audit, despite v1 brief including it): DFX MiCA Public Summary 2025-04-07 at [`d-EURO/landingPage/documents/20250407 _DFX_dEuro_MiCA_Public_Summary_v0.1.pdf`](https://github.com/d-EURO/landingPage/blob/develop/documents/20250407%20_DFX_dEuro_MiCA_Public_Summary_v0.1.pdf).

### Gap Analysis

- **V3 external audit gap** — the five V3 contracts (`Savings`, `MintingHub`, `PositionRoller`, `PositionFactory`, `SavingsVaultDEURO` at the new V3 addresses) have only internal-audit coverage. They were deployed 2026-03-23 with $0 TVL initially; as of 2026-05-15 the V3 Savings module holds 917K dEURO (~51% of total dEURO supply). **Single largest open audit gap.**
- **CoinLendingGateway** — deployed 2025-10-02, dEURO-specific (no Frankencoin upstream), no external audit's enumerated scope mentions it.
- **StablecoinBridgeV2** — merged 2026-04-26, not deployed. Will need fresh audit on deployment.
- **BridgedToken L2 wrapper composition** — ERC-3009 inherited from L1 (covered); IOptimismMintableERC20 upstream (covered); the composition itself not explicitly in audit chain.

Last audit commit: **2026-03-04** (V3 internal audit commit on `develop`). Last external audit: **post-fork ChainSecurity dEURO delta audit** (no PDF Last-Modified header available; size 786KB suggests substantial coverage).

---

## Appendix

### Docs Pages Referenced

- https://github.com/d-EURO/smartContracts/blob/develop/README.md — primary architecture + audit list
- https://github.com/d-EURO/landingPage/tree/develop/audits — landing-page audit directory (2 dEURO-specific PDFs)
- https://github.com/d-EURO/smartContracts/tree/develop/audits/V1 — inherited Frankencoin V1 audits (3 files)
- https://github.com/d-EURO/smartContracts/tree/develop/audits/V2 — inherited Frankencoin V2 audits (2 files)
- https://github.com/d-EURO/smartContracts/tree/develop/audits/V3/internal-audit — V3 internal audit (12 markdown files)
- https://github.com/d-EURO/smartContracts/blob/develop/scripts/deployment/config/stablecoinBridgeConfig.ts — bridge configuration
- https://github.com/d-EURO/smartContracts/blob/develop/scripts/deployment/config/bridgingConfig.ts — L2 bridging configuration
- https://docs.deuro.com — Mintlify-hosted documentation site
- https://www.chainsecurity.com/security-audit/deuro-smart-contracts — ChainSecurity public summary

### Audit Reports (full list, time-ordered)

1. 2023-02-10 — Blockbite — Frankencoin V1 — inherited
2. 2023-06-09 — Code4rena — Frankencoin V1 contest — inherited
3. 2023-10-30 — ChainSecurity — Frankencoin V1 final — inherited
4. 2024-09-25 — Decurity — Frankencoin V2 — inherited
5. 2024-11-28 — ChainSecurity — Frankencoin V2 final — inherited
6. post-fork (sometime 2025) — ChainSecurity — dEURO delta audit — direct
7. post-fork (sometime 2025) — (unnamed) — dEURO second audit — direct
8. 2026-03-04 — dEURO core team — V3 internal audit (12 files) — internal

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) (27 contracts, 462 source files, 2,113.7 KB, all verified via Etherscan v2 `getsourcecode`)

### Excluded Contracts (v1 false positives)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| External EUR-stablecoin contracts (bridge SOURCE, not dEURO) | 12 | Tether EURT proxy+impl, Stasis EURS proxy+impl, VNX VEUR proxy+impl, Schuman EUROP proxy+impl, Hadron EURR proxy+impl, Banking Circle EURI proxy, Monerium EUR (Monerium's impl) |
| Polygon bridge wrappers (dEURO not on Polygon) | 3 | Two `UChildERC20Proxy` + one `UChildERC20` — all deployed by Polygon-PoS deployer `0x463f64…162f` for external EUR tokens |
| Arbitrum bridge proxy (dEURO not on Arbitrum) | 1 | `ClonableBeaconProxy` at `0x5e85fa…d537` — Arbitrum gateway infrastructure |
| infrastructure blocklist | 0 | Not applicable; classified above by reason |
| shared deployer contamination | 0 | Not applicable |
| opaque enrichment only | 0 | Not applicable |
| **Total excluded** | **16** | Of the 43 v1 rows, 16 are wrong attributions |

### Data Availability Notes

- **Canonical address registry:** Pulled from `@deuro/eurocoin@2.1.0` npm package's `exports/address.config.ts`. This is the authoritative source maintained by the dEURO core team.
- **Provenance classification:** Manually verified per-contract role from the canonical registry + smartContracts README + Etherscan-reported contract name.
- **Multisig / timelock metadata:** Not applicable — dEURO has no multisig and no timelock (governance is via on-chain nDEPS share-weighted voting).
- **Per-contract TVL:** Verified via `eth_call` of `totalSupply` / `balanceOf` on 2026-05-15. dEURO total supply 1,814,579.55; V3 Savings holds 917,379.14 dEURO; V2 SavingsGateway holds 548,595.03 dEURO; Equity reserve holds 151,051.10 dEURO; bridgeEURC holds 439,602.71 EURC; other 8 bridges hold ≈ 0.
- **Docs extraction status:** Smart contracts README (full text), landing-page README (audits directory), npm package README (architecture summary + audit list), V3 internal audit (12-file markdown deliverable). All four sources confirm the canonical scope.

### Generation Metadata

- **Generated at:** 2026-05-15
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** `api.llama.fi/protocol/decentralized-euro` at 2026-05-15T10:11:47Z
- **Etherscan v2:** unified multi-chain endpoint, chains 1 + 10 + 8453
- **Source registry:** `@deuro/eurocoin@2.1.0`
- **Verification ledger:** evidence inline + verifiable end-to-end with `gh`, `curl`, and an Etherscan API key

---

## Divergences from v1 SCOPE_NOTE.md

A concise mapping for downstream tooling:

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `total_contracts` | 43 | 27 | V1 includes 16 external/wrong attributions |
| `chains (topography)` | 1, 10, 137, 8453, 42161 | 1, 10, 8453 | dEURO not on Polygon or Arbitrum |
| `lifecycle_status_source` | default_fallback | etherscan_getcontractcreation + github_commits + on_chain_state | Pipeline didn't query Etherscan creation endpoint |
| `latest_deployment` | unknown | 2026-03-23 (V3 batch) | Same |
| `audits` | 1 placeholder (auditor=`discovery-ingest-placeholder`, date=unknown) | 8 (5 inherited + 2 direct + 1 internal) | Pipeline failed to parse audit links into structured entries |
| `tier` | 1 - partial_audit_gap (small_tvl_coverage_filler) | 2 - small-but-active-stablecoin (Frankencoin-fork-V3-delta-audit) | Underestimated audit context |
| `proxy count` | 6 proxies (Ethereum + Polygon) | 0 dEURO proxies | The 6 v1 "proxies" are all external EUR-stablecoin contracts |
| `upgrade authority` | 4 deployer addresses (`0x463f64…`, `0x587342…`, `0x7b0c15…`, `0xe39978…`) | n/a — contracts non-upgradable | Those 4 EOAs are external-stablecoin / Polygon-bridge deployers |
| `integration surface` | "No external integrations detected" | 9 EUR stablecoins via StablecoinBridge family + OP-stack StandardBridge | Pipeline missed bridges-as-integration framing |
| `unnamed unknown` row | 1 (`0x76d8f5…692b`) | `bridgeVEUR` (StablecoinBridge for VNX VEUR) | Etherscan-verified contract name was not picked up |
| `audit_history.most_recent` | 2026-05-03 (per v1 metadata; no audit PDF dated to this) | 2026-03-04 (V3 internal audit commit) | V1 "2 days ago" claim not corroborated by any actual audit artifact |
