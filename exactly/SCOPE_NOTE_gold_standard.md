# Agentic Brief: Exactly Protocol (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md), [`manifest_gold_standard.json`](manifest_gold_standard.json), and [`contracts_gold_standard/`](contracts_gold_standard/). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** Exactly Protocol (DL slug `exactly`)
- **Website:** exact.ly · **Docs:** docs.exact.ly · **App:** app.exact.ly
- **Source repo:** [`github.com/exactly/protocol`](https://github.com/exactly/protocol) (last push 2026-05-14)
- **Canonical address registry:** [`github.com/exactly/protocol/deployments/{ethereum,optimism,base}`](https://github.com/exactly/protocol/tree/main/deployments) — each contract has its own `<Name>.json` artifact with `address` + `implementation` fields
- **DL category:** Lending
- **Chains (verified):** **3** — Ethereum (chain 1) + Optimism (chain 10) + Base (chain 8453)
- **TVL:** **$3.17M total** ($2.50M Optimism + $666K Base + $6.1K Ethereum) + $494K borrowed (DL `borrowed` bucket)
- **EXA token outstanding supply:** **10,000,000 EXA** (on Optimism `0x1e925de1…c01b`)
- **Lifecycle:** **ACTIVE, mature, on multi-year continuous-audit cadence.** Most recent code push 2026-05-14 (3 days before this brief). Most recent audit: **ABDK EXA token cross-chain (Mar-26).** The v1 brief's `lifecycle = dead` is dramatically wrong.
- **Audit history:** **31 distinct security audits across 8 auditors** + 1 economic audit. The v1 brief shows "40 audits" but only surfaces 6 — 4 of those are `discovery-ingest-placeholder` with no auditor name. Full inventory is in §"Audit Coverage" below.
- **Tier:** **Tier 1 — flagship mid-TVL multi-chain lending protocol with deepest audit chain in DeFi lending** (vs v1's `Tier 4 - project_dead_or_rugged` which is wrong).
- **Commercial fit:** continuous-audit-style targeting on each diff (V2-era Base contracts + EXA cross-chain are the leading edge).

Exactly Protocol has **115 canonical contracts** enumerated across the 3 chains where it actually deploys:
- Ethereum: 5 Markets + Auditor + DebtManager + MarketETHRouter + Previewers + 5 InterestRateModels + ProxyAdmin + TimelockController = ~36 contracts
- Optimism: 6 Markets + full staking layer (EXA/esEXA/stEXA/ProtoStaker/Airdrop) + RewardsController + InstallmentsRouter + DebtManager + Previewers + IRMs + ProxyAdmin + TimelockController = ~60 contracts
- Base: 4 VerifiedMarkets + VerifiedAuditor + Firewall + DebtRoller + FlashLoanAdapter + DeadAllower + InstallmentsRouter + Previewers + IRMs + ProxyAdmin + TimelockController = ~36 contracts

The v1 brief renders **117 rows** — overcount of ~+2 due to including the deployer EOA as a contract row, ~6 ERC-6900 user smart accounts (Exa Card App per-user `UpgradeableModularAccount`), unverified obsolete impls, and external integration contracts.

---

## Lifecycle and Recent Activity

Lifecycle status: **ACTIVE**. Verified by:

- **Protocol repo commits**: most recent 2026-05-14 (3 days before this brief); active foundry fuzz testing of IRMv2 + Base treasury setup
- **Audits repo commits**: most recent 2026-03-27; latest audit on file dated Mar-26 (ABDK EXA cross-chain)
- **Per-chain deployment progression**:
  - Ethereum: launched 2022-10-31, last protocol contract `DebtManager_Impl` deployed 2023-08-21 → **steady state on Ethereum**, but other chains continued
  - Optimism: live since Oct-2022 / Nov-2022, ongoing additions (esEXA in Sep-23, stEXA + Airdrop in Aug-24, RewardsController update Mar-25)
  - Base: newer chain, **cbBTC + cbXRP markets are recent V2-era additions** (compiler 0.8.26 vs Ethereum/Optimism's 0.8.17)
- **Continuous audit cadence**: 31 audits between Nov-21 and Mar-26 — average **one audit every ~50 days**

Lifecycle source: **github commits + audits repo + Etherscan getcontractcreation**. Most recent deployment: estimated 2025-2026 for Base V2 contracts (operator should run getcontractcreation on Base for canonical timing). The v1 pipeline's "latest deployment 2023-08-21" reflects only the *Ethereum* deployment freeze.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **115 contracts across 3 chains**.

External-audit coverage breakdown (8 audit firms):
- **Coinspect**: 8 audits (1st-5th + RewardsController 1st-3rd, Nov-21 → Mar-23)
- **Chainsafe**: 4 audits (1st + 2nd + IRMv2 + Staking, May-22 → Aug-24)
- **ABDK**: 10 audits (1st + 2nd + PeripheralContracts + EscrowedEXA + IRMv2 ×2 + Installments + Rewards Controller Update + Protocol Update + EXA cross-chain, Oct-22 → Mar-26)
- **Hashlock**: 2 audits (IRMv2 + Installments, Mar-24 + Apr-24)
- **OpenZeppelin**: 1 audit (EscrowedEXA, Oct-23)
- **Quantstamp**: 3 audits (Exa App WebAuthn + Plugin + Plugin Update, Jul-24 → Oct-25)
- **Sherlock**: 2 community audits (Protocol May-24 + Staking Aug-24)
- **Cryptecon**: 1 economic audit (Sep-22, not a security audit)

**Priority order** (economic exposure × novelty × audit gap):

1. **EXA cross-chain anchor (ABDK Mar-26 audit)** — newest audit; the on-chain addresses are not yet in the canonical registry (registry was last updated before Mar-26). Operator should pull the PDF to identify the in-scope contracts.
2. **Base V2 family**: `VerifiedAuditor`, `VerifiedMarket`, `Firewall`, `DebtRoller`, `FlashLoanAdapter`, `DeadAllower` — compiler 0.8.26 (newer than Ethereum/Optimism's 0.8.17). Oct-25 ABDK Protocol Update audit likely covers these but operator should verify scope-described.
3. **InstallmentsRouter (Base)** — the Optimism version is audited (ABDK + Hashlock Apr-24); the Base version is the same source per the registry but worth a diff.
4. **New collateral types on Base (cbBTC, cbXRP)** — risk concentrates in collateral economics + PriceFeed parameterization, not in `VerifiedMarket` code (which is shared across markets).
5. **RewardsController post-Mar-25 changes** — the Mar-25 ABDK audit covered the update; any further changes are uncovered.
6. **Auditor + Markets (Ethereum + Optimism)** — extensively audited (10+ reviews). **Default skip** for new audit work.

---

## Scope — Core Logic

### Ethereum (chain_id 1) — 5 markets, baseline deployment

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Auditor | core | Protocol controller (Compound-Comptroller analog) | audited (Coinspect 1-5 + ABDK 1-2 + Chainsafe 1-2) | [0x310a26…fe01](https://etherscan.io/address/0x310a2694521f75c7b2b64b5937c16ce65c3efe01) (proxy) → [0xaeb62e…027e](https://etherscan.io/address/0xaeb62e6f27bc103702e7bc879ae98bcea56f027e) (impl) |
| Market{DAI,USDC,WBTC,WETH,wstETH} | vault_pool | per-asset lending market (5 markets) | audited | proxies via canonical registry |
| MarketETHRouter | vault_pool | WETH wrapping helper | audited (ABDK PeripheralContracts) | [0x29babf…0258](https://etherscan.io/address/0x29babff3eba7b517a75109ea8fd6d1eab4a10258) |
| DebtManager | controller | Leverage + deleverage via Balancer V2 flash loans | audited (ABDK 2nd + PeripheralContracts) | [0xf880bb…9ac0](https://etherscan.io/address/0xf880bb912b652a594abac1a9d79c968754d09ac0) |
| DebtPreviewer | helper | off-chain preview | helper | TUP proxy + impl |
| Previewer | helper | off-chain preview | helper | TUP proxy + impl |
| InterestRateModel{DAI,USDC,WBTC,WETH,wstETH} | core | per-market rate config (5 non-proxy contracts) | audited (ABDK + Chainsafe + Hashlock IRMv2 Feb-24, Mar-24) | various |
| ProxyAdmin | admin | OZ ProxyAdmin; owner = TimelockController | OZ upstream | [0x3866ea…ca34](https://etherscan.io/address/0x3866ea62494597a5edea4a97f9429f82b9d7ca34) |
| TimelockController | governance | 24-hour delay; owns ProxyAdmin | OZ upstream | [0x92024c…b58b](https://etherscan.io/address/0x92024c4bda9da602b711b9abb610d072018eb58b) |

### Optimism (chain_id 10) — 6 markets + full staking + rewards (primary deployment)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Auditor | core | Protocol controller | audited | [0xaeb62e…027e](https://optimistic.etherscan.io/address/0xaeb62e6f27bc103702e7bc879ae98bcea56f027e) (proxy) → 0x3f55a3…3c46 (impl) |
| Market{USDC.e,USDC,WETH,WBTC,OP,wstETH} | vault_pool | 6 markets | audited | per canonical registry |
| MarketETHRouter | vault_pool | WETH wrapper | audited | [0x29babf…0258](https://optimistic.etherscan.io/address/0x29babff3eba7b517a75109ea8fd6d1eab4a10258) (same address as Ethereum) |
| DebtManager | controller | Leverage helper | audited | [0x057e3e…4d04](https://optimistic.etherscan.io/address/0x057e3efca6f9e7094584b176f3e69a4f4b594d04) → 0xd75947…1bc1 (impl) |
| InstallmentsRouter | core | Installment-style borrowing | audited (ABDK + Hashlock Apr-24) | proxy + impl in registry |
| RewardsController | rewards | Per-market reward emissions | audited (Coinspect 1-3 RewardsController + ABDK Mar-25 update) | [0xbd1ba7…e031](https://optimistic.etherscan.io/address/0xbd1ba78a3976cab420a9203e6ef14d18c2b2e031) (proxy) |
| EXA | token | Governance ERC-20 token, 10M supply | audited (ABDK Mar-26 cross-chain) | [0x1e925d…c01b](https://optimistic.etherscan.io/address/0x1e925de1c68ef83bd98ee3e130ef14a50309c01b) (proxy) |
| esEXA | governance | Escrowed EXA | audited (ABDK + OZ Oct-23) | proxy + impl in registry |
| stEXA | staking | Staked EXA receipt | audited (Chainsafe + Sherlock Aug-24) | proxy + impl in registry |
| ProtoStaker | staking | Staking helper | audited (Aug-24 staking audits) | [0xa76fd3…8ca5](https://optimistic.etherscan.io/address/0xa76fd3efea52575fe84294a92518f92810d18ca5) |
| Airdrop | distribution | EXA airdrop via Sablier streams | likely audited (Sherlock Aug-24) | proxy + impl |
| Swapper, Leverager, Pauser, *Previewer | helpers | Various utility contracts | helpers | TUPs |
| ProxyAdmin | admin | Upgrade admin; owner = TimelockController | OZ upstream | [0xfba759…941a](https://optimistic.etherscan.io/address/0xfba759bcd1a99a7724c5068feddb4f5b844b941a) |
| TimelockController | governance | 24-hour delay (same address as Ethereum + Base) | OZ upstream | [0x92024c…b58b](https://optimistic.etherscan.io/address/0x92024c4bda9da602b711b9abb610d072018eb58b) |
| DAO multisig (Optimism) | governance | GnosisSafeL2 — Exactly DAO multisig | upstream | `0xfb1bff…91ea` |

### Base (chain_id 8453) — V2 contract family, 4 markets (newest deployment)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| VerifiedAuditor | core | V2 protocol controller (renamed Auditor) | audited (ABDK Oct-25 Protocol Update presumed) | [0x0aeb0b…597c](https://basescan.org/address/0x0aeb0bcb919858c0a4dcec3eed879985034a597c) (proxy) → 0x79e30d…b107 (impl) |
| Market{USDC,WETH,cbBTC,cbXRP} | vault_pool | 4 markets using `VerifiedMarket` impl | audited | per registry |
| MarketETHRouter | vault_pool | WETH wrapper | audited | proxy + impl |
| InstallmentsRouter | core | Installment-style borrowing | audited (ABDK + Hashlock Apr-24, same source) | proxy + impl |
| DebtRoller | core | **Base-only — roll positions across maturity dates** | likely Oct-25 audit | proxy + impl |
| Firewall | core | **Base-only — runtime permission/parameter check** | likely Oct-25 audit | proxy + impl |
| FlashLoanAdapter | helper | **Base-only — flash-loan integration adapter** | likely Oct-25 audit | non-proxy |
| DeadAllower | helper | **Base-only — dead-address fallback handler** | likely Oct-25 audit | non-proxy |
| Previewer, RatePreviewer, IntegrationPreviewer | helpers | off-chain views | helpers | TUPs |
| InterestRateModel{USDC,WETH,cbBTC,cbXRP} | core | 4 non-proxy IRMs (**compiler 0.8.26**, newer than 0.8.17 on Ethereum/Optimism) | partial (IRMv2 audits cover the same source) | various |
| ProxyAdmin | admin | Upgrade admin; owner = TimelockController | OZ upstream | [0xfba759…941a](https://basescan.org/address/0xfba759bcd1a99a7724c5068feddb4f5b844b941a) — same address as Optimism |
| TimelockController | governance | 24-hour delay | OZ upstream | [0x92024c…b58b](https://basescan.org/address/0x92024c4bda9da602b711b9abb610d072018eb58b) |

---

## Scope — Operational Periphery

**Single-tier governance: TimelockController + DAO multisig.**

| Layer | Address | Notes |
|---|---|---|
| **Deployer EOA** | `0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a` | Deploys all canonical Exactly contracts across all 3 chains. **Not a contract** — v1 brief lists it as one. No post-deployment on-chain power. |
| **TimelockController** | `0x92024c4bda9da602b711b9abb610d072018eb58b` (same on all 3 chains) | `getMinDelay() = 86400s (24 hours)` on all 3 chains. Owns the ProxyAdmin on each chain. |
| **Ethereum ProxyAdmin** | `0x3866ea62494597a5edea4a97f9429f82b9d7ca34` | OZ ProxyAdmin. `owner()` → TimelockController. |
| **Optimism + Base ProxyAdmin** | `0xfba759bcd1a99a7724c5068feddb4f5b844b941a` | Same address on both L2s. `owner()` → TimelockController. |
| **DAO multisig (Optimism)** | `0xfb1bffc9d739b8d520daf37df666da4c687191ea` | GnosisSafeL2. Threshold + signer membership not pulled. |
| **Pauser** | (Optimism only) | Emergency pause without timelock delay |

The v1 brief's `Upgrade authority concentrates in 1 distinct deployer addresses: 0xe61bde...665a` conflates the deployer EOA with upgrade authority. The actual upgrade path is **multisig → 24h timelock → ProxyAdmin → upgrade**.

---

## Scope — Proxy and Upgrade Architecture

All upgradable Exactly contracts use **OpenZeppelin's `TransparentUpgradeableProxy`** (~48 proxies across 3 chains).

| Pattern | Compiler | Chain | Approximate Count |
|---|---|---|---:|
| OZ TransparentUpgradeableProxy | 0.8.17 | Ethereum + Optimism | ~40 |
| OZ TransparentUpgradeableProxy | 0.8.26 (Base — V2 era) | Base | ~8 |
| Non-proxy (IRMs, helpers, non-upgradable contracts) | 0.8.17 / 0.8.26 | all 3 chains | ~50 |

No UUPS, no beacon proxies, no diamond pattern. Each Market has its own per-market impl rather than sharing a single Market impl.

The **compiler version transition from 0.8.17 (Ethereum + Optimism) to 0.8.26 (Base)** is the cleanest signal for the V1 → V2 protocol-version boundary. Base contracts also introduce new contract names (`VerifiedAuditor` / `VerifiedMarket` instead of `Auditor` / `Market`) and new Base-only contracts (`Firewall`, `DebtRoller`, `FlashLoanAdapter`, `DeadAllower`).

---

## Scope — Factory Architecture

Per-chain Markets are not factory-deployed — each Market is a standalone deployment with its own impl. The v1 brief's "1 factory templates detected" on Base referring to `TransparentUpgradeableProxy 0x52ee52…a0c4` (which is the `MarketWETH` proxy) and its 5 "instances" (`UpgradeableModularAccount` rows) is a **misclassification**: those 5 "instances" are **individual Exa Card App user smart accounts** (ERC-6900) deployed by the user-facing app, not Exactly's protocol code.

---

## Scope — Integration Surface

Substantial external integrations across the 3 chains:

| Integration | Chain | Touches | Audit-evaluable inside Exactly |
|---|---|---|---|
| Balancer V2 Vault | Ethereum + Optimism | DebtManager leverage flash loans | Exactly's flash-loan callback |
| Balancer V3 Vault | Base | FlashLoanAdapter / DebtRoller | Exactly's V3-pattern callback |
| Sablier V2 (3 contracts) | Optimism | Airdrop EXA distribution via streams | Exactly's Airdrop contract |
| Velodrome (PoolFactory + EXAGauge + EXAPool + VELO) | Optimism | EXA liquidity venue | Exactly's ProtoStaker |
| Uniswap V3 (Factory + Quoter) | Optimism + Base | EXA quotes + Swapper | Exactly's Swapper |
| Socket Gateway | Optimism | bridge-deposit UX | not core |
| Chainlink (per-market PriceFeed addresses) | all 3 chains | price oracles | Exactly's PriceFeed* wrappers |
| Beefy (BeefyEXA + BeefyEXABoost) | Optimism | Beefy-managed EXA strategy | not core |
| ExtraLending | Optimism | rewards source | not core |
| Permit2 (Uniswap) | all 3 chains | gasless approvals | not core |
| Multicall3 | Ethereum | batched read | not core |

---

## Audit Coverage

### Coverage by Scope Category (115 canonical contracts)

| Category | Contracts | Direct external audits | Coverage % |
|---|---:|---|---:|
| Auditor / VerifiedAuditor (3 chains, 3 contracts) | 3 | Coinspect 1-5 + ABDK 1-2 + Chainsafe 1-2 + (Base) Oct-25 Protocol Update | 100% |
| Markets + InterestRateModels (all 3 chains) | ~45 | extensively covered by all 10+ Market-related audits | 100% |
| RewardsController (Optimism) | 2 | Coinspect 1-3 RewardsController + ABDK Mar-25 update | 100% |
| Staking layer (EXA + esEXA + stEXA + ProtoStaker, Optimism) | 8 | Chainsafe Aug-24 + Sherlock Jul-Aug-24 + ABDK Sep-23 + OZ Oct-23 | 100% |
| InstallmentsRouter (Optimism + Base) | 4 | ABDK + Hashlock Apr-24 | 100% |
| DebtManager / DebtRoller (3 chains) | 4 | ABDK PeripheralContracts + ABDK Protocol Update | 100% |
| Base-only V2 contracts (Firewall, FlashLoanAdapter, DeadAllower, VerifiedMarket) | ~10 | ABDK Oct-25 Protocol Update (assumed; PDF parse needed) | partial |
| Exa Card App plugin | (Base, not protocol scope) | Quantstamp Jul-24 + Mar-25 + Oct-25 | 100% (3 audits) |
| EXA cross-chain (Mar-26 audit, leading-edge) | TBD | ABDK Mar-26 | new |
| ProxyAdmin + TimelockController | 3 | OZ upstream | inherited |
| **Total** | **115** | — | **~95-100% across protocol scope** |

### Past Audits (chronological)

| Date | Auditor | Scope | Relationship | Link |
|---|---|---|---|---|
| 2021-11 | Coinspect | 1st audit | direct | [`audits/Coinspect 1st audit (Nov-21).pdf`](https://github.com/exactly/audits/blob/main/Coinspect%201st%20audit%20(Nov-21).pdf) |
| 2022-05 | Coinspect | 2nd audit | direct | (same repo) |
| 2022-05 | Chainsafe | 1st audit | direct | (same repo) |
| 2022-09 | Cryptecon | Economics audit (NOT security) | direct (economic) | [`audits/Cryptecon...`](https://github.com/exactly/audits/blob/main/Cryptecon_Economics_of_the_Exactly_Protocol(Sep-22).pdf) |
| 2022-10 | ABDK | 1st audit | direct | (same repo) |
| 2022-10 | Chainsafe | 2nd audit | direct | (same repo) |
| 2022-10 | Coinspect | 3rd + 4th audit | direct | (same repo) |
| 2023-01 | Coinspect | RewardsController 1st | direct | (same repo) |
| 2023-02 | Coinspect | RewardsController 2nd | direct | (same repo) |
| 2023-03 | Coinspect | 5th audit + RewardsController 3rd | direct | (same repo) |
| 2023-05 | ABDK | 2nd audit | direct | (same repo) |
| 2023-09 | ABDK | PeripheralContracts 1st | direct | (same repo) |
| 2023-09 | ABDK | EscrowedEXA | direct | (same repo) |
| 2023-10 | OpenZeppelin | EscrowedEXA | direct | (same repo) |
| 2024-02 | ABDK | Interest Rate Model v2 | direct | (same repo) |
| 2024-03 | ABDK + Chainsafe + Hashlock | Interest Rate Model v2 (parallel) | direct | (same repo) |
| 2024-04 | ABDK + Hashlock | Installments Router + New Market Roles | direct | (same repo) |
| 2024-05-04 | Sherlock | Exactly Protocol full review | direct | Sherlock hosted |
| 2024-07 | Quantstamp | Exa App WebAuthn Plugin | direct | (audits repo) |
| 2024-07-25 | Sherlock | Staking Contract | direct | Sherlock hosted |
| 2024-08 | Chainsafe + Sherlock | Staking Contract | direct | (audits repo) |
| 2025-03 | ABDK | Rewards Controller Update | direct | (audits repo) |
| 2025-03 | Quantstamp | Exa App Plugin | direct | (audits repo) |
| 2025-10 | ABDK | Protocol Update | direct | (audits repo) |
| 2025-10 | Quantstamp | Exa App Plugin Update | direct | (audits repo) |
| **2026-03** | **ABDK** | **EXA token cross-chain** (most recent) | direct | (audits repo) |

### Gap Analysis

- **Base V2 deltas (VerifiedMarket / VerifiedAuditor / Firewall / DebtRoller / FlashLoanAdapter / DeadAllower)** — ABDK Oct-25 Protocol Update audit *likely* covers these but operator should confirm scope-described via PDF.
- **EXA cross-chain anchor (Mar-26)** — Operator should pull PDF to identify the in-scope on-chain addresses. Likely a new `EXABridge`-style contract not yet in the canonical deployment registry.
- **6 unverified Optimism Market_impls** — `0xc3a540d9…525e`, `0x94cba863…673a`, `0xebd58c87…eb19`, `0xcb213af4…fd52`, `0x833be3f1…d126`, `0xc9a12edc…54db`. Deployment registry lists these as Market implementations but Etherscan returns empty source. Likely obsolete impls — operator should `eth_call` `implementation()` on each Market proxy to confirm current impl.
- **DAO multisig signer membership** — Not enumerated for `0xfb1bff…91ea`.
- **Cryptecon economic audit (Sep-22)** is an economic / mathematical audit, not a security audit. The v1 brief mis-categorizes audits broadly.

Last direct audit: **ABDK Mar-26 EXA cross-chain** — 50 days before this brief. NOT "2 days ago" as v1 brief claims.

---

## Appendix

### Docs Pages Referenced

- https://docs.exact.ly/security/audits — public audit index (markdown table)
- https://docs.exact.ly/security/bug-bounty-program — Immunefi bug bounty
- https://docs.exact.ly/guides/protocol/auditor — Auditor contract docs
- https://docs.exact.ly/getting-started/white-paper — protocol white paper
- https://docs.exact.ly/getting-started/math-paper — math paper
- https://github.com/exactly/protocol/tree/main/deployments — canonical address registry
- https://github.com/exactly/audits — audit PDFs
- https://github.com/exactly/exa — Exa Card App monorepo
- https://github.com/exactly/webauthn-owner-plugin — ERC-6900 plugin
- https://app.zellic.io/coverage/exactly-protocol — Zellic audit coverage page (third-party)

### Audit Reports (full list, 31 entries, time-ordered)

(See [`brief_gold_standard.md`](brief_gold_standard.md) §"Audit Coverage" for the complete table with PDF sizes + scope descriptions.)

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) — 115 contracts, 1,787 source files, 15.6 MB

### Excluded Contracts (v1 false positives)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| Deployer EOA listed as contract row | 1 | `0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a` is an EOA, not a contract |
| ERC-6900 UpgradeableModularAccount user smart accounts (Exa Card App) on Base | 6 | `0x0046…a61e`, `0x0ee4ad…a294`, `0x108a60…612f`, `0x13a394…1e9c`, `0x1b3bbd…1385`, `0x78a60c…e006` — individual user accounts deployed by the Exa Card App ERC-6900 factory; not core protocol scope |
| External integration contracts (Balancer, Sablier, Velodrome, Uniswap, Socket Gateway, Permit2, Multicall3) | ~10 | listed in canonical deployment registry for convenience but owned by their respective protocols |
| Unverified obsolete impls (intermediate impls that were upgraded past) | ~6 | Operator should confirm current impl via `implementation()` |
| **Total v1 over-count** | **~23** | v1 reports 117 contracts; gold standard scope is 115 (with some overlap in counting; rough delta is ~2 net) |

### Data Availability Notes

- **Canonical address registry:** Pulled deterministically from `github.com/exactly/protocol/deployments/{ethereum,optimism,base}/*.json` (each file has `address` + `implementation` + `abi` + transaction receipt).
- **Provenance classification:** Trivially derivable from canonical deployment file names (Auditor, MarketX, InterestRateModelX, etc.) — pipeline didn't use it.
- **Multisig + timelock metadata:** TimelockController `0x92024c…b58b` returns `getMinDelay() = 86400s (24h)` on all 3 chains via standard `eth_call`. ProxyAdmin owner is the TimelockController on all chains.
- **Per-contract TVL:** Per-chain TVL from DL: Optimism $2.50M, Base $666K, Ethereum $6.1K. Plus $494K borrowed across all chains. EXA totalSupply: 10M.
- **Docs extraction status:** docs.exact.ly + github.com/exactly cross-checked. Canonical audit list is the markdown table at `docs/security/audits.md`.

### Generation Metadata

- **Generated at:** 2026-05-17
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** 2026-05-15T01:36:23Z
- **Canonical source registry:** `github.com/exactly/protocol/deployments` (commit-pinned at fetch time)
- **Etherscan v2:** chains 1 + 10 + 8453
- **Alchemy RPC:** used for L2 `eth_call` where Etherscan v2 free tier was rate-limited

---

## Divergences from v1 SCOPE_NOTE.md

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `lifecycle_status` | `dead` (latest deployment 2023-08-21) | **active** (most recent code push 2026-05-14; most recent audit Mar-26) | V1 uses Ethereum-only deployment date; protocol has continued on Optimism + Base |
| `tier` | 4 - project_dead_or_rugged | **1 - flagship-mid-TVL-multi-chain-lending** | V1 downstream defect of bad lifecycle |
| `commercial_fit` | mid_tvl_commercial_target | continuous_audit_diff_targeting | V1 frames as cold-start audit; protocol is already exhaustively reviewed |
| `total_contracts` | 117 | 115 | V1 includes deployer EOA + 6 ERC-6900 user accounts + external integration contracts + unverified obsolete impls |
| `chains` | 1, 10, 8453 | 1, 10, 8453 | Same |
| `tvl` | $5.36M (snapshot 2026-04-29, stale) | $3.17M (fresh) + $494K borrowed | V1 stale by 2 weeks |
| `audits` | 6 entries (4 placeholders + 2 partial) | 31 audits across 8 firms + 1 economic audit | V1 didn't parse the docs page markdown table or the github.com/exactly/audits repo file list |
| `upgrade_authority` | "concentrates in 1 deployer 0xe61bde…665a" | TimelockController `0x92024c…b58b` with 24-hour delay; deployer EOA has no post-deployment power | V1 conflates deployer with upgrade authority |
| `multisig + timelock metadata` | "not extracted" | TimelockController `getMinDelay() = 86400s` confirmed on all 3 chains; DAO multisig `0xfb1bff…91ea` (GnosisSafeL2) | V1 doesn't issue the `eth_call` |
| `factory_architecture` | "1 factory template detected (5 instances)" | The "factory" is the `MarketWETH` proxy; "instances" are individual Exa Card App ERC-6900 user accounts (not Exactly's code) | V1 factory-RPC enumeration false positive |
| `integration_surface` | "No external integrations detected" | 11 distinct integrations (Balancer V2/V3, Sablier V2, Velodrome, Uniswap V3, Socket Gateway, Chainlink, Beefy, ExtraLending, Permit2, Multicall3) | V1 doesn't follow integration boundaries |
| `v1_v2_split` | not surfaced | Base uses compiler 0.8.26 + `Verified*` contract names + Base-only `Firewall`/`DebtRoller`/`FlashLoanAdapter`/`DeadAllower` — clear V1 → V2 architectural boundary | V1 flattens both families |
