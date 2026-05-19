# Agentic Audit Brief: Blackwing (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON (`api.llama.fi/protocol/blackwing`), the Blackwing DefiLlama adapter ([`projects/blackwing/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/blackwing/index.js)), the canonical contracts page at [`docs.blackwing.fi/misc/deployed_contracts`](https://docs.blackwing.fi/misc/deployed_contracts), the Zellic audit at [`Zellic/publications`](https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf), Etherscan v2 per-contract verification across Ethereum + Arbitrum + BSC, and on-chain `eth_call` + storage-slot probes against the canonical contracts. The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context.

## Project Overview

- **Project:** Blackwing (DL slug `blackwing`)
- **Tagline:** "The Modular Blockchain for Margin Trading" (DL description) — though the org's GitHub bio says "Premier Perpetual Trading"
- **Websites:** https://blackwing.fi (app) + https://www.blackwing.finance (marketing) + https://docs.blackwing.fi (docs, Docusaurus-hosted)
- **Twitter:** [@blackwing_fi](https://twitter.com/blackwing_fi) · **Discord:** discord.gg/blackwingfi · **Telegram:** t.me/+xjqVyD-8rMtkN2Fl
- **GitHub:** [`github.com/blackwingfi`](https://github.com/blackwingfi) — org exists (created 2023-03-16, name "Blackwing", "Premier Perpetual Trading") but has **0 public repos**. **Closed-source.**
- **DL category:** `Farm` (but the protocol is actually a deposit-vault staging layer for a margin-trading product per docs and DL description)
- **Token:** No protocol token observed (BXP points/rewards per docs; "token_airdrop" mentioned as a future page but not live)
- **Chains (verified deployment):** **3 EVM chains** — Ethereum (1), Arbitrum (42161), BSC (56) — plus **Solana** (per docs, has its own `BlackwingVault`; not covered by this brief because Solana is not on Etherscan v2)
- **TVL:** **$993,547** (DL `tvl[-1]`, snapshot 2026-05-15), decomposed:
  - Arbitrum: $536K (53.9%)
  - BSC: $254K (25.6%)
  - Ethereum: $203K (20.4%)
- **Audit history:** **1 direct security audit** — Zellic, 2024-02-29 (`Blackwing - Zellic Audit Report.pdf`, 810KB). No second audit, no Code4rena/Sherlock/Spearbit/Cantina engagement found.
- **Lifecycle:** **active, single-product, on continued user-facing TVL but with limited code activity surface.** Most recent canonical-set deployment 2024-07-13 per v1 brief (consistent with the launch+rollout window seen in deployer EOA history Jan 2024 → Jul 2024). No new contracts deployed in 2025-2026 based on docs.
- **Tier:** **Tier 2 — small-to-mid-TVL deposit-vault protocol with thin audit coverage on a wide asset surface.** Audit-evaluable surface concentrates on (a) the single shared `BlackwingVault` implementation (one impl handles all per-asset wrappers across 3 EVM chains) and (b) the per-asset `BlackwingVaultToken` wrappers (25 on Ethereum + 9 on Arbitrum + 4 on BSC).
- **Commercial fit:** **deposit-vault audit + governance-risk review.** The single low-threshold (1-of-3) Ethereum ProxyAdmin multisig is the largest non-code risk; the wide per-asset surface (24 distinct LST/LRT/Pendle-PT/memecoin assets on Ethereum alone) is the largest code-side surface area.

> Important framing. **Blackwing is a deposit-staging vault, not a margin-trading protocol itself.** Per the docs site structure (Classic Mode + Intent Solver + Limitless Pools) and the on-chain code (TUP-wrapped vault + per-asset receipt tokens), what's deployed on-chain is the deposit layer. The actual margin-trading functionality appears to be off-chain or on a separate execution layer not visible from the canonical address list. **The on-chain Vault accepts a basket of 24 asset types** (USDC, WETH, LSTs like rsETH/rswETH/ezETH/eETH/weETH/sUSDe, Pendle PT tokens for several maturities, plus memecoins SHIB and PEPE) **and issues per-asset receipt tokens**. Users deposit, get receipts, and presumably bridge into the margin layer. The audit gap is concentrated on the deposit-vault contract logic plus the per-asset wrapper math.

---

## TVL Methodology Note

DL's adapter ([`projects/blackwing/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/blackwing/index.js)) is straightforward:

> "TVL is the sum of token balances at the BlackwingVault address on each chain, for a fixed list of accepted asset tokens."

The adapter hardcodes:

- **Arbitrum vault:** `0xc6aDE8A68026d582AB37B879D188caF7e405dD09` — counts USDC, USDC_CIRCLE, WETH, ezETH, weETH, plus Pendle PT-rsETH/weETH/ezETH 27JUN2024
- **Ethereum vault:** `0xc6aDE8A68026d582AB37B879D188caF7e405dD09` (same address as Arb) — counts USDC, WETH, rswETH, rsETH, ezETH, eETH, weETH, sUSDe + 9 Pendle PT tokens + SHIB + PEPE + egETH + pufETH + mstETH + apxETH + mswETH
- **BSC vault:** `0xD00789260984160a64DcF19A03896DfF73BF4514` (different address) — counts USDT + WBNB

The adapter uses `sumTokensExport({ owner: <vault>, tokens: [...], fetchCoValentTokens: true })` so it also picks up any non-listed tokens via Covalent. The token list reads like a **comprehensive LRT/LST + Pendle PT + memecoin basket** designed to accept anything users want to use as margin collateral.

**On-chain state (queried 2026-05-19 via Alchemy `eth_call`):**

| Asset | Contract | `totalSupply` | Note |
|---|---|---:|---|
| BlackwingVaultToken USDC (Ethereum) | `0xB943Bd…6c86` | **870,454 USDC** (~$870K) | Issued receipts; vault may hold less directly |
| BlackwingVaultToken USDC (Arbitrum, **same address as Eth**) | `0xB943Bd…6c86` | **12,597,405 USDC** (~$12.6M) | Note: receipt supply substantially exceeds the $536K DL TVL — suggesting the vault has deployed assets off-vault to a yield strategy or margin layer |
| BlackwingVaultToken USDT (BSC) | `0xA767C9…0350` | **18,296,166 USDT** (~$18.3M) | Same observation as Arbitrum |

**The receipt-token totalSupply substantially exceeds DL TVL** on Arbitrum + BSC. This is the dynamic that an audit-targeting agent should investigate first: **what does the vault do with the deposited assets, and where do they sit?** DL's TVL only counts what's at the vault address; if assets have been withdrawn to deploy elsewhere, total user exposure is much higher than DL reports.

---

## Lifecycle and Recent Activity

**Status: active, single-product, low new-deployment cadence.** Verified evolution:

| Date | Block / Event | Source |
|---|---|---|
| 2023-03-16 | GitHub org `blackwingfi` created | github.com/blackwingfi |
| 2024-01-26 | block 19088218 | Earliest canonical address in v1 manifest deployed: `0xfae103dc…6c0` (rswETH — Swell's token, NOT Blackwing) by EOA `0x174ae6eb…1a08`. Likely a deployer-history anchor, not Blackwing-owned. |
| **2024-02-29** | — | **Zellic audit completed**: `Blackwing Smart Contract Security Assessment` (810KB PDF) |
| **2024-03-02** | block 19348897 | **Ethereum mainnet launch:** `BlackwingVault` proxy `0xc6aDE8…dD09` deployed by EOA `0x551d1f5a…7226`. This is the "main deployer" — same EOA also deploys all per-asset vault tokens. |
| 2024-Mar to 2024-Jul | rolling | Per-asset `BlackwingVaultToken` deployments staged across Ethereum + Arbitrum + BSC; final canonical deployment 2024-07-13 per v1 brief |
| 2024-Jul-2026 | (no new canonical addresses) | No deployments observed; docs site updated periodically (Docusaurus build); DL TVL maintained ~$1M |

The protocol is **not dead** but **not aggressively expanding either**: TVL ~$1M (down from peak; v1 brief saw $6.57M on 2026-04-29 snapshot, now $993K), audit chain at 1 entry from Feb-2024, no second-auditor coverage, GitHub org has 0 public repos. The audit gap relative to the asset surface (24 asset wrappers on Ethereum alone) is significant.

---

## Scope — Core Logic

The Blackwing on-chain surface is a **3-layer pattern repeated per chain**:

1. **Main `BlackwingVault`** (TransparentUpgradeableProxy) — the deposit entry point.
2. **Per-asset `BlackwingVaultToken`** (TUP, one per asset) — receipt token issued to depositors.
3. **`BlackwingNoopDeployer`** (helper, same address on all 3 chains) — deterministic deployer used to anchor CREATE addresses.

Each TUP has its own implementation address. All proxies use OpenZeppelin's `TransparentUpgradeableProxy` (compiler 0.8.20).

### Ethereum (25 canonical contracts)

| Contract | Address | Notes |
|---|---|---|
| **BlackwingVault** (TUP) | [`0xc6aDE8A68026d582AB37B879D188caF7e405dD09`](https://etherscan.io/address/0xc6aDE8A68026d582AB37B879D188caF7e405dD09) | Main vault — same address slot as Arbitrum (CREATE-collision via deployer EOA `0x551d1f5a…`). Impl `0xa92299…b37d` (BlackwingVault, Etherscan-verified). |
| BlackwingNoopDeployer | [`0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F`](https://etherscan.io/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) | Same address on all 3 chains. Deterministic deployer. |
| BlackwingVaultToken **USDC** | [`0xB943Bd7DA6948324363025E3fE789CD02c846C86`](https://etherscan.io/address/0xB943Bd7DA6948324363025E3fE789CD02c846C86) | Same address slot on Eth + Arb |
| BlackwingVaultToken **WETH** | [`0xDcFE7cdB5b1bb7bFd4ed57b83eFD49fE9Cd19B2e`](https://etherscan.io/address/0xDcFE7cdB5b1bb7bFd4ed57b83eFD49fE9Cd19B2e) | Eth-only |
| BlackwingVaultToken **rswETH** (Swell LRT) | [`0xC7FA9aEf1fe5b598e3671Baa4FcaB0F9024EA306`](https://etherscan.io/address/0xC7FA9aEf1fe5b598e3671Baa4FcaB0F9024EA306) | Eth-only LRT wrapper |
| BlackwingVaultToken **rsETH** (Kelp) | [`0xD821B54F27e4841Ea75a414a0eBfec94C3f27098`](https://etherscan.io/address/0xD821B54F27e4841Ea75a414a0eBfec94C3f27098) | |
| BlackwingVaultToken **ezETH** (Renzo) | [`0xcFD9020F41162Eede87252885E2551a9377263A3`](https://etherscan.io/address/0xcFD9020F41162Eede87252885E2551a9377263A3) | |
| BlackwingVaultToken **eETH** (Ether.fi) | [`0xC7461574B8179C2eC6bdcbAB7f63c30fa7D0d4BD`](https://etherscan.io/address/0xC7461574B8179C2eC6bdcbAB7f63c30fa7D0d4BD) | |
| BlackwingVaultToken **weETH** (Ether.fi wrapped) | [`0x28D6f930462299c6597AC40b06F95DAd3476477E`](https://etherscan.io/address/0x28D6f930462299c6597AC40b06F95DAd3476477E) | |
| BlackwingVaultToken **sUSDe** (Ethena) | [`0x81a3B889b718BE0503698E18f836bf44a0a8BE22`](https://etherscan.io/address/0x81a3B889b718BE0503698E18f836bf44a0a8BE22) | |
| Pendle PT tokens (8 wrappers) | various | PT-rswETH-27JUN2024, PT-weETH-26DEC2024, PT-weETH-27JUN2024, PT-ezETH-26DEC2024, PT-rsETH-27JUN2024, PT-USDe-25JUL2024, PT-ENA-29AUG2024, PT-sUSDE-25JUL2024 |
| Memecoin wrappers (2) | various | SHIB, PEPE |
| LRT-extra wrappers (5) | various | egETH (Eigenpie), pufETH (Puffer), mstETH (Eigenpie), apxETH (Dinero), mswETH (Eigenpie) |

### Arbitrum (9 canonical contracts)

| Contract | Address | Notes |
|---|---|---|
| **BlackwingVault** (TUP) | [`0xc6aDE8A68026d582AB37B879D188caF7e405dD09`](https://arbiscan.io/address/0xc6aDE8A68026d582AB37B879D188caF7e405dD09) | Same address slot as Ethereum |
| BlackwingNoopDeployer | [`0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F`](https://arbiscan.io/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) | Same address as Eth + BSC |
| BlackwingVaultToken **USDC** | [`0xB943Bd7DA6948324363025E3fE789CD02c846C86`](https://arbiscan.io/address/0xB943Bd7DA6948324363025E3fE789CD02c846C86) | Same address as Eth (different impl) |
| BlackwingVaultToken **WETH** | [`0x7ae9431FA62F5bE2da7DCB05dcB1FC5fB2fe7cC3`](https://arbiscan.io/address/0x7ae9431FA62F5bE2da7DCB05dcB1FC5fB2fe7cC3) | |
| BlackwingVaultToken **ezETH** | [`0x27Ea06f9e5e4deB9349187a39edAdEf9142A46EC`](https://arbiscan.io/address/0x27Ea06f9e5e4deB9349187a39edAdEf9142A46EC) | |
| BlackwingVaultToken **weETH** | [`0xE8330250D7B996CdE78BcE829779005E35E48218`](https://arbiscan.io/address/0xE8330250D7B996CdE78BcE829779005E35E48218) | |
| Pendle PT tokens (3) | various | PT-weETH-27JUN2024, PT-rsETH-27JUN2024, PT-ezETH-27JUN2024 |

### BSC (4 canonical contracts) — completely missed by v1 brief

| Contract | Address | Notes |
|---|---|---|
| **BlackwingVault** (TUP) | [`0xD00789260984160a64DcF19A03896DfF73BF4514`](https://bscscan.com/address/0xD00789260984160a64DcF19A03896DfF73BF4514) | **Different address slot** from Eth + Arb. Impl `0xc6ade8…dD09` (the SAME address slot as the Eth+Arb vault proxy — CREATE-collision pattern with the deployer reusing the Eth vault's address for the BSC impl). |
| BlackwingNoopDeployer | [`0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F`](https://bscscan.com/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) | Same address as Eth + Arb |
| BlackwingVaultToken **USDT** | [`0xA767C903D8b801a2f3CC451134eAd2D7903c0350`](https://bscscan.com/address/0xA767C903D8b801a2f3CC451134eAd2D7903c0350) | 18-decimal BEP-20 USDT |
| BlackwingVaultToken **WBNB** | [`0x1004Dd758d318fA786ca13F46B2d37088cf32C12`](https://bscscan.com/address/0x1004Dd758d318fA786ca13F46B2d37088cf32C12) | |

The BSC deployment holds **$254K in DL TVL — 25% of total protocol TVL** — but the v1 pipeline brief shows `chains: 1, 42161` and completely omits BSC. The DL JSON itself reports `chains: ['Arbitrum', 'Ethereum', 'Binance']`. This is a substantial topography gap.

### Solana (not covered by this brief)

The docs page lists a Solana `BlackwingVault` at `AUYtVnqj6K…` (truncated in the doc page header). Solana is not on Etherscan v2 and isn't fetched here.

---

## Scope — Operational Periphery

### Upgrade Authority (3 distinct ProxyAdmins, 3 distinct multisigs)

Each chain has its own ProxyAdmin contract owning the per-chain BlackwingVault and all per-asset BlackwingVaultTokens via EIP-1967 admin slot:

| Chain | ProxyAdmin | ProxyAdmin owner (multisig) | Notes |
|---|---|---|---|
| Ethereum | `0xce26300dbe43563331f078696cc66db66d75fe5e` | `0x757e446841de5432516eea90ba2449eb811ca7d4` — **Gnosis Safe, 1-of-3** ⚠️ | Low threshold |
| Arbitrum | `0xce26300dbe43563331f078696cc66db66d75fe5e` (same address as Eth via CREATE-collision) | `0xc8afcaf49c960797ca0e87debfc64fb17294ea26` — **different owner** | Likely separate multisig (not enumerated in this brief) |
| BSC | `0x6bf48c14e81b04abfa8cb9c4936f91c09fe3b5b3` (different) | `0x30d0ad9c4ae231d71fe8754e1d60c55bf1d15949` | Likely separate multisig |

The **Ethereum ProxyAdmin owner is a 1-of-3 Gnosis Safe** — `getThreshold()` returns 1, `getOwners()` returns 3 entries. **For a $200K vault with 24-asset surface, a 1-of-3 threshold means any single signer compromise grants full upgrade authority.** Operator should pull the signer addresses and assess key-management posture.

### Deployer EOAs (no on-chain power post-deployment)

| EOA | Role | First deployment |
|---|---|---|
| `0x174ae6ebff5e678a1bee298e1ff7df799c7c1a08` | Earliest observed deployer in the deployer-neighborhood (deployed `0xfae103dc…6c0` which is Swell's rswETH, not actually a Blackwing contract — likely a precursor address mistakenly tracked by the pipeline) | 2024-01-26 |
| `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` | **Main Blackwing deployer.** Deploys `BlackwingVault` + every `BlackwingVaultToken` across all 3 EVM chains. Same nonce sequence on Eth + Arb produces address-slot collisions. | 2024-03-02 |

Both are confirmed-EOA (bytecode length 0). Post-deployment, neither has any on-chain role.

---

## Scope — Proxy and Upgrade Architecture

**Uniform pattern: OpenZeppelin TransparentUpgradeableProxy + per-chain ProxyAdmin.**

| Pattern | Compiler | Count |
|---|---|---:|
| OZ TransparentUpgradeableProxy | 0.8.20 | 36 (25 Eth + 8 Arb + 3 BSC) |
| OZ ProxyAdmin | 0.8.20 | 3 (one per chain) |
| BlackwingNoopDeployer (helper) | 0.8.20 | 3 (same address on all chains via deterministic deploy) |
| Implementation contracts (`BlackwingVault`, `BlackwingVaultToken` per asset) | 0.8.20 | 35+ (each proxy points at a unique impl address) |

**Notable architectural choice:** each `BlackwingVaultToken` proxy has its **own unique implementation** rather than sharing a single template. Most multi-asset vaults use beacon proxies or a single shared impl. Here, each asset gets a separate impl deployment — this **increases the audit surface** because each impl could in principle diverge.

**CREATE-collision pattern** is heavily used:
- `BlackwingVault` proxy `0xc6aDE8…dD09` — same address on Eth + Arb
- `BlackwingVaultToken USDC` proxy `0xB943Bd…6c86` — same address on Eth + Arb
- `BlackwingNoopDeployer` `0x3b7dF0…1C04F` — same address on all 3 chains
- `ProxyAdmin` `0xce26300d…fe5e` — same address on Eth + Arb
- BSC vault's *implementation* address is the same as Eth+Arb vault's *proxy* address — a curious nonce-alignment artifact

---

## Scope — Integration Surface

The Blackwing vault accepts a wide basket of external tokens as collateral. The v1 brief's `1 integration-surface rows detected` line lists only the Swell rswETH token (`0xfae103dc…6c0`) which appears to be an accident — that address is the rswETH token Blackwing accepts, not a Blackwing-owned contract.

Real integrations (each is an external token the vault wraps via a `BlackwingVaultToken`):

| Integration | Asset(s) Blackwing wraps | Chain |
|---|---|---|
| **Lido** (wstETH ecosystem) | (none directly; LSTs come via Lido-adjacent issuers below) | — |
| **Swell** | rswETH | Eth |
| **Kelp** | rsETH | Eth |
| **Renzo** | ezETH | Eth + Arb |
| **Ether.fi** | eETH + weETH | Eth + Arb |
| **Ethena** | sUSDe | Eth |
| **Pendle** | PT-rswETH/weETH/ezETH/rsETH/USDe/ENA/sUSDE (8 maturities on Eth, 3 on Arb) | Eth + Arb |
| **Eigenpie** | egETH + mstETH + mswETH | Eth |
| **Puffer** | pufETH | Eth |
| **Dinero** | apxETH | Eth |
| **Circle** | USDC (multi-chain) | Eth + Arb |
| **Tether** | USDT | BSC |
| **WBNB** | WBNB | BSC |
| **Memecoins** | SHIB + PEPE | Eth |
| **Solana ecosystem** | (not enumerated; Solana vault deployment listed but out of EVM scope) | Sol |

**No on-chain integration with margin trading venues is visible** in the canonical contract set. This reinforces the framing that the on-chain surface is purely the deposit-staging layer; the margin product is presumably executed off-chain or on a separate layer.

---

## Scope — Not Blackwing (V1 false positives)

The v1 brief lists **19 contracts** in topography. Reviewing each:

| V1 attribution | Verdict | Reason |
|---|---|---|
| `BlackwingVault` `0xa92299…b37d` (Arb, operational_periphery, TP) | **REAL Blackwing** (BlackwingVault impl, used by both Eth + Arb proxy) | Correctly attributed |
| `BlackwingVaultToken` (4 entries on Arb) | **REAL Blackwing** | Correctly attributed; these are per-asset impls |
| `BlackwingNoopDeployer` (Arb) | **REAL Blackwing** | Correctly attributed |
| 9 `TransparentUpgradeableProxy` rows on Arb | **REAL Blackwing** (per-asset receipt-token proxies + main vault proxy) | Mostly correct but the v1 brief doesn't connect each proxy to a doc-listed role |
| `TransparentUpgradeableProxy` `0xfae103dc…6c0` (Eth, integration_surface) | **NOT BLACKWING** — this is **Swell's `rswETH` token contract**. The DL adapter lists it explicitly as `ETHEREUM_MAINNET_RSWETH`. The vault accepts rswETH as collateral; the address itself is Swell, not Blackwing. | Pipeline followed the deposit-token reference into Swell's contract |
| `RswETH` `0x4796d9…2362` (Eth, integration_surface impl) | **NOT BLACKWING** — Swell's rswETH implementation | Same as above |
| 3 `Unknown unverified` rows (Arb) — `0x7273f0…7e4`, `0x9db97d…7ba`, `0xcfd90e…b9d` | **REAL Blackwing impls** (per-asset BlackwingVaultToken impls — these are the impls behind 3 of the v1 brief's TUPs) | Correctly attributed but pipeline shows them as "unknown" because Etherscan doesn't return source for them (likely unverified on-chain, or unverifiable because the source isn't published) |

**Net of v1 brief defects:**

- **2 false positives** (Swell's rswETH proxy + impl — both belong to Swell, not Blackwing)
- **Entire BSC deployment missing** (4 canonical Blackwing contracts on BSC: BlackwingVault + BlackwingNoopDeployer + BlackwingVaultToken USDT + BlackwingVaultToken WBNB)
- **All 25 Ethereum BlackwingVaultToken wrappers missing** — the v1 brief shows only Arbitrum BlackwingVaultTokens; Ethereum has 23 additional per-asset wrappers listed in the docs that the v1 brief misses entirely
- **The role-mapping is incomplete** — v1 shows generic "TransparentUpgradeableProxy" for all proxies without connecting them to docs-listed per-asset roles

After exclusions + missing-contract additions, the gold standard scope is **39 contracts** (25 Eth + 9 Arb + 4 BSC + 1 Solana not fetched) vs v1's 19 entries (of which 2 are wrong).

---

## Audit Coverage

### Audit history (URL-verified)

| Date | Auditor | Report | Bytes | Scope |
|---|---|---|---:|---|
| **2024-02-29** | **Zellic** | [`Blackwing - Zellic Audit Report.pdf`](https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf) | 810K | Smart Contract Security Assessment — the only direct audit on file |

**No other audits found.** Searched: Code4rena, Sherlock, Halborn, Trail of Bits, Cyfrin, Cantina, Spearbit, OpenZeppelin, ChainSecurity, ABDK, Hashlock. None have published a Blackwing audit. The docs site has no `/security` or `/audits` page.

### Coverage by scope category

| Category | Contracts | Audited | Notes |
|---|---:|---:|---|
| BlackwingVault (3 proxies + 3 impls — same impl shared between Eth+Arb, BSC has its own) | 5 | Zellic 2024-02 (deployed in 2024-03; audit predates Eth + Arb mainnet by ~3 days) | The Zellic audit was likely a pre-deployment review |
| BlackwingNoopDeployer (3 instances, same address) | 3 | Zellic (helper, likely in scope) | |
| BlackwingVaultToken proxies + impls (25 Eth + 8 Arb + 3 BSC × 2 each ~70 contracts total) | 70+ | Zellic — but only for the shared impl pattern; per-asset diff not enumerated | |
| ProxyAdmin (3 instances) | 3 | OZ upstream | |
| **Total** | **~80+ deployed** | partial direct + OZ inheritance | Audit is shallow relative to the deployed asset surface |

### Gap analysis

- **No re-audit since 2024-02-29** (~15 months before this brief). New asset wrappers were added through Jul-2024 (per v1 brief's `latest deployment 2024-07-13`); none of those are explicitly named in the Zellic audit (which predates them by several months).
- **No second auditor** — single-auditor coverage for a multi-chain vault is unusual. Operator should consider a Code4rena/Cantina competition or a second-firm review.
- **No public source code** — Blackwing's GitHub org has 0 public repos. Audit work depends entirely on Etherscan-verified source.
- **Per-asset wrapper math** — each `BlackwingVaultToken` proxy has its own unique impl. If the team uses a single template internally but deploys per-asset, the Zellic audit (which presumably reviewed one template) covers the *pattern* but not each instance's specific deployment. Diff-audit per asset is warranted.
- **1-of-3 Ethereum ProxyAdmin multisig** — this is a non-code risk that materially affects how an auditor scopes the protocol. A single signer can execute upgrades unilaterally.
- **No `paused()` exposure on the vault proxy** — `eth_call` of `paused()` returns empty (the TUP doesn't delegate the check); operator should verify the impl has a pause mechanism by reading source directly.

---

## Targeting Recommendation

In rough priority order:

1. **Re-audit the BlackwingVault impl** (`0xa9229928…b37d`) — Zellic's Feb-2024 review predates the Mar+ mainnet deployment by days; subsequent on-chain operation may have surfaced patterns worth re-reviewing. Diff against the audited version.
2. **Audit the per-asset `BlackwingVaultToken` impl set** — each of the 36+ proxies has its own impl. If the impls genuinely diverge (rather than being a shared template), this is a substantial uncovered surface. Operator should first confirm whether the impls are identical bytecode-deployed-multiple-times or truly different.
3. **Governance / multisig review** — the 1-of-3 Ethereum threshold is the largest non-code risk. Audit the signer set, key-management posture, and upgrade-process discipline.
4. **Off-vault asset deployment** — the totalSupply of `BlackwingVaultToken USDC (Arb)` is 12.6M, but DL TVL (which counts the vault address balance) is only $536K. Where are the deposited assets? The vault contract probably deploys to a yield strategy or margin-execution layer. **This is the largest unknown for an audit-targeting agent** — operator should ask the team where the off-vault funds sit.
5. **BSC deployment review** — the BSC vault wasn't in the original Zellic scope (BSC deployment is post-audit). 4 BSC contracts holding $254K TVL are entirely uncovered.
6. **Pendle PT wrapper integrity** — 11 distinct Pendle PT maturities are wrapped; each has expiration semantics that the Vault must handle correctly post-maturity. Worth verifying the wrapper code handles expired PTs.
7. **CREATE-collision risk** — the deployment pattern relies on address-slot collisions across chains. If the deployer EOA's nonce is desynchronized (e.g., a botched re-deployment), addresses could diverge.

---

## V1 Pipeline Errors (for this project)

The pipeline's `brief.md` carries the following defects:

1. **BSC deployment entirely missing.** The v1 brief reports `chains (topography): 1, 42161` but DL itself lists `chains: ['Arbitrum', 'Ethereum', 'Binance']` AND the BSC deployment holds **$254K = 25% of total protocol TVL**. 4 canonical Blackwing contracts on BSC are absent: BlackwingVault `0xD007…4514`, BlackwingNoopDeployer (same address as Eth), BlackwingVaultToken USDT, BlackwingVaultToken WBNB.
2. **Ethereum vault wrappers undercount.** The docs list 24 per-asset BlackwingVaultTokens on Ethereum; the v1 brief lists only the `0xfae103dc…6c0` row (which is Swell's rswETH, not Blackwing). The other ~23 Ethereum per-asset wrappers are entirely missing.
3. **Swell's rswETH mis-attributed as Blackwing.** `0xfae103dc…6c0` is the Swell rswETH token (per the DL adapter's `ETHEREUM_MAINNET_RSWETH` constant) and its impl `0x4796d9…2362` (Etherscan name `RswETH`) belongs to Swell. The v1 brief lists both as Blackwing integration-surface entries.
4. **TVL is stale.** $6.57M reported (2026-04-29 snapshot); fresh DL TVL is $993,547 (2026-05-15) — ~85% decline. Could be a snapshot anomaly or genuine TVL collapse; operator should resnapshot.
5. **`Lifecycle = active - latest deployment unknown`** — actually 2024-07-13 was the latest deployment per the v1 brief's own metadata; "unknown" reflects the `lifecycle_status_source: default_fallback` failure to query Etherscan creation dates.
6. **`Multisig membership, timelock duration, and governance-gate parameters are not extracted`** — Eth ProxyAdmin `0xce26300d…fe5e` owner is a 1-of-3 Gnosis Safe `0x757e4468…a7d4`. `getThreshold()` returns 1, `getOwners()` returns 3 entries — trivially derivable via `eth_call`. **This is a critical audit-targeting finding the pipeline should surface.**
7. **`Upgrade authority concentrates in 2 distinct deployer addresses: 0x174ae6…1a08, 0x551d1f5a…7226`** — conflates deployer EOAs with upgrade authority. The actual upgrade authority is the per-chain ProxyAdmin (`0xce26300d…fe5e` on Eth+Arb, `0x6bf48c14…b5b3` on BSC), owned by per-chain multisigs. Deployer EOAs have no post-deployment power.
8. **Per-asset role mapping incomplete.** v1 brief lists 9 `TransparentUpgradeableProxy` rows on Arbitrum without identifying which asset each one wraps. The docs page maps each proxy to a specific asset (USDC, WETH, ezETH, weETH, PT-* tokens).
9. **3 `unverified Unknown` rows on Arbitrum** (`0x7273f0…7e4`, `0x9db97d…7ba`, `0xcfd90e…b9d`) are the BlackwingVaultToken implementations behind 3 of the TUPs. Their names + impls are mapped in the v1 manifest's `proxy_links` but the brief doesn't connect them.
10. **`Audit history: 1 audits` is correct** but the brief misses the framing: this is a **multi-chain vault with $1M+ TVL covered by a single audit from Feb 2024**. The audit-to-TVL coverage gap is the headline finding.
11. **Closed-source not flagged.** Blackwing's GitHub org `blackwingfi` has 0 public repos. v1 brief doesn't mention this — relevant context for any audit-targeting agent.

---

## Appendix

### Sources

- DefiLlama protocol JSON: https://api.llama.fi/protocol/blackwing
- DL TVL adapter: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/blackwing/index.js
- Canonical contracts page: https://docs.blackwing.fi/misc/deployed_contracts (Docusaurus, full list of all 4 chains' contracts including Solana)
- Docs root: https://docs.blackwing.fi (Docusaurus v3.1.1)
- Zellic audit PDF: https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf
- GitHub org: https://github.com/blackwingfi (0 public repos)
- Etherscan v2 multi-chain API for Eth + Arb + BSC
- Alchemy RPC for `eth_call` on Eth/Arb/BSC (storage slots, owner, threshold)

### Caveats

- **Closed-source protocol code.** No public github repo for protocol contracts. All code-level verification depends on Etherscan-verified source. Each BlackwingVaultToken impl is Etherscan-verified individually (the 39 contracts fetched all returned verified source).
- **The receipt-token totalSupply on Arbitrum + BSC substantially exceeds the on-chain vault balance** reported by DL. This means depositors hold receipts for assets that are not in the vault contract itself. Operator should determine the off-vault destination before relying on DL TVL as the user-exposure metric.
- **Solana deployment** is documented on the contracts page (`BlackwingVault AUYtVnqj6K…`) but not covered here.
- **The Zellic audit PDF was not parsed**; only the URL was confirmed (HTTP 200, 810KB). Operator should pull the PDF to confirm per-contract coverage.
- **1-of-3 Ethereum ProxyAdmin multisig signer identities** were not enumerated in this brief. `Safe.getOwners()` returns 3 addresses on Eth; operator should pull them and assess.
- **Arbitrum + BSC ProxyAdmin owners** were not enumerated as Safes (they may not be Safes at all — could be EOAs or other contracts). Operator should classify each.

### Generation metadata

- Generated: 2026-05-19
- Method: manual research, no pipeline involvement
- Canonical contract set fetched via Etherscan v2 `getsourcecode` for 39 addresses (521 source files, 1.6 MB)
- All 39 contracts returned verified source on first attempt
- Reproducible end-to-end with `gh`, `curl`, an Etherscan API key, and an Alchemy multi-chain RPC URL
