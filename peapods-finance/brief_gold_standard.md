# Agentic Audit Brief: Peapods Finance (Gold Standard)

> Manually-researched reference brief. Verification ledger lives at [docs/gold-standard/peapods_verification_ledger.md](../../docs/gold-standard/peapods_verification_ledger.md). v1 pipeline diff is summarized in §"v1 Pipeline Errors" below. Generated 2026-05-11; no pipeline involvement.

---

## Project Overview

- **Project:** Peapods Finance — volatility-farming protocol with permissionless Pod factory + Leveraged Volatility Farming (LVF) + self-lending markets
- **Website:** [peapods.finance](https://peapods.finance) (app at [peapods.finance/app](https://peapods.finance/app), beta UI at [beta.peapods.finance](https://beta.peapods.finance))
- **Developer docs:** [docs.peapods.finance](https://docs.peapods.finance) (GitBook; `.md` URLs and per-page `?ask=` LLM query both supported)
- **GitHub user:** [github.com/peapodsfinance](https://github.com/peapodsfinance) — 5 repos, primary one is `contracts` (478 .sol files)
- **Audit registry (per docs):** [docs.peapods.finance/links/audits](https://docs.peapods.finance/links/audits)
- **DefiLlama:** [defillama.com/protocol/peapods-finance](https://defillama.com/protocol/peapods-finance) — Yield category
- **DL methodology (verbatim from `methodology` field):** "Aggregates TVL in all Peapods Finance indexes created."
- **Total TVL (DL, snapshot 2026-05-11):** $2,003,228
- **Chains in production (DL):** Ethereum, Arbitrum, Base, Mode, Sonic, Berachain — six chains, LVF deployed on five (Mode is V2-only and has 0 pods)
- **Lifecycle:** active in steep decline. Peak TVL was $37,227,847 on 2025-10-09; current value is 5.4% of peak. Team is still shipping — last protocol contract deployed 2025-12-09 on Ethereum (`StakingVault`), last commit to `peapodsfinance/fraxlend` was 2026-01-18.
- **Tier:** Tier 2 — mid-TVL active protocol with permissionless factory
- **Commercial fit:** audit target with implementation→instance fan-out

The audit-evaluable surface for Peapods has an unusual shape. **The protocol is a permissionless Pod factory**, not a fixed-vault DeFi app — anyone can call `IndexManager.deployNewIndex(...)` and get a fresh `WeightedIndex` Pod, a `StakingPoolToken`, an `AutoCompoundingPodLp` vault, and (for LVF-enabled pods) a forked-Fraxlend pair. As of 2026-05-11 there are **153 deployed Pods across 6 chains** (Ethereum 59, Base 59, Arbitrum 22, Sonic 12, Berachain 1, Mode 0), but the implementation set is small and uniform: every Pod is a clone of the same `WeightedIndex.sol`, every staking pool is a clone of `StakingPoolToken.sol`, every LVF pair is a clone of `FraxlendPair.sol`. **Audit coverage flows from implementation → instance**: a single audit of `WeightedIndex.sol` covers all 153 Pods.

This shape breaks naive per-address scope-matching: a v2 pipeline that scores each deployed Pod against the audit list will get zero hits per Pod (no audit names the deployed address), even though the audit fully covers the implementation behind it. The correct mental model is the Sherlock contest scope: 28 source files at `peapodsfinance/contracts @ 964a6b30`, covering the entire current architecture.

---

## Architecture Overview (CRITICAL — read before scoping)

Peapods is a **volatility-farming protocol**. The core primitive is a **Pod**: an ERC-20 wrapper that mints when users deposit one or more underlying tokens (e.g., wPEAS, wWETH) into a configurable weighted basket, and that charges a configurable wrap/unwrap fee. The fee creates recurring arbitrage every time the pod's market price diverges from the wrapped basket — and that arbitrage flow is the protocol's **economic engine**. The flow is:

1. **Anyone calls `IndexManager.deployNewIndex(...)`** to create a Pod. The factory deploys:
   - A [`WeightedIndex`](https://github.com/peapodsfinance/contracts/blob/main/contracts/WeightedIndex.sol) instance (the Pod ERC-20 token + wrap/unwrap logic)
   - A [`StakingPoolToken`](https://github.com/peapodsfinance/contracts/blob/main/contracts/StakingPoolToken.sol) (the LP staking ERC-20)
   - A [`TokenRewards`](https://github.com/peapodsfinance/contracts/blob/main/contracts/TokenRewards.sol) reward escrow
   - An [`AutoCompoundingPodLp`](https://github.com/peapodsfinance/contracts/blob/main/contracts/AutoCompoundingPodLp.sol) auto-compounding ERC-4626 vault (V3 / LVF era; deployed by `AutoCompoundingPodLpFactory`)
2. **Users wrap** an underlying basket into the Pod, then **LP the Pod against its underlying** on a paired DEX (Uniswap V2/V3, Aerodrome, Camelot, Pancakeswap, Shadow, Kim depending on chain). The recurring arbitrage flow earns swap fees for LPs — this is **Volatility Farming (VF)**.
3. **Users stake the LP** in `StakingPoolToken` and/or deposit into `AutoCompoundingPodLp` to earn yield without manual position management.
4. **For LVF-enabled Pods** (V3 era), users can call [`LeverageManager.addLeverage`](https://github.com/peapodsfinance/contracts/blob/main/contracts/lvf/LeverageManager.sol). The LeverageManager:
   - Mints additional pTKN via the Pod
   - Borrows the paired asset from a [forked Fraxlend pair](https://github.com/peapodsfinance/fraxlend) (one pair per LVF Pod)
   - Combines into a leveraged LP position at up to 2× notional
   - Records the position via `LeveragePositions` NFT + `LeveragePositionCustodian`
5. **Lenders deposit** into [`LendingAssetVault`](https://github.com/peapodsfinance/contracts/blob/main/contracts/LendingAssetVault.sol) (or directly into a Fraxlend pair). The vault aggregates lender deposits and routes liquidity across pairs.
6. **Self-Lending Pods / Proof-of-Demand**: A Pod can lend *itself* — depositing into the Pod is the same act as providing borrow liquidity for its own LVF positions. Configured via the `selfLending` flag in the V3 `allIndexes()` tuple.
7. **Solvency** is enforced by per-Pod oracles: [`aspTKNMinimalOracle`](https://github.com/peapodsfinance/contracts/blob/main/contracts/oracle/aspTKNMinimalOracle.sol) and [`spTKNMinimalOracle`](https://github.com/peapodsfinance/contracts/blob/main/contracts/oracle/spTKNMinimalOracle.sol), deployed by `aspTKNMinimalOracleFactory`, drawing from `UniswapV3SinglePriceOracle`, `CamelotV3SinglePriceOracle`, `ChainlinkSinglePriceOracle`, `DIAOracleV2SinglePriceOracle`, etc.
8. **Liquidations** route through [`UnwindAspTkn`](https://github.com/peapodsfinance/contracts/blob/main/contracts/liquidator/UnwindAspTkn.sol) and the Fraxlend pair's internal liquidation flow.
9. **Governance** uses PEAS staked into [`VotingPool`](https://github.com/peapodsfinance/contracts/blob/main/contracts/voting/VotingPool.sol), with voting power derived from `ConversionFactorPTKN` / `ConversionFactorSPTKN` to credit pTKN/spTKN holders.

**Key audit implication.** A bug in `WeightedIndex.sol`, `StakingPoolToken.sol`, `AutoCompoundingPodLp.sol`, or `LeverageManager.sol` is duplicated 153× across deployed Pods. Conversely, a bug in a per-instance configuration (which paired-LP token, which oracle, transfer-tax flag) only affects that one Pod. Sherlock contest #749's findings concentrate on the **implementation logic** rather than per-Pod misconfiguration — for example M-11 ("Pods with `hasTransferTax=true` have incorrect totalSupply because burn fee is applied recursively") is an implementation-level bug that affects every Pod whose creator sets the flag.

**Versioning model.** Peapods runs **two concurrent versions** simultaneously:

| Era | IndexManager address | Architecture | Compiler |
|---|---|---|---|
| **V2 (legacy)** | [`0x0Bb39ba2…E6B`](https://etherscan.io/address/0x0Bb39ba2eE60f825348676f9a87B7CD1e3B4AE6B) — same address on every V2 chain | Pre-LVF; just Pods + StakingPoolToken | Solidity **0.7.6** |
| **V3 (LVF)** | chain-specific (see §Multi-Chain Deployments) | Pods + LVF (LeverageManager + Fraxlend pairs) + AutoCompoundingPodLp + LendingAssetVault | Solidity **0.8.28** |

V2 is **not deprecated** — 66 of 153 deployed pods (43%) are still V2. There's a 1.5-year compiler gap between V2 (deployed 2023-12) and V3 (deployed 2025-01–02). The V2 surface is much smaller (no LVF, no Fraxlend, no advanced oracles) and was audited by yAudit 2024-01 + SourceHat. The V3 surface was audited by yAudit-LVF + Guardian-LVF + Pashov-LVF + Sherlock #749.

**No upgradeable-proxy architecture on the user-facing surface.** IndexManagers, WeightedIndex Pods, StakingPoolTokens, and Fraxlend pairs are all `proxy=0` on Etherscan. The exception is the **LeverageManager**, which on Ethereum, Arbitrum, and Base is a transparent / beacon proxy:
- Ethereum: proxy `0x4e6EF371…2D0B` → impl [`0x4e1086…403c`](https://etherscan.io/address/0x4e1086aae93f24404c695db4ae06c9bc43ee403c) (verified, 126 KB source)
- Arbitrum: proxy `0x3f2257B6…2B0` → impl [`0xe89c47…3ac46`](https://arbiscan.io/address/0xe89c470751e45966d2e156f03adc007991a3ac46)
- Base: proxy `0x31E35550…82D` → impl [`0x62eadf…f2a`](https://basescan.org/address/0x62eadf4c53f81f334a898ca307d65b402db05f2a)

All three impls share the same `LeverageManager` source (Sol 0.8.28).

---

## TVL Methodology Note (CRITICAL)

DefiLlama's adapter ([source](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/peapods-finance/index.js)) enumerates Pods at call time via `IndexManager.allIndexes()` and computes three buckets per chain:

> Aggregates TVL in all Peapods Finance indexes created.

In practice the adapter computes:

| Bucket | What it counts | DL field |
|---|---|---|
| `tvl` (native) | The underlying token sitting inside each Pod's WeightedIndex (unwrapped basket) and the AutoCompoundingPodLp vault balance | per-chain `tvl` |
| `staking` | LP tokens staked in `StakingPoolToken` (i.e., users LPing the Pod and earning fees) | per-chain `staking` |
| `borrowed` | The total borrow position across all Fraxlend pairs discovered via `LeverageManager.lendingPairs(pod)` | per-chain `borrowed` |

The `borrowed` bucket is **double-counted** relative to `tvl` — borrowed assets originally came from a `LendingAssetVault` deposit, which got counted in `tvl`. DL exposes the buckets separately so callers can avoid the double-count.

On 2026-05-11, reconciling DL's `currentChainTvls` against the live DL adapter on-chain reads:

| Chain | `tvl` (native) | `staking` | `borrowed` | Note |
|---|---:|---:|---:|---|
| Ethereum | $1,035,108 | $1,092,012 | $406,513 | V2 + V3 pods, both IndexManagers, full LVF stack |
| Base | $881,448 | $37,602 | $458,484 | V2 + V3; YO Protocol / Aerodrome integrations |
| Arbitrum | $44,109 | $30,107 | $548,214 | V2 + V3; Camelot integration |
| Sonic | $42,548 | $15,526 | $77,027 | V3 only; Shadow DEX integration |
| Berachain | $16 | $0 | $0 | V3 only; 1 pod deployed, never used |
| Mode | $0 | $0 | $0 | V2 IndexManager exists but 0 pods created |
| **Total** | **$2,003,229** | **$1,175,247** | **$1,490,239** |  |

DL's `currentChainTvls` headline `$2,003,228` is the `tvl` bucket (the user-visible "TVL in Peapods"). The `borrowed` total of $1.49M is the LVF leverage outstanding. The `staking` total of $1.18M is LP positions staked in StakingPoolTokens.

For audit-evaluable purposes the entire surface across all 6 chains is in Sherlock #749 scope (which audits the whole codebase regardless of chain), so `audit_evaluable_tvl_usd = total TVL = $2.0M`.

---

## On-Chain TVL Summary (per chain)

DL's `currentChainTvls` field on 2026-05-11:

| Chain | Total TVL (USD) | Borrowed (USD) | Pods deployed | Has LVF? |
|---|---:|---:|---:|---|
| Ethereum | $1,035,108 | $406,513 | 59 (33 V2 + 26 V3) | ✅ |
| Base | $881,448 | $458,484 | 59 (21 V2 + 38 V3) | ✅ |
| Arbitrum | $44,109 | $548,214 | 22 (12 V2 + 10 V3) | ✅ |
| Sonic | $42,548 | $77,027 | 12 (12 V3) | ✅ |
| Berachain | $16 | $0 | 1 (1 V3) | ✅ |
| Mode | $0 | $0 | 0 | ❌ (V2-only chain) |
| **Total** | **$2,003,229** | **$1,490,239** | **153** |  |

All six chains share the same `IndexManagerV2` address (`0x0Bb39ba2…E6B`) — Peapods uses CREATE2 / deterministic deployment so that the legacy factory is callable at the same address everywhere. Each chain has its own `IndexManagerV3` and `LeverageManager` address. PEAS itself is at the same address `0x02f92800…f875` on every chain via LayerZero OFT (lock-mint / burn-mint), so total supply is bounded at 10M PEAS across the system.

---

## Lifecycle and Recent Activity

| Era | Anchor address | Event | Verified date |
|---|---|---|---|
| Pre-launch deployments | [`0x21fe3e26…e37`](https://etherscan.io/address/0x21fe3e26e824783ca7e374355a8d30ae8bbf6e37) (peapods.eth) | Deployer 1 begins seeding contracts | 2023-12-07 |
| PEAS launch | [`0x02f92800…875`](https://etherscan.io/address/0x02f92800f57bcd74066f5709f1daa1a4302df875) (PEAS) | 10M-supply token deployed; same deployer | 2023-12-12 |
| IndexManagerV2 deploy | [`0x0Bb39ba2…E6B`](https://etherscan.io/address/0x0Bb39ba2eE60f825348676f9a87B7CD1e3B4AE6B) | Legacy Pod factory live | 2023-12-08 |
| DL listing | (DL hallmark) | Listing at $1.09M TVL | 2024-01-25 |
| yAudit V1 review | (audit) | Initial audit of Pod V1 core | 2024-01 |
| Arbitrum launch | (DL hallmark) | V2 expansion | 2024-03-14 |
| First TVL peak | (DL `tvl[]`) | ~$30.5M | 2024-04 |
| Base + Mode launches | (DL hallmarks) | V2 expansion | 2024-05-08 / 2024-05-09 |
| Pre-LVF audit batch | (audits) | yAudit + Guardian + Pashov LVF reports | 2024-Q4 / 2025-Q1 |
| IndexManagerV3 + LeverageManager deploy | [`0x6eFFcF…66E`](https://etherscan.io/address/0x6eFFcF94993d6a6081204fc3C30473468Eb7666E) (ETH IndexManager V3), [`0x4e6EF3…D0B`](https://etherscan.io/address/0x4e6EF371C9CDDE8C3e6716AffEEBaD14C8c62D0B) (ETH LeverageManager) | V3 / LVF era begins | 2025-01-24 / 2025-02-04 |
| Sherlock contest #749 | [contests/749](https://audits.sherlock.xyz/contests/749) | 84 auditors, 7H + 34M valid findings, $72.4k pot | 2025-01-20 → 2025-02-17 |
| LVF launch | (DL hallmark, fee taken effective) | LVF wired into LP routing | 2025-02-07 |
| Sonic launch | (DL hallmark) | V3 expansion | 2025-03-18 |
| Berachain launch | (DL hallmark) | V3 expansion (only 1 pod ever deployed) | 2025-04-10 |
| TVL peak | (DL `tvl[]`) | $37,227,847 — all-time high | 2025-10-09 |
| Latest team deployment | [`0xdab17556…ecc`](https://etherscan.io/address/0xdab17556ae10062f5939e56d44063c12eb7b1ecc) (StakingVault) | Last contract from Deployer 1 on Ethereum | 2025-12-09 |
| Latest repo commit | (`peapodsfinance/fraxlend`) | Active codebase maintenance | 2026-01-18 |
| Current snapshot | (DL today) | $2.0M TVL = 5.4% of peak | 2026-05-11 |

The protocol is **active in steep decline**. TVL has shed ~94% from peak over 7 months without a discrete failure event — no rugpull, no hack, no founder departure reported. Plausible drivers: end of LVF incentive program, broader DeFi yield compression, Sherlock contest findings affecting confidence. Team is still shipping (December 2025 Ethereum deployment, January 2026 repo commits), so the protocol is best classified as `active_in_steep_decline`.

---

## Scope — Core: Pod Layer (Volatility Farming primitives)

The Pod layer is the **entire foundation** of Peapods. Every product (VF, LVF, lending) extends from `WeightedIndex` + `StakingPoolToken`.

**WeightedIndex implementations (one per era):**

| Slug | Address | Chain | Era | Compiler |
|---|---|---|---|---|
| `09_WeightedIndex_v2_verified_sample` | [`0x515e7f…a49b`](https://etherscan.io/address/0x515e7fd1c29263dff8d987f15fa00c12cd10a49b) | 1 | V2 (team-verified) | 0.7.6 |
| `10_WeightedIndex_v3_impl` | [`0x50d2ac…491a`](https://etherscan.io/address/0x50d2acb0d9ee43c39dcf7cf694e94a0f9187491a) | 1 | V3 (LVF) | 0.8.28 |

All 153 deployed Pods clone one of these two implementations. The V3 impl is the larger surface (39 source files, 210.9 KB) because it pulls in the LVF integration interfaces and the auto-compounding-vault wiring.

**Pod factories (one V2 + one V3 per chain):**

| Slug | Address | Chain | Version |
|---|---|---|---|
| `02_IndexManagerV2_legacy` | [`0x0Bb39b…AE6B`](https://etherscan.io/address/0x0Bb39ba2eE60f825348676f9a87B7CD1e3B4AE6B) | 1 (also 10, 56, 8453, 34443, 42161) | V2 (same address all V2 chains) |
| `03_IndexManagerV3_ethereum` | [`0x6eFFcF…666E`](https://etherscan.io/address/0x6eFFcF94993d6a6081204fc3C30473468Eb7666E) | 1 | V3 |
| `05_IndexManagerV3_arbitrum` | [`0x64511c…4FD8`](https://arbiscan.io/address/0x64511ccE99ab01A6dD136207450eA81263b14FD8) | 42161 | V3 |
| `07_IndexManagerV3_base` | [`0x556059…ec30`](https://basescan.org/address/0x556059e80CB0073D4A9547081Cf0f80cBB94ec30) | 8453 | V3 |
| *(Sonic V3)* | [`0x9e054F…6060`](https://sonicscan.org/address/0x9e054F6C328d8E424a2354af726FDc88cB166060) | 146 | V3, source not fetched (Etherscan v2 doesn't cover Sonic) |
| *(Berachain V3)* | [`0xC9260c…2f01`](https://berascan.com/address/0xC9260cE495B5EeC77219Bf4faCCf27EeFD932f01) | 80094 | V3, source not fetched (Etherscan v2 doesn't cover Berachain) |

**Pod ecosystem helpers (Ethereum samples; analogues exist per chain):**

| Slug | Address | Role |
|---|---|---|
| `11_IndexUtils` | [`0x2bcca7…054c`](https://etherscan.io/address/0x2bcca7ea2c7eca696ace6d71c9719fb171a1054c) | Helper for Pod creation + routing |
| `12_AutoCompoundingPodLpFactory` | [`0x58a5b1…b4f5`](https://etherscan.io/address/0x58a5b165697126acd3f3ef07133109495a5fb4f5) | Factory for ERC-4626 auto-compounding LP vaults |
| `13_TokenRewards` | [`0x0a7734…18cc`](https://etherscan.io/address/0x0a7734281725f534f83d1bc9d91c40b1e80618cc) | Reward escrow for staked LP positions |
| `25_PodVaultUtility` | [`0xebebc4…9910`](https://etherscan.io/address/0xebebc4ce9ff6520b793f4f96aff28d9f4d159910) | Utility helper for Pod ↔ LP migrations |

**Deployed Pod inventory** is enumerated in `manifest_gold_standard.json` under `contracts[]` with `architecture_layer="pod_instance"`. Totals by chain:

| Chain | V2 Pods | V3 Pods | Total | Aggregate notes |
|---|---:|---:|---:|---|
| Ethereum | 33 | 26 | 59 | Both team-created (verified=True) and user-created |
| Base | 21 | 38 | 59 | Largest V3 footprint |
| Arbitrum | 12 | 10 | 22 | Mid-density |
| Sonic | 0 | 12 | 12 | V3-only chain |
| Berachain | 0 | 1 | 1 | Effectively unused |
| Mode | 0 | 0 | 0 | IndexManager V2 deployed but no pods created |

The **enumeration call** is `IndexManager.allIndexes()` with selector `0x6171e40d`. V2 returns `tuple(address index, bool verified)[]`; V3 returns `tuple(address index, address creator, bool verified, bool selfLending, bool makePublic)[]`. A v2 pipeline that does not decode the V3 5-tuple ABI will silently fall through to V2-like decoding and over- or under-count the pod set.

---

## Scope — LVF: Leveraged Volatility Farming

The LVF layer turns a Pod LP position into a leveraged position via a forked Fraxlend pair. Five contracts on Ethereum (all `proxy=0` except `LeverageManager` which is a beacon proxy):

| Slug | Address | Role |
|---|---|---|
| LeverageManager (proxy) | [`0x4e6EF3…2D0B`](https://etherscan.io/address/0x4e6EF371C9CDDE8C3e6716AffEEBaD14C8c62D0B) | User-facing LVF entry point (`addLeverage`, `removeLeverage`) |
| `04_LeverageManager_ethereum_impl` | [`0x4e1086…403c`](https://etherscan.io/address/0x4e1086aae93f24404c695db4ae06c9bc43ee403c) | LeverageManager implementation behind the proxy |
| `14_LeverageFactory` | [`0x43b9d9…39d3`](https://etherscan.io/address/0x43b9d9b0585e5e8a1e069195170adfd0461939d3) | Per-Pod LVF wiring orchestrator (registers FraxlendPair, LeveragePositions, Custodian) |
| `15_LeverageFeeProcessor` | [`0xff673a…ae2b`](https://etherscan.io/address/0xff673afd42f850fcf2f6883bc2a4d7d34fc8ae2b) | Routes the open / close fees to protocol treasury |

Per-Pod satellite contracts (one set per LVF Pod, not enumerated here):
- `LeveragePositionCustodian.sol` — holds the FraxlendPair shares + Pod LP balance per leveraged user
- `LeveragePositions.sol` — ERC-721 representing leveraged positions

**LeverageManager beacon-proxy chain on Ethereum.** The user-facing address `0x4e6EF3…2D0B` is a TransparentUpgradeableProxy backed by an `UpgradeableBeacon` at `0x8c38378f…f90e`, which in turn points to the impl at `0x4e1086…403c`. The Etherscan "Proxy" indicator reports `Implementation: 0x4e1086…403c` directly, but the on-chain structure routes through the beacon. The Arbitrum and Base LeverageManagers follow the same pattern with different beacon + impl addresses.

**Critical Sherlock findings in this layer:**
- H-3 Pod DoS if `LEAVE_AS_PAIRED_LP_TOKEN` option is enabled
- H-4 `_pairedLpTokenToPodLp()` does not correctly handle leftover pTKNs
- H-6 `removeLeverage` will lead to stuck tokens if slippage `_podSwapAmtOutMin` is set
- M-6 Open fee is overcharged in `_addLeveragePostCallback`
- M-8 Shares-needed-for-redemption is underquoted during `removeLeverage`
- M-13 `_acquireBorrowTokenForRepayment` reverts because `_props.sender` is never set
- M-14 self-lending breaks with fee-on-transfer PAIRED_LP_TOKEN
- M-22, M-26, M-29 advanced self-lending pods (podded fTKN as pairedLpTKN) break in multiple places

All listed as Resolved in the Sherlock judging report.

---

## Scope — Lending: FraxLend Fork

Peapods forks Fraxlend for the LVF-side lending market. The fork lives in [`github.com/peapodsfinance/fraxlend`](https://github.com/peapodsfinance/fraxlend); deployed instances are one `FraxlendPair` per LVF Pod plus a shared `LendingAssetVault` per Pod system.

| Slug | Address | Role |
|---|---|---|
| `16_LendingAssetVaultFactory` | [`0xbab29f…12c6`](https://etherscan.io/address/0xbab29f09f595bf2c8d4142ee544e1bc1db7912c6) | Factory for aggregator vaults |
| `17_FraxlendPairDeployer` | [`0x7769ee…84ec`](https://etherscan.io/address/0x7769ee42787edbd1c189e07a279e11e2196e84ec) | Deploys new FraxlendPair instances (newer version; 0x4dea9f…8c90 is the older deployer) |
| `18_FraxlendPair_sample` | [`0x0aa984…2980`](https://etherscan.io/address/0x0aa98472e41532546d05232163280495c1b32980) | Sample of ~15 FraxlendPair instances on Ethereum |
| `19_VariableInterestRate` | [`0x823e88…ded0`](https://etherscan.io/address/0x823e88f1607f6ffe7b39e06bd4519563e3dfded0) | Interest-rate model shared by FraxlendPairs |

The Peapods Fraxlend fork is a slight variant of Frax's stock Fraxlend (re-fee accounting, integration with Peapods oracles, Pod-shares-aware liquidation). All FraxlendPair instances on Ethereum compile with **Solidity 0.8.29** (vs the rest of V3 which is 0.8.28) — the fraxlend fork was compiled with the next minor release.

**Critical Sherlock findings in this layer:**
- M-2 Liquidations revert due to out-of-sync leftover collateral
- M-4 `addInterest` does not update interest accurately; rewards-time accounting drift
- M-16 Malicious lenders can inflate `UtilizationRate`
- M-17 Partial liquidators cause last liquidator to take a loss
- M-20 `LendingAssetVault` mis-updates `vaultUtilization` if CBR for a single pair decreases
- M-21 `LendingAssetVault` should call `_updateInterestAndMdInAllVaults()` in more entry points
- M-32 Malicious liquidator leaves dust collateral to avoid bad-debt handling

---

## Scope — Oracles

Per-Pod oracles are deployed by `aspTKNMinimalOracleFactory`. Underneath, each oracle composes from one or more single-asset price-feed wrappers.

| Slug | Address | Role |
|---|---|---|
| `20_aspTKNMinimalOracleFactory` | [`0x40b7b0…75e2`](https://etherscan.io/address/0x40b7b0efed725118f36a2e6c061d2b836bd275e2) | Deploys per-Pod aspTKN (auto-compounding sp-TKN) oracle |
| `21_UniswapV3SinglePriceOracle` | [`0xc3be78…8115`](https://etherscan.io/address/0xc3be7832734843410dcf1316b03d948f3d998115) | UniV3 TWAP-based single asset price |
| `22_DIAMultiFeedConverter` | [`0x8b55d5…aa18`](https://etherscan.io/address/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18) | DIA Oracle V2 multi-feed converter |

Per repo: `ChainlinkSinglePriceOracle.sol`, `CamelotV3SinglePriceOracle.sol`, `DIAOracleV2SinglePriceOracle.sol`, `HydrexV3SinglePriceOracle.sol`, plus the `spTKNMinimalOracle` and `aspTKNMinimalOracle` composers. Additional reserve adapters: `V2ReservesCamelot.sol`, `V2ReservesUniswap.sol`.

**Critical Sherlock findings in this layer:**
- H-5 `spTKNMinimalOracle._calculateSpTknPerBase()` mis-prices for podded paired LP tokens
- M-18 `spTKNMinimalOracle` double-counts debond fee → price too high
- M-19 `minAnswer` check misses massive price drops
- M-24 DIA oracle assumes all stablecoins = $1 (incorrect)
- M-25 `spTKNMinimalOracle._calculateSpTknPerBase()` doesn't return 0 to trigger fallback
- M-26 doesn't support advanced self-lending pods

---

## Scope — Adapters (DEX + Flash)

DEX adapters and flash-loan sources allow the LVF flow to swap and re-balance against external venues. Five DEX adapters and 12 flash sources in the repo:

| Slug | Address | Role |
|---|---|---|
| `23_BalancerFlashSource` | [`0xf514d3…b49eac`](https://etherscan.io/address/0xf514d35a0d82a54ad4e2e3a083c5381a39b49eac) | Flash-borrow from Balancer Vault |
| `24_PodFlashMintSource` | [`0x4c86a6…4350`](https://etherscan.io/address/0x4c86a67d0f29d6f23bcc9bd5bf4c917f87344350) | Flash-mint Pod tokens for rebalancing |

DEX adapters in source (one set per chain): `UniswapDexAdapter`, `AerodromeDexAdapter` (Base), `CamelotDexAdapter` (Arbitrum), `PancakeswapDexAdapter`, `ShadowDexAdapter` (Sonic). Flash sources: `BalancerFlashSource`, `EulerFlashSource`, `MoolahFlashSource`, `MorphoFlashSource`, `PancakeV3FlashSource`, `AerodromeV2FlashSource`, `UniswapV2FlashSource`, `UniswapV3FlashSource`, `UniswapV4FlashSource`, `PodFlashSource`, `PodFlashMintSource`, `FlashSourceBase`.

**Critical Sherlock findings in this layer:**
- M-12 hardcoded V3_POS_MGR address won't be the same on every chain
- M-23 `_swapV2()` may leave leftover tokens in multihops
- M-27 doesn't use correct oracle price as slippage for `pairedLpTKn → pTKN` swap
- M-30 `Zapper._swapV3Single()` has multiple integration issues with V3 swap

---

## Scope — Governance

Light governance surface compared to the LVF/lending stack:

- **PEAS token** (`01_PEAS_token`, [`0x02f928…f875`](https://etherscan.io/address/0x02f92800F57BCD74066F5709F1Daa1A4302Df875)) — 10M fixed supply, 0.7.6 era. Same address on every chain via LayerZero OFT.
- **VotingPool.sol** — stake PEAS for voting power. Not yet enumerated on-chain in this brief.
- **ConversionFactorPTKN.sol / ConversionFactorSPTKN.sol** — voting power derivation for pTKN / spTKN holders (a Pod LP position counts as governance weight proportional to underlying PEAS).
- **RewardsWhitelist.sol** — gated list of which tokens can flow as Pod rewards.

PEAS distribution per docs: 44% Uniswap V3 PEAS/DAI position (0xae750560…), 44% second PEAS/DAI position (different range), 12% team (vested). No public roadmap for a Governor / Snapshot / on-chain proposal system in V3.1+.

**Sherlock M-5** notes that "reward tokens could be locked in `VotingPool` contract" — an open-but-resolved governance-layer finding.

---

## Scope — Multi-Chain Deployments

The PEAS token is deployed at the **same address on every supported chain** (`0x02f92800f57bcd74066f5709f1daa1a4302df875`) via LayerZero OFT (lock/mint and burn/mint). The bridging happens via the [`peapodsfinance/oft`](https://github.com/peapodsfinance/oft) repo. Chains in scope:

| Chain | Chain ID | LVF live? | IndexManagerV3 | LeverageManager (proxy) |
|---|---:|---|---|---|
| Ethereum | 1 | ✅ | [`0x6eFFcF…666E`](https://etherscan.io/address/0x6eFFcF94993d6a6081204fc3C30473468Eb7666E) | [`0x4e6EF3…2D0B`](https://etherscan.io/address/0x4e6EF371C9CDDE8C3e6716AffEEBaD14C8c62D0B) |
| Arbitrum | 42161 | ✅ | [`0x64511c…4FD8`](https://arbiscan.io/address/0x64511ccE99ab01A6dD136207450eA81263b14FD8) | [`0x3f2257…2B0`](https://arbiscan.io/address/0x3f2257B6f1fd055aEe020027740f266127E8E2B0) |
| Base | 8453 | ✅ | [`0x556059…ec30`](https://basescan.org/address/0x556059e80CB0073D4A9547081Cf0f80cBB94ec30) | [`0x31E355…b82D`](https://basescan.org/address/0x31E35550b15B2DFd267Edfb39Dd9F3CD1c6ab82D) |
| Sonic | 146 | ✅ | [`0x9e054F…6060`](https://sonicscan.org/address/0x9e054F6C328d8E424a2354af726FDc88cB166060) | [`0x0C4B19…8b61`](https://sonicscan.org/address/0x0C4B19994F466ac4B6bA8F9B220d83beC6118b61) |
| Berachain | 80094 | ✅ | [`0xC9260c…2f01`](https://berascan.com/address/0xC9260cE495B5EeC77219Bf4faCCf27EeFD932f01) | [`0x0ff519…5a69`](https://berascan.com/address/0x0ff519EEEc6f1C362A76F87fef3B4a3997bF5a69) |
| Mode | 34443 | ❌ V2 only | (none) | (none) |

IndexManagerV2 at `0x0Bb39ba2…E6B` is present on all 6 chains via deterministic deployment, but only Ethereum / Arbitrum / Base / Mode actually have V2 pods created on them (Sonic and Berachain are V3-only).

**Source-fetch caveat for non-Etherscan-v2 chains.** Sonic (chain_id 146), Berachain (80094), and Mode (34443) are not in [Etherscan v2's `chainlist`](https://api.etherscan.io/v2/chainlist) for the free tier. The contracts at those addresses are verified on their chain-native explorers ([sonicscan.org](https://sonicscan.org), [berascan.com](https://berascan.com), [modescan.io](https://modescan.io)) but the gold-standard fetch script does not pull them. Bytecode equivalence with Ethereum / Arbitrum / Base impls is **presumed** but not asserted here.

---

## Scope — Not Peapods (v1-pipeline false positives)

The v1 manifest at [`manifest.json`](manifest.json) labels 28 contracts as Peapods. None are external-protocol false positives — they are all Peapods-deployed. The only flagged issue is **wrong-chain attribution**:

| Address | v1 chain | v1 label | Truth |
|---|---|---|---|
| `0x3c12e5d1f69b06faf31b80a044acd4aaf3cc5f98` | sonic | LeverageManager | **Wrong address.** DL adapter (authoritative) says LeverageManager on Sonic is `0x0C4B19994F466ac4B6bA8F9B220d83beC6118b61`. The address v1 labels here is some other Peapods contract or a stale reference. The actual LeverageManager `0x0c4b19994…b61` is also in v1's contract list but labeled "Unknown". |

So v1 has 0 unrelated-protocol FPs, but it does have a small chain × label mix-up.

---

## Audit Coverage

### Audit history (URL-verified on 2026-05-11)

| Date | Auditor | Filename / URL | Scope layer | HEAD |
|---|---|---|---|---|
| 2024-01 | yAudit | [`reports.yaudit.dev/reports/01-2024-Peapods/`](https://reports.yaudit.dev/reports/01-2024-Peapods/) | V1 core (Pods, StakingPoolToken, TokenRewards) | 308 → 200 |
| (n/a) | SourceHat | [`sourcehat.com/audits/PeapodsFinance/`](https://sourcehat.com/audits/PeapodsFinance/) | V1 core | listed by docs + DL |
| 2024-Q4 | yAudit | [`peapods_lvf_yAudit_report.pdf`](https://sherlock-files.ams3.digitaloceanspaces.com/additional_resources/peapods_lvf_yAudit_report.pdf) | LVF (pre-Sherlock) | 200, 2.15 MB |
| 2024-Q4 | Guardian Audits | [`peapods_lvf_Guardian_report.pdf`](https://sherlock-files.ams3.digitaloceanspaces.com/additional_resources/peapods_lvf_Guardian_report.pdf) | LVF (pre-Sherlock) | 200, 900 KB |
| 2024-Q4 | Pashov Audit Group | [`peapods_lvf_Pashov_report.pdf`](https://sherlock-files.ams3.digitaloceanspaces.com/additional_resources/peapods_lvf_Pashov_report.pdf) | LVF (pre-Sherlock) | 200, 6.04 MB |
| 2025-01-20 to 2025-02-17 | Sherlock contest #749 | [`audits.sherlock.xyz/contests/749`](https://audits.sherlock.xyz/contests/749) | LVF full codebase | 200, 41 valid findings (7H + 34M) |

**Distinct auditors (5):** yAudit (×2 — initial + LVF), SourceHat, Guardian Audits, Pashov, Sherlock (public contest, 84 auditors, lead judge `pkqs90`).

### Coverage by architecture layer

| Layer | Source files in repo | Most recent audit | Re-audit due risk |
|---|---:|---|---|
| WeightedIndex (Pod core) | 1 + factory + utils | Sherlock #749 (2025-02) | low — top finding rate; presumed mature post-fix |
| StakingPoolToken / TokenRewards | 2 | Sherlock #749 | low |
| AutoCompoundingPodLp + Factory | 3 | Sherlock #749 | **medium** — H-2 vault inflation finding closed but inflation patterns recur |
| LeverageManager + LVF stack | 6 | Sherlock #749 | medium — densest finding cluster |
| Lending: LendingAssetVault + Fraxlend fork | 2 + fraxlend/ subtree | Sherlock #749 | medium — 9 findings in this layer alone |
| Oracles (aspTKN/spTKN + adapters) | 11 | Sherlock #749 | **high** — 6 findings; new feeds (Hydrex, DIA multi-feed) added post-audit |
| DEX adapters | 5 | Sherlock #749 | medium — PancakeswapDexAdapter + ShadowDexAdapter added post-Sherlock |
| Flash sources | 12 | partial (Sherlock #749 covered 4 of 12) | **medium-high** — 8 of 12 not audited at this date |
| Governance (PEAS + VotingPool + RewardsWhitelist) | 3 | Sherlock #749 | low |
| CCIP / TokenBridge | 2 | **never audited** | **high** |
| PodUnwrapLocker | 1 | Sherlock #749 (H-1, was drainable) | low — fixed at commit `69b185856d…` |

### Gap analysis

- **CCIP / TokenBridge (2 contracts)** — `contracts/ccip/TokenBridge.sol` and `TokenRouter.sol` are present in the repo but not in Sherlock contest scope. These are the Chainlink CCIP bridge wrappers. **0 audits.**
- **Post-Sherlock additions** — The Sherlock scope at commit `964a6b30` (2025-01) covers 4 of the current 12 flash sources (Balancer, FlashSourceBase, PodFlashSource, UniswapV3). The 8 added later (Aerodrome, AerodromeV2, Euler, Moolah, Morpho, PancakeV3, UniswapV2, UniswapV4, PodFlashMint) have not been audited as named files, though the auditor patterns rhyme.
- **PancakeswapDexAdapter, ShadowDexAdapter** were added after the Sherlock scope. PancakeswapDexAdapter ships with the Sonic deployment; ShadowDexAdapter ships for Sonic's primary DEX.
- **Per-chain integration sets** (Camelot on Arbitrum, Aerodrome on Base, Shadow on Sonic, Kodiak/Pancake on Berachain) — the implementations were audited but their per-chain config (oracle wiring, paired-LP-token selection, flash-source pick) lives in per-chain deploy artifacts that are not separately audited.
- **The whole TWAP-utilities directory (7 files)** — `V3TwapAerodromeUtilities`, `V3TwapCamelotUtilities`, `V3TwapKimUtilities`, `V3TwapKodiakUtilities`, `V3TwapPancakeswapUtilities`, `V3TwapShadowUtilities`, `V3TwapUtilities` — appears post-Sherlock and is only partially in scope.

---

## Targeting Recommendation

For an audit allocation against Peapods, in priority order:

1. **CCIP / TokenBridge (highest priority for "audit gap").** Two contracts; zero audits to date; cross-chain message-passing infrastructure. The risk profile is asymmetric — cross-chain bridges have outsized catastrophic failure modes (cf. Wormhole, Nomad), and a Peapods CCIP path is small-scope but unmitigated by audit history.
2. **New flash sources + new DEX adapters added post-Sherlock.** 8+ new flash sources (Aerodrome, AerodromeV2, Euler, Moolah, Morpho, PancakeV3, UniV2, UniV4, PodFlashMint) plus PancakeswapDexAdapter and ShadowDexAdapter. Audit pattern from Sherlock #749 is well-rehearsed; per-source review should be efficient.
3. **Oracle layer.** 6 valid Sherlock findings; new feeds (Hydrex, DIA multi-feed) added post-audit; price-feed bugs are the #1 cause of LVF blowups in similar protocols (cf. Mango, Hashflow).
4. **Per-chain config review** (Camelot/Arbitrum, Aerodrome/Base, Shadow/Sonic, Kodiak/Pancake/Berachain). The implementations are audited but the per-chain wiring (which oracle pairs each PEAS pod uses, which flash source the LeverageManager calls, which DEX adapter the Zapper routes through) is unique per deployment. Configuration bugs do not require code bugs to be exploited.
5. **LendingAssetVault + Fraxlend fork tests for upgrade compatibility.** Frax's stock Fraxlend has continued evolving; Peapods' fork at 0.8.29 should be diffed against current Fraxlend to identify any divergence in liquidation, accounting, or interest-accrual logic.

The Pod core (WeightedIndex, IndexManager, StakingPoolToken, AutoCompoundingPodLp) is **not** the priority target. Six audits cover it; Sherlock turned up 41 findings, all marked Resolved; the implementations are now battle-tested across 153 deployed Pods. New audits targeting this layer would mostly replicate work already done.

---

## v1 Pipeline Errors

The v1 pipeline brief is a **stub**: the markdown at [brief.md](brief.md) reads only "Merged key alias of peapods. No dedicated brief markdown was available in exports/agentic_briefs_v2 for this alias key at generation time." This is an upstream alias-resolution defect: the project lives under both `peapods` and `peapods-finance` keys in v1's stage exports, the merge pass moved everything to `peapods-finance` but the brief-rendering pass looked under the wrong key and gave up.

The v1 manifest at [manifest.json](manifest.json) does exist with usable data, but with these deficiencies:

- **Contract count: 28 reported vs. 153 deployed Pods + 26 priority core + many satellites actual.** The pipeline captures the documented core factories (IndexManagerV2, IndexManagerV3, LeverageManager, PEAS) and 2 specific Pods on Ethereum (which it correctly tags `audit_coverage=TP`), but the other 151 Pods are absent. Root cause: pipeline does not call `IndexManager.allIndexes()` to enumerate factory-deployed instances.
- **Chains: 5 reported (1, 10, 56 [Optimism mislabeled as BSC?], 146, 8453, 34443, 42161) vs. 6 actual (1, 42161, 8453, 34443, 146, 80094).** v1 is **missing Berachain (80094)** which has been live since 2025-04-10.
- **Audits: 0 in `past_audits` array, 3 TP-tagged contracts.** The brief was never rendered, so no `past_audits` table exists. However, the upstream scope-matcher fired and tagged 3 contracts as TP (one V2 Pod, its StakingPoolToken, and one other V2 Pod) — meaning the scope match did connect, but the brief renderer can't surface the audit list because the alias key was unresolved. DL itself only knows about 1 audit URL (SourceHat); the other 5 audits live on the Peapods docs page and the Sherlock contest API, neither of which v1 ingests.
- **Wrong-chain label** on `0x3c12e5d1f69b06faf31b80a044acd4aaf3cc5f98` (labeled LeverageManager on Sonic; actual Sonic LeverageManager per DL adapter is `0x0c4b19994…b61`). See "Scope — Not Peapods" above.
- **Architecture detection: factories=none, proxies=none, integrations=none.** All three are wrong-type-of-wrong: there is a factory architecture (IndexManager V2/V3), there is a proxy architecture (LeverageManager is a transparent + beacon proxy on three chains), and the integration surface (5 DEX adapters × 6 chains + 12 flash sources) is the dominant audit-relevant attack surface.

The 28-contract v1 view also doesn't separate the **implementation→instance** distinction. v1's audit-coverage scoring would say "0 of 153 deployed Pods are covered" if it actually ran the per-Pod scope match — even though one audit of `WeightedIndex.sol` covers every Pod. The correct model is to score against the source-file scope of each audit, not against deployed addresses.

---

## Appendix

### Sources

- DeFiLlama protocol record: [`api.llama.fi/protocol/peapods-finance`](https://api.llama.fi/protocol/peapods-finance)
- DL adapter source: [`DefiLlama-Adapters/projects/peapods-finance/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/peapods-finance/index.js)
- Peapods docs: [`docs.peapods.finance`](https://docs.peapods.finance), specifically [`/links/contract-addresses`](https://docs.peapods.finance/links/contract-addresses), [`/links/technical-cas`](https://docs.peapods.finance/links/technical-cas), [`/links/audits`](https://docs.peapods.finance/links/audits)
- Peapods source repo: [`peapodsfinance/contracts`](https://github.com/peapodsfinance/contracts) — 478 .sol files at default branch `main` (pushed 2025-12-04)
- Peapods bridges: [`peapodsfinance/oft`](https://github.com/peapodsfinance/oft) (LayerZero OFT implementations)
- Peapods Fraxlend fork: [`peapodsfinance/fraxlend`](https://github.com/peapodsfinance/fraxlend) (pushed 2026-01-18)
- Sherlock contest 749: [`audits.sherlock.xyz/contests/749`](https://audits.sherlock.xyz/contests/749), API at [`mainnet-contest.sherlock.xyz/contests/749`](https://mainnet-contest.sherlock.xyz/contests/749)
- Sherlock audit repo: [`sherlock-audit/2025-01-peapods-finance`](https://github.com/sherlock-audit/2025-01-peapods-finance) — code-frozen snapshot at commit `964a6b30c8b3fab408b289ebb26835932086073f`
- Pre-Sherlock LVF audit PDFs (Sherlock-mirrored): [`sherlock-files.ams3.digitaloceanspaces.com/additional_resources/`](https://sherlock-files.ams3.digitaloceanspaces.com/additional_resources/) — peapods_lvf_yAudit_report.pdf (2.15 MB), peapods_lvf_Guardian_report.pdf (900 KB), peapods_lvf_Pashov_report.pdf (6.04 MB)
- Per-contract Etherscan verification: listed inline above; full source archive at [`contracts_gold_standard/`](contracts_gold_standard/) — 26 priority contracts, 473 source files, 2.02 MB total.
- Fetch script: [`docs/gold-standard/fetch_peapods_sources.py`](../../docs/gold-standard/fetch_peapods_sources.py).

### Caveats

- **TVL snapshot date is 2026-05-11**; values change daily. The DL endpoint was last polled at the time of brief generation; the `currentChainTvls` figures reflect that snapshot.
- **Multi-chain enumeration is shallow for Sonic, Berachain, and Mode.** Etherscan v2 free tier does not include those chains, so source verification stops at the chain-native explorer level. Pod address enumeration via `allIndexes()` was done against direct RPC endpoints ([`rpc.soniclabs.com`](https://rpc.soniclabs.com), [`rpc.berachain.com`](https://rpc.berachain.com), [`mainnet.mode.network`](https://mainnet.mode.network)) for Pod counts; per-Pod source verification was not done on those chains.
- **Per-Pod satellite contracts** (StakingPoolToken, AutoCompoundingPodLp, FraxlendPair, aspTKNMinimalOracle — one each per Pod) are **not enumerated**. With 153 deployed Pods × ~4 satellites = ~600 additional contracts that would be in scope for a fully-exhaustive inventory. They share bytecode with the audited implementations; enumeration would mostly add storage to the manifest rather than new audit surface.
- **Berachain chain_id assumed 80094.** Etherscan v2 doesn't list Berachain; the chain_id is taken from Berachain's official RPC (`rpc.berachain.com`) and chainlist.
- **LeverageManager proxy/beacon decoupling not fully verified.** Etherscan returns `Implementation: 0x4e1086…403c` for the LeverageManager proxy on Ethereum. The proxy is structured as TransparentProxy → UpgradeableBeacon → impl, but the implementation address is what matters for source audit; the beacon adds a hop but doesn't change the executed bytecode.
- **The `verified` / `selfLending` / `makePublic` flags on V3 Pods were all decoded as `False`** for the 87 enumerated V3 pods. The decoder uses a 5-tuple ABI matching the DL adapter; the all-False result is plausible (none of the user-created pods have been team-verified or marked self-lending or public) but worth a sanity check against the dApp UI.
- **Audit ↔ contract mapping is reconstructed from filenames + Sherlock README scope list + per-PDF inspection, not operator-confirmed.** The `auditors` field on each manifest contract is the auditor list inferred from the architecture layer.
- **DL audit count vs. ground truth.** DL reports `audits: 2` and one `audit_links` URL (SourceHat). Ground truth is 6 audits. v1 pipeline ingesting DL alone tops out at 1 audit by construction.
- **One free-tier API limitation surfaced**: Etherscan v2's `contract/getsourcecode` returns "Free API access is not supported for this chain" for chains 146 (Sonic), 80094 (Berachain), 34443 (Mode), and 534352 (Scroll). For those chains source verification falls back to manual chain-explorer review.

### Generation metadata

- **Generated:** 2026-05-11
- **Method:** manual research, no pipeline involvement
- **Researcher:** Claude Opus 4.7 (1M context)
- **Etherscan API key:** read from `$ETHERSCAN_API_KEY` env var (not logged)
- **Source archive:** 26 priority contracts at `contracts_gold_standard/`, 473 source files, 2.02 MB total
- **Pod enumeration timestamp:** 2026-05-11 17:35 UTC (RPC eth_call snapshot)
- **DL snapshot:** 2026-05-11 via [`api.llama.fi/protocol/peapods-finance`](https://api.llama.fi/protocol/peapods-finance), TVL $2,003,228
