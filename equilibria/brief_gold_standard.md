# Agentic Audit Brief: Equilibria Finance (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON (`api.llama.fi/protocol/equilibria`), Equilibria's own developer documentation (`docs.equilibria.fi/integration/deployed-contracts/<chain>.md`), Snapshot governance (`hub.snapshot.org` for the `eips.equilibria-xeqb.eth` space), and per-contract Etherscan v2 verification across the seven Etherscan-supported chains. The full row-by-row evidence trail is at [`docs/gold-standard/equilibria_verification_ledger.md`](../../docs/gold-standard/equilibria_verification_ledger.md). The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context on the comparison.

## Project Overview

- **Project:** Equilibria Finance
- **Website:** https://equilibria.fi/home
- **Developer docs:** https://docs.equilibria.fi (full markdown corpus at `/llms-full.txt`; per-chain matrices at `/integration/deployed-contracts/<chain>.md`)
- **Public source:** https://github.com/eqbtech/equilibria-contracts (Solidity, ~326 KB, last push 2025-06-23, no LICENSE file)
- **DefiLlama category:** `Yield`
- **Token:** EQB (governance) + xEQB (escrowed/locked variant) + ePENDLE (liquid wrapper of vePENDLE) + vlEQB (vote-locked EQB)
- **Chains (DL):** Ethereum, Arbitrum, BNB Chain, Optimism, Base, Sonic, Mantle, HyperEVM (Hyperliquid L1), Plasma, Berachain — **10 chains**.
- **Total TVL:** **$16.32M** (DL `tvl[-1]`, snapshot 2026-05-06T09:20:35Z) plus **$2.30M** in DL `*-staking` buckets, total Equilibria-attributable economic exposure ≈ **$18.62M**. Decomposes as: Ethereum $15.60M (the dominant chain) + Ethereum-staking $1.29M + Arbitrum $0.13M + Arbitrum-staking $1.01M + Binance $0.56M + smaller balances on the other seven chains. The v1 brief's "$102.6M" headline is wrong — see TVL Methodology Note.
- **Lifecycle:** **active but in structured decline.** Governance is live (most recent EIP-10 closed 2026-04-24, 12 days before this brief). EQB and xEQB emissions have been **halted** since EIP-6 (2024-12-18). TVL has declined ~95% from a $315.6M peak (2025-01-22) to $16.3M today. Pendle Finance has transitioned from vePENDLE to sPENDLE; Equilibria's treasury holds sPENDLE and EIP-10 froze further sPENDLE-rewards distribution pending a community plan. Public communications discuss a two-year structured wind-down, although no formal "wind-down EIP" has appeared in the Snapshot space.
- **Tier:** Tier 2 — declining-TVL active protocol. The audit-evaluable surface is bounded by an unusually small attack surface inside Equilibria's own contracts (most economic exposure is held by **Pendle**'s vePENDLE contract on Equilibria's behalf, not by Equilibria's contracts directly).
- **Audit-evaluable surface (Equilibria-deployed contracts):** ~$2.5M of *direct* user economic exposure inside Equilibria contracts (ePENDLE staking + vault auto-compounder + reward pools holding Pendle PT/LP tokens). The remaining ~$13.8M of "Equilibria TVL" is PENDLE locked inside Pendle Finance's vePENDLE contract, which is **out of scope for an Equilibria audit** — Pendle owns that contract. Equilibria's `pendleProxy` controls the *voting and reward-claiming rights* on that locked PENDLE position via `vePENDLE.balanceOf(pendleProxy) = 7,352,752 vePENDLE`.

> Important framing. Equilibria is a **Pendle yield optimizer** (the Pendle equivalent of Convex-for-Curve). The protocol locks user PENDLE into Pendle's vePENDLE contract as one big collective position, then re-issues a liquid wrapper (ePENDLE) and shares boosted yield with Pendle LPs who deposit through Equilibria. Two consequences: (1) **the dominant TVL signal is custodied by Pendle, not Equilibria** — Equilibria's audit-evaluable surface is much smaller than the DL TVL suggests; (2) **Equilibria's audit attack surface concentrates on the boost claim and reward distribution math, plus the ePENDLE peg/vault/auto-compounder logic**, not on user-deposit safety in the conventional sense.

---

## TVL Methodology Note (CRITICAL)

The DefiLlama TVL figure for Equilibria (`api.llama.fi/protocol/equilibria` → `currentChainTvls`) sums up four distinct asset classes that the Equilibria pipeline conflates and the v1 brief mishandles:

