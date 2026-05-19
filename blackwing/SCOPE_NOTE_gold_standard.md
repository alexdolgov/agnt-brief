# Agentic Brief: Blackwing (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md), [`manifest_gold_standard.json`](manifest_gold_standard.json), and [`contracts_gold_standard/`](contracts_gold_standard/). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** Blackwing (DL slug `blackwing`)
- **Tagline:** "The Modular Blockchain for Margin Trading" (DL) / "Premier Perpetual Trading" (GitHub org bio)
- **Website:** https://blackwing.fi · **Docs:** docs.blackwing.fi (Docusaurus)
- **Source:** **CLOSED-SOURCE.** GitHub org `blackwingfi` exists but has **0 public repos**.
- **DL category:** Farm (deposit-vault staging for margin product)
- **Chains (verified):** **3 EVM chains** — Ethereum, Arbitrum, BSC + **Solana** (out of EVM scope here)
- **TVL:** **$993,547** (DL `tvl[-1]`, snapshot 2026-05-15) — Arbitrum $536K + BSC $254K + Ethereum $203K
- **Audit history:** **1 direct audit** (Zellic, 2024-02-29). No second auditor.
- **Lifecycle:** **active, single-product, deposit-staging vault.** Latest deployment 2024-07-13. No new contracts in 2025-2026.
- **Tier:** **Tier 2 — small-to-mid-TVL deposit-vault protocol with thin audit coverage on a wide asset surface.**
- **Commercial fit:** **deposit-vault audit + governance-risk review.** 1-of-3 Ethereum ProxyAdmin multisig + 24-asset wrapper surface + no public source = high audit value despite small TVL.

Blackwing has **39 canonical EVM contracts** enumerated in this gold standard:
- Ethereum: 25 (BlackwingVault + NoopDeployer + 23 per-asset BlackwingVaultTokens)
- Arbitrum: 9 (BlackwingVault + NoopDeployer + 7 per-asset BlackwingVaultTokens)
- BSC: 4 (BlackwingVault + NoopDeployer + 2 per-asset BlackwingVaultTokens)
- Solana: 1 vault (not fetched, out of EVM scope)

The v1 pipeline brief renders **19 contract rows**, of which **2 are false positives** (Swell rswETH proxy + impl wrongly attributed) and the entire **BSC deployment is missing** (4 contracts) plus **~23 Ethereum per-asset wrappers are missing**.

---

## Lifecycle and Recent Activity

Lifecycle status: **ACTIVE** (but development cadence is low). Verified by:

- **2024-02-29**: Zellic audit completed (pre-deployment)
- **2024-03-02**: Ethereum mainnet launch — BlackwingVault deployed by EOA `0x551d1f5a…7226` at block 19348897
- **2024-Mar to 2024-Jul**: Per-asset BlackwingVaultTokens rolled out across Eth + Arb + BSC
- **2024-07-13**: Last canonical deployment per v1 brief metadata
- **2024 to 2026-05**: No new contracts. TVL declining (v1 brief saw $6.57M on 2026-04-29; fresh DL is $993K on 2026-05-15)

Lifecycle source: **Etherscan + docs page + v1 brief metadata**. The v1 brief's `latest deployment 2024-07-13` is correct.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **39 EVM contracts across 3 chains** + 1 Solana vault.

External-audit coverage breakdown:
- **Zellic 2024-02-29** is the only direct audit. Audited the *initial* BlackwingVault + per-asset wrapper *template* (pre-deployment). Per-asset deployment additions (rolled out Mar-Jul 2024) and BSC expansion are post-audit.
- **No second auditor.** No Code4rena/Sherlock/Halborn/Trail of Bits/Spearbit/Cantina/etc engagement found.
- **OZ ProxyAdmin** inherits OpenZeppelin upstream audit (standard).

**Priority order** (audit value × surface area):

1. **Re-audit BlackwingVault impl** — Zellic audit predates mainnet by 3 days; on-chain operations since may have surfaced patterns worth re-reviewing. Diff against audited version.
2. **Per-asset wrapper impl set** — 36+ TUPs each with own unique impl. If impls genuinely diverge, substantial uncovered surface; if they're a shared template, lighter coverage gap.
3. **Governance / 1-of-3 multisig review** — Eth ProxyAdmin multisig threshold = 1 (any single signer can upgrade). Non-code risk but materially affects security posture.
4. **Off-vault asset deployment** — receipt-token totalSupply on Arb (12.6M USDC) >> DL TVL ($536K); where are the missing assets?
5. **BSC deployment** — entirely post-Zellic-audit. 4 contracts holding $254K uncovered.
6. **Pendle PT wrapper integrity** — 11 distinct PT maturities; expiration semantics must be handled.
7. **CREATE-collision robustness** — deployment depends on deployer-EOA nonce alignment across chains.

