# Agentic Audit Brief: Gearbox Protocol (Gold Standard)

> Manually-researched reference brief. Verification ledger lives at [docs/gold-standard/gearbox_verification_ledger.md](../../docs/gold-standard/gearbox_verification_ledger.md). v1 pipeline diff at [docs/gold-standard/gearbox_v1_diff_analysis.md](../../docs/gold-standard/gearbox_v1_diff_analysis.md). Generated 2026-05-07; no pipeline involvement.

---

## Project Overview

- **Project:** Gearbox Protocol — composable leverage / prime-brokerage credit layer
- **Website:** [gearbox.finance](https://gearbox.finance)
- **Developer docs:** [docs.gearbox.finance](https://docs.gearbox.finance)
- **GitHub org:** [github.com/Gearbox-protocol](https://github.com/Gearbox-protocol)
- **Governance:** [snapshot.org/#/gearbox.eth](https://snapshot.org/#/gearbox.eth)
- **DefiLlama:** [defillama.com/protocol/gearbox](https://defillama.com/protocol/gearbox) — Lending category
- **DL methodology (verbatim from `methodology` field):** "Retrieves the tokens in each Gearbox pool & value of all Credit Accounts (V1/V2/V3) denominated in the underlying token."
- **Total TVL (DL, snapshot 2026-05-07):** $28,472,513
- **Audit-evaluable TVL (chains with bug-bounty scope):** $22,524,257 (~79% of total)
- **Chains in production (DL):** Ethereum, Optimism, Arbitrum, Sonic (V3 scope) + Etherlink, Monad, Plasma, Hemi, Lisk, Somnia, Binance (V3.1 permissionless layer)
- **Lifecycle:** active in structured decline. Peak TVL was $419,341,649 on 2024-04-23; current value is 6.8% of peak. Governance, V3.1 deployments, and Gear staking are all live (most recent V3.1 audit lands 2025-07-08).
- **Tier:** Tier 1 — large-TVL active protocol with complex multi-version surface
- **Commercial fit:** prime audit target. Adapter surface is the dominant audit-relevant attack surface; pool/credit-engine layers are mature and have been audited 8+ times by ChainSecurity alone.

The audit-evaluable surface for Gearbox is unusual in two ways. First, the protocol runs **three concurrent versions** (V1/V2 legacy, V3, and V3.1 permissionless) with separate registries, separate scope documents, and separate audit lineages — supersession is by deployment, not by upgradeable proxy (every V3 contract returns `proxy=0` on Etherscan). Second, the integration surface is **factored into 67 distinct adapter contracts** (one per target protocol × deployment instance), each of which is itself the attack surface for a credit-account-drain bug. A scoping agent that thinks of Gearbox as a "lending protocol" will dramatically under-count the evaluable contracts.

---

## Architecture Overview (CRITICAL — read before scoping)

Gearbox is a **leverage protocol**, not a vanilla lending market. The novel primitive is the **Credit Account**: a smart-contract wallet, factory-deployed per user, that holds the user's collateral plus borrowed funds and is constrained to interact with the outside world only via whitelisted **Adapters**. The economic flow is:

1. **Lenders** deposit underlying tokens (USDC, WETH, WBTC) into a [`PoolV3`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/pool/PoolV3.sol). Each pool is an ERC4626 vault that issues "diesel" LP shares (e.g., dUSDC) and lends its underlying out to credit accounts. There are **three pools** on Ethereum mainnet (one per underlying).
2. **Borrowers** open a Credit Account by calling [`CreditFacadeV3.openCreditAccount`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/credit/CreditFacadeV3.sol). The facade is the user-facing entry point; it forwards to a [`CreditManagerV3`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/credit/CreditManagerV3.sol), which is the actual accounting/state contract for one (pool, configuration) pair. There are **9 (CreditFacadeV3, CreditManagerV3, CreditConfiguratorV3) triplets** on Ethereum, one per "market".
3. The CreditManager calls the [`AccountFactoryV3`](github.com/Gearbox-protocol/core-v3) to deploy a fresh CreditAccount instance for the user, then transfers borrowed underlying into it.
4. The borrower can now **acquire collateral** by routing the borrowed underlying through whitelisted Adapters. Adapters are 1-to-1 wrappers around external DeFi protocols (Uniswap, Curve, Lido, Yearn, Balancer, Convex, ERC4626 vaults, etc.) that re-expose the target's functions while enforcing the credit-account's collateral-tracking invariants. There are **67 deployed adapter / zapper instances** in Gearbox V3 alone.
5. **Solvency** is enforced by [`PriceOracleV3`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/core/PriceOracleV3.sol) — every adapter call ends with a health check via the price oracle. Oracles include Chainlink, RedStone, eOracle (on Hemi), composite feeds for LP tokens, and bespoke ERC4626/Yearn/Curve LP feeds (26 oracle instances on Ethereum).
6. **Governance** (via [`Governor`](https://github.com/Gearbox-protocol/governance/blob/main/contracts/Governor.sol), [`ControllerTimelockV3`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/governance/ControllerTimelockV3.sol), and Snapshot voting on `gearbox.eth`) controls parameter changes, adapter whitelisting, oracle updates, and quota allocations via [`PoolQuotaKeeperV3`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/pool/PoolQuotaKeeperV3.sol) + [`GaugeV3`](https://github.com/Gearbox-protocol/core-v3/blob/main/contracts/governance/GaugeV3.sol).

**Key audit implication.** A bug in an adapter — even a minor accounting issue, slippage missing a check, or a return-value mishandle — can let a borrower drain the credit account or, in the worst case, drag the pool into bad debt. Adapters are the **#1 audit target**, not the credit engine itself (which has been audited eight times). The integration surface scales linearly with new whitelisted protocols, while the core engine is relatively static.

**Versioning model.** Gearbox does not use upgradeable proxies. Every V3 contract is `proxy=0` on Etherscan. New versions are **fresh deployments**, with the [`AddressProviderV3`](https://etherscan.io/address/0x9ea7b04Da02a5373317D745c1571c84aaD03321D) registry routing to the latest. As of 2025, three concurrent registries operate:

| Version | AddressProvider address | `version()` | Era |
|---|---|---:|---|
| V1/V2 | [`0xcF6469…3be0`](https://etherscan.io/address/0xcF64698AFF7E5f27A11dff868AF228653ba53be0) | 200 | 2021–2023, severity-reduced bounty |
| **V3** | [`0x9ea7b0…321D`](https://etherscan.io/address/0x9ea7b04Da02a5373317D745c1571c84aaD03321D) | 300 | 2023-12-16 batch + multi-chain expansion |
| **V3.1** | [`0xF7f0a6…1E38`](https://etherscan.io/address/0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38) | 310 | 2025-04-27, permissionless via bytecode portal |

V3.1 introduced permissionless deployment via a [Bytecode Repository Portal](https://permissionless.gearbox.foundation/bytecode); this is why DL lists chains like Etherlink, Monad, Plasma, Hemi, Lisk, Somnia, and Binance — those are V3.1-only deployments not enumerated in `v3-scope.md`.

---

## TVL Methodology Note (CRITICAL)

DefiLlama's adapter ([source](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/gearbox/index.js)) sums **two distinct asset classes** into a single `tvl` number, per the verbatim methodology field on the protocol record:

> Retrieves the tokens in each Gearbox pool & value of all Credit Accounts (V1/V2/V3) denominated in the underlying token.

Reconciling this against on-chain state on Ethereum mainnet (verified 2026-05-07 via Etherscan v2 RPC `eth_call`, all `totalAssets()` results below are exact):

| Pool address | Underlying | `totalAssets()` (raw) | `totalAssets()` (denominated) | USD | Share of Ethereum TVL |
|---|---|---|---:|---:|---:|
| [`0xda0000…fbf8E`](https://etherscan.io/address/0xda00000035fef4082F78dEF6A8903bee419FbF8E) | USDC ([0xA0b8…eB48](https://etherscan.io/address/0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48)) | 979,748,537,567 | 979,748.54 USDC | $979,748 | 4.4% |
| [`0xda0001…2757d`](https://etherscan.io/address/0xda00010eDA646913F273E10E7A5d1F659242757d) | WBTC ([0x2260…c599](https://etherscan.io/address/0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599)) | 530,730,589 | 5.3073 WBTC | $633,946 | 2.8% |
| [`0xda0002…6F4f`](https://etherscan.io/address/0xda0002859B2d05F66a753d8241fCDE8623f26F4f) | WETH ([0xC02a…cC2](https://etherscan.io/address/0xC02aaa39b223FE8D0A0e5C4F27eAD9083C756Cc2)) | 722,569,250,288,370,141,344 | 722.5693 WETH | $2,293,377 | 10.2% |
| **Pool TVL subtotal** |  |  |  | **$3,907,071** | **17.4%** |
| **Credit-account collateral remainder** (residual = DL Ethereum total − pool subtotal) |  |  |  | **$18,518,091** | **82.6%** |
| **DL Ethereum total** |  |  |  | **$22,425,162** | **100%** |

What that means for audit scoping: **the audit-evaluable contracts are the same regardless of how the dollars are bucketed**. The credit-account collateral is held in user-deployed CreditAccount clones (uniform bytecode from a single template) plus the various adapter-managed token positions (Convex stakes, Curve LP, Yearn vaults, etc.). The contracts you must reason about are the three pools, the nine credit-engine triplets, the 67 adapters, and the 26 oracle instances — the dollar split is a fact about user behaviour, not a fact about the audit surface.

For a corrected `audit_evaluable_tvl_usd`, the manifest sums DL's per-chain figures only across chains that have v3-scope.md contracts (Ethereum + Optimism + Arbitrum + Sonic = $22,524,257). The remaining ~$5.95M (Etherlink, Monad, Plasma, Hemi, Lisk, Somnia, Binance) sits on V3.1 permissionless deployments not enumerated in v3-scope.md.

---

## On-Chain TVL Summary (per chain)

DL's `currentChainTvls` field on 2026-05-07:

| Chain | Total TVL (USD) | Borrowed (USD) | Net pool float | Has v3-scope.md contracts? |
|---|---:|---:|---:|---|
| Ethereum | $22,425,162 | $8,211,786 | $14,213,376 | ✅ — v3-scope.md anchors here |
| Etherlink | $2,244,941 | $1,085,987 | $1,158,954 | ❌ V3.1 permissionless only |
| Monad | $2,749,463 | $2,517,850 | $231,613 | ❌ V3.1 permissionless only |
| Somnia | $655,028 | $3,941 | $651,087 | ❌ V3.1 permissionless only |
| Plasma | $264,439 | $52,545 | $211,894 | ❌ V3.1 permissionless only |
| Arbitrum | $77,562 | $0 | $77,562 | ✅ AddressProviderV3 verified |
| Hemi | $33,128 | $0 | $33,128 | ❌ V3.1 permissionless only |
| Optimism | $20,938 | $0 | $20,938 | ✅ AddressProviderV3 verified |
| Lisk | $1,251 | $0 | $1,251 | ❌ V3.1 permissionless only |
| Sonic | $594 | $0 | $594 | ✅ AddressProviderV3 verified |
| Binance | $4 | $0 | $4 | ❌ V3.1 permissionless only |
| **Total** | **$28,472,513** | **$11,872,109** | **$16,600,404** |  |

Of the eleven chains, **four have v3-scope.md-listed contracts** (Ethereum + Optimism + Arbitrum + Sonic = $22,524,257 audit-evaluable). The remaining seven are V3.1 permissionless deployments without enumerated scope; their audit coverage flows from the 2025-04 ChainSecurity permissionless audit and the 2025-07 account-migration audit, not from per-contract review.

---

## Lifecycle and Recent Activity

| Era | Anchor address | Event | Verified date |
|---|---|---|---|
| V1 launch | [`0x523dA3…6bb3`](https://etherscan.io/address/0x523dA3a8961E4dD4f6206DBf7E6c749f51796bb3) (ACL), [`0x444CD…9C04`](https://etherscan.io/address/0x444CD42BaEdDEB707eeD823f7177b9ABcC779C04) (AccountFactory), [`0xBa3335…9Ab5D`](https://etherscan.io/address/0xBa3335588D9403515223F109EdC4eB7269a9Ab5D) (GearToken) | Initial deployment by [`0x20da9f…08d8`](https://etherscan.io/address/0x20da9f3d7d5cb96c2822338830cfd6dee6d508d8) | 2021-12-15 |
| Liquidity-mining begins | (DL hallmark) | LM begins | 2022-10-24 (per DL `hallmarks` field, 1666569600 unix) |
| V2 → V3 migration | various | 2023 V2.1 audits + Oct 2023 partial-migration audit | 2023-04 / 2023-08 / 2023-09 / 2023-10 |
| V3 launch | [`0x9ea7b0…321D`](https://etherscan.io/address/0x9ea7b04Da02a5373317D745c1571c84aaD03321D) AddressProviderV3 pre-deployed by [`0xf33ea4…99ba`](https://etherscan.io/address/0xf33ea4ee285b5dac9a6163d8939699d59a7199ba) | Single-purpose pre-deploy of V3 registry | 2023-10-26 |
| V3 main batch | All 147 v3-scope.md contracts deployed by [`0xef3cfa…7b4b`](https://etherscan.io/address/0xef3cfa199137387047318a06efba931db07e7b4b) | Ethereum V3 going live | 2023-12-16 |
| Multi-chain expansion | AddressProviderV3 on Arbitrum / Sonic / (Optimism inferred) | Same V3 deployer extends V3 to L2s | 2024-02-26 (Arbitrum) → 2025-02-24 (Sonic) |
| TVL peak | (DL `tvl[]` series) | $419,341,649 | 2024-04-23 |
| V3.1 launch | [`0xF7f0a6…1E38`](https://etherscan.io/address/0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38) AddressProvider (version 310) deployed by [`0x86c686…851a`](https://etherscan.io/address/0x86c6867dfdc5a5db2942ad97957a04fe8f45851a) via CreateX factory | Permissionless layer goes live | 2025-04-27 |
| V3.1 audits | ChainSecurity v3.1-upgrade + permissionless + account-migration; Nethermind AA; SavantChat | Three V3.1-focused audits | 2025-03 → 2025-07 |
| Decline phase | TVL trajectory continued downward | $28.47M today = 6.8% of peak | 2026-05-07 |

The protocol is **active in structured decline**. The shape mirrors Equilibria's "active_in_structured_decline" lifecycle: governance is live, recent contracts are still being deployed, audits are still being commissioned, but TVL has shed ~93% since peak. Audit demand remains because the V3.1 layer is actively expanding to new chains.

---

## Scope — Core: Pools (lender-side TVL custody)

Three [`PoolV3`](https://github.com/Gearbox-protocol/core-v3/blob/e16559ae82f0f24c3dc29693c444f40d676ebff9/contracts/pool/PoolV3.sol) instances on Ethereum mainnet, one per underlying. Each pool is associated with one [`PoolQuotaKeeperV3`](https://github.com/Gearbox-protocol/core-v3/blob/e16559ae82f0f24c3dc29693c444f40d676ebff9/contracts/pool/PoolQuotaKeeperV3.sol) and one [`LinearInterestRateModelV3`](https://github.com/Gearbox-protocol/core-v3/blob/e16559ae82f0f24c3dc29693c444f40d676ebff9/contracts/pool/LinearInterestRateModelV3.sol). All three pools were deployed in the same block (18,798,139–18,798,140) on 2023-12-16 by the V3 deployer.

| Pool | Underlying | `totalAssets()` | TVL (USD) | PoolQuotaKeeperV3 | LinearInterestRateModelV3 |
|---|---|---:|---:|---|---|
| [`0xda0000…fbf8E`](https://etherscan.io/address/0xda00000035fef4082F78dEF6A8903bee419FbF8E) | USDC | 979,748.54 | $979,748 | [`0xC96C20…84F4`](https://etherscan.io/address/0xC96C20E664303fB8C29ee6333055757AC7D484F4) | [`0xff767B…B4Bf`](https://etherscan.io/address/0xff767BdCd76f6E5AF75957E15D5B2a8BFC43B4Bf) |
| [`0xda0001…2757d`](https://etherscan.io/address/0xda00010eDA646913F273E10E7A5d1F659242757d) | WBTC | 5.3073 | $633,946 | [`0x7bbaeC…c444`](https://etherscan.io/address/0x7bbaeC0e41d133325a958edFA6Ef69A05477c444) | [`0x86781a…bbbc`](https://etherscan.io/address/0x86781a14F55677729b1C0394E06966BF8736bbbc) |
| [`0xda0002…6F4f`](https://etherscan.io/address/0xda0002859B2d05F66a753d8241fCDE8623f26F4f) | WETH | 722.5693 | $2,293,377 | [`0x05eF8D…5ce7`](https://etherscan.io/address/0x05eF8Da767687c0137aE143EB23883FcaD235ce7) | [`0x602CA1…6d5a`](https://etherscan.io/address/0x602CA1F950c186e5795935AcFcbc64997f5a6d5a) |

PoolV3 is **not upgradeable** (`proxy=0`); a new pool would be a fresh deployment. The 0xda...vanity-address prefix is a Create2 deployer salt convention.

Audit lineage: ChainSecurity (2023-12 + 2024-03 V3 Core), ABDK (2023-12 V3 Core).

---

## Scope — Core: Credit Engine

Each "market" on Gearbox V3 is a triplet of `(CreditConfiguratorV3, CreditFacadeV3, CreditManagerV3)`. The configurator is the privileged-only governance interface, the facade is the user-facing entry point, and the manager holds account state. **Nine triplets are deployed** on Ethereum mainnet (per v3-scope.md), giving 27 contracts. They were all deployed in the 2023-12-16 batch.

| # | CreditManagerV3 | CreditFacadeV3 | CreditConfiguratorV3 |
|---|---|---|---|
| 1 | [`0x3EB954…3556`](https://etherscan.io/address/0x3EB95430FdB99439A86d3c6D7D01C3c561393556) | [`0x958cBC…2c0C`](https://etherscan.io/address/0x958cBC4AEA076640b5D9019c61e7F78F4F682c0C) | [`0x7504B2…a6C2`](https://etherscan.io/address/0x7504B2119710C23818A31a0B5dDA04d84A3DA6C2) |
| 2 | [`0xeA7c28…C050`](https://etherscan.io/address/0xeA7c28428D3916Dbe2f113b8A6E6Dd0F3819C050) | [`0x5366B8…5aF4`](https://etherscan.io/address/0x5366B8C2dE34f614556D085961b3699Aa1755aF4) | [`0x9A6b81…2d91`](https://etherscan.io/address/0x9A6b819491BA8a6a7615BB0fB78d393628df2d91) |
| 3 | [`0x4E94Cd…88A3`](https://etherscan.io/address/0x4E94Cd228eF386EBc32900EC745d1865934688A3) | [`0xA391c8…29B6`](https://etherscan.io/address/0xA391c8178d7B951C148302Afb6B20bCfD3BA29B6) | [`0xF60ab9…ffa6`](https://etherscan.io/address/0xF60ab94843e8E31e9F7401db84E9d0c9688bFfa6) |
| 4 | [`0xEfC134…246E`](https://etherscan.io/address/0xEfC134755aaf89FE84476946251680BeCe41246E) | [`0xd032e6…4426`](https://etherscan.io/address/0xd032e6A87872B0b14CEE17fB7981eD11745A4426) | [`0x91F6C5…b2e7`](https://etherscan.io/address/0x91F6C5BC5239a811262A34Ed8b1B748848d8b2e7) |
| 5 | [`0xCAC3E4…3735`](https://etherscan.io/address/0xCAC3E41b9BAD20E2aa35E150De96eEfB2d043735) | [`0xa27f36…C4eE`](https://etherscan.io/address/0xa27f3622930661fE202423a9383e5E70Cf59C4eE) | [`0x444FE6…975b`](https://etherscan.io/address/0x444FE6de4131866dA5191630E4648Ab36Ad1975b) |
| 6 | [`0x46709c…08Ed`](https://etherscan.io/address/0x46709cA16b1FfEa5D6c6bB6b7E77Dd9e3B4908Ed) | [`0x840aC7…b613`](https://etherscan.io/address/0x840aC757450B2a35d1645167B706c9a83de8b613) | [`0x2beA55…3d01`](https://etherscan.io/address/0x2beA5596a1293BD738139C07a42E4D03C1393d01) |
| 7 | [`0xa30099…E68a`](https://etherscan.io/address/0xa30099925B14b00b76Ae2EfE2639CD01598fE68a) | [`0x313e1c…1C39`](https://etherscan.io/address/0x313e1ce56A0386FBf9CC356E34646591b6c31C39) | [`0x0dB809…feaD`](https://etherscan.io/address/0x0dB809Abd33b82B86BF77D56dBe817bBa875feaD) |
| 8 | [`0x3F1175…aC14`](https://etherscan.io/address/0x3F11758AcA3f2eB7a27828C9cBCD0B347944aC14) | [`0xBF14e9…79c8`](https://etherscan.io/address/0xBF14e9E4d0119E093E1758A6c27799192da779c8) | [`0x80A863…9aCf`](https://etherscan.io/address/0x80A863Fe55Dbe9B2B4dD4e437Cd48A1C34A59aCf) |
| 9 | [`0x0b2486…484E`](https://etherscan.io/address/0x0b2486355E987586C32FC0FEEFE2943E396c484E) | [`0xE1836e…31f9`](https://etherscan.io/address/0xE1836e82FfF8C179A69D940B9C950d19A50A31f9) | [`0x07ef57…50f6`](https://etherscan.io/address/0x07ef5771191825618F1806152F843e172edb50f6) |

Each triplet binds to one of the three pools above, depending on which underlying is borrowed. Mapping triplet → pool requires reading `creditManager.pool()` on-chain (not done in this brief; the triplets are addressed individually since each is a unique deployment).

Audit lineage: ChainSecurity (2023-12 + 2024-03 V3 Core), ABDK (2023-12 V3 Core), 2023-10 ChainSecurity partial-migration audit.

---

## Scope — Adapters (Integration Surface — CRITICAL audit target)

Gearbox's audit-relevant attack surface is dominated by adapters, which bridge between Credit Accounts and external DeFi protocols. **67 adapter / zapper contract instances** are listed in v3-scope.md, grouped by adapter type. Each instance is a separate deployed contract bound to one specific external pool/contract on the target protocol, so the count scales with the integration's depth.

### Adapters by target protocol

| Adapter type | Target protocol | Instances | Sample address (1st in v3-scope.md) | Audit |
|---|---|---:|---|---|
| `UniswapV2Adapter` | Uniswap V2 | 21 | [`0x2C2a0a…F24f`](https://etherscan.io/address/0x2C2a0a6E9bF743388831662Df136D4Af63FdF24f) | ChainSecurity 2023-12 + 2024-10 |
| `UniswapV3Adapter` | Uniswap V3 | 9 | [`0xea8199…D257`](https://etherscan.io/address/0xea8199179D6A589A0C2Df225095C1DB39A12D257) | ChainSecurity 2023-12 + 2024-10 |
| `CurveV1Adapter3Assets` | Curve (3-asset pools) | 11 | [`0xf4E52a…6d75`](https://etherscan.io/address/0xf4E52a80B8C48810822d1FA20716e528d38A6d75) | ChainSecurity 2023-12 + 2024-10 |
| `CurveV1Adapter2Assets` | Curve (2-asset pools) | 3 | [`0x393b00…AD5e`](https://etherscan.io/address/0x393b0008A433D192e9D4288F6d82325566c9AD5e) | ChainSecurity 2023-12 + 2024-10 |
| `CurveV1AdapterStETH` | Curve stETH pool | 3 | [`0x316Bd4…A5DA`](https://etherscan.io/address/0x316Bd4d614681525ceBdb4EE54B7cE140127A5DA) | ChainSecurity 2023-12 |
| `YearnV2Adapter` | Yearn V2 vaults | 6 | [`0x765Bac…392a`](https://etherscan.io/address/0x765Bac2c89dF16f24d4397FEA752905611f4392a) | ChainSecurity 2023-12 + 2024-10 |
| `ERC4626Adapter` | Generic ERC4626 vaults | 2 | [`0xcA2Bbf…3231`](https://etherscan.io/address/0xcA2Bbf4cE5E7b56bBc1e7b711856f7f38Dc23231) | ChainSecurity 2024-10 |

### Zappers (deposit / farming utilities)

| Zapper type | Instances | Purpose |
|---|---:|---|
| `DTokenDepositZapper` | 3 | Deposit underlying → diesel LP (one-tx) |
| `DTokenFarmingZapper` | 3 | Deposit + stake into farming gauge |
| `UnderlyingFarmingZapper` | 3 | Underlying → farming position |
| `UnderlyingDepositZapper` | 1 | Underlying → diesel LP |
| `WETHDepositZapper` | 1 | ETH → WETH → diesel LP |
| `WETHFarmingZapper` | 1 | ETH → WETH → farming |

### Adapter coverage gaps

The v3-scope.md inventory captures the adapter set at the GitHub commit pinned in the scope file (`integrations-v3@302c635`). New adapters added after that commit (e.g., Pendle, Mellow, Sky, Pyth, Balancer V3 — all visible in 2024–2025 audits) are in scope of the per-adapter audits that ChainSecurity / Decurity have published, but are not enumerated here. Discovery of new adapters proceeds via the V3.1 [Bytecode Repository Portal](https://permissionless.gearbox.foundation/bytecode) and the Gearbox `integrations-v3` repository's `main` branch.

The full source code for one representative instance per major adapter type (UniswapV2, UniswapV3, CurveV1Adapter3Assets, CurveV1AdapterStETH, ERC4626Adapter, YearnV2Adapter) is included in [contracts_gold_standard/](contracts_gold_standard/). The remaining 61 instances share bytecode with their corresponding sample by design (CREATE2-deployed parameterized clones) — verifying one Etherscan-listed instance is sufficient evidence for the rest.

---

## Scope — Oracles

26 deployed oracle instances on Ethereum, six contract types. The PriceOracleV3 router ([`0x599f58…fb85`](https://etherscan.io/address/0x599f585D1042A14aAb194AC8031b2048dEFdFB85)) sits at the head and dispatches per-token to the appropriate feed. Audit lineage: ABDK (2023-12 V3 Oracles), ChainSecurity (2024-08 V3 Oracles), WatchPug (2024-12 Pendle Oracle).

| Oracle type | Instances | Notes |
|---|---:|---|
| `RedstonePriceFeed` | 13 | Redstone-pull-based feeds — primary off-Chainlink price source |
| `CompositePriceFeed` | 3 | Combine two upstream feeds (e.g., wrapped + base) |
| `CurveCryptoLPPriceFeed` | 3 | Crypto Curve LP token pricing |
| `YearnPriceFeed` | 3 | Yearn V2 yvToken pricing |
| `CurveStableLPPriceFeed` | 2 | Stable Curve LP token pricing |
| `ERC4626PriceFeed` | 1 | Generic ERC4626 share token pricing |
| `ZeroPriceFeed` | 1 | Sentinel/disabled-feed slot |

V3.1 added eOracle (Hemi-only) per the DL `oraclesBreakdown` field — that feed lives on V3.1 deployments and is in scope of the 2025-04 ChainSecurity permissionless audit.

---

## Scope — Governance

| Contract | Address | Role | Audit |
|---|---|---|---|
| `Governor` | [`0x29B97F…f2c7`](https://etherscan.io/address/0x29B97F37B3E0C704bCFD785F5b7bBa2A0B7df2c7) | On-chain governance entry-point | ChainSecurity 2023-12 V3 Governance, Decurity 2023-12 V3 Governance |
| `ControllerTimelockV3` | [`0xD8CeB2…3347`](https://etherscan.io/address/0xD8CeB2580F22E13D17031740af2e91e9e7A13347) | Timelock for parameter-update transactions | ChainSecurity 2023-12 V3 Governance |
| `Create2Factory` | [`0x45d146…c873`](https://etherscan.io/address/0x45d146CAA25aa565Cfc7434926633f4F1C97c873) | CREATE2 factory used to deploy V3 contracts at vanity addresses | ChainSecurity 2023-12 V3 Governance |
| `BotListV3` | [`0x6B2418…053a`](https://etherscan.io/address/0x6B24183313074ABb6E3B30Ea206F20c12205053a) | Per-credit-account bot whitelist | MixBytes 2024-04 (bots-integrations) |
| `GearStakingV3` | [`0x2fcbD0…9c33`](https://etherscan.io/address/0x2fcbD02d5B1D52FC78d4c02890D7f4f47a459c33) | GEAR token staking → vote weight | ChainSecurity 2023-12 V3 Governance |
| `GaugeV3` (×3) | [`0xFFD0C7…B217`](https://etherscan.io/address/0xFFD0C7474B074F8469a627a2d062D106ABc3B217), [`0x245F3c…21c`](https://etherscan.io/address/0x245F3c6AcdaBc0Ca10eBfC50EE26ab85566fc21c), [`0xBFCA0D…2aB3`](https://etherscan.io/address/0xBFCA0Dafa3b7aEd9Db6A8B793Eba207BE1202aB3) | Per-pool quota gauge (vote escrow → quota allocation) | ChainSecurity 2023-12 V3 Core |
| `AddressProviderV3` | [`0x9ea7b0…321D`](https://etherscan.io/address/0x9ea7b04Da02a5373317D745c1571c84aaD03321D) | V3 registry root | ABDK 2023-12 V3 Core (registry within core scope) |

---

## Scope — Factory Architecture

`AccountFactoryV3` deploys [`CreditAccountV3`](https://github.com/Gearbox-protocol/core-v3/blob/e16559ae82f0f24c3dc29693c444f40d676ebff9/contracts/credit/CreditAccountV3.sol) instances per user when they open a credit position. Per v3-scope.md the V3 AccountFactory is in scope of the V3 audit lineage; the V1/V2-era [`AccountFactory`](https://etherscan.io/address/0x444CD42BaEdDEB707eeD823f7177b9ABcC779C04) at `0x444CD4…9C04` is also still operational (in v3-scope.md "Older contracts").

CreditAccount instances are not individually enumerated. They are uniform clones from a single bytecode template, instantiated on-demand per user. Auditing one CreditAccountV3 implementation establishes correctness for all clones; auditing the AccountFactoryV3 establishes correctness of the deployment path.

V3.1 introduces a different pattern: the V3.1 [`AddressProvider`](https://etherscan.io/address/0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38) stores **all known contract type → version → address mappings** in its registry, and contracts themselves are deployed via the [Bytecode Repository Portal](https://permissionless.gearbox.foundation/bytecode) using CreateX factory `0x77777777144339bdc3accee992d8d4d31734cb2e`. Discovery of V3.1 contracts is therefore intrinsically a runtime operation against the registry, not a static scrape.

---

## Scope — Multi-Chain Deployments

Each non-Ethereum V3 chain has an `AddressProviderV3` whose registry can be enumerated to find that chain's full V3 contract set. Etherscan v2's free RPC proxy is mainnet-only, so this brief verifies multi-chain APV3 via `getsourcecode` (verified-source confirmed) and via DL TVL on each chain (small but non-zero). Deeper enumeration of each chain's CreditManager / Pool / adapter set is left as a documented gap, mirroring the Equilibria gold-standard's treatment of HyperEVM/Plasma/Berachain.

| Chain | AddressProviderV3 | Verified source | DL TVL (USD) | Deployer |
|---|---|---|---:|---|
| Ethereum (1) | [`0x9ea7b0…321D`](https://etherscan.io/address/0x9ea7b04Da02a5373317D745c1571c84aaD03321D) | ✅ AddressProviderV3 v0.8.17 | $22,425,162 | [`0xf33ea4…99ba`](https://etherscan.io/address/0xf33ea4ee285b5dac9a6163d8939699d59a7199ba) (2023-10-26) |
| Optimism (10) | [`0x3761ca…6726`](https://optimistic.etherscan.io/address/0x3761ca4bfacfcffc1b8034e69f19116dd6756726) | ✅ AddressProviderV3 v0.8.17 | $20,938 | (free-tier API restricted; deployer inferred = V3 deployer 0xef3cfa…7b4b) |
| Arbitrum (42161) | [`0x7d04ec…f2af`](https://arbiscan.io/address/0x7d04ecdb892ae074f03b5d0aba03796f90f3f2af) | ✅ AddressProviderV3 v0.8.17 | $77,562 | [`0xef3cfa…7b4b`](https://arbiscan.io/address/0xef3cfa199137387047318a06efba931db07e7b4b) (2024-02-26) |
| Sonic (146) | [`0x4b27b2…c41b`](https://sonicscan.org/address/0x4b27b296273b72d7c7bfee1ace93dc081467c41b) | ✅ AddressProviderV3 v0.8.17 | $594 | [`0xef3cfa…7b4b`](https://sonicscan.org/address/0xef3cfa199137387047318a06efba931db07e7b4b) (2025-02-24) |

The 2024-02-26 Arbitrum deploy and the 2025-02-24 Sonic deploy both use the same V3 deployer EOA `0xef3cfa…7b4b`, which is also the deployer of the Ethereum V3 main batch on 2023-12-16. This is a clean, single-deployer pattern.

---

## Scope — Legacy (V1/V2)

V1/V2 era deployments remain operational but with reduced bug-bounty severity (per [v2-scope.md](https://github.com/Gearbox-protocol/security/blob/main/bug-bounty/v2-scope.md): "the bug bounty program is limited only to deployed contracts from the list below, and findings of Critical or High severity"). v3-scope.md additionally lists these eight V1/V2 contracts under "Older contracts" as still-operational and in V3 bounty scope:

| Contract | Address | Era | First seen | Audit |
|---|---|---|---|---|
| `ACL` | [`0x523dA3…6bb3`](https://etherscan.io/address/0x523dA3a8961E4dD4f6206DBf7E6c749f51796bb3) | V1 (2021-12-15) | Initial deploy | ChainSecurity 2021-12, MixBytes 2021-12 |
| `AccountFactory` | [`0x444CD4…9C04`](https://etherscan.io/address/0x444CD42BaEdDEB707eeD823f7177b9ABcC779C04) | V1 (2021-12-15) | Initial deploy | ChainSecurity 2021-12, MixBytes 2021-12 |
| `ContractsRegister` | [`0xA50d4E…4D99`](https://etherscan.io/address/0xA50d4E7D8946a7c90652339CDBd262c375d54D99) | V1 (2021-12-15) | Initial deploy | ChainSecurity 2021-12, MixBytes 2021-12 |
| `CurveV1StETHPoolGateway` | [`0xEf0D72…15b1`](https://etherscan.io/address/0xEf0D72C594b28252BF7Ea2bfbF098792430815b1) | V2 (2022-10-24) | LM era | ChainSecurity 2022-10 |
| `DegenNFT` | [`0xB829a5…E599`](https://etherscan.io/address/0xB829a5b349b01fc71aFE46E50dD6Ec0222A6E599) | V2 (2022-10-26) | Access NFT | ChainSecurity 2022-10 |
| `GearToken` | [`0xBa3335…9Ab5D`](https://etherscan.io/address/0xBa3335588D9403515223F109EdC4eB7269a9Ab5D) | V1 (2021-12-15) | Governance token (GEAR) | ChainSecurity 2021-12 |
| `LidoV1Gateway` | [`0x6f4b4a…C29D`](https://etherscan.io/address/0x6f4b4aB5142787c05b7aB9A9692A0f46b997C29D) | V2 (2022-10-24) | Lido stETH integration | ChainSecurity 2022-10 |
| `Timelock` | [`0xa133C9…f23b`](https://etherscan.io/address/0xa133C9A92Fb8dDB962Af1cbae58b2723A0bdf23b) | V2 (2023-06-12) | Legacy timelock | (governance audits) |

The full V2 inventory of 253 contracts (58 core + 195 integrations) is enumerated in [v2-scope.md](https://github.com/Gearbox-protocol/security/blob/main/bug-bounty/v2-scope.md); this brief does not enumerate them per-row because (a) the V2 bounty is limited to Critical/High severity findings and (b) V2 TVL is a small residual fraction of total. The `manifest_gold_standard.json` `v2_legacy_contract_summary` field captures one summary entry per V2 contract type with instance counts.

---

## Scope — Not Gearbox (v1-pipeline false positives)

The v1 pipeline brief at [agnt-brief/gearbox/SCOPE_NOTE.md](SCOPE_NOTE.md) `Docs Pages Referenced` lists nine PDFs whose protocol names are clearly not Gearbox. They were swept up because the pipeline followed Gearbox's Immunefi bounty link and scraped Immunefi's audit-listing index, which displays unrelated reports on the same page.

| URL fragment | Protocol named in filename | Verdict |
|---|---|---|
| `…/CCProtocol-_Audit_Report.pdf` | CCProtocol | ❌ NOT Gearbox |
| `…/Layer3.xyz-_Audit_Report.pdf` | Layer3.xyz (quest/loyalty) | ❌ NOT Gearbox |
| `…/Helios_Finance_-_Immunefi_Audit_Report.pdf` | Helios Finance | ❌ NOT Gearbox |
| `…/Halogen_Audit_1-_Immunefi_Audit_Report.pdf` | Halogen | ❌ NOT Gearbox |
| `…/Hoenn_-_Immunefi_Audit_Report.pdf` | Hoenn | ❌ NOT Gearbox |
| `…/Plume_-_Immunefi_Audit_Report.pdf` | Plume Network | ❌ NOT Gearbox |
| `…/Oak_Network-_Audit_Report_-_PaymentTreasury.pdf` | Oak Network | ❌ NOT Gearbox |
| `…/Plaza_Finance_-_Immunefi_Audit_Report.pdf` | Plaza Finance | ❌ NOT Gearbox |
| `…/HalalFi%20Audit%20Report.pdf` | HalalFi | ❌ NOT Gearbox |

All nine PDFs are hosted on either Contentful (`assets.ctfassets.net/t3wqy70tc3bv/…`) or Vercel blob storage, with no Gearbox attribution. Each filename names an unrelated protocol. The defect is firm-archive contamination at the docs-discovery stage of the v1 pipeline; trace at [docs/gold-standard/gearbox_v1_diff_analysis.md](../../docs/gold-standard/gearbox_v1_diff_analysis.md).

---

## Audit Coverage

### Audit history (URL-verified, 30/30 returned HTTP 200 on 2026-05-07)

| Date | Auditor | Filename | Scope layer |
|---|---|---|---|
| 2021-05 | Peckshield | [`Peckshield-03.05.2021.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20May%20-%20Peckshield-03.05.2021.pdf) | V1 |
| 2021-09 | Peckshield | [`Peckshield-10.08.2021.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Sep%20-%20Peckshield-10.08.2021.pdf) | V1 |
| 2021-12 | ChainSecurity | [`ChainSecurity_Gearbox_audit.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ChainSecurity_Gearbox_audit.pdf) | V1 |
| 2021-12 | ConsenSys Diligence | [`ConsensysDiligence _Fuzzing_report.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ConsensysDiligence%20_Fuzzing_report.pdf) | V1 fuzzing |
| 2021-12 | MixBytes | [`MixBytes_security_audit_report.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20MixBytes_security_audit_report.pdf) | V1 |
| 2022-08 | Sigma Prime | [`SigmaPrime_Gearbox_Smart_Contract_Security_Assessment_Report_v2.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Aug%20-%20SigmaPrime_Gearbox_Smart_Contract_Security_Assessment_Report_v2.pdf) | V1/V2 |
| 2022-09 | ConsenSys Diligence | [`Consensys Diligence.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Sep%20-%20Consensys%20Diligence.pdf) | V2 |
| 2022-10 | ChainSecurity | [`ChainSecurity report.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Oct%20-%20ChainSecurity%20report.pdf) | V2 |
| 2023-04 | ChainSecurity | [`ChainSecurity_Gearbox_V2.1.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Apr%20-%20ChainSecurity_Gearbox_V2.1.pdf) | V2.1 |
| 2023-08 | ChainSecurity | [`ChainSecurity_Gearbox_V2.1.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Aug%20-%20ChainSecurity_Gearbox_V2.1.pdf) | V2.1 |
| 2023-09 | ChainSecurity | [`ChainSecurity_Gearbox_V2.1.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Sep%20-%20ChainSecurity_Gearbox_V2.1.pdf) | V2.1 |
| 2023-10 | ChainSecurity | [`ChainSecurity_Gearbox_Protocol_Partial_Migration_to_V3_audit.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Oct%20-%20ChainSecurity_Gearbox_Protocol_Partial_Migration_to_V3_audit.pdf) | V2 → V3 migration |
| 2023-12 | ABDK | [`ABDK_Gearbox_Core_V3.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Core_V3.pdf) | V3 core |
| 2023-12 | ABDK | [`ABDK_Gearbox_Oracles_V3.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Oracles_V3.pdf) | V3 oracles |
| 2023-12 | ChainSecurity | [`ChainSecurity_Gearbox_Governance.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Governance.pdf) | V3 governance |
| 2023-12 | ChainSecurity | [`ChainSecurity_Gearbox_Integrations_V3.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Integrations_V3.pdf) | V3 integrations |
| 2023-12 | Decurity | [`Decurity_Gearbox_Governance.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20Decurity_Gearbox_Governance.pdf) | V3 governance |
| 2024-03 | ChainSecurity | [`ChainSecurity_Gearbox_Core_V3.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Mar%20-%20ChainSecurity_Gearbox_Core_V3.pdf) | V3 core |
| 2024-04 | MixBytes | [`mixbytes-bots-integrations.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-04-mixbytes-bots-integrations.pdf) | V3 bots + integrations |
| 2024-08 | ChainSecurity | [`ChainSecurity_Gearbox_Oracles_V3.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Aug%20-%20ChainSecurity_Gearbox_Oracles_V3.pdf) | V3 oracles |
| 2024-08 | Decurity | [`decurity-pendle-mellow.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-08-decurity-pendle-mellow.pdf) | V3 Pendle/Mellow integration |
| 2024-10 | ChainSecurity | [`chainsecurity-integrations.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-chainsecurity-integrations.pdf) | V3 integrations |
| 2024-10 | Decurity | [`decurity-sky-pyth.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-decurity-sky-pyth.pdf) | V3 Sky/Pyth integration |
| 2024-12 | WatchPug | [`Watchpug_Pendle_Oracle.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Dec%20-%20Watchpug_Pendle_Oracle.pdf) | V3 Pendle oracle |
| 2025-02 | Decurity | [`decurity-balancer-v3.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-02-decurity-balancer-v3.pdf) | V3 Balancer integration |
| 2025-02 | Nethermind | [`Nethermind AA audit.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2025%20Feb%20Nethermind%20AA%20audit.pdf) | V3.1 account abstraction |
| 2025-03 | ChainSecurity | [`chainsecurity-v3.1-upgrade.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-03-chainsecurity-v3.1-upgrade.pdf) | V3.1 upgrade |
| 2025-03 | SavantChat | [`SavantChat audit.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2025%20Mar%20%20SavantChat%20audit.pdf) | V3.1 |
| 2025-04 | ChainSecurity | [`chainsecurity-permissionless.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-04-chainsecurity-permissionless.pdf) | V3.1 permissionless |
| 2025-07 | ChainSecurity | [`chainsecurity-account-migration.pdf`](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-07-chainsecurity-account-migration.pdf) | V3.1 account migration |

**Distinct auditors (8):** ChainSecurity (primary, 13 reports), Decurity (4), ABDK (2), MixBytes (2), Peckshield (2), ConsenSys Diligence (2), Sigma Prime (1), WatchPug (1), Nethermind (1), SavantChat (1).

### Coverage by architecture layer

| Layer | Contracts in scope | Most recent audit | Re-audit due risk |
|---|---:|---|---|
| Pools (PoolV3 + accessories) | 9 | 2024-03 ChainSecurity V3 Core | low — core is mature |
| Credit engine (Manager/Facade/Configurator) | 27 | 2025-07 ChainSecurity V3.1 account-migration | low — re-audited within 1 year |
| Adapters (V3) | 67 | 2024-10 ChainSecurity Integrations | **medium-high** — new adapters added between audits |
| Adapters (V3.1 permissionless) | dynamic | 2025-04 ChainSecurity permissionless | medium — depends on per-deployment review |
| Oracles | 26 | 2024-12 WatchPug Pendle Oracle | medium — new feeds added between audits |
| Governance | ~7 (Governor + timelock + factory + bot + staking + 3 gauges) | 2023-12 (Decurity, ChainSecurity) | medium-high — oldest active layer |
| Account Factory + CreditAccount template | 2 | 2025-07 ChainSecurity account-migration | low |
| V1/V2 legacy | 8 in v3-scope.md "Older" + 253 in v2-scope.md | 2023 V2.1 audits | severity-reduced bounty; not retargeted |

### Gap analysis

- **Adapters added since the latest integrations audit** (2024-10 ChainSecurity) need per-adapter review. Per-adapter audits exist for Pendle/Mellow (2024-08), Sky/Pyth (2024-10), Balancer V3 (2025-02), but newer additions visible on [github.com/Gearbox-protocol/integrations-v3](https://github.com/Gearbox-protocol/integrations-v3) `main` branch should be checked for in-scope coverage.
- **V3.1 permissionless deployments on new chains** (Etherlink, Monad, Plasma, Hemi, Lisk, Somnia, Binance) hold ~$5.95M aggregate but were brought in under the 2025-04 ChainSecurity permissionless audit, not per-chain review. Each chain's adapter set should be enumerated against its own audit chain-of-trust before assigning audit-evaluable status.
- **V1/V2 layer (8 + 253 contracts)** is in low-priority bounty (Critical/High only). A scoping agent that targets V1/V2 contracts will spend audit budget on a section that the protocol's own bounty program de-prioritizes.
- **Governance layer** is the oldest still-operational subsystem (last audit 2023-12). If governance enables a new attack pattern (e.g., a quota gauge that allows adapter whitelisting via low-quorum vote), the 2023 audit may not cover it.

---

## Targeting Recommendation

For an audit allocation against Gearbox V3 specifically, in priority order:

1. **Adapters (highest priority).** 67 instances on Ethereum, plus dynamic V3.1 set. Bugs in adapters are the primary path to credit-account drain. Look for: missing return-value checks, oracle-bound assumptions, slippage caps that can be evaded, token approval re-entrancy, zero-share edge cases on ERC4626, fee-on-transfer token mishandling, Curve admin-fee accounting on adapter sells.
2. **V3.1 permissionless deployments on smaller chains** (Etherlink + Monad combined = $4.99M). The permissionless layer audit exists but per-chain integration sets weren't separately reviewed. The 2025-04 ChainSecurity permissionless audit and the 2025-07 account-migration audit are the relevant chain-of-trust documents.
3. **Oracle layer** (26 instances). New Redstone/eOracle feeds added since 2024-12 WatchPug Pendle audit. Composite price feeds and bespoke ERC4626/Yearn pricing carry the highest residual risk because they often depend on protocol-specific invariants.
4. **Governance + ControllerTimelockV3** (oldest unaudited surface; last touched 2023-12). Specifically: parameter-update path, whitelist mutation, and any bot/keeper-callable flows.
5. **Pool quota/gauge layer** (PoolQuotaKeeperV3 + GaugeV3, 6 instances total). Quota allocations are the privileged binding between governance vote outcomes and per-token borrow caps; bugs here are not adapter bugs but can still produce capital-misallocation.

The pool / credit-engine core itself is *not* the priority target. It has been audited eight times (ChainSecurity, ABDK across 2023–2025) and has been operationally stable through the 2024 TVL peak. New audits targeting it would replicate work already done.

---

## v1 Pipeline Errors

The v1 pipeline brief at [SCOPE_NOTE.md](SCOPE_NOTE.md) had every category of failure simultaneously. The most material defects:

- **Contract count: 13 reported vs. 147 actual on Ethereum** (94% miss rate). The pipeline's deployer-EOA expansion captured infrastructure helpers (DefillamaCompressor, MarketConfiguratorLegacy) and four chain-specific AddressProviderV3 instances, but missed every PoolV3, CreditManagerV3, CreditFacadeV3, adapter, and oracle. Root cause: deployer-EOA expansion does not reach contracts deployed via factory or governance.
- **TVL: $151,805,195 reported vs. $29,641,514 actual** on the 2026-04-29 snapshot date the v1 pipeline used (5.1× over-count). The on-chain snapshot in the v1 manifest was "$0" — the per-pool balance probe could not find the pools because the v1's contract list didn't include them.
- **Audits: 1 placeholder row vs. 30 actual.** The pipeline's docs-discovery stage *did* find 25 of the 30 real PDFs (in `Docs Pages Referenced`), but only 1 was lifted into the structured `Past Audits` table — and that one is a placeholder. There's a discovery-vs-extraction gap, not a discovery gap.
- **9 unrelated audit reports were attributed to Gearbox** (CCProtocol, Layer3, Helios Finance, Halogen, Hoenn, Plume, Oak Network, Plaza Finance, HalalFi). Root cause: the pipeline followed Gearbox's Immunefi bounty link and scraped Immunefi's audit-listing index, sweeping in every PDF on display.
- **Architecture detection: factories=none, proxies=none, integrations=none.** All three claims are wrong-type-of-wrong: there is no upgradeable-proxy architecture (correct null result, but not because the pipeline knew this — it ran the same null detection it runs on every protocol), AccountFactoryV3 deploys CreditAccount instances (factory architecture missed), and the integration surface is the dominant audit target (67 adapter instances missed entirely).

Full stage-level attribution at [docs/gold-standard/gearbox_v1_diff_analysis.md](../../docs/gold-standard/gearbox_v1_diff_analysis.md).

---

## Appendix

### Sources

- DeFiLlama protocol record: [`api.llama.fi/protocol/gearbox`](https://api.llama.fi/protocol/gearbox) (raw archived at [docs/gold-standard/dl_raw/gearbox.json](../../docs/gold-standard/dl_raw/gearbox.json))
- DL adapter source: [`DefiLlama-Adapters/projects/gearbox/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/gearbox/index.js)
- Gearbox security repo bug-bounty scope files:
  - [`v3-scope.md`](https://github.com/Gearbox-protocol/security/blob/main/bug-bounty/v3-scope.md) (147 contracts)
  - [`v3_1-scope.md`](https://github.com/Gearbox-protocol/security/blob/main/bug-bounty/v3_1-scope.md) (registry root + bytecode portal)
  - [`v2-scope.md`](https://github.com/Gearbox-protocol/security/blob/main/bug-bounty/v2-scope.md) (253 contracts, severity-reduced)
- Gearbox security audits index: [`audits/`](https://github.com/Gearbox-protocol/security/tree/main/audits) (30 PDFs, all HEAD-checked HTTP 200)
- Gearbox repos: [core-v3](https://github.com/Gearbox-protocol/core-v3), [oracles-v3](https://github.com/Gearbox-protocol/oracles-v3), [integrations-v3](https://github.com/Gearbox-protocol/integrations-v3), [governance](https://github.com/Gearbox-protocol/governance), [permissionless](https://github.com/Gearbox-protocol/permissionless), [core-v2](https://github.com/Gearbox-protocol/core-v2)
- V3.1 Bytecode Repository Portal: [permissionless.gearbox.foundation/bytecode](https://permissionless.gearbox.foundation/bytecode)
- Per-contract Etherscan verification: listed inline above; full source archive at [contracts_gold_standard/](contracts_gold_standard/)

### Caveats

- **TVL snapshot date is 2026-05-07 11:24 UTC**; values change daily. Historical comparison: v1 brief used 2026-04-29 with claimed $151.8M, but the historical DL `tvl[]` series at that date was $29.64M — the v1 figure is wrong, not stale.
- **Multi-chain enumeration is shallow.** Optimism, Arbitrum, and Sonic are confirmed at the AddressProviderV3 level only; per-chain pool/credit-manager/adapter sets were not enumerated (the registry getter call would require ~50 RPC calls per chain × 3 chains = 150 calls, and Etherscan v2 free-tier RPC proxy is mainnet-only). Per-chain TVL is small ($98K aggregate) so deeper enumeration was de-prioritized.
- **V3.1 permissionless deployments are not enumerated.** They are dynamically discoverable via the V3.1 [`AddressProvider`](https://etherscan.io/address/0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38) registry and the [Bytecode Repository Portal](https://permissionless.gearbox.foundation/bytecode). For a brief generated at a fixed moment, a static enumeration would be stale within days.
- **Adapter count is at the v3-scope.md commit hash** (`integrations-v3@302c635`), pinned 2023-12-16. Adapters added later (Pendle, Mellow, Sky, Pyth, Balancer V3, etc.) have their own per-adapter audits but are not enumerated in v3-scope.md or in this brief's manifest.
- **CreditAccount instances are factory-deployed clones** and are not enumerated. There is one user-account per active borrower; auditing CreditAccountV3 + AccountFactoryV3 establishes correctness for all clones.
- **Multisig membership and operator identity** are not in scope. The Governor / ControllerTimelockV3 admin keys are governance-controlled; the per-EOA membership of any administrative multisig was not traced.
- **Audit ↔ contract mapping is reconstructed from filenames + per-PDF scope sections, not operator-confirmed.** The `auditors` field on each manifest contract is the auditor list inferred from the audit-history table; cross-checking the scope sections of each PDF against the contract list would refine this.
- **One free-tier API limitation surfaced**: Etherscan v2's RPC proxy `eth_call` returns `"Free API access is not supported for this chain"` for chains 10, 42161, 146 — meaning multi-chain `version()` checks fall back to source-verification only.

### Generation metadata

- **Generated:** 2026-05-07
- **Method:** manual research, no pipeline involvement
- **Verification ledger:** [docs/gold-standard/gearbox_verification_ledger.md](../../docs/gold-standard/gearbox_verification_ledger.md)
- **Raw DL JSON archive:** [docs/gold-standard/dl_raw/gearbox.json](../../docs/gold-standard/dl_raw/gearbox.json)
- **Source-fetcher script:** [docs/gold-standard/fetch_gearbox_sources.py](../../docs/gold-standard/fetch_gearbox_sources.py)
- **Manifest:** [manifest_gold_standard.json](manifest_gold_standard.json) (151 contracts, 30 audits, 40 V2-legacy summary entries)
- **Verified contract sources:** [contracts_gold_standard/](contracts_gold_standard/) (56 priority contracts, 1,349 source files, 7,493 KB)
- **Peer briefs:** [agnt-brief/swell/brief_gold_standard.md](../swell/brief_gold_standard.md), [agnt-brief/equilibria/brief_gold_standard.md](../equilibria/brief_gold_standard.md)