| TVL bucket | DL `tokensInUsd` symbol | Latest value | Where the assets actually sit | Audit relevance |
|---|---|---:|---|---|
| PENDLE locked under Equilibria's vePENDLE position | `PENDLE` | $13,831,980 | Pendle's vePENDLE contract `0x4f30A9D4…3170210` (locked, owned by Equilibria's `pendleProxy`) | **Out of scope** for an Equilibria audit — Pendle owns this contract. Equilibria's `pendleProxy` only controls voting/reward rights. |
| Pendle LP tokens held in booster reward pools | `PENDLE-LPT` | $1,252,985 | Equilibria's `BaseRewardPool` per-market reward pools (sidechain `BaseRewardPoolV2_1` impl) | **In scope** — Equilibria custody, ERC-20 accounting + reward math. |
| Pendle PT (Principal Token) / PLP positions held in booster reward pools | `PLP-SAVUSD-14MAY2026`, `PLP-REUSDE-25JUN2026`, `PLP-GUSDC-25JUN2026`, … (~12 active markets) | ~$1,235,257 (sum) | Same — Equilibria's reward pools | **In scope** — same as above. |
| ePENDLE staked under Equilibria | DL `*-staking` chains | $2,302,208 | Equilibria's `ePendleReward` + `vaultEPendle` (auto-compounder) on each chain | **In scope** — ePENDLE peg + auto-compounder logic. |

Adding all four ≈ **$18.62M**. Of that, only **~$2.5M ($1.25M LP + $1.24M PT/PLP positions custodied + Equilibria's small share of the staking float)** is held inside Equilibria's contracts directly; the rest is either custodied by Pendle (`PENDLE` locked) or is the ePENDLE staking layer where Equilibria's contracts hold the user-facing liability and Pendle holds the underlying PENDLE.

**The v1 brief's "$102.6M" headline figure is stale or buggy.** As of 2026-04-29 (the v1 brief's claimed snapshot date), DL's actual reading was $13,044,511 — not $102,628,763. The protocol last had $100M+ TVL on 2025-11-03 ($104,444,804) and has been below $100M continuously since. The v1 brief's footer "on-chain TVL = $4,758,128" is closer to reality but still misleading because it captures only the direct ERC-20 holdings of Equilibria's contracts, missing the dominant `PENDLE`-locked-in-vePENDLE component that DL's adapter does account for.

The audit-evaluable distinction matters: an audit team looking at "$102.6M" expects to scope a Pendle-sized economic surface, but the actual Equilibria-deployed contracts custody an order of magnitude less than that.

---

## On-Chain TVL Summary

| Asset class | Anchor contract(s) | Source of TVL signal | TVL (USD) |
|---|---|---|---:|
| PENDLE locked in vePENDLE under Equilibria's voting position | `pendleProxy` (Eth) `0x6462…6E3` | `vePENDLE.balanceOf(pendleProxy) = 7,352,752` × PENDLE spot ≈ $13.83M (DL adapter's PENDLE bucket) | **$13,831,980** *(custody: Pendle, not Equilibria)* |
| Pendle LP tokens custodied by Equilibria reward pools | per-market `BaseRewardPool` deployments behind `pendleBooster` (`0x4D32…26bF` on Eth+Arb+BSC; chain-specific elsewhere) | DL `tokensInUsd[PENDLE-LPT]` | **$1,252,985** |
| Pendle PT / PLP positions custodied by Equilibria reward pools | same | DL `tokensInUsd[PLP-*]` (sum of ~12 active markets) | **~$1,235,257** |
| ePENDLE staked (`ePendleReward` + `vaultEPendle` per chain) | `ePendleReward` (Eth: `0x357F…e849`), `vaultEPendle` (Eth: `0xd30d…8059`), sidechain variants | DL `*-staking` chain buckets | **$2,302,208** |
| **Total Equilibria-attributable economic exposure** | — | — | **~$18.62M** |
| **Of which inside Equilibria-deployed contracts (audit-evaluable)** | reward pools + ePENDLE staking + vault auto-compounder | — | **~$4.79M** |

> The "audit-evaluable" $4.79M ≈ DL's PENDLE-LPT + PLP + staking buckets. The dominant $13.83M PENDLE-locked figure is custodied by Pendle's vePENDLE contract; Equilibria's `pendleProxy` controls voting rights but does not custody the PENDLE.

---

## Lifecycle and Recent Activity

**Status: active but in structured decline.** Verified governance activity, on-chain emissions halt, and TVL trajectory:

