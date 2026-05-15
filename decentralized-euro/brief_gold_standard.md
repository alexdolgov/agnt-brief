# Agentic Audit Brief: Decentralized Euro (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON (`api.llama.fi/protocol/decentralized-euro`), the canonical `@deuro/eurocoin` npm package (the project's own deployed-address registry at `exports/address.config.ts`), the dEURO smart-contracts source (`github.com/d-EURO/smartContracts`), the d-EURO landing page audits directory (`github.com/d-EURO/landingPage/audits`), Etherscan v2 per-contract verification across the three chains the protocol actually deploys on (Ethereum, Optimism, Base), and on-chain `eth_call` of `totalSupply`/`balanceOf` against the canonical contracts. dEURO is **a friendly fork of Frankencoin-ZCHF** (per the npm package README), so the audit history is largely *inherited* and the gold standard treats it that way. The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context on the comparison.

## Project Overview

- **Project:** Decentralized Euro (DefiLlama slug `decentralized-euro`, project token symbol `dEURO`)
- **Website:** https://deuro.com
- **App:** https://app.deuro.com
- **Developer docs:** https://docs.deuro.com (Mintlify-hosted, generated from `github.com/d-EURO/documentation`)
- **Public source:** https://github.com/d-EURO/smartContracts (TypeScript+Solidity, MIT, last push 2026-04-26, 19MB repo). Compiled artifacts are also distributed as the npm package [`@deuro/eurocoin`](https://www.npmjs.com/package/@deuro/eurocoin) (current `2.1.0`); the npm `exports/address.config.ts` is **the authoritative canonical-address registry** and is the source of truth for this brief.
- **Provenance:** dEURO is a **"friendly fork"** of [Frankencoin-ZCHF](https://github.com/Frankencoin-ZCHF/FrankenCoin) at commit [`a2ce625c`](https://github.com/Frankencoin-ZCHF/FrankenCoin/commit/a2ce625c554bbd3465a31e7d8b7360a054339dd2) (2024-12-02). Renamings: `ZCHF → dEURO`, `Frankencoin → DecentralizedEURO`, `FPS → nDEPS` (native Decentralized Euro Protocol Share), `WFPS → DEPS`. Solidity-level deltas are enumerated in the upstream README (see "Code basis and changes after the fork").
- **DefiLlama category:** `CDP`. DL `forkedFromIds: ["3790"]` (Frankencoin). DL adapter at [`projects/dEURO/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/dEURO/index.js).
- **Tokens:** dEURO (stablecoin, ERC-20+ERC-3009), nDEPS (Equity / governance share, ERC-20), DEPS (wrapped nDEPS, ERC-20). BridgedDecentralizedEURO + BridgedDEPS on the L2s.
- **Chains:** **3 chains where dEURO contracts are actually deployed** — Ethereum (mainchain, all logic), Optimism (`BridgedDecentralizedEURO` L2 wrapper only), Base (`BridgedDecentralizedEURO` + `BridgedDEPS` L2 wrappers only). DL counts only Ethereum (`chains: ["Ethereum"]`); the OP-stack L2 wrappers are not separately TVL-attributed because all bridged dEURO is custodied on L1 via the OP standard bridge. **dEURO is NOT deployed on Polygon or Arbitrum** — v1 brief misattributions to those chains are explained in "Scope — Not dEURO" below.
- **Total TVL:** **$2.12M** (DL `tvl[-1]`, snapshot 2026-05-15T10:11:47Z). TVL methodology per DL adapter: "TVL consists of collateral tokens in the positions and source stablecoins in the bridge contracts." This is real economic exposure custodied inside dEURO contracts.
- **dEURO outstanding supply:** **1,814,579.55 dEURO** (`DecentralizedEURO.totalSupply()`, 2026-05-15). About 81% sits in the two Savings layers — 917K dEURO in V3 Savings, 549K dEURO in V2 SavingsGateway, plus 151K dEURO in the Equity reserve.
- **Lifecycle:** **active, freshly migrated to V3.** V3 mainnet deployment landed 2026-03-23 (block 24721024–24721298). Most recent code change (StablecoinBridgeV2 implementation) merged 2026-04-26; that contract is **not yet deployed**. The protocol is approximately 14 months old (mainnet launch 2025-03-20, block 22088283) and on a clearly active development cadence.
- **Tier:** **Tier 2 — small-but-active stablecoin with deep audit history.** The audit-evaluable surface is small (24 dEURO-deployed contracts on Ethereum + 2 on Optimism + 2 on Base), the codebase is non-upgradable (no admin/timelock attack surface), and audit coverage is unusually heavy for the TVL (5 inherited Frankencoin audits + 2 dEURO-specific audits + 1 V3 internal audit). The interesting audit-evaluable surface is concentrated in the V3 deltas (only the V3 internal audit covers those) and the StablecoinBridge family (one bridge per integrated EUR stablecoin, 9 deployed).

> Important framing. dEURO inherits the Frankencoin design: **non-upgradable contracts, on-chain governance via nDEPS share-weighted voting** (no multisig, no timelock, no admin keys). Minter additions/removals go through a public-veto process where nDEPS holders can cast vetoes during an application period. The `StablecoinBridge.emergencyStop()` function requires a 10% vote-weight quorum, callable by any address that controls enough delegated votes. This means: (1) **the audit attack surface is purely Solidity, not governance** — there is no ops-side compromise path through a multisig; (2) **the nDEPS distribution is itself the governance vector** — the audit team should examine the Equity contract's vote delegation and the `votesDelegated` math; (3) **V3 is the active production path** — V2 contracts remain on-chain but the V3 migration script (`scripts/deployment/deployV3Migration.ts`) is what the canonical address registry now points at as the "current" `mintingHub` / `savings` / `roller` / `positionFactory` / `savingsVault`. V2 equivalents are kept for backwards compatibility (existing positions continue to be served).

---

## TVL Methodology Note

The DL TVL adapter for dEURO (committed to `DefiLlama-Adapters/projects/dEURO/index.js`) is small and unambiguous, but worth pinning here for audit-targeting context:

1. **Read all `PositionOpened` events** from `MintingHubGateway` (`0x8B3c41…3604618`) since `fromBlock: 22088283` (dEURO mainnet launch).
2. **For each event,** record `(collateral, position)` and call `sumTokens2` to read the collateral ERC-20's `balanceOf(position)`. This captures the collateral locked across all opened positions.
3. **Re-price WFPS/DEPS held by positions** at the nDEPS price (since position collateral can be DEPS-wrapped nDEPS, which has no CoinGecko price; the adapter substitutes nDEPS price via `Equity.price()`).
4. **Add bridge-held EUR stablecoins**: every `StablecoinBridge` holds a balance of its source EUR stablecoin (EURT, EURS, VEUR, EURC, EURR, EUROP, EURI, EURE, EURA), and that balance is the dEURO collateralization for the bridged dEURO.

The adapter contains **a copy-paste residue from Frankencoin** — `MAINNET.WFPS`, `MAINNET.FPS`, `MAINNET.ZCHF` constants are Frankencoin-ZCHF addresses (`0x5052…0B182`, `0x1bA2…41B2`, `0xB58E…21cB`), not dEURO addresses. They are used only in the WFPS-to-ZCHF reprice fallback which is a no-op for dEURO positions (positions don't hold Frankencoin's WFPS). The result is correct but the code carries dead references. Pipeline implementations should treat the DL TVL as accurate and not chase the dead constants.

**On-chain TVL decomposition (queried 2026-05-15 via `eth_call`):**

| Asset class | Contract | On-chain value | Note |
|---|---|---:|---|
| dEURO outstanding supply | `DecentralizedEURO.totalSupply()` | **1,814,579.55 dEURO** | The liability side. |
| Equity (nDEPS) outstanding | `Equity.totalSupply()` | **12,636,641.96 nDEPS** | Governance/equity share supply. |
| DEPS (wrapped nDEPS) outstanding | `DEPSWrapper.totalSupply()` | **520,586.39 DEPS** | Wrapped subset of nDEPS. |
| dEURO sitting in V3 Savings | `dEURO.balanceOf(savings)` | **917,379.14 dEURO** | The V3 savings module. |
| dEURO sitting in V2 SavingsGateway | `dEURO.balanceOf(savingsGateway)` | **548,595.03 dEURO** | The pre-V3 savings module — still holds funds. |
| dEURO held in Equity reserve | `dEURO.balanceOf(equity)` | **151,051.10 dEURO** | The protocol reserve underpinning loss-coverage and profit-distribution. |
| EURC held by `bridgeEURC` | `EURC.balanceOf(0xB4ff…2fd1)` | **439,602.71 EURC** (~€440K) | Dominant bridge balance. |
| Other 8 bridges | various | mostly ≈ 0 | Bridges are pre-positioned for future EUR stablecoin onboarding; not yet utilized. |

The audit-evaluable surface is the full Ethereum mainchain contract set + the 4 L2 bridged-token contracts. There is no "out-of-scope custody" caveat the way Equilibria has with Pendle — dEURO holds all its own collateral inside its own contracts.

---

## Lifecycle and Recent Activity

**Status: active, V3 migration just completed, V2-style bridge upgrade in flight.**

Deployment-timeline verified via `getcontractcreation` on Etherscan v2 (block + timestamp evidence in [`docs/gold-standard/decentralized-euro_verification_ledger.md`](../../docs/gold-standard/decentralized-euro_verification_ledger.md)):

| Date | Block | Event | Source |
|---|---|---|---|
| 2024-12-02 | — | Frankencoin upstream commit `a2ce625c` (the fork base) | Frankencoin-ZCHF repo |
| 2025-03-20 | 22088283 | **dEURO mainnet launch.** 9 V2 contracts deployed in a single bundle by deployer `0x01ae4c…86d7`: `DecentralizedEURO`, `Equity`, `DEPSwrapper`, `FrontendGateway`, `SavingsGateway`, `MintingHubGateway`, `PositionFactoryV2`, `RollerV2`, `bridgeEURT` | Etherscan |
| 2025-04-23 | 22327501–22327631 | Three bridges added: `bridgeEUROP`, `bridgeEURR`, `bridgeEURI` (deployer `0x695490…62b9`) | Etherscan |
| 2025-07-17 | 22939705 | `bridgeEURA` added (deployer `0x3b900b…36f6`) | Etherscan |
| 2025-09-20 | 23404702 | `bridgeEURC` added (deployer `0x7cd8c2…8727`) — this bridge is the largest by held EUR balance | Etherscan |
| 2025-10-02 | 23489283 | `CoinLendingGateway` added (deployer `0x3b900b…36f6`) | Etherscan |
| 2025-10-06 | 23519719 | `SavingsVaultV2` added (deployer `0x3b900b…36f6`) | Etherscan |
| 2025-11-20 | 23836394–23836578 | Three bridges added: `bridgeEURS`, `bridgeEURE`, `bridgeVEUR` (deployer `0x718e50…21c4`) | Etherscan |
| **2026-03-23** | **24721024–24721298** | **V3 mainnet migration.** 5 V3 contracts deployed in a single batch by deployer `0xdee786…6b45`: `PositionFactoryV3`, `RollerV3`, `Savings`, `MintingHub`, `SavingsVaultV3` | Etherscan; smartContracts PR [#211](https://github.com/d-EURO/smartContracts/pull/211) |
| 2026-04-26 | — | **StablecoinBridgeV2 implementation merged** to `develop` (PR [#168](https://github.com/d-EURO/smartContracts/pull/168)) — adds fee logic and updated Solidity version. **NOT YET DEPLOYED to mainnet** as of 2026-05-15 (existing 9 bridges still use the V1 `StablecoinBridge`). | smartContracts commit `10bd18a` |

The protocol launched on **2025-03-20**, has been continuously developed for **~14 months**, and is **on its 3rd major release** (V1 inherited from Frankencoin, V2 mainnet, V3 just completed). The five-deployer pattern (one initial deployer plus four subsequent ones for bridge expansion) reflects the operational practice that **each subsequent bridge or new module is added by a fresh deployer EOA**, which keeps each deployment's nonce-history clean but is invisible to a deployer-clustering algorithm.

The V1 brief reports lifecycle = `default_fallback` and "latest deployment unknown" — the deployment timeline above is fully derivable from Etherscan's `getcontractcreation` endpoint, the pipeline simply doesn't query it.

---

## Scope — Core Logic

Contracts that hold user funds, mint/burn protocol tokens, or implement dEURO's primary economic functions. **All Ethereum-deployed dEURO contracts are non-upgradable** (no proxy, immutable bytecode); the V3 migration creates a *new* set of contracts and a new minter is registered with the dEURO token via the `suggestMinter` veto-able governance flow.

### Ethereum (chain_id 1) — V3 active set (current primary surface)

| Contract | Address | Compiler | Audit status |
|---|---|---|---|
| **DecentralizedEURO** (ERC-20 dEURO token; non-upgradable, governs minter veto/profit) | [`0xbA3f535bbCcCcA2A154b573Ca6c5A49BAAE0a3ea`](https://etherscan.io/address/0xbA3f535bbCcCcA2A154b573Ca6c5A49BAAE0a3ea) | 0.8.26 | inherited Frankencoin V2 audits (ChainSecurity 2024, Decurity 2024) + dEURO-specific ChainSecurity audit |
| **Equity** (nDEPS share token, voting + reserve + buy/sell against dEURO surplus) | [`0xc71104001A3CCDA1BEf1177d765831Bd1bfE8eE6`](https://etherscan.io/address/0xc71104001A3CCDA1BEf1177d765831Bd1bfE8eE6) | 0.8.26 | inherited Frankencoin V2 audits + dEURO-specific |
| **DEPSWrapper** (wrapped nDEPS — ERC-20 wrapper of `Equity` shares) | [`0x103747924E74708139a9400e4Ab4BEA79FFFA380`](https://etherscan.io/address/0x103747924E74708139a9400e4Ab4BEA79FFFA380) | 0.8.26 | inherited |
| **Savings** (V3 dEURO-savings module; Leadrate-integrated, no lockup) | [`0x760233b90e45d186A9A98E911B115F7F4B90d3D9`](https://etherscan.io/address/0x760233b90e45d186A9A98E911B115F7F4B90d3D9) | 0.8.26 | V3 internal audit (Mar 2026); no external audit yet |
| **MintingHub** (V3 collateralized-mint plugin with native ETH/WETH support + Leadrate integration) | [`0x66AcC54a0C64255137b8993CB4972B0901684f7B`](https://etherscan.io/address/0x66AcC54a0C64255137b8993CB4972B0901684f7B) | 0.8.26 | V3 internal audit only |
| **PositionFactory** (V3 — clones positions for the V3 MintingHub) | [`0x3a3985a96b1B51E6d914bc7C9e89fD6Ba6dEfE81`](https://etherscan.io/address/0x3a3985a96b1B51E6d914bc7C9e89fD6Ba6dEfE81) | 0.8.26 | V3 internal audit only |
| **PositionRoller** (V3 — rolls expiring positions into new ones for free, used to reprice on leadrate change) | [`0x5C22d5b752b2121faE7F6f0069252B03B2F7c5CD`](https://etherscan.io/address/0x5C22d5b752b2121faE7F6f0069252B03B2F7c5CD) | 0.8.26 | V3 internal audit only |
| **SavingsVaultDEURO** (V3 ERC-4626 vault wrapper for the new Savings module) | [`0x75Beb37A3C86eE4c38931E2a9319E078da612979`](https://etherscan.io/address/0x75Beb37A3C86eE4c38931E2a9319E078da612979) | 0.8.26 | V3 internal audit only |
| **FrontendGateway** (referral/rewards layer on top of the deposit & redeem paths) | [`0x5c49C00f897bD970d964BFB8c3065ae65a180994`](https://etherscan.io/address/0x5c49C00f897bD970d964BFB8c3065ae65a180994) | 0.8.26 | dEURO-specific (new vs Frankencoin) |
| **CoinLendingGateway** (V2 lending module; integrates with bridges to allow EUR stablecoin → dEURO route through positions) | [`0x1DA37D613FB590eeD37520b72e9c6F0F6eee89D2`](https://etherscan.io/address/0x1DA37D613FB590eeD37520b72e9c6F0F6eee89D2) | 0.8.26 | dEURO-specific; not in any external audit |

### Ethereum (chain_id 1) — V2 retained set (legacy, still on-chain)

| Contract | Address | Compiler | Audit status | Note |
|---|---|---|---|---|
| MintingHubGateway (V2 minting hub + FrontendGateway reward bridge) | [`0x8B3c41c649B9c7085C171CbB82337889b3604618`](https://etherscan.io/address/0x8B3c41c649B9c7085C171CbB82337889b3604618) | 0.8.26 | inherited + dEURO-specific | Still emits `PositionOpened` events used by DL TVL adapter; legacy positions still served. |
| SavingsGateway (V2 savings module) | [`0x073493d73258C4BEb6542e8dd3e1b2891C972303`](https://etherscan.io/address/0x073493d73258C4BEb6542e8dd3e1b2891C972303) | 0.8.26 | dEURO-specific | Holds 549K dEURO. |
| PositionFactoryV2 | [`0x167144d66AC1D02EAAFCa3649ef3305ea31Ee5A8`](https://etherscan.io/address/0x167144d66AC1D02EAAFCa3649ef3305ea31Ee5A8) | 0.8.26 | inherited | Replaced by V3 PositionFactory. |
| PositionRollerV2 | [`0x4CE0AB2FC21Bd27a47A64F594Fdf7654Ea57Dc79`](https://etherscan.io/address/0x4CE0AB2FC21Bd27a47A64F594Fdf7654Ea57Dc79) | 0.8.26 | inherited | Replaced by V3 PositionRoller. |
| SavingsVaultV2 | [`0x1e9f008B1C538bE32F190516735bF1C634B4FA40`](https://etherscan.io/address/0x1e9f008B1C538bE32F190516735bF1C634B4FA40) | 0.8.26 | dEURO-specific | Replaced by V3 SavingsVaultDEURO. |

V2 contracts are no longer canonical for new positions but **continue to hold legacy state and balances** — they cannot be deprecated without migrating user positions out. An audit team scoping the production surface should expect to scope both V2 and V3 minting+savings+roller until all V2 positions close out.

### Optimism (chain_id 10)

| Contract | Address | Source | Note |
|---|---|---|---|
| **BridgedDecentralizedEURO** (OP-stack `OptimismMintableERC20`-compatible L2 wrapper of L1 dEURO) | [`0x1B5F7fA46ED0F487F049C42f374cA4827d65A264`](https://optimistic.etherscan.io/address/0x1B5F7fA46ED0F487F049C42f374cA4827d65A264) | dEURO `contracts/BridgedToken.sol` | The L2 bridge is the OP-stack standard predeploy `0x4200…0010`; the L2 token at this address is the OP-deterministic counterpart of `dEURO@0xbA3f53` via the OP `StandardBridge`. |

### Base (chain_id 8453)

| Contract | Address | Source | Note |
|---|---|---|---|
| **BridgedDecentralizedEURO** (OP-stack L2 wrapper of L1 dEURO) | [`0x1B5F7fA46ED0F487F049C42f374cA4827d65A264`](https://basescan.org/address/0x1B5F7fA46ED0F487F049C42f374cA4827d65A264) | dEURO `contracts/BridgedToken.sol` | Same address as Optimism — both are OP-stack chains using the same OP `StandardBridge` predeploy, so the CREATE2 address resolves to the same L2 token slot on both chains. |
| **BridgedDEPS** (OP-stack L2 wrapper of L1 DEPS) | [`0x5F674bF6d559229bDd29D642d2e0978f1E282722`](https://basescan.org/address/0x5F674bF6d559229bDd29D642d2e0978f1E282722) | dEURO `contracts/BridgedToken.sol` | Only deployed on Base (not Optimism). |

The L2 deployment surface is intentionally minimal: only the user-facing tokens are bridged. All position/savings/minting logic runs on Ethereum mainchain; an L2 user wishing to mint or redeem must bridge back to mainchain first.

---

## Scope — Stablecoin Bridge Family (Integration Surface)

dEURO mints itself in two ways: (1) collateralized positions in the MintingHub, and (2) 1:1 swap from a trusted EUR stablecoin via a `StablecoinBridge` instance. There is **one bridge per accepted EUR stablecoin**, and each bridge has a per-bridge mint `limit` (per the `stablecoinBridgeConfig.ts`, the new bridges have a `100_000` dEURO limit and `26` weeks `horizon` after which the bridge expires). The bridge can also be `emergencyStop()`-ped by anyone controlling 10% of nDEPS voting weight, in case the source stablecoin depegs.

| Bridge | Address | Source EUR stablecoin (L1) | Notes |
|---|---|---|---|
| bridgeEURT (Tether EUR) | [`0x2353D16869F717BFCD22DaBc0ADbf4Dca62C609f`](https://etherscan.io/address/0x2353D16869F717BFCD22DaBc0ADbf4Dca62C609f) | Tether `EURT` `0xC581b7…E491` (admin-proxied) | Deployed 2025-03-20 alongside core. |
| bridgeEUROP (Schuman EUROP) | [`0x3EF3d03EFCc1338d6210946f8cF5Fb1a8b630341`](https://etherscan.io/address/0x3EF3d03EFCc1338d6210946f8cF5Fb1a8b630341) | Schuman `EUROP` `0x888883…5E51` (ERC1967 proxy) | Deployed 2025-04-23. |
| bridgeEURR (Hadron EURR) | [`0x20B0a153fF16c7B1e962FD3D3352A00cf019f1a7`](https://etherscan.io/address/0x20B0a153fF16c7B1e962FD3D3352A00cf019f1a7) | Hadron `EURR` `0x50753c…e408` (TransparentUpgradeableProxy) | Deployed 2025-04-23. |
| bridgeEURI (Banking Circle EURI) | [`0xb66A40934a996373fA7602de9820C6bf3e8c9afE`](https://etherscan.io/address/0xb66A40934a996373fA7602de9820C6bf3e8c9afE) | Banking Circle `EURI` `0x9d1A7A…bae7` (TransparentUpgradeableProxy) | Deployed 2025-04-23. |
| bridgeEURA (Angle agEUR/EURA) | [`0x05620F4bB92246b4e067EBC0B6f5c7FF6B771702`](https://etherscan.io/address/0x05620F4bB92246b4e067EBC0B6f5c7FF6B771702) | Angle `EURA` `0x1a7e4e…bce8` (Angle's own contract) | Deployed 2025-07-17. |
| bridgeEURC (Circle EURC) | [`0xB4fF7412f08C22d7381885e8BdA9EE9825092fd1`](https://etherscan.io/address/0xB4fF7412f08C22d7381885e8BdA9EE9825092fd1) | Circle `EURC` `0x1aBaEA…C33c` (Circle's own contract) | Deployed 2025-09-20. **Largest bridge by held balance — 439,602.71 EURC.** |
| bridgeEURS (Stasis EURS) | [`0x73f38ca06b27eaefb1612d062d885f58924f5897`](https://etherscan.io/address/0x73f38ca06b27eaefb1612d062d885f58924f5897) | Stasis `EURS` `0xdb25f2…7ad8` (EURS-style proxy) | Deployed 2025-11-20. |
| bridgeEURE (Monerium EURe) | [`0x4dfd460d54854087af195906a2f260aa483a13b1`](https://etherscan.io/address/0x4dfd460d54854087af195906a2f260aa483a13b1) | Monerium `EURE` `0x3231Cb…273f` (Monerium's contract) | Deployed 2025-11-20. |
| bridgeVEUR (VNX EUR) | [`0x76d8f514554a4a8e5d6103875f2dd7a67543692b`](https://etherscan.io/address/0x76d8f514554a4a8e5d6103875f2dd7a67543692b) | VNX `VEUR` `0x6ba75d…b5d3` (TransparentUpgradeableProxy) | Deployed 2025-11-20. **This is the contract the v1 brief labels "unnamed unknown" — but it is verified on Etherscan as `StablecoinBridge` and is the canonical bridgeVEUR per the `@deuro/eurocoin` registry.** |

A 10th bridge with a `StablecoinBridgeV2` implementation has been merged to `develop` but not deployed (PR [#168](https://github.com/d-EURO/smartContracts/pull/168), commit `10bd18a` from 2026-04-26). Each deployed bridge currently uses the V1 `StablecoinBridge` source.

---

## Scope — Cross-Chain Architecture

dEURO's cross-chain footprint is intentionally small:

1. **OP-stack standard bridge.** The bridging logic delegates entirely to the L2 standard bridge predeploy `0x4200000000000000000000000000000000000010` on both Optimism and Base. dEURO's only L2 code is the `BridgedToken` ERC-20 wrapper (`contracts/BridgedToken.sol` in the smartContracts repo), which is itself a thin subclass of OpenZeppelin's `ERC20Permit` + ERC-3009 mixin + the `IOptimismMintableERC20` interface. The wrapper exposes `mint(to, amt) onlyBridge` and `burn(from, amt) onlyBridge`, so the entire L2 supply is gated by the OP `StandardBridge`.
2. **No native cross-chain messaging.** Unlike Equilibria's `EqbMsgSendEndpoint`, dEURO does not run its own cross-chain message layer. All consequential state lives on Ethereum; the L2 tokens are pure value-mirroring wrappers.
3. **No LayerZero / Wormhole / Axelar integration.** The `bridgingConfig.ts` only enumerates the OP-stack `StandardBridge` for Optimism and Base.

Cross-chain attack surface for an audit:
- **Burn-mint reconciliation.** L2 `BridgedToken` mint/burn must match L1 escrow exactly; this is enforced by the upstream OP `StandardBridge` audit, not by dEURO's own code.
- **ERC-3009 transferWithAuthorization.** Both L1 dEURO and L2 BridgedDecentralizedEURO support ERC-3009, and the EIP-712 domain is `name="DecentralizedEURO"` (L1) vs `name="Decentralized EURO"` (L2 — note the space) per the on-chain inputs to `contracts/BridgedToken.sol`. Any signature relay tooling must handle the chain-specific domain correctly.

---

## Scope — Operational Periphery

**There is no traditional operational periphery (no multisig, no timelock, no ProxyAdmin).** dEURO inherits Frankencoin's "no admin keys" design:

- **No multisig.** All on-chain admin actions either go through nDEPS-share-weighted voting (minter veto, emergency bridge stop) or are entirely public-permissionless.
- **No timelock.** New minters are subject to a `MIN_APPLICATION_PERIOD` (default 10 days, configurable per-proposal) during which any qualified nDEPS holder can call `denyMinter(...)`. There is no separate `TimelockController` contract.
- **No ProxyAdmin.** All canonical dEURO contracts are non-upgradable (no proxy in front of any of them). Verified via `Proxy: 0` on Etherscan's `getsourcecode` for every contract in the canonical registry.
- **No CRV/Frax-style emissions controller.** nDEPS is bought/sold against the Equity reserve via a bonding-curve formula (`Equity.calculateShares` / `calculatePrice`), not minted by an emissions schedule.

The closest thing to "operational periphery" is the **deployer EOAs**:

| Role | EOA | Deploys |
|---|---|---|
| Initial deployer | [`0x01ae4c18c2677f97bab536c48d6c36858f5c86d7`](https://etherscan.io/address/0x01ae4c18c2677f97bab536c48d6c36858f5c86d7) | 9 V2 core contracts at mainnet launch 2025-03-20 |
| Bridge-batch deployer (Apr 2025) | `0x695490eff37d998d2fa16c5db57322e9825c62b9` | bridgeEUROP, bridgeEURR, bridgeEURI |
| Bridge-batch deployer (Jul/Oct 2025) | `0x3b900beaeb7df0919515a229d4dfbe29c19a36f6` | bridgeEURA, CoinLendingGateway, SavingsVaultV2 |
| Bridge deployer (Sep 2025) | `0x7cd8c2d78f2f1212f4ca068732f98439655a8727` | bridgeEURC |
| Bridge-batch deployer (Nov 2025) | `0x718e50a0ec9047084d968e8bedb0f96101c621c4` | bridgeEURS, bridgeEURE, bridgeVEUR |
| **V3 migration deployer (Mar 2026)** | `0xdee7865bcf766009a3d3b92b782029d1f9626b45` | PositionFactoryV3, RollerV3, Savings, MintingHubV3, SavingsVaultV3 |

These EOAs have *no on-chain power post-deployment* — once a contract is deployed by an EOA, that EOA has no privileged role over the contract (no `owner`, no `admin`). The deployers exist only as historical creators. The V1 brief's claim that "Upgrade authority concentrates in 4 distinct deployer addresses" is structurally misleading: dEURO has no upgrade authority at all, and the four addresses listed in v1 (`0x463f64`, `0x587342`, `0x7b0c15`, `0xe39978`) are deployers of *external* EUR stablecoin contracts (e.g., `0x463f64…162f` deployed Polygon's `UChildERC20Proxy` for some EUR token), not dEURO contracts.

---

## Scope — Proxy and Upgrade Architecture

**Zero proxies in dEURO's own contract set.** Every contract in the canonical `@deuro/eurocoin/exports/address.config.ts` registry is a non-proxy, single-implementation deployment. This is a deliberate Frankencoin-inherited design choice.

The "6 proxies on Ethereum + Polygon" the V1 brief reports are entirely **external EUR-stablecoin proxies that dEURO bridges accept as source tokens**:

| Address | Proxy type | What it actually is |
|---|---|---|
| `0xc581b735…e491` | AdminUpgradeabilityProxy → TetherToken impl | **Tether's EUR token (EURT)** — not dEURO |
| `0xdb25f211…7ad8` | EURS-style proxy → EURSToken impl | **Stasis EURS** — not dEURO |
| `0x6ba75d64…b5d3` | TransparentUpgradeableProxy → VNXCToken impl | **VNX EUR (VEUR)** — not dEURO |
| `0x888883b5…5E51` | ERC1967Proxy → EUROPToken impl | **Schuman EUROP** — not dEURO |
| `0x50753Cfa…e408` | TransparentUpgradeableProxy → HadronToken impl | **Hadron EURR** — not dEURO |
| `0x9d1A7A31…bae7` | TransparentUpgradeableProxy → (Banking Circle impl) | **Banking Circle EURI** — not dEURO |
| `0xc2ff25dd…4e47` (Polygon) | UChildERC20Proxy → UChildERC20 | **Polygon-PoS bridged version of an external EUR token** — not dEURO |

The pipeline likely walked proxy/balance relationships from dEURO bridges to their source-EUR-stablecoin proxies and conflated them. The audit-implication of this confusion is non-trivial: a downstream audit-scoping agent that uses the V1 brief would request audit scope for ~6 external-issuer stablecoin contracts dEURO has no ownership of, which would waste the audit team's time.

---

## Scope — Not dEURO (V1 false positives)

A row-by-row enumeration of every V1 brief attribution that should be excluded from dEURO audit scope:

| V1 attribution | Address | Verdict | Reason |
|---|---|---|---|
| Ethereum: `TetherToken` `0xe6a2c1…47a1` (v1: "token unmatched") | — | **NOT dEURO** | Tether's EURT contract implementation (deployer is Tether's address `0x463f64…162f` per Polygon-side records — Tether is the issuer). Held by bridgeEURT as source collateral. |
| Ethereum: `AdminUpgradeabilityProxy` `0xc581b7…e491` (v1: "proxy") | — | **NOT dEURO** | EURT proxy front for `TetherToken` impl above. Tether's own contract. |
| Ethereum: `EURSToken` `0x25d772…04ac` (v1: "token unmatched") | — | **NOT dEURO** | Stasis EURS implementation. |
| Ethereum: `EURSToken` `0xdb25f2…7ad8` (v1: "token unmatched") | — | **NOT dEURO** | Stasis EURS proxy (the actual user-facing EURS token). |
| Ethereum: `VNXCToken` `0xd1d719…81fc` (v1: "NO_SCOPE_ROW") | — | **NOT dEURO** | VNX VEUR implementation. |
| Ethereum: `TransparentUpgradeableProxy` `0x6ba75d…b5d3` (v1: "proxy") | — | **NOT dEURO** | VEUR proxy front for `VNXCToken` impl above. |
| Ethereum: `EUROPToken` `0xfbdaf9…ff43` (v1: "token unmatched") | — | **NOT dEURO** | Schuman EUROP implementation. |
| Ethereum: `ERC1967Proxy` `0x888883…5e51` (v1: "proxy") | — | **NOT dEURO** | EUROP proxy front for `EUROPToken` impl above. |
| Ethereum: `HadronToken` `0x8b98bc…4d0e` (v1: "token unmatched") | — | **NOT dEURO** | Hadron EURR implementation. |
| Ethereum: `TransparentUpgradeableProxy` `0x50753c…e408` (v1: "proxy") | — | **NOT dEURO** | EURR proxy front for `HadronToken` impl above. |
| Ethereum: `TransparentUpgradeableProxy` `0x9d1a7a…bae7` (v1: "proxy") | — | **NOT dEURO** | Banking Circle EURI proxy. |
| Ethereum: `EUR` `0x3231cb…273f` (v1: "core unmatched") | — | **NOT dEURO** | Monerium EURE implementation (their official EUR stablecoin). Held by bridgeEURE. |
| Ethereum: `unnamed` `0x76d8f5…692b` (v1: "unknown unmatched") | — | **dEURO `bridgeVEUR`** — *mis-classified*, see "Stablecoin Bridge Family" above. Etherscan-verified as `StablecoinBridge`. |
| Polygon: `UChildERC20Proxy` `0x9d74de…cacb` (v1: "proxy unmatched") | — | **NOT dEURO** | Polygon-PoS bridge wrapper deployed by `0x463f64…162f` for an external EUR token; dEURO does not deploy to Polygon. |
| Polygon: `UChildERC20Proxy` `0xc2ff25…4e47` (v1: "proxy unmatched") | — | **NOT dEURO** | Same — Polygon-PoS bridge wrapper, external token. |
| Polygon: `UChildERC20` `0xe40258…8fb6` (v1: "NO_SCOPE_ROW") | — | **NOT dEURO** | Polygon-PoS wrapper implementation, external token. |
| Arbitrum: `ClonableBeaconProxy` `0x5e85faf…d537` (v1: "proxy unmatched") | — | **NOT dEURO** | Deployer `0xb4b8b6…1ffd` (an Arbitrum gateway-style EOA), compiler 0.6.11 — this is **Arbitrum Foundation L1↔L2 bridge infrastructure**. dEURO does not deploy to Arbitrum. |

Net: of the 43 contracts the V1 brief renders, **16 are external/wrong**:
- 12 are external EUR-stablecoin contracts (the bridge SOURCE tokens, not dEURO)
- 3 are Polygon-PoS-bridge infrastructure (dEURO is not on Polygon)
- 1 is Arbitrum bridge infrastructure (dEURO is not on Arbitrum)

The remaining 27 entries are dEURO contracts, but **the V1 brief fails to distinguish V2-retained from V3-active**: the duplicate `PositionFactory` / `PositionRoller` rows (one V2 + one V3 each) are presented without version labels, and the `MintingHub` / `MintingHubGateway` distinction (V3 vs V2) is similarly flat. The five V2 contracts are no longer canonical for new positions but cannot be removed from scope because they still hold legacy state.

After exclusions, the dEURO-attributable scope is **27 entries** (10 V3 active + 5 V2 retained + 9 bridges on Ethereum + 1 L2 token on Optimism + 2 L2 tokens on Base). The V1 brief's 43-contract count overstates by ~59%.

---

## Audit Coverage

### Audit history (URL-verified; PDFs HEAD-checked on 2026-05-15)

dEURO is a Frankencoin fork. The audit set is **mostly inherited** from Frankencoin, plus dEURO-specific delta audits:

| Date (per repo) | Auditor | Report | Bytes | Coverage scope |
|---|---|---|---:|---|
| 2023-02-10 | **Blockbite** | `Frankencoin-ZCHF/audits/V1/blockbite-audit.pdf` (mirrored at `d-EURO/smartContracts/audits/V1/blockbite-audit.pdf`) | 1,916,983 | Frankencoin V1 — original `Frankencoin`, `Equity`, `MintingHub`, `Position`, `StablecoinBridge` |
| 2023-06-09 | **Code4rena** | [`code4rena.com/reports/2023-04-frankencoin`](https://code4rena.com/reports/2023-04-frankencoin) | n/a (web) | Frankencoin V1 contest — same scope as Blockbite, peer-reviewed competition |
| 2023-10-30 | **ChainSecurity** | `Frankencoin-ZCHF/audits/V1/ChainSecurity-audit.pdf` (mirrored at `d-EURO/smartContracts/audits/V1/ChainSecurity-audit.pdf`) | 1,132,897 | Frankencoin V1 final external audit |
| 2024-09-25 | **Decurity** | `d-EURO/smartContracts/audits/V2/frankencoin-audit-report-2024-1.1.pdf` | 421,077 | Frankencoin V2 — covered the new minting module v2, refactored Position/PositionRoller, Leadrate, SavingsGateway etc. before the dEURO fork branched off |
| 2024-11-28 | **ChainSecurity** | `d-EURO/smartContracts/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf` | 653,068 | Frankencoin V2 — final ChainSecurity V2 audit |
| (post-fork) | **ChainSecurity** | `d-EURO/landingPage/audits/ChainSecurity_dEURO_dEURO_audit.pdf` | 785,719 | **dEURO-specific delta audit** — covers the dEURO-only deltas (renamings, exchange-fee increase from 0.3% to 2%, MinterContract burn restrictions, ERC-3009 addition, OZ V5 ERC20 migration, EUR-specific StablecoinBridge family, FrontendGateway / SavingsGateway / MintingHubGateway). PDF Last-Modified unknown from HEAD; relative size suggests substantial coverage. |
| (post-fork) | **(third-party, unknown auditor)** | `d-EURO/landingPage/audits/deuro_audit_report.pdf` | 471,424 | **dEURO-specific audit by a second auditor** — auditor name not in filename; would need to open the PDF to identify. Plausibly Blockbite or another independent reviewer; the d-EURO docs page does not name the second auditor publicly. Operator-confirm. |
| 2026-03-04 (commit) | **dEURO core team — internal audit** | `d-EURO/smartContracts/audits/V3/internal-audit/FINAL_REPORT.md` (39KB) + 11 supporting docs (semgrep, fuzzing, token-analysis, code-maturity, etc.) | 39,272 (final report only; 12 files total) | **V3 internal audit only.** Covers the V3 deltas: `MintingHubV3`, `PositionRoller V3`, `Savings` (V3), `SavingsVaultDEURO`, `PositionFactory V3`. Self-audit, no external auditor. |

**Plus a regulatory/legal document (NOT a security audit):**

| Date | Source | Document |
|---|---|---|
| 2025-04-07 | DFX | `d-EURO/landingPage/documents/20250407 _DFX_dEuro_MiCA_Public_Summary_v0.1.pdf` — DFX MiCA Public Summary for EU regulatory positioning. **Not a security audit; the V1 brief includes it in `audit_links` which mis-classifies it.** |

ChainSecurity also hosts a publicly browsable summary page at https://www.chainsecurity.com/security-audit/deuro-smart-contracts.

### Inherited-audit framing

The dEURO architecture is **the Frankencoin V2 architecture renamed**, plus a small Solidity delta (~10 enumerated changes in the upstream README "Code basis and changes after the fork"). For audit-coverage accounting, that means:

- **Inherited audits (`relationship_type = inherited`)**: Blockbite, Code4rena, ChainSecurity V1 (all 2023, Frankencoin V1); Decurity, ChainSecurity 2024 (both Frankencoin V2). These cover the Frankencoin-shared code without dEURO-specific modifications.
- **Direct audits (`relationship_type = direct`)**: ChainSecurity dEURO delta audit + the unnamed second-auditor dEURO report. These cover the dEURO-only deltas.
- **Internal audit (`relationship_type = internal`)**: V3 internal audit. Covers V3-only contracts (MintingHubV3, Savings V3, RollerV3, PositionFactoryV3, SavingsVaultDEURO). **No external audit has been published for the V3 contracts as of 2026-05-15** — they were deployed to mainnet 2026-03-23 with only the internal audit covering the V3-specific deltas.

### Coverage by scope category

| Category | Contracts (audit-evaluable) | Audited (external) | Audited (internal-only) | Coverage % |
|---|---:|---:|---:|---:|
| Mainchain core — V3 active (DecentralizedEURO + Equity + DEPSWrapper + Savings + MintingHub + PositionFactory + PositionRoller + SavingsVaultDEURO + FrontendGateway + CoinLendingGateway) | 10 | 5 (the inherited+dEURO-specific external audits cover dEURO+Equity+DEPSWrapper+FrontendGateway, plus the V2 ancestors of Savings/MintingHub/PositionFactory/PositionRoller/SavingsVault; the V3 versions have internal-only) | 5 (V3 deltas) | 50% external, 100% with internal |
| Mainchain core — V2 retained (MintingHubGateway + SavingsGateway + PositionFactoryV2 + PositionRollerV2 + SavingsVaultV2) | 5 | 5 | 0 | 100% external |
| Stablecoin Bridge family — V1 deployed (9 bridges, single Solidity source `StablecoinBridge.sol`) | 9 | 9 (covered by the Frankencoin V1 audits as the original `StablecoinBridge` was authored there, plus the dEURO-specific delta audit confirms the `SafeERC20`-based update) | 0 | 100% external |
| L2 token wrappers — `BridgedDecentralizedEURO` (Optimism, Base) + `BridgedDEPS` (Base) — single Solidity source `BridgedToken.sol` | 3 instances of 2 source files | partial (the OP-stack `IOptimismMintableERC20` interface is upstream-audited by OP Labs; the dEURO-specific `BridgedToken.sol` wrapper adds ERC-3009 and ERC-Permit — not in the audit chain explicitly, though the ERC-3009 mixin is inherited from L1 dEURO and is in the dEURO-specific ChainSecurity audit) | 0 | partial |
| **Total Ethereum + L2 dEURO scope** | **27** | **19 external + 5 internal-only (V3) + 3 partial (L2)** | 5 V3 | ~70% external + 19% internal-only |

### Gap analysis

- **V3 external audit gap.** The five V3 contracts (`Savings`, `MintingHub`, `PositionRoller`, `PositionFactory`, `SavingsVaultDEURO`) have only an internal audit. They were deployed to mainnet on 2026-03-23 with $0 TVL initially, and as of 2026-05-15 the V3 Savings module holds **917K dEURO (~51% of dEURO supply)**. An external V3 audit is the largest open audit gap.
- **CoinLendingGateway.** Deployed 2025-10-02. Not explicitly named in any external audit's scope-described and not in V3 internal audit. dEURO-specific code (no Frankencoin upstream equivalent). Operator-confirm audit coverage.
- **FrontendGateway / SavingsGateway / MintingHubGateway.** dEURO-specific gateway pattern (not in Frankencoin). The dEURO ChainSecurity delta audit likely covers them; PDF inspection (file size 785KB) is consistent with multi-module coverage, but each gateway should be explicitly verified.
- **BridgedToken.sol cross-chain wrapper.** Combines OZ ERC20Permit + ERC-3009 + IOptimismMintableERC20. The ERC-3009 path is inherited from L1 dEURO (audited); the IOptimismMintableERC20 path is upstream-OP. The composition itself is not explicitly named in the audit history.
- **StablecoinBridgeV2.** Merged 2026-04-26, not deployed. Will need fresh audit coverage on deployment.
- **Pending sPENDLE-analogous tokenomic events.** None known; dEURO has no Pendle dependency.
- **Multi-bridge mint-limit aggregation.** Each `StablecoinBridge` enforces a per-bridge `limit` (default 100K dEURO per the V2 deployments). The aggregate dEURO mintable via bridges is the sum of `limit`s minus current `minted`. Total bridge-mint capacity at the current configuration is ~900K dEURO across the 9 bridges. An audit team should examine whether dEURO can be over-minted via parallel-bridge attacks (the bridges share the dEURO `mint()` permission but enforce per-bridge limits in storage rather than in the dEURO token itself).

---

## Targeting Recommendation

In rough priority order by `economic exposure × novelty × audit gap`:

1. **V3 Savings + SavingsVaultDEURO** (`Savings @ 0x760233…d3D9` + `SavingsVaultDEURO @ 0x75Beb3…2979`). Holds 917K dEURO (~$917K, ~51% of total dEURO supply) under only an internal audit. Single largest external audit gap. ERC-4626 vault correctness, profit-distribution accounting, and Leadrate interaction are the key correctness concerns.
2. **V3 MintingHub + PositionFactory + PositionRoller** (`0x66AcC5…4F7B`, `0x3A3985…fE81`, `0x5C22D5…C5CD`). Whole V3 minting path under only internal audit. The V3 README enumerates non-trivial logic changes vs V2 (native ETH/WETH support, leadrate integration, interest charged only on usable mint, reference-position cooldown mechanism). Each is a logic change that should have external audit coverage.
3. **CoinLendingGateway** (`0x1DA37D…89D2`). dEURO-specific (no Frankencoin upstream), deployed 2025-10-02. Not in any external audit's enumerated scope. Mediates EUR-stablecoin → dEURO → position flows, so an attack here could affect bridge or position state.
4. **FrontendGateway / SavingsGateway / MintingHubGateway** (`0x5c49C0…0994`, `0x073493…2303`, `0x8B3c41…4618`). dEURO-specific referral/reward layer on top of the audited core. Likely covered by the dEURO ChainSecurity delta audit, but reward-distribution math is a frequent audit-finding category — re-audit value is high if these have not been independently re-reviewed.
5. **StablecoinBridge family — 9 bridges.** All use the same Solidity source, fully covered by Frankencoin V1 audits (under the name `StablecoinBridge`) and the dEURO delta audit (for the `SafeERC20` update). Re-audit value is lower because the code is well-trodden, but the aggregate-mint-limit composition across 9 bridges is a non-trivial system property worth a fresh look.
6. **BridgedToken.sol L2 wrapper.** Inherits OP-stack and OZ ERC-3009; composition is small. Re-audit value is low.
7. **V2 retained set** (MintingHubGateway, SavingsGateway, PositionFactoryV2, PositionRollerV2, SavingsVaultV2). Fully externally audited. **Default skip** for new audit work.

---

## V1 Pipeline Errors (for this project)

The pipeline's `brief.md` carries the following defects, traced per-stage in [`docs/gold-standard/decentralized-euro_v1_diff_analysis.md`](../../docs/gold-standard/decentralized-euro_v1_diff_analysis.md):

1. **External-EUR-stablecoin contamination (`+12 false positives`).** The pipeline followed proxy and balance relationships from the dEURO bridges into the external EUR-stablecoin contracts they accept as source assets. Twelve of the V1 brief's "core" / "token" / "proxy" rows are Tether's EURT, Stasis's EURS, VNX's VEUR, Schuman's EUROP, Hadron's EURR, Banking Circle's EURI, and Monerium's EURE — all external issuer contracts.
2. **Multi-chain misattribution (`+4 false positives`).** dEURO is deployed only on Ethereum + Optimism + Base. The V1 brief includes two Polygon `UChildERC20Proxy` contracts + one Polygon `UChildERC20` implementation + one Arbitrum `ClonableBeaconProxy`. All four are external bridge infrastructure for unrelated tokens that share a deployer-cluster heuristic with dEURO bridges.
3. **`bridgeVEUR` mis-classified as "unnamed unknown".** Address `0x76d8f5…692b` is verified on Etherscan as `StablecoinBridge` and is the canonical `bridgeVEUR` per the `@deuro/eurocoin` registry. The pipeline's topography graph either failed to ingest the verified name or excluded the row from canonical mapping. Easy fix.
4. **Audit metadata is a placeholder.** V1 reports a single "audit_report" with `auditor = discovery-ingest-placeholder`, `audit_date = unknown`, `link = not available`. The actual audit chain is 6+ Frankencoin-inherited audits plus 2 dEURO-specific reports plus 1 V3 internal audit (with 12 backing markdown files in the smartContracts repo). All audit PDFs are publicly URL-accessible and HEAD-verifiable.
5. **Inheritance not detected.** The DL JSON's `forkedFromIds: ["3790"]` (Frankencoin) is a strong signal that the audit chain is largely inherited. The V1 brief does not detect this and consequently attributes 0 inherited audits. The Frankencoin upstream repo's `audits/V1` + `audits/V2` directories are also mirrored in the dEURO `smartContracts/audits` directory — even simpler to reach.
6. **V2 vs V3 not distinguished.** The V3 migration (2026-03-23) created a new minting-hub + savings + roller + position-factory + savings-vault set, registered with the dEURO token via `suggestMinter`. The V1 brief lists both V2 and V3 versions of `PositionRoller` and `PositionFactory` (e.g., two `PositionRoller` rows, two `PositionFactory` rows) but does not classify which is the active canonical one. The `@deuro/eurocoin` `address.config.ts` registry makes the V2/V3 split explicit with field names.
7. **Lifecycle = "default_fallback"** despite V3 mainnet deployment 53 days before the V1 snapshot. The V3 PR's mainnet-deploy commit (2026-03-23) plus the V3 contracts' `getcontractcreation` block (24721024) are both directly queryable.
8. **Tier = "small_tvl_coverage_filler" undersells the audit context.** With 6 inherited audits, 2 direct dEURO audits, and a substantial V3 internal audit (12-file markdown deliverable), the protocol is unusually well-audited for $2M TVL. The interesting audit gap (V3 external) is masked by the tier-flattening.
9. **"Upgrade authority concentrates in 4 distinct deployer addresses"** misrepresents the architecture. dEURO has **no upgrade authority** (non-upgradable contracts). The four addresses V1 listed are deployers of external EUR-stablecoin contracts or external Polygon-PoS bridge wrappers, not dEURO deployers. The actual dEURO deployer cluster (6 EOAs that deployed the canonical dEURO contracts) is queryable via `getcontractcreation`.
10. **Polygon/Arbitrum chain entries spurious.** dEURO is not deployed on either chain. The V1 brief's `chains (topography): 1, 10, 137, 8453, 42161` should be `1, 10, 8453`. DL's own `chains: ["Ethereum"]` already excludes Polygon and Arbitrum.

Plus three smaller defects:
- **DL `audit_links` parsed as the canonical audit set.** DL lists a single `ChainSecurity_dEURO_intermediate_report.pdf` URL that 404s today (the file was renamed to `ChainSecurity_dEURO_dEURO_audit.pdf`). The dEURO landing-page audits directory has 2 PDFs visible via the GitHub Contents API.
- **DFX MiCA Public Summary categorized as a security audit.** It's a regulatory positioning document, not a security audit. Easy to filter on filename containing `MiCA` or content type.
- **Pipeline pulled Trail-of-Bits unrelated papers** (`edhoc-euros&P-2023.pdf`, `vast-eurollvm-poster.pdf`, etc.) as audit reports because their URLs contain "euro" substrings. None of these are dEURO-related.

---

## Appendix

### Sources

- DefiLlama protocol JSON (raw): https://api.llama.fi/protocol/decentralized-euro
- DefiLlama TVL adapter: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/dEURO/index.js
- Canonical address registry (npm package, `@deuro/eurocoin@2.1.0`): https://registry.npmjs.org/@deuro/eurocoin/-/eurocoin-2.1.0.tgz, file `exports/address.config.ts`
- Smart contracts repo: https://github.com/d-EURO/smartContracts (commit `10bd18a` 2026-04-26, the StablecoinBridgeV2 merge; `1d6bcef` 2026-03-23, V3 mainnet deployment)
- Landing page repo (audits + regulatory docs): https://github.com/d-EURO/landingPage
- Documentation site: https://docs.deuro.com (source: https://github.com/d-EURO/documentation)
- Monitoring service: https://github.com/d-EURO/monitoring (operator-side independent monitoring; helpful for the canonical ABIs + service event signatures)
- Mobile wallet repo: https://github.com/d-EURO/wallet (Dart; the `lib/packages/contracts/contracts.dart` file independently confirms the canonical SavingsGateway / FrontendGateway / Equity addresses on Ethereum)
- Etherscan v2 multi-chain API (`api.etherscan.io/v2/api`) for chains 1, 10, 8453, 42161, 137 — per-contract verification, `getcontractcreation`, and `eth_call` of `totalSupply` / `balanceOf` against the canonical contracts. Row-by-row evidence in the verification ledger.
- ChainSecurity public summary: https://www.chainsecurity.com/security-audit/deuro-smart-contracts
- Frankencoin upstream (for inherited audits): https://github.com/Frankencoin-ZCHF/FrankenCoin (forked commit `a2ce625c` 2024-12-02)

### Caveats

- **Two of the audit PDFs (`ChainSecurity_dEURO_dEURO_audit.pdf` and `deuro_audit_report.pdf`) were HEAD-verified but not parsed cover-to-cover.** Their exact contract-by-contract coverage was reconstructed from filename + the upstream README's enumeration of dEURO-specific deltas. Operator should open both PDFs to confirm the per-contract coverage table for the dEURO delta scope.
- **Second-auditor identity unknown.** `deuro_audit_report.pdf` does not name its auditor in the filename. Could be Decurity, Blockbite, or another independent reviewer. Operator-confirm by reading the PDF cover page.
- **V3 internal audit is internal, not external.** The 12-file markdown audit deliverable is thorough (semgrep, fuzzing, token analysis, spec-compliance), but it is self-authored by the dEURO team and should not be weighted as an external auditor's clean bill of health.
- **`emergencyStop` quorum mechanics rely on nDEPS distribution.** The `StablecoinBridge.emergencyStop()` function requires `votesDelegated(msg.sender, helpers) * 10_000 >= EMERGENCY_QUORUM * totalVotes`, i.e., 10% of nDEPS voting weight. nDEPS is held by an unknown distribution of holders; if a single party controls >10% of nDEPS, that party can unilaterally halt any bridge. The audit team should pull the nDEPS holder distribution before sizing this risk.
- **DL TVL adapter has dead Frankencoin constants** (`MAINNET.WFPS`, `MAINNET.FPS`, `MAINNET.ZCHF`). They are unused in the actual TVL math (no positions hold those tokens), but a code-reading pipeline could be misled by their presence.
- **L2 deployments rely on the OP-stack StandardBridge predeploy** (`0x4200000000000000000000000000000000000010`). Any compromise of that predeploy would affect every protocol that uses it; out of scope for a dEURO-specific audit.
- **Bridge horizon parameter.** Each `StablecoinBridge` has a `horizon = block.timestamp + weeks_ * 1 weeks` constructor parameter (default 26 weeks per `stablecoinBridgeConfig.ts`). After `horizon`, the bridge cannot mint new dEURO (only burn/redeem). The first batch of bridges (deployed 2025-03-20 with EURT, then 2025-04-23 with EUROP/EURR/EURI) may already have passed their horizon as of 2026-05-15; the user-facing implication is dEURO mints via those bridges are no longer possible. Operator should pull `horizon()` on each of the 9 bridges to confirm which are still mint-active.

### Generation metadata

- Generated: 2026-05-15
- Method: manual research, no pipeline involvement
- Verification ledger: [`docs/gold-standard/decentralized-euro_verification_ledger.md`](../../docs/gold-standard/decentralized-euro_verification_ledger.md)
- V1 diff analysis: [`docs/gold-standard/decentralized-euro_v1_diff_analysis.md`](../../docs/gold-standard/decentralized-euro_v1_diff_analysis.md)
- Author note: dEURO is **fully open source** (smartContracts MIT, address registry public via npm, all audit PDFs publicly URL-accessible on the landingPage GitHub repo, monitoring source-available). The high data fidelity in this brief reflects that openness — most claims here can be re-derived end-to-end by anyone with `gh`, `curl`, and an Etherscan API key.