---

## Scope — Core Logic

### Ethereum (25 contracts) — primary deployment

| Contract | Role | Address |
|---|---|---|
| BlackwingVault (TUP) | core | [0xc6aDE8…dD09](https://etherscan.io/address/0xc6aDE8A68026d582AB37B879D188caF7e405dD09) → impl 0xa92299…b37d |
| BlackwingVault impl | core | [0xa92299…b37d](https://etherscan.io/address/0xa92299289361fdcbb4ce9acbb512a84bd5fab37d) |
| BlackwingNoopDeployer | helper | [0x3b7dF0…1C04F](https://etherscan.io/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) |
| BlackwingVaultToken USDC | receipt | [0xB943Bd…6c86](https://etherscan.io/address/0xB943Bd7DA6948324363025E3fE789CD02c846C86) |
| BlackwingVaultToken WETH | receipt | [0xDcFE7c…9B2e](https://etherscan.io/address/0xDcFE7cdB5b1bb7bFd4ed57b83eFD49fE9Cd19B2e) |
| BlackwingVaultToken rswETH | receipt | [0xC7FA9a…A306](https://etherscan.io/address/0xC7FA9aEf1fe5b598e3671Baa4FcaB0F9024EA306) |
| BlackwingVaultToken rsETH | receipt | [0xD821B5…7098](https://etherscan.io/address/0xD821B54F27e4841Ea75a414a0eBfec94C3f27098) |
| BlackwingVaultToken ezETH | receipt | [0xcFD902…63A3](https://etherscan.io/address/0xcFD9020F41162Eede87252885E2551a9377263A3) |
| BlackwingVaultToken eETH | receipt | [0xC74615…d4BD](https://etherscan.io/address/0xC7461574B8179C2eC6bdcbAB7f63c30fa7D0d4BD) |
| BlackwingVaultToken weETH | receipt | [0x28D6f9…477E](https://etherscan.io/address/0x28D6f930462299c6597AC40b06F95DAd3476477E) |
| BlackwingVaultToken sUSDe | receipt | [0x81a3B8…BE22](https://etherscan.io/address/0x81a3B889b718BE0503698E18f836bf44a0a8BE22) |
| BlackwingVaultToken PT-rswETH-27JUN2024 | pendle_pt | [0x418d54…Af9e](https://etherscan.io/address/0x418d54B4dc069E8a3DDa78df19aeb0Cba11AAf9e) |
| BlackwingVaultToken PT-weETH-26DEC2024 | pendle_pt | [0xc912B8…Ad7E](https://etherscan.io/address/0xc912B8FbC8310B714cD05263380F85834779Ad7E) |
| BlackwingVaultToken PT-weETH-27JUN2024 | pendle_pt | [0x9EEDE5…fCdF](https://etherscan.io/address/0x9EEDE5F450e7A2B7Ee632Fd228bcFE322ecEfCdF) |
| BlackwingVaultToken PT-ezETH-26DEC2024 | pendle_pt | [0x5635b0…8AEf](https://etherscan.io/address/0x5635b051A97Fc1Cdcb480c760763Fa2546298AEf) |
| BlackwingVaultToken PT-rsETH-27JUN2024 | pendle_pt | [0xd13dFB…2f45](https://etherscan.io/address/0xd13dFB42bF50a9577A4b3B67AE3F41b152092f45) |
| BlackwingVaultToken PT-USDe-25JUL2024 | pendle_pt | [0xc9Fb68…1A16](https://etherscan.io/address/0xc9Fb68a2C76FDC07FB76df4Ff8149f48482B1A16) |
| BlackwingVaultToken PT-ENA-29AUG2024 | pendle_pt | [0xa45116…fBfe](https://etherscan.io/address/0xa451169FE5f41474E7A370acbFe390807008fBfe) |
| BlackwingVaultToken PT-sUSDE-25JUL2024 | pendle_pt | [0xd81036…eAb4](https://etherscan.io/address/0xd810362556296c834E30C9A61d8e21a5cf29eAb4) |
| BlackwingVaultToken SHIB | memecoin | [0x10b939…1517](https://etherscan.io/address/0x10b939b5F820cd6687280f8d103056FB56a21517) |
| BlackwingVaultToken PEPE | memecoin | [0x33f0D2…371e](https://etherscan.io/address/0x33f0D2E2b8588BcDdB47728Ee25C3ED6E1308cb7) |
| BlackwingVaultToken egETH | receipt | [0x533a3A…E332](https://etherscan.io/address/0x533a3A06680db5DafaCde57691d3DD2A7f4FE332) |
| BlackwingVaultToken pufETH | receipt | [0xf59Ab8…3359](https://etherscan.io/address/0xf59Ab8c53F2075339a1e31C16c227C51264E3359) |
| BlackwingVaultToken mstETH | receipt | [0x9A5971…a783](https://etherscan.io/address/0x9A597101684CAE355c1663Ff23f20Eb4fCb3a783) |
| BlackwingVaultToken apxETH | receipt | [0xbF1253…Eaee](https://etherscan.io/address/0xbF1253983B930FEA513e2437e8d83520D9dDEaee) |
| BlackwingVaultToken mswETH | receipt | [0xf19e65…0AE5](https://etherscan.io/address/0xf19e652679Ab166FCa767d853b1459C3922d0AE5) |

### Arbitrum (9 contracts)

| Contract | Role | Address |
|---|---|---|
| BlackwingVault (TUP) | core | [0xc6aDE8…dD09](https://arbiscan.io/address/0xc6aDE8A68026d582AB37B879D188caF7e405dD09) (same address as Ethereum) |
| BlackwingNoopDeployer | helper | [0x3b7dF0…1C04F](https://arbiscan.io/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) |
| BlackwingVaultToken USDC | receipt | [0xB943Bd…6c86](https://arbiscan.io/address/0xB943Bd7DA6948324363025E3fE789CD02c846C86) (same address as Eth) |
| BlackwingVaultToken WETH | receipt | [0x7ae943…7cC3](https://arbiscan.io/address/0x7ae9431FA62F5bE2da7DCB05dcB1FC5fB2fe7cC3) |
| BlackwingVaultToken ezETH | receipt | [0x27Ea06…46EC](https://arbiscan.io/address/0x27Ea06f9e5e4deB9349187a39edAdEf9142A46EC) |
| BlackwingVaultToken weETH | receipt | [0xE83302…8218](https://arbiscan.io/address/0xE8330250D7B996CdE78BcE829779005E35E48218) |
| BlackwingVaultToken PT-weETH-27JUN2024 | pendle_pt | [0x761B2C…b78f](https://arbiscan.io/address/0x761B2CcDD37ef1caC84F8728687a5248C9EfB78f) |
| BlackwingVaultToken PT-rsETH-27JUN2024 | pendle_pt | [0xd2e23b…37b6](https://arbiscan.io/address/0xd2e23b76B44D568B77d65B64A2BefF8439e437B6) |
| BlackwingVaultToken PT-ezETH-27JUN2024 | pendle_pt | [0xD18c3f…d778](https://arbiscan.io/address/0xD18c3fC06b42F053Ed485F233Eb90b06A4F3d778) |

### BSC (4 contracts) — MISSING FROM V1 BRIEF

| Contract | Role | Address |
|---|---|---|
| BlackwingVault (TUP) | core | [0xD00789…4514](https://bscscan.com/address/0xD00789260984160a64DcF19A03896DfF73BF4514) — **different address from Eth/Arb** |
| BlackwingNoopDeployer | helper | [0x3b7dF0…1C04F](https://bscscan.com/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) (same address as Eth/Arb) |
| BlackwingVaultToken USDT | receipt | [0xA767C9…0350](https://bscscan.com/address/0xA767C903D8b801a2f3CC451134eAd2D7903c0350) |
| BlackwingVaultToken WBNB | receipt | [0x1004Dd…2C12](https://bscscan.com/address/0x1004Dd758d318fA786ca13F46B2d37088cf32C12) |

### Solana (out of EVM scope)

| Contract | Address |
|---|---|
| BlackwingVault on Solana | `AUYtVnqj6K…` (truncated in docs page; not enumerated) |

---

## Scope — Operational Periphery

**Per-chain ProxyAdmin + multisig owner topology:**

| Chain | ProxyAdmin | Owner (multisig) | Threshold |
|---|---|---|---|
| Ethereum | [`0xce26300d…fe5e`](https://etherscan.io/address/0xce26300dbe43563331f078696cc66db66d75fe5e) | `0x757e4468…a7d4` Gnosis Safe | **1-of-3** ⚠️ |
| Arbitrum | `0xce26300d…fe5e` (same address slot as Eth, CREATE-collision) | `0xc8afcaf4…ea26` (different from Eth) | not enumerated |
| BSC | `0x6bf48c14…b5b3` (different) | `0x30d0ad9c…5949` | not enumerated |

The **Ethereum 1-of-3 threshold is the largest non-code risk** — any single signer can execute upgrades unilaterally.

**Deployer EOAs (no on-chain power post-deployment):**

| EOA | Role | First seen |
|---|---|---|
| `0x174ae6eb…1a08` | Earliest precursor; deployed `0xfae103dc…6c0` which is Swell's rswETH (not Blackwing) | 2024-01-26 |
| `0x551d1f5a…7226` | **Main Blackwing deployer.** Deploys BlackwingVault + every per-asset BlackwingVaultToken across all 3 EVM chains. | 2024-03-02 |

---

## Scope — Proxy and Upgrade Architecture

| Pattern | Compiler | Count | Notes |
|---|---|---:|---|
| OZ TransparentUpgradeableProxy | 0.8.20 | 36 (25 Eth + 8 Arb + 3 BSC) | Each has its own unique implementation (no shared beacon) |
| OZ ProxyAdmin | 0.8.20 | 3 (one per chain) | Eth+Arb share address via CREATE-collision; BSC has different |
| BlackwingNoopDeployer | 0.8.20 | 3 instances, same address all chains | Deterministic deploy helper |
| Implementation contracts | 0.8.20 | 35+ unique impls | Per-asset deployment (not shared template) |

**No UUPS, no beacon proxies, no diamonds.**

**CREATE-collision pattern** is heavily used: same deployer EOA + same nonce sequence on Eth + Arb produces identical addresses. BSC was deployed independently and has different addresses (different deployer nonce window).

---

## Scope — Integration Surface

The vault accepts a wide basket of external tokens. None of the v1 brief's "integration_surface" entries are correct — `0xfae103dc…6c0` is Swell's rswETH, not Blackwing.

**Real integrations** (each is an external token Blackwing wraps via a `BlackwingVaultToken`):

- Swell (rswETH, Eth)
- Kelp (rsETH, Eth)
- Renzo (ezETH, Eth + Arb)
- Ether.fi (eETH, weETH, Eth + Arb)
- Ethena (sUSDe, Eth)
- Pendle (8 PT tokens on Eth, 3 on Arb)
- Eigenpie (egETH + mstETH + mswETH, Eth)
- Puffer (pufETH, Eth)
- Dinero (apxETH, Eth)
- Circle (USDC, Eth + Arb)
- Tether (USDT, BSC)
- WBNB (BSC)
- Memecoins (SHIB + PEPE, Eth)

**No on-chain margin venue integration** is visible in the canonical set. The on-chain surface is purely the deposit-staging vault; the margin product appears to live off-chain or on a separate layer.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Notes |
|---|---:|---:|---|
| BlackwingVault (proxies + impls across 3 chains) | 5 | Zellic 2024-02-29 | Audit predates mainnet by 3 days |
| BlackwingNoopDeployer | 3 | Zellic (likely in scope as helper) | |
| BlackwingVaultToken proxies + impls (36+ instances) | 72+ | Zellic (template), but not per-asset diff | Per-asset diff is uncovered |
| ProxyAdmin (3 chains) | 3 | OZ upstream | Standard OZ |
| **Total** | **~80 EVM contracts** | **partial direct** | Single-auditor coverage |

### Past Audits

| Date | Auditor | Scope | Relationship | Link |
|---|---|---|---|---|
| 2024-02-29 | Zellic | Blackwing Smart Contract Security Assessment | direct | [`Zellic/publications/Blackwing-Zellic-Audit-Report.pdf`](https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf) |

### Gap Analysis

- **No re-audit since Feb-2024** (~15 months before this brief)
- **No second auditor** — single-auditor coverage for a multi-chain $1M vault is light
- **BSC deployment is post-audit** — 4 BSC contracts (the entire BSC stack) are not in Zellic's Feb-2024 scope
- **Per-asset wrapper diff** — each TUP has a unique impl; per-asset divergence not enumerated
- **1-of-3 Ethereum ProxyAdmin threshold** — material governance risk, not enumerated in any audit
- **Closed-source** — Blackwing's `blackwingfi` GitHub org has 0 public repos. Audit work depends on Etherscan verification

Last audit: **Zellic 2024-02-29** — ~15 months before this brief.

---

## Appendix

### Docs Pages Referenced

- https://docs.blackwing.fi/misc/deployed_contracts — canonical contracts page (the source of truth for this brief)
- https://docs.blackwing.fi/introduction/overview — protocol overview
- https://docs.blackwing.fi/core_concepts/{classic_mode,intent_solver,limitless_pools} — product concepts
- https://docs.blackwing.fi/incentives/{bxp,deposits,referrals,token_airdrop} — incentive design
- https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf

### Audit Reports (full list)

1. 2024-02-29 — Zellic — Blackwing Smart Contract Security Assessment — direct

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) — 39 EVM contracts, 521 source files, ~1.6 MB

### Excluded Contracts (v1 false positives)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| Swell rswETH proxy mis-attributed to Blackwing | 1 | `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` is Swell's rswETH token, listed in DL adapter as `ETHEREUM_MAINNET_RSWETH` |
| Swell RswETH impl mis-attributed | 1 | `0x4796d939b22027c2876d5ce9fde52da9ec4e2362` Etherscan name `RswETH` (Swell's contract) |
| **Total false positives** | **2** | |

### Data Availability Notes

- **Canonical address source:** Single docs page at `docs.blackwing.fi/misc/deployed_contracts` lists all chains' addresses (Eth + Arb + BSC + Solana) with per-asset labels.
- **Provenance classification:** Manually mapped per-asset role from docs labels.
- **Multisig metadata:** Eth ProxyAdmin owner is a Gnosis Safe (1-of-3, 3 owners). Arb + BSC owners not enumerated as Safes.
- **Per-contract TVL:** Receipt totalSupply: USDC Eth = 870K, USDC Arb = 12.6M, USDT BSC = 18.3M. DL vault-balance TVL: Arb $536K, BSC $254K, Eth $203K. Receipt supply >> DL TVL on Arb + BSC suggests off-vault asset deployment.
- **Docs extraction status:** Sitemap.xml has 11 entries; only `/misc/deployed_contracts` has structural contract data. No `/audits` or `/security` page.

### Generation Metadata

- **Generated at:** 2026-05-19
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** 2026-05-15
- **Etherscan v2:** chains 1 + 42161 + 56
- **Alchemy RPC:** Eth + Arb + BSC for `eth_call`

---

## Divergences from v1 SCOPE_NOTE.md

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `total_contracts` | 19 | **39 EVM (+1 Solana)** | V1 misses entire BSC (4) + ~23 Eth per-asset wrappers; includes 2 false positives |
| `chains (topography)` | 1, 42161 | **1, 42161, 56** (+ Solana) | V1 missed BSC even though DL JSON lists `Binance` and adapter has BSC vault |
| `tvl` | $6.57M (snapshot 2026-04-29, stale) | **$993K** fresh (2026-05-15) | V1 stale by ~85% |
| `audits` | 1 (Zellic 2024-02-29) — correct | same | no missing audits |
| `lifecycle_status_source` | default_fallback | etherscan_getcontractcreation + docs + v1 metadata | V1 didn't query Etherscan |
| `proxy_count` | 9 (Eth + Arb only) | 36 (Eth + Arb + BSC) | V1 missed BSC + ~22 Eth proxies |
| `multisig_metadata` | "not extracted" | Eth ProxyAdmin owner is Gnosis Safe `0x757e44…a7d4` 1-of-3 (3 owners) ⚠️ | V1 doesn't query Safe; **this is a critical audit finding** |
| `upgrade_authority` | "concentrates in 2 deployer EOAs" | TimelockController-equivalent here is ProxyAdmin owned by per-chain multisig (3 distinct multisigs) | V1 conflates deployer EOAs with upgrade authority |
| `integration_surface` | 1 entry (Swell rswETH mis-attributed) | 14 distinct integrations across 3 chains (LRTs, Pendle, memecoins, etc.) | V1 doesn't follow integration boundaries |
| `false positives` | 2 (Swell rswETH proxy + impl) | excluded | V1 mis-attributes Swell tokens as Blackwing |
| `closed_source_flag` | not surfaced | GitHub org `blackwingfi` has 0 public repos | Material context for audit-targeting |
| `1of3_multisig_finding` | not surfaced | **Eth ProxyAdmin owner threshold = 1** | Critical governance finding missed |