| Era | Signal | Date | Source |
|---|---|---|---|
| Mainnet launch + IDO | Equilibria mainnet launch + Pendle Sprint launch campaign | 2023-05-28, 2023-06-06 | Equilibria Medium |
| First audit (PeckShield) | PeckShield audit report v1.0 | 2023-05-15 (per docs `audits.md`); PDF Last-Modified 2023-05-16 | docs.equilibria.fi/security-and-risk/audits.md |
| First WatchPug audit | "Equilibria Audit Report by WatchPug" | 2023-06-05 (matches PDF Last-Modified 2023-06-05) | same |
| EIP-2 (Liquidity Improvement) | passed | 2024-03-20 | Snapshot |
| EIP-3 (Fee Adjustment for ePENDLE Stability) | passed (111.8M For vs 83.3M Against) | 2024-05-16 | Snapshot |
| EIP-4 (xePENDLE for Sustainability) | passed | 2024-08-07 | Snapshot |
| EIP-5 (Adjustments to vePENDLE Base Rewards Distribution) | passed | 2024-09-25 | Snapshot |
| Second WatchPug audit | "Equilibria #2 Audit Report" | 2024-11-06 (PDF upload date) | docs |
| **EIP-6 — emission halt** | **passed (69.36M For / 0 Against): "Halt EQB Emissions for LPs and Team Allocation"** | **2024-12-18** | **Snapshot** |
| TVL peak | $315.6M | 2025-01-22 | DL `tvl` series |
| TVL last datapoint above $100M | $104.4M | 2025-11-03 | DL `tvl` series |
| WatchPug Continuous Audit (May) | report uploaded | 2025-05-21 (PDF Last-Modified 2025-05-23) | docs |
| WatchPug Staked LP audit | report uploaded | 2025-06-23 (PDF Last-Modified 2025-06-23) | docs |
| EIP-7 (Reallocating Protocol Revenue, peg-focused) | **rejected (40.5M For vs 103.2M Against)** — community blocked further peg-targeted reallocation | 2025-06-23 | Snapshot |
| EIP-8 (Boomie investment) | passed (24.8M For / 7.7M Against) — invest 100,000 EQB into Boomie AI bot | 2025-07-02 | Snapshot |
| EIP-9 (Align with Pendle's Dynamic Pool Incentive Caps) | passed | 2025-08-14 | Snapshot |
| Public communications: 2-year structured wind-down proposal in light of Pendle's transition from vePENDLE to sPENDLE | (forum / Twitter / Medium) | sometime 2025–2026 (no exact dated post located) | Web search |
| EIP-10 (sPENDLE rewards held in treasury) | passed (53.67M For / 0.95M Against) — confirms Pendle's sPENDLE has gone live and Equilibria's treasury holds sPENDLE | 2026-04-24 | Snapshot |
| TVL today | $16.3M | 2026-05-06 | DL `tvl[-1]` |

The protocol is **not dead** — governance is live, contracts still hold positions, ePENDLE still trades. But three signals together describe an end-of-life-phase posture: emissions halted (Dec 2024), TVL has declined ~95% from peak, and Pendle has moved past vePENDLE entirely (EIP-10 confirms Equilibria's treasury holds sPENDLE, not vePENDLE). An audit team should expect Equilibria's surface to be increasingly quiescent rather than evolving.

---

## Scope — Core Logic

Contracts that hold user funds, mint/burn protocol tokens, or implement Equilibria's primary economic functions. Grouped by chain because each chain has its own deployment.

### Ethereum (chain_id 1)

| Contract | Address | Proxy? | Implementation | Audit status | Last audit |
|---|---|---|---|---|---|
| pendleProxy (Equilibria's vePENDLE position controller) | [`0x64627901dAdb46eD7f275fD4FC87d086cfF1e6E3`](https://etherscan.io/address/0x64627901dAdb46eD7f275fD4FC87d086cfF1e6E3) | yes | `0xd23935f6…596c4e7` (PendleProxyMainchain logic) | audited | WatchPug 2023-06-05 + WatchPug Continuous May 2025 |
| pendleBooster (user deposits/withdrawals into Pendle markets via Equilibria) | [`0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF`](https://etherscan.io/address/0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF) | yes | `0xd05d1ee3…79e929` (PendleBoosterMainchain logic) | audited | WatchPug 2023-06-05 + 2024-11-06 |
| ePendle (ERC-20 — liquid wrapper of vePENDLE) | [`0x22Fc5A29bd3d6CCe19a06f844019fd506fCe4455`](https://etherscan.io/address/0x22Fc5A29bd3d6CCe19a06f844019fd506fCe4455) | yes | `0x71e0ce20…01EbF` (ePendle ERC-20) | audited | PeckShield 2023-05-15 + WatchPug audits |
| ePendleReward (where users stake ePENDLE for rewards) | [`0x357F55b46821A6C6e476CC32EBB2674cD125e849`](https://etherscan.io/address/0x357F55b46821A6C6e476CC32EBB2674cD125e849) | yes | `0xd2d99a6c…E2f39` (BaseRewardPoolV2_1) | audited | WatchPug Staked LP 2025-06-23 |
| pendleDepositor (one-way PENDLE → ePENDLE conversion) | [`0x0140dE476f49B6B42f7b73612b6dc317aB91D3BC`](https://etherscan.io/address/0x0140dE476f49B6B42f7b73612b6dc317aB91D3BC) | yes | `0x660e0d05…cc9fA9` (PendleDepositor) | audited | WatchPug 2023-06-05 |
| vaultEPendle (auto-compounder for ePENDLE — adds yield on top of staking) | [`0xd30d6fD662c0d92B49F3C3E478e125BA1D968059`](https://etherscan.io/address/0xd30d6fD662c0d92B49F3C3E478e125BA1D968059) | yes | `0xcf0946eb…520d85` (EpendleVault) | audited | WatchPug ePENDLE Auto Compounder (Nov 2024 upload, attributed to docs `Oct 10, 2023` audit by filename) |
| EQB (governance token) | [`0xfE80D611c6403f70e5B1b9B722D2B3510B740B2B`](https://etherscan.io/address/0xfE80D611c6403f70e5B1b9B722D2B3510B740B2B) | yes | `0x0cf6ab3c…0e139` (EqbToken) | audited | WatchPug 2023-06-05 |
| xEQB (escrowed/locked EQB variant) | [`0xd6eCfD0d5f1Dfd3ad30f267a3a29b3E1bC4fd54f`](https://etherscan.io/address/0xd6eCfD0d5f1Dfd3ad30f267a3a29b3E1bC4fd54f) | yes | `0x96c4a48a…219ad8E` (XEqbToken) | audited | WatchPug 2023-06-05 |
| eqbMinter (mints EQB to pendleBooster on emission events) | [`0x52f0Bbe0325097ac93e1EC85c32A950E47789Ca5`](https://etherscan.io/address/0x52f0Bbe0325097ac93e1EC85c32A950E47789Ca5) | yes | `0x09bae4c3…e94d` (EqbMinterMainchain) | audited | WatchPug 2023-06-05 |
| vlEqb (vote-locked EQB — voting weight) | [`0xd8967B2B15b3CDF96039b7407813B4037f73ec27`](https://etherscan.io/address/0xd8967B2B15b3CDF96039b7407813B4037f73ec27) | yes | `0xc7517f48…421e32` (VlEqb) | audited | WatchPug 2023-06-05 + WatchPug #2 (Nov 2024) |
| eqbZap (single-token deposit/withdraw helper) | [`0x4f1cDF43f5E407abD569878976960d4d0A3d3452`](https://etherscan.io/address/0x4f1cDF43f5E407abD569878976960d4d0A3d3452) | yes | `0xa7e713f9…0b4c1c` (EqbZap) | audited | WatchPug 2023-06-05 |
| ePendleProxyOFT (LayerZero OFT v1 mainchain proxy for cross-chain ePENDLE) | [`0x6aE382814e24B6Ddf588901C597F26A9E945c577`](https://etherscan.io/address/0x6aE382814e24B6Ddf588901C597F26A9E945c577) | no | — | partially audited (LayerZero OFT pattern is upstream-audited; Equilibria's wrapper not in audit list) | — |
| EqbMsgSendEndpoint (cross-chain messaging endpoint) | [`0x920873e5b302a619c54c908adfb77a1c4256a3b8`](https://etherscan.io/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) | no | — | not pinned to a specific audit; cross-chain logic referenced in `mechanism/cross-chain` docs | — |

### Arbitrum (chain_id 42161)

| Contract | Address | Proxy? | Implementation | Audit status |
|---|---|---|---|---|
| pendleProxy | [`0x64627901dAdb46eD7f275fD4FC87d086cfF1e6E3`](https://arbiscan.io/address/0x64627901dAdb46eD7f275fD4FC87d086cfF1e6E3) | yes | `0x0f66fdb8…b53cde` (PendleProxySidechain) | audited (sidechain pattern) |
| pendleBooster | [`0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF`](https://arbiscan.io/address/0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF) | yes | `0x73d705f5…7e1f57ac` (PendleBoosterSidechain) | audited |
| ePendle | [`0x3EaBE18eAE267D1B57f917aBa085bb5906114600`](https://arbiscan.io/address/0x3EaBE18eAE267D1B57f917aBa085bb5906114600) | yes | `0xddf45d74…15f2b` | audited |
| ePendleReward | [`0x9739d1E515C5291faA26D92a5D02761b6BbB4D6F`](https://arbiscan.io/address/0x9739d1E515C5291faA26D92a5D02761b6BbB4D6F) | yes | `0x901e8fd1…E1a88` (BaseRewardPoolV2_1) | audited |
| vlEqb | [`0x70f61901658aAFB7aE57dA0C30695cE4417e72b9`](https://arbiscan.io/address/0x70f61901658aAFB7aE57dA0C30695cE4417e72b9) | yes | `0x22fc5a29…E4455` | audited |
| EQB (Arbitrum-bridged via L1↔L2 ClonableBeaconProxy) | [`0xBfbCFe8873fE28Dfa25f1099282b088D52bbAD9C`](https://arbiscan.io/address/0xBfbCFe8873fE28Dfa25f1099282b088D52bbAD9C) | yes | `0x3f770ac6…ad46` (StandardArbERC20) | bridge code is upstream-audited (Arbitrum Foundation); Equilibria's wrapper has no specific audit |
| xEQB | [`0x96C4A48Abdf781e9c931cfA92EC0167Ba219ad8E`](https://arbiscan.io/address/0x96C4A48Abdf781e9c931cfA92EC0167Ba219ad8E) | yes | `0xfe80d611…40b2b` | audited |
| eqbMinter | [`0x09bae4C38B1a9142726C6F08DC4d1260B0C8e94d`](https://arbiscan.io/address/0x09bae4C38B1a9142726C6F08DC4d1260B0C8e94d) | yes | `0xd6ecfd0d…fd54f` (EqbMinterSidechain) | audited |
| eqbZap | [`0xc7517f481Cc0a645e63f870830A4B2e580421e32`](https://arbiscan.io/address/0xc7517f481Cc0a645e63f870830A4B2e580421e32) | yes | `0x39f4789b…f6993d` | audited |
| ePendleOFT (LayerZero OFT v1 sidechain) | [`0x8c9b5B2e6E136B6EE66fcA6229191E749C0029f5`](https://arbiscan.io/address/0x8c9b5B2e6E136B6EE66fcA6229191E749C0029f5) | no | — | partially audited |
| ePendleVaultSidechain | [`0x4250EA96F880c5725931A72A87dCbE01Fc654a92`](https://arbiscan.io/address/0x4250EA96F880c5725931A72A87dCbE01Fc654a92) | yes | `0xa92a692b…f5e7f` (EpendleVaultSidechain) | audited |
| vaultEPendle | [`0x37227785a1f4545ed914690e395e4CFE96B8319f`](https://arbiscan.io/address/0x37227785a1f4545ed914690e395e4CFE96B8319f) | yes | `0x7b9eebd2…ae608` | audited |
| ePendleBridge | [`0xd4848211B699503C772aA1Bc7D33b433C4242Ac3`](https://arbiscan.io/address/0xd4848211B699503C772aA1Bc7D33b433C4242Ac3) | yes (Arbitrum bridge wrapper) | `0x3f770ac6…ad46` (StandardArbERC20) | upstream Arbitrum bridge code |
| fairAuction (initial EQB token launch auction) | [`0x1eF5e2153C3e6533Af716D057a90b71b8621fa39`](https://arbiscan.io/address/0x1eF5e2153C3e6533Af716D057a90b71b8621fa39) | yes | `0x0b604124…6e31739` (FairAuction) | audited |
| bribeManager (vlEQB bribe distribution) | [`0xb3C40b02F38F61f3d141C325C19F35b1f9df99CA`](https://arbiscan.io/address/0xb3C40b02F38F61f3d141C325C19F35b1f9df99CA) | yes | `0xe5b4b7c5…ef8e` (BribeManager) | audited |

### Other chains (BSC / Optimism / Base / Sonic / Mantle / HyperEVM / Plasma / Berachain)

Each of the 8 sidechains carries the same canonical role set: `pendleProxy`, `pendleBooster` (Sidechain variant), `EQB`, `xEQB`, `eqbMinter` (Sidechain variant), `ePendle`, `ePendleReward`, `vlEqb`, `eqbZap`, `ePendleOFT`, `ePendleBridge`, `ePendleVaultSidechain`, `ePendleVault`, `ePendleBridgeReward` (typically 13 contracts per chain, with small variations). Per-chain canonical address tables are in [`manifest_gold_standard.json`](manifest_gold_standard.json) and were verified row-by-row against Etherscan v2 for the seven supported chains (BSC, Optimism, Base, Sonic, Mantle have 100% coverage). HyperEVM, Plasma, and Berachain are not yet on Etherscan v2; the docs links resolve and the contracts are deployed (TVL signal for each is non-zero in DL data), but per-address contract-name verification was deferred.

---

## Scope — Cross-Chain Architecture

Equilibria's cross-chain architecture is the most non-trivial part of its surface. Three layers:

1. **LayerZero OFT v1** — `ePendleProxyOFT` on Ethereum (mainchain) + `ePendleOFT` on each sidechain. Allows ePENDLE to bridge cross-chain via LayerZero's Omnichain Fungible Token v1 standard. The OFT v1 contracts are upstream LayerZero code; Equilibria's implementations subclass them.
2. **EqbMsgSendEndpoint + ePendleBridge + ePendleVaultSidechain** — Equilibria's own cross-chain messaging layer for ePENDLE custody mirroring. `ePendleBridge` initiates bridge moves; `ePendleVaultSidechain` receives ePENDLE on the sidechain and exposes the staking layer.
3. **Native chain bridges** — On Arbitrum, `EQB` (`0xBfbCFe…ad9c`) is wrapped via Arbitrum's standard L1↔L2 token-bridge factory (`ClonableBeaconProxy` → `StandardArbERC20`). On Optimism + Base, `EQB` and `xEQB` are wrapped via `OptimismMintableERC20`. On BSC, the EQB token uses Wormhole's `BridgeToken` proxy with a shared `TokenImplementation` underneath.

Cross-chain attack surface for an audit:

- **Boost-claim integrity**: pendleProxy on Ethereum holds Equilibria's vePENDLE position; sidechain pendleProxy + pendleBooster instances need to coordinate boost claims across markets without double-counting.
- **Consolidated reporting fee-sharing**: docs `mechanism/cross-chain` describes a "Consolidated Reports" pattern where fees on different chains are aggregated and distributed via a single signal. `EqbMsgSendEndpoint` is the cross-chain message origin.
- **OFT v1 bridge replay/decimals**: standard LayerZero OFT v1 risks (replay protection, decimal mismatch) apply.
- **Native-bridge-vs-OFT divergence**: EQB on Arbitrum has both an Arbitrum-bridged version (`ClonableBeaconProxy`) and presumably can be moved via the Equilibria bridge layer; supply reconciliation across the two paths is a non-obvious concern.

---

## Scope — Address-Slot Reuse Across Chains

The Equilibria deployer (`0xc493bd1d8d794357e79da84613b67533afc4d337`) deploys the same canonical role set on every chain in approximately the same nonce sequence, so 29 of the 72 unique addresses appear on **two or more chains**. This is *not* CREATE2 — bytecode varies per chain — but the address slot is the same. **A naive cross-chain address dedup would mis-attribute scope.** Examples:

- `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` is `ePendle` on Ethereum, `vlEqb` on Optimism + Berachain, `eqbZap` on BSC, `ePendleBridgeReward` on HyperEVM + Plasma, `xEQB` on Plasma. Six different roles at the same address slot, on six different chains.
- `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` is `pendleBooster` on Ethereum + Arbitrum + BSC, `pendleProxy` on Optimism + Berachain.

For an audit team, the implication is: scope by `(chain_id, address)` tuple, not by address alone. (The full address-slot reuse table is in `manifest.cross_chain_groups`.)

---

## Scope — Operational Periphery

| Contract | Address | Role | Audit status |
|---|---|---|---|
| Admin Multi-Sig (Ethereum) | [`0x397aa01343B89F18934979824c3Ad227f251aFA0`](https://etherscan.io/address/0x397aa01343B89F18934979824c3Ad227f251aFA0) | 3/5 Gnosis Safe v1.x; signers: Equilibria core + Incuba Alpha + GBV Capital + Pendle Finance team | inherits Gnosis Safe upstream audit |
| Timelock (Ethereum) | [`0xe2A63438747D2c71E14BdC2Cc222be89B1C11D03`](https://etherscan.io/address/0xe2A63438747D2c71E14BdC2Cc222be89B1C11D03) | OZ TimelockController; **24-hour delay** for upgrades | inherits OZ upstream audit |
| Admin Multi-Sig (Arbitrum) | [`0x29828F442c98AAA71A853594fEc7C0C3806f0444`](https://arbiscan.io/address/0x29828F442c98AAA71A853594fEc7C0C3806f0444) | Gnosis Safe v1.3 | inherits |
| Timelock (Arbitrum) | [`0x5C249A5F396638253470c4EaE7bc5092DDe21886`](https://arbiscan.io/address/0x5C249A5F396638253470c4EaE7bc5092DDe21886) | OZ TimelockController | inherits |
| POL Multi-Sig (Arbitrum) | [`0xFdA441270c1166d80f68AA6B5396e56b732724E4`](https://arbiscan.io/address/0xFdA441270c1166d80f68AA6B5396e56b732724E4) | Gnosis Safe — protocol-owned-liquidity ops | inherits |

Multisig **threshold and signer membership** are not enumerated by this brief beyond the docs claim of 3/5; operator should pull `Safe.getOwners()` + `Safe.getThreshold()` to confirm before scoping any governance-pause assumption.

---

## Scope — Proxy Architecture

Three proxy patterns in production use:

1. **OpenZeppelin `TransparentUpgradeableProxy`** — every Equilibria-native logic contract (pendleProxy, pendleBooster, ePendle, ePendleReward, vlEqb, etc.) is behind one of these. The proxy admin is the per-chain timelock contract; upgrades pass through the 24-hour timelock + 3/5 multisig.
2. **`GnosisSafeProxy`** — multisigs (Admin + POL).
3. **Bridge-stack proxies** — Arbitrum `ClonableBeaconProxy` for native-bridged EQB/ePendleBridge; OP-stack `OptimismMintableERC20` for L1↔L2 bridged EQB on Optimism and Base; Wormhole `BridgeToken` proxy on BSC. These bridge-stack contracts are NOT Equilibria's audit scope — they belong to the respective bridge teams (Arbitrum Foundation, OP Labs, Wormhole).

Implementation upgrade history (selected):
- `pendleBooster` Ethereum impl is `PendleBoosterMainchain` — there is also an *older* `PendleBoosterMainchain` artifact at `0x479603de…218d` on Ethereum (deployed by Equilibria's deployer); the canonical pendleBooster proxy was upgraded past it. The artifact remains on-chain.
- `ePendleReward` Ethereum impl `0xd2d99a6c…E2f39` resolves to `BaseRewardPoolV2_1` — the V2.1 indicates at least two prior versions of the reward-pool logic.

---

## Scope — Integration Surface (CRITICAL — Pendle dependency)

Equilibria is fundamentally a **Pendle yield optimizer**. The integration surface with Pendle is the protocol's reason for existence and the dominant non-Equilibria audit-evaluable component:

| Pendle contract / interface | Equilibria's interaction | Why it matters |
|---|---|---|
| `vePENDLE` (Pendle's vote-escrowed PENDLE) at `0x4f30A9D41B80ecC5B94306AB4364951AE3170210` (Ethereum) | Equilibria's `pendleProxy` locks PENDLE here on behalf of all ePENDLE holders | This is where the dominant "TVL" actually sits. Custody risk = Pendle, not Equilibria. |
| Pendle markets (per-market addresses, dynamic) | `pendleBooster` deposits Pendle LP tokens and accrues PENDLE rewards via boost | Equilibria custodies Pendle LP/PT positions on behalf of users; audit-evaluable for Equilibria. |
| Pendle gauge voting | `vlEqb` voters direct Equilibria's vePENDLE voting power across pools | vlEQB voting concentrates with users who lock EQB; bribery layer (`bribeManager`) sits on top. |
| Pendle's PENDLE → sPENDLE migration (2025–2026) | EIP-9 (Aug 2025) + EIP-10 (Apr 2026) confirm Equilibria has adapted; treasury holds sPENDLE | Equilibria's product depends on Pendle's tokenomics, which are evolving; expect more EIPs as Pendle iterates. |

The risk-mitigation page (`security-and-risk/risk-mitigation.md`) explicitly names "Potential Risks on Pendle Finance" first in its risk catalogue and notes Equilibria has an "emergency function which is controlled by a multi-sig address" to attempt to withdraw assets from Pendle in an emergency — i.e., Equilibria's worst-case is partly mitigated by a multisig escape hatch.

Other integrations (`docs/llms-full.txt`):
- **LayerZero OFT v1** for cross-chain ePENDLE (already covered above).
- **Boomie** (AI meme token deployment bot) — EIP-8 invested 100,000 EQB into Boomie. Not a contract-level integration with Equilibria's core scope.
- **Lybra Finance** — `LybraBooster` / `LybraDLPStakePool` / `LybraProxy` files exist in the public repo but are not in the docs' deployed-contracts matrix; this looks like an abandoned or pre-launch product line. Operator-confirm.

---

## Scope — Not Equilibria (v1 false positives)

| v1 brief attribution | Address | Verdict | Reason |
|---|---|---|---|
| Ethereum: `PENDLE` (v1: "core") | `0x808507121b80c02388fad14726482e061b8da827` | **NOT EQUILIBRIA** — this is Pendle Finance's PENDLE token | Deployer `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` (Pendle team), not Equilibria's deployer. |
| Ethereum: `0x6ee066…b923` (v1: "unnamed") | — | **NOT DEPLOYED ON ETHEREUM** | `eth_getCode` returns `0x` (no bytecode); the address slot has contracts on Sonic + Mantle (`ePendle`) but not on Ethereum. v1 cross-chain address spillover. |
| Ethereum: `0x741620…fecc` (v1: "unnamed") | — | **NOT DEPLOYED ON ETHEREUM** | Same — bytecode 0x on Eth; deployed on Base, Mantle, Sonic. |
| Ethereum: `0x9cacb5…8c6b` (v1: "unnamed") | — | **NOT DEPLOYED ON ETHEREUM** | Same — bytecode 0x on Eth; deployed on Sonic. |
| Ethereum: `0xf1ef7d…a74b` (v1: "unnamed") | — | **NOT DEPLOYED ON ETHEREUM** | Same — bytecode 0x on Eth; deployed on Sonic. |
| BSC: `BridgeToken` `0x374ca3…8609` (v1: "likely in scope") | EQB on BSC | **REAL Equilibria** — canonical EQB token on BSC per docs | Wormhole `BridgeToken` proxy is the wrapper; the underlying token is Equilibria's. |
| BSC: `TokenImplementation` `0x7f8c5e…f22a` (v1: "likely in scope") | — | **WORMHOLE INFRASTRUCTURE** — implementation behind the BridgeToken proxies | Audited as part of Wormhole, not Equilibria. |
| Arbitrum: `StandardArbERC20` `0x3f770a…ad46` (v1: "unmatched") | — | **ARBITRUM BRIDGE INFRASTRUCTURE** — implementation behind `ClonableBeaconProxy` for L1↔L2 token bridging | Audited as part of Arbitrum's gateway router stack. Deployer `0x1fccbe…3dc1` (Arbitrum gateway). |

---

## Audit Coverage

### Audit history (URL-verified, all return HTTP 200)

| Date (per docs) | Auditor | Report file id | Bytes | Coverage scope (per filename + product line) |
|---|---|---|---:|---|
| 2023-05-15 | PeckShield | `FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf` | 376,253 | "v1.0" — initial Equilibria mainnet design (pendleProxy + pendleBooster + ePendle + EQB/xEQB tokens) |
| 2023-06-05 | WatchPug | `5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf` | 171,689 | Initial WatchPug review covering same set |
| 2023-10-10 | WatchPug | `T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf` | 156,073 | ePENDLE Auto Compounder — i.e., `vaultEPendle` |
| 2024-11-06 | WatchPug | `mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf` | 92,968 | Second core review — likely covers EIP-3 / EIP-4 / EIP-5 changes (xEPENDLE, fee adjustments) |
| 2025-05-21 | WatchPug | `b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf` | 88,466 | "Continuous Audit" — incremental review |
| 2025-06-23 | WatchPug | `QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf` | 143,237 | Staked LP — `BaseRewardPoolV2_1` / boosted-LP staking layer |

WatchPug ("the same auditor as Pendle Finance" per docs `audits.md`) owns 5 of the 6 audits; PeckShield owns 1. Total coverage spans **2023-05-15 to 2025-06-23**, with the most recent audit roughly 11 months before this brief. Six audits is unusually heavy coverage for a Tier-2 protocol, reflecting Equilibria's tight relationship with Pendle.

### Coverage by scope category (Equilibria-deployed contracts)

| Category | Contracts (canonical, per docs) | Audited | Re-audit due | Coverage % |
|---|---:|---:|---:|---:|
| Mainchain core (pendleProxy + pendleBooster + ePendle + ePendleReward + pendleDepositor + vaultEPendle on Ethereum) | 6 | 6 | 0 | 100% |
| Tokens (EQB + xEQB + ePendle ERC-20) on Ethereum | 3 | 3 | 0 | 100% |
| Voting (vlEqb + bribeManager) — Arbitrum | 2 | 2 | 0 | 100% |
| Cross-chain (ePendleProxyOFT + EqbMsgSendEndpoint + ePendleOFT + ePendleBridge + ePendleVaultSidechain) — Eth + 9 sidechains | ~20 (≈2 per chain × 10 chains) | partial — OFT v1 pattern is upstream-audited; Equilibria's wrappers were in scope of WatchPug Continuous May 2025 per filename context | unclear | partial |
| Sidechain core (pendleBoosterSidechain + pendleProxySidechain + ePendle + ePendleReward + vlEqb on each of 9 sidechains) | ~50 (5 per chain × ~9 chains where deployed; some chains have a subset) | high — same logic compiled per chain; audit covers the logic, not each instance | 0 if no per-chain modifications | ~90% |
| Operational periphery (Admin Safe + Timelock + POL Safe per chain) | 3+ | inherits Gnosis Safe + OZ TimelockController | n/a | inherits |
| **Total Equilibria-attributable scope** | ~84 (matching the v1 brief's topography count of 84) | high — 6 audits cover the unified codebase | 0 explicit re-audit due | effective ~95% if no per-chain divergence |

### Gap analysis

- **EqbMsgSendEndpoint + cross-chain coordination logic**: explicitly named in docs `mechanism/cross-chain` but the surface is partial in the audit chain. Operator should confirm it was in scope of WatchPug's Nov 2024 or May 2025 reviews.
- **Lybra Finance product line**: source files exist in the public repo (`LybraBooster.sol`, `LybraDLPStakePool.sol`, `LybraProxy.sol`) but not deployed per docs. Either abandoned or pre-launch. Risk if the contracts are deployed somewhere unrecorded; operator-confirm.
- **HyperEVM + Plasma + Berachain deployments**: docs list these chains and DL records non-zero TVL on each, but Etherscan v2 does not yet cover them, so the gold standard cannot pull verified source code. Audit team should expect to use the chain-native explorer (hyperevmscan.io / plasmascan.to / berascan.com) for source verification on those chains.
- **Pendle's sPENDLE migration**: EIP-10 (2026-04-24) freezes sPENDLE-rewards distribution pending a community plan. Any new contracts deployed to integrate sPENDLE would post-date all six existing audits. Operator should track Equilibria's deployer EOA for new deployments after 2026-04-24.
- **Wind-down scope**: the public communications discuss a 2-year structured wind-down. If a wind-down EIP passes and triggers contract migrations, the migration code itself will need fresh audit coverage.
- **Multisig-and-timelock signer membership**: docs claim 3/5 with named institutional signers but on-chain signer enumeration was not pulled by this brief.

---

## Targeting Recommendation

In rough priority order by economic exposure × residual audit gap × novelty:

1. **ePENDLE peg + auto-compounder vault** (`ePendle`, `ePendleReward`, `vaultEPendle` on Ethereum + Arbitrum). $2.3M staked. The 2025-06-23 WatchPug Staked LP audit likely covered the most recent reward-pool changes. Targeting value: peg manipulation, reward-distribution math, ERC-4626-style vault accounting.
2. **pendleBooster reward-distribution** (`pendleBooster` Ethereum + sidechains). $1.25M LP + $1.24M PT positions custodied. Targeting value: fee-and-reward math against Pendle's evolving boost mechanic, especially after Pendle's vePENDLE → sPENDLE transition.
3. **EqbMsgSendEndpoint + cross-chain consolidated reporting**. The most novel surface; coordinates fee-sharing across 10 chains. Targeting value: replay protection, decimal/scaling consistency, fee-double-counting.
4. **pendleProxy boost-claim integrity** (`pendleProxy` on Ethereum). Custodies $13.8M of PENDLE locked in vePENDLE on Equilibria's collective behalf. Targeting value: ensuring no path to mis-distribute Equilibria's boosted yield from Pendle.
5. **vlEqb + bribeManager voting and bribe distribution** (Arbitrum). Targeting value: vote-counting + bribe-payout math.
6. **OFT v1 wrappers** (`ePendleProxyOFT` on Ethereum + `ePendleOFT` on each sidechain). Inherits LayerZero OFT v1 audit; Equilibria-specific code is the wrapper. Targeting value: confirm no decimals/replay regressions in the wrapper.
7. **Bridge-token wrappers** (Arbitrum ClonableBeaconProxy, OP-stack OptimismMintableERC20, Wormhole BridgeToken on BSC). **Default skip** — bridge code is upstream-audited.
8. **Operational periphery** (Admin Safe + Timelock + POL Safe). Read-only spot check on signer membership and timelock parameters (`getOwners`, `getThreshold`, `getMinDelay`).

---

## v1 Pipeline Errors (for this project)

The pipeline's `brief.md` carries five large defects, traced per-stage in [`docs/gold-standard/equilibria_v1_diff_analysis.md`](../../docs/gold-standard/equilibria_v1_diff_analysis.md):

1. **TVL: $102.6M headline is wrong.** Actual DL TVL on the v1 brief's claimed snapshot date 2026-04-29 was $13,044,511. The protocol last had >$100M TVL on 2025-11-03. Either the snapshot is mis-dated or the figure is otherwise stale/buggy.
2. **PENDLE token misattribution.** `0x808507…a827` is Pendle's PENDLE governance token, not Equilibria. Deployer is Pendle Finance team.
3. **Cross-chain address spillover.** Four "unnamed" Ethereum rows (`0x6ee066…b923`, `0x741620…fecc`, `0x9cacb5…8c6b`, `0xf1ef7d…a74b`) have **zero bytecode on Ethereum**. They are address-slots that hold contracts on Sonic / Mantle / Plasma / Base, not on Ethereum. The pipeline conflated cross-chain address slots with Ethereum scope.
4. **Audit dates "unknown" + URL fragments as scope descriptions.** The docs `audits.md` page gives precise dates and the GitBook URL filename gives exact scope (e.g. `Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf`). The pipeline used the URL path as the scope description — leaving "unknown" dates and URL-encoded fragments where readable strings should appear.
5. **Lifecycle "active - latest deployment unknown".** The latest WatchPug audit (2025-06-23) and the latest passed EIP (EIP-10 on 2026-04-24) are clear lifecycle signals, ignored. The TVL trajectory ($315M → $16M, ~95% decline) and Pendle's sPENDLE transition are the real lifecycle headline; the pipeline's heuristic should recognize TVL-decline-plus-emission-halt as a salient lifecycle posture distinct from "active" or "dead".

Plus three smaller defects:
- **Per-contract TVL absent.** v1 brief states "Per-contract TVL: available; latest total on-chain TVL snapshot is $4,758,128" but does not surface per-contract values. This brief decomposes TVL as PENDLE-locked / LP / PT / staking buckets.
- **Integration surface: "No external integrations detected".** Pendle is an existential dependency for Equilibria, not just a "detected integration".
- **Cross-chain CREATE-address-slot reuse not detected.** 29 of 72 unique addresses appear on 2+ chains (same EOA + same nonce). The brief's proxy-architecture section should flag this; the v1 brief silently treats them as separate contracts.

---

## Appendix

### Sources

- DefiLlama protocol JSON (raw response saved in [`docs/gold-standard/dl_raw/equilibria.json`](../../docs/gold-standard/dl_raw/equilibria.json)):
  - https://api.llama.fi/protocol/equilibria
- Equilibria developer docs:
  - https://docs.equilibria.fi/integration/deployed-contracts (per-chain matrix index)
  - https://docs.equilibria.fi/integration/deployed-contracts/ethereum.md (and 9 sibling pages: arbitrum, bnb-chain, optimism, base, sonic, mantle, hyperevm, plasma, bera)
  - https://docs.equilibria.fi/security-and-risk/audits.md
  - https://docs.equilibria.fi/security-and-risk/risk-mitigation.md
  - https://docs.equilibria.fi/security-and-risk/multi-sig-and-timelock.md
  - https://docs.equilibria.fi/llms-full.txt (full corpus)
- Snapshot governance: https://snapshot.box/#/s:eips.equilibria-xeqb.eth (raw GraphQL pulled via `hub.snapshot.org`)
- Public source repo: https://github.com/eqbtech/equilibria-contracts
- Etherscan v2 multi-chain API (`api.etherscan.io/v2/api`) for chains 1, 10, 56, 146, 5000, 8453, 42161 — per-contract verification listed inline above; row-by-row evidence in the verification ledger.
- Six audit PDF URLs HEAD-verified on `2415009796-files.gitbook.io`:
  - `5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf` (Last-Modified 2023-06-05)
  - `FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf` (Last-Modified 2023-05-16)
  - `mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf` (Last-Modified 2024-11-06)
  - `QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf` (Last-Modified 2025-06-23)
  - `T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf` (Last-Modified 2024-11-06; report itself attributed to docs' Oct 10, 2023 entry)
  - `b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf` (Last-Modified 2025-05-23)

### Caveats

- **TVL methodology** is the load-bearing caveat for this brief. The DL TVL of $16.3M sums four asset classes that custody differently (PENDLE in vePENDLE, Pendle LP/PT in reward pools, ePENDLE in staking). Audit-evaluable surface inside Equilibria-deployed contracts is ~$4.79M, not $16.3M.
- **Etherscan v2 chain coverage**: 7 of 10 chains (Ethereum, Optimism, BSC, Sonic, Mantle, Base, Arbitrum) are covered; HyperEVM, Plasma, Berachain are not yet on v2. The docs URLs resolve and the contracts exist, but per-address contract-name verification was deferred for ~40 doc rows.
- **Audit→contract mapping** is reconstructed from filenames + product-line context. The PDFs themselves were not parsed (HEAD-verified only). Operator should pull each PDF for precise scope confirmation before relying on the coverage table.
- **Multi-sig signers + timelock parameters** are stated per docs ("3/5", "24-hour"); on-chain `getOwners()` / `getThreshold()` / `getMinDelay()` were not invoked in this brief.
- **Lifecycle labelling**: "active but in structured decline" is a composite judgment from EIP-6 emission halt + 95% TVL decline + Pendle's sPENDLE transition + EIP-10 sPENDLE-treasury freeze. There is no formal "wind-down EIP" in the Snapshot space; public communications discuss a 2-year wind-down but this brief did not locate the originating governance post. Operator-confirm current intent before scoping audit work as either "ongoing protocol audit" or "wind-down audit".
- **Lybra Finance product files** in the public repo (`LybraBooster.sol`, `LybraDLPStakePool.sol`, `LybraProxy.sol`) are not in the deployed-contracts docs matrix. Either abandoned or pre-launch. Operator-confirm.
- **PendleBoosterMainchain at `0x479603de…218d` on Ethereum** is an obsolete implementation artefact (legitimate Equilibria deployer, but the canonical pendleBooster proxy at `0x4D32…26bF` was upgraded past it). The v1 brief surfaced it as a separate "core" row; the gold standard treats it as a historical artefact.

### Generation metadata

- Generated: 2026-05-06
- Method: manual research, no pipeline involvement
- Verification ledger: [`docs/gold-standard/equilibria_verification_ledger.md`](../../docs/gold-standard/equilibria_verification_ledger.md)
- Raw DL JSON archive: [`docs/gold-standard/dl_raw/equilibria.json`](../../docs/gold-standard/dl_raw/equilibria.json)
- v1 diff analysis: [`docs/gold-standard/equilibria_v1_diff_analysis.md`](../../docs/gold-standard/equilibria_v1_diff_analysis.md)
