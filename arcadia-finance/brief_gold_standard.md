# Agentic Audit Brief: Arcadia Finance (Gold Standard)

> **Identity:** Arcadia Finance — a non-custodial composable cross-margin protocol for leveraged AMM-LP yield, deployed on Base (chain id 8453), Optimism (10), and Unichain (130). Two operational generations exist: V1 (Ethereum + Optimism, deprecated, residual TVL ~$23K) and V2 (Base/Optimism/Unichain, active, ~$7.45M TVL). The "Arcadia Protocol" stack underlies the user-facing "Arcadia Finance" application. Pragma Labs develops the protocol; Arcadia Protocol LLC operates the front-end.

## 1. Project Overview

| Field | Value |
|---|---|
| Category | Liquidity Manager / cross-margin DeFi accounts (DefiLlama: "Liquidity Manager") |
| TVL (V2) | $7,446,024 (DefiLlama, 2026-05-08) |
| TVL (V1, residual) | $23,083 (DefiLlama, 2026-05-08) |
| Chains (V2) | Base (≈99%), Optimism, Unichain |
| Chains (V1) | Ethereum, Optimism (deprecated) |
| Token | AAA (`0xaaa843fb2916c0B57454270418E121C626402AAa`, Base, ERC-20, immutable) — staked variant: stAAA |
| Audits | 2 V1 audits (SourceHat, Nethermind), 10 V2 audits in `arcadia-finance-audits/audits-v2/` |
| Hacks | V1 in 2023-07 (~$455K, vault-management reentrancy) and V2 in 2025-07 (~$2.5–3.5M, Rebalancer router-injection) |
| Status | Operational, post-incident-rebuild — two Sherlock audits since the V2 hack (2025-09 and 2026-01) |
| Cover | Nexus Mutual product 156, Base DeFi Pass via OpenCover |

**Core value proposition (per docs):** users get smart-contract-based "DeFi Accounts" (Margin or Spot) that batch transactions, manage concentrated-liquidity positions on Uniswap V3/V4 and Aerodrome (and its concentrated-liquidity fork "Slipstream"), and provide leveraged yield by borrowing from isolated USDC/WETH/cbBTC lending pools using the Account portfolio as collateral.

## 2. Security History

This protocol has been exploited twice. Both incidents inform what an audit agent should look for.

### V1 — 2023-07-10 — vaultManagementAction reentrancy (Ethereum + Optimism)

| Field | Value |
|---|---|
| Date | July 10, 2023 |
| Loss | ≈$455K – $460K (160 ETH + ≈$163K stablecoins) |
| Vector | A flash-loaned attacker called `vaultManagementAction()` with an attacker-controlled `actionHandler`. The Vault did not validate the handler against an allowlist and lacked reentrancy protection in the action callback; the handler re-entered the Vault and drained collateral. |
| Affected | V1 Vault contracts on Ethereum and Optimism. |
| Response | Smart contracts paused; on-chain message sent to attacker (TX `0x01e2683bfdb945fcb6af7ed6a656dbabb04d7c8135125184fd29f5665fd0546c`) requesting 90% return. No public confirmation of refund. |
| Fix | V1 wound down. V2 redesigned: Asset-Manager flow now requires the Account owner to explicitly call `setAssetManager(address, true)` and the new `flashAction()` runs a final `isAccountUnhealthy()` health check that reverts atomically if the account is left under-collateralised. |

### V2 — 2025-07-15 — Rebalancer router injection (Base)

| Field | Value |
|---|---|
| Date | July 15, 2025, 04:05 UTC (funded via Tornado Cash on July 14) |
| Loss (cited) | $2.5M (Cointelegraph, BitcoinEthereumNews) — primarily ~840 ETH equivalent moved to Ethereum |
| Loss (extended) | $3.5M including LP NFT positions (Guardrail.ai, DLNews, QuillAudits) |
| TVL impact | DefiLlama TVL dropped from $20.6M (2025-07-15) to $3.16M (2025-07-16); part stolen, part withdrawn pre-emptively |
| Attacker wallet | `0x0fa54E967a9CC5DF2af38BAbC376c91a29878615` |
| Attack contract | `0x6250DFD35ca9eee5Ea21b5837F6F21425BEe4553` |
| Exploit TX | `0x06ce76eae6c12073df4aaf0b4231f951e4153a67f3abc1c1a547eb57d1218150` |
| Vector | The pre-hack Rebalancer's `SwapLogic._swapViaRouter()` accepted **arbitrary router addresses without validation**. The attacker registered their own contract as the router. Inside the swap, `msg.sender == Rebalancer`, so the malicious "router" could re-enter `flashAction()` on every account that had whitelisted the Rebalancer as Asset Manager and withdraw LP NFTs to itself. |
| Affected | Pre-hack Slipstream Rebalancer (V1: `0x5802454749cc0c4A6F28D5001B4cD84432e2b79F`) and the SwapLogic library used by Slipstream / Uniswap V3 / Uniswap V4 Rebalancer variants. |
| Response | Rebalancer paused via Pause Guardian; protocol-wide Hexagate-driven pause triggered. Recovery Plan published with $ART recovery tokens, RebalancerSlipstreamV3 (`0x37c6258aEe125d520B6f03fc2cb490955050D557`) and AccountV3/V4 deployed. |
| Recovery | $ART token (`0x9089397444EF32F1777d2A9d0c0886592C8eF449`, ERC-20 1:1 USD claim) and $sART staked variant (`0x3889255C5a9A55137DfdF870a0C30A285978176A`); redemption funded by protocol fees and 50% of remaining USDC. Bounty offer to attacker (10%) was rejected. |
| Fix | (a) New `Rebalancer.sol` requires a "Router Trampoline" intermediary, isolating router calls from `msg.sender == Rebalancer`. (b) `RebalanceLogic.sol` now constrains rebalance parameters to "the optimal swap through the pool itself without slippage", limiting how much value an external swap can extract. (c) New `AccountV3` (Margin) `0x78Db6a136EdD0F70bEd7a6eb5ca2fDF6eE16E8D6` and `AccountV4` (Spot) `0xe976BFb44f9322164ca6fdA6C5B84fBb6163D442` deployed across all 3 chains, audited by Sherlock 2025-09. |

**Common thread for an audit agent:** both incidents are *Asset-Manager/handler privilege-escalation* problems. The Account model deliberately gives Asset Managers full access to account assets (`flashAction()` lets them withdraw, transfer-from-owner, run arbitrary calldata, and re-deposit). When an Asset Manager calls untrusted external code with `msg.sender == AssetManager`, that external code inherits the privilege. **Validate every external-call parameter that influences who `msg.sender` reaches** — router, hook, action target, callback contract.

## 3. Architecture Overview

Arcadia is built around **DeFi Accounts** — user-owned smart-contract wallets created by a Factory.

```
                 ┌─────────────────────┐
                 │  Factory  (ERC-721) │   1 NFT == 1 Account, owner = NFT holder
                 └──────────┬──────────┘
                            │ deploys
       ┌────────────────────▼────────────────────┐
       │               Arcadia Account            │
       │  ┌──────────────┐   ┌───────────────┐    │
       │  │  AccountV3   │   │  AccountV4    │    │   Margin and Spot variants
       │  │  (Margin)    │   │  (Spot)       │    │   V1/V2 deprecated stubs on
       │  └──────────────┘   └───────────────┘    │   Optimism / Unichain
       │   - holds all user assets                │
       │   - delegates rebalancing/compounding    │
       │     to whitelisted Asset Managers        │
       │   - opens margin accounts with           │
       │     permitted Creditors                  │
       └─┬────────────┬────────────┬────────────┬─┘
         │            │            │            │
         │ asset      │ price      │ borrow     │ liquidate
         ▼            ▼            ▼            ▼
   Asset Modules    Registry     Lending       Liquidator
   (Pricing)       (recursive    Pools          (Dutch auction)
                    lookups)     (USDC/WETH/cbBTC,
                                  ERC-4626 Tranches)
```

Key design properties:

- **Self-custodial, non-upgradeable accounts.** An Account can be migrated to a new Account-implementation version, but only on opt-in. Arcadia cannot force-upgrade.
- **Append-only Registry of Asset Modules.** Pricing logic is modular (one Asset Module per token type — ERC-20, Uniswap V3, Uniswap V4, Aerodrome, Slipstream, Stargate, AlienBase). Modules can only be appended, never overwritten or removed.
- **Cross-margin.** A single Account can hold many positions; total collateral covers total debt.
- **Isolated lending pools.** USDC, WETH, cbBTC pools are independent ERC-4626 vaults via `Tranche` shares. Approvals go to LendingPool (not Tranche) — a deviation from strict ERC-4626 worth noting in integrations.
- **Asset-Manager privilege model.** Compounders, Rebalancers, Yield Claimers, Merkl Operators, CoW Swapper — each is a contract the Account owner explicitly opts-in via `setAssetManager()`. While set, the Asset Manager has full asset access via `flashAction()`. Health-check at end of `flashAction()` ensures Margin Accounts remain solvent.
- **Three-step liquidation Dutch auction.** Initiator triggers, bidders buy partial portions, terminator finalises when the account is healthy again.

## 4. On-Chain TVL Summary

DefiLlama V2 TVL (2026-05-08): **$7,446,024**.

| Chain | DL TVL (USD) | Note |
|---|---:|---|
| Base | $7,361,358 | concentrates ≈99% of V2 TVL |
| Optimism | $84,576 | minor activity |
| Unichain | $91 | newest deployment, near zero |

Direct lending-pool reserve spot-check via Alchemy RPC (2026-05-08):

| Chain | Pool | Direct reserve | USD (approx) |
|---|---|---:|---:|
| Base | LendingPool USDC `0x3ec4…1dF1` | 339,357 USDC | $339,357 |
| Base | LendingPool WETH `0x803e…98E2` | 31.83 WETH | $72,519 |
| Base | LendingPool cbBTC `0xa37e…5e3b` | 8.89 cbBTC | $709,087 |
| Optimism | LendingPool WETH (same) | 0.288 WETH | $655 |
| Optimism | LendingPool USDC (same) | 1,337 USDC | $1,337 |
| Unichain | LendingPool WETH/USDC | 0 | $0 |
| **Direct reserves** | | | **≈$1.12M** |

The remaining ≈$6.3M is value of LP positions held inside user Arcadia Accounts as collateral. This matches the DL methodology: *"sum of all Account values and the available balance in the liquidity pools."*

## 5. Scope — Core Protocol

Same address on Base / Optimism / Unichain unless noted. Compiler versions vary by chain (Base v0.8.22, Optimism v0.8.34, Unichain v0.8.30).

| Contract | Address | Purpose |
|---|---|---|
| Factory | `0xDa14Fdd72345c4d2511357214c5B89A919768e59` | Deploys Accounts as ERC-721; tracks ownership |
| Registry | `0xd0690557600eb8Be8391D1d97346e2aab5300d5f` | Coordinates Asset Modules; recursive pricing |
| Liquidator | `0xA4B0b9fD1d91fA2De44F6ABFd59cC14bA1E1a7Af` | Dutch-auction liquidation engine |

### Account Implementations

| Version | Address | Type | Live on |
|---|---|---|---|
| AccountV1 | `0xbea2B6d45ACaF62385877D835970a0788719cAe1` | Margin (legacy) | Base (full) — Optimism / Unichain hold an `AccountPlaceholder` stub at this address |
| AccountV2 | `0xd8AF1F1dEe6EA38f9c08b5cfa31e01ad2Bfbef28` | Spot (legacy) | Base (full) — Optimism / Unichain placeholder |
| AccountV3 | `0x78Db6a136EdD0F70bEd7a6eb5ca2fDF6eE16E8D6` | **Margin (current)** | All 3 chains |
| AccountV4 | `0xe976BFb44f9322164ca6fdA6C5B84fBb6163D442` | **Spot (current)** | All 3 chains |

V3/V4 are post-hack rebuilds, audited Sherlock 2025-09.

## 6. Scope — Lending / Creditors

| Contract | Address | Live on |
|---|---|---|
| LendingPool WETH | `0x803ea69c7e87D1d6C86adeB40CB636cC0E6B98E2` | Base, Optimism, Unichain |
| LendingPool USDC | `0x3ec4a293Fb906DD2Cd440c20dECB250DeF141dF1` | Base, Optimism, Unichain |
| LendingPool cbBTC | `0xa37e9b4369dc20940009030bfbc2088f09645e3b` | Base only |
| SeniorTranche WETH | `0x393893caeB06B5C16728bb1E354b6c36942b1382` | Base, Optimism, Unichain |
| SeniorTranche USDC | `0xEFE32813dBA3A783059d50e5358b9e3661218daD` | Base, Optimism, Unichain |
| SeniorTranche cbBTC | `0x9c63a4c499b323a25d389da759c2ac1e385eec92` | Base only |
| Wrapped Tranche WETH | `0xD82BFa27D49e5a394ba371B293DaE65E9B7a8C60` | Base, Optimism, Unichain |
| Wrapped Tranche USDC | `0xbc10718571fcB3c3F67800e7C0887E450D2Ff398` | Base, Optimism, Unichain |
| Wrapped Tranche cbBTC | `0x7Cc8013e784418dc9771403DD057f55cEb34Ba3A` | Base only |

Lending pools are creditors that issue debt against Account collateral. Tranches accept user deposits and represent senior-tranche shares. Wrapped Tranches are strict ERC-4626 wrappers around Tranches for integration compatibility (Superform, Harvest Finance use the wrapper).

Auditing focus: ERC-4626 interest-share accounting, default-event distribution (bad debt is shared pro-rata across LPs), the non-standard approval flow (approve LendingPool, deposit on Tranche), and rounding-direction invariants.

## 7. Scope — Asset Modules (Pricing)

Same address per chain unless noted; some modules only exist where the underlying protocol does. **All append-only via Registry.**

| Module | Address | Underlying | Live on |
|---|---|---|---|
| ERC20PrimaryAM | `0xfBecEaFC96ed6fc800753d3eE6782b6F9a60Eed7` | Generic ERC-20s | All 3 chains |
| UniswapV3AM | `0x21bd524cC54CA78A7c48254d4676184f781667dC` | Uniswap V3 LP NFTs | All 3 chains |
| UniswapV4HooksRegistry | `0x8B0fd5352caE4E7c86632CA791229d132Fef5D3C` | Uniswap V4 LP w/ hooks | All 3 chains |
| DefaultUniswapV4AM | `0xb808971ea73341b0d7286B3D67F08De321f80465` | Uniswap V4 default-hook positions | All 3 chains |
| AerodromePoolAM | `0xfe0FA1FD8F8E889062F03e2f126Fc7B9DE6091A5` | Aerodrome volatile + stable LP | Base (mainly), all 3 |
| WrappedAerodromeAM | `0x17B5826382e3a5257b829cF0546A08Bd77409270` | Aerodrome via wrapper | All 3 chains |
| StakedAerodromeAM | `0x9f42361B7602Df1A8Ae28Bf63E6cb1883CD44C27` | Aerodrome staked | All 3 chains |
| SlipstreamAM (V1) | `0xd3A7055bBcDA4F8F49e5c5dE7E83B09a33633F44` | Aerodrome Slipstream concentrated LP | All 3 chains |
| StakedSlipstreamAM (V1) | `0x1Dc7A0f5336F52724B650E39174cfcbbEdD67bF1` | Slipstream + AERO staking | All 3 chains |
| SlipstreamV2AM | `0x3aDE1F1FdC666B1bFAd376345EA878D1c11EB73B` | Slipstream V2 | Base only |
| SlipstreamV3AM | `0xcaf4167dE878Cfb23D9912b1ff5869F2b3527189` | Slipstream V3 | Base only |
| StakedSlipstreamV2AM | `0xBed6C3E35B9B1e044b3Bc71465769EdFDC0FDD4c` | Staked Slipstream V2 | Base only |
| StakedSlipstreamV3AM | `0xE0F20BE5886F11CbcD2cb5bA9987Bcbbf1d8ca7b` | Staked Slipstream V3 | Base only |
| StargateAM | `0x20f7903290bF98716B62Dc1c9DA634291b8cfeD4` | Stargate LP | Base, Optimism |
| StakedStargateAM | `0xae909e19fd13C01c28d5Ee439D403920CF7f9Eea` | Staked Stargate | Base, Optimism |
| AlienBaseAM | `0x79dD8b8d4abB5dEEA986DB1BF0a02E4CA42ae416` | AlienBase (UniV3 fork) | Base only |

Auditing focus: recursive pricing — Asset Module → Registry → underlying Asset Module — must terminate; flash-loan resistance; TWAP-tickness assumptions in Slipstream/Uniswap V3/V4 modules; the V4 hook registry's allow-list / hook-whitelist enforcement.

## 8. Scope — Asset Managers (the V2 hack target)

These contracts have permissioned access to user accounts via `flashAction()`. The **Slipstream / Uniswap V3 / Uniswap V4 Rebalancer family is the contract class that was exploited in July 2025.** Post-hack versions deployed across all chains use a Router-Trampoline pattern.

### Compounders (auto-compound LP fees)

| Contract | Address | Live on |
|---|---|---|
| CompounderSlipstreamV1 | `0x467837f44A71e3eAB90AEcfC995c84DC6B3cfCF7` | All 3 chains |
| CompounderSlipstreamV2 | `0x35e59448C7145482E56212510cC689612AB4F61f` | Base |
| CompounderSlipstreamV3 | `0xd42A3Ac56456bD5422835B36C35Cacb6448ddCd9` | Base |
| CompounderUniswapV3 | `0x02e1fa043214E51eDf1F0478c6D0d3D5658a2DC3` | All 3 chains |
| CompounderUniswapV4 | `0xAA95c9c402b195D8690eCaea2341a76e3266B189` | All 3 chains |

### Rebalancers (auto-rebalance LP positions — direct hack target)

| Contract | Address | Live on |
|---|---|---|
| RebalancerSlipstreamV1 | `0x5802454749cc0c4A6F28D5001B4cD84432e2b79F` | All 3 chains *(this is the address class that included the exploited variant)* |
| RebalancerSlipstreamV2 | `0x953Ff365d0b562ceC658dc46B394E9282338d9Ea` | Base |
| RebalancerSlipstreamV3 | `0x37c6258aEe125d520B6f03fc2cb490955050D557` | Base |
| RebalancerUniswapV3 | `0xbA1D0c99c261F94b9C8b52465890Cca27dd993Bd` | All 3 chains |
| RebalancerUniswapV4 | `0x01EDaF0067a10D18c88D2876c0A85Ee0096a5Ac0` | All 3 chains |

The default Initiator address `0xDc9B596ce15F859673D1Be72e2Aadd41DD3aC4fE` is an off-chain operator (EOA-or-contract that submits rebalances); not part of the protocol scope but is the privileged Initiator role across all four rebalancer addresses.

### Yield Claimers (claim staking rewards to a recipient)

| Contract | Address | Live on |
|---|---|---|
| YieldClaimerSlipstreamV1 | `0x5a8278D37b7a787574b6Aa7E18d8C02D994f18Ba` | All 3 chains |
| YieldClaimerSlipstreamV2 | `0xc8bF4B2c740FF665864E9494832520f18822871C` | Base |
| YieldClaimerSlipstreamV3 | `0x8c1Fbf38118fD5A704b6E7babcB7AF1a9A291980` | Base |
| YieldClaimerUniswapV3 | `0x75Ed28EA8601Ce9F5FbcAB1c2428f04A57aFaA16` | All 3 chains |
| YieldClaimerUniswapV4 | `0xD8aa21AB7f9B8601CB7d7A776D3AFA1602d5D8D4` | All 3 chains |

### Other Asset Managers

| Contract | Address | Live on |
|---|---|---|
| CoW Swapper | `0xc928013A219EC9F18dE7B2dee6A50Ba626811854` | Base |
| Merkl Operator | `0x969F0251360b9Cf11c68f6Ce9587924c1B8b42C6` | All 3 chains |

## 9. Scope — Position Manager Wrappers

External Uniswap/Aerodrome NPMs are out of scope. Arcadia's wrappers are in scope.

| Wrapper | Address | Live on |
|---|---|---|
| Slipstream V2 PM | `0xa990C6a764b73BF43cee5Bb40339c3322FB9D55F` | Base |
| Slipstream V3 PM | `0xe1f8cd9AC4e4A65F54f38a5CdAfCA44f6dD68b53` | Base |
| Wrapped Staked Slipstream | `0xD74339e0F10fcE96894916B93E5Cc7dE89C98272` | All 3 chains |
| Wrapped Staked Slipstream V2 | `0x147a2CcbAF4521ad209A2875AE0B3c496f4B25a4` | Base |
| Wrapped Staked Slipstream V3 | `0x9189BC25f8faC157B4D87b0b3c14F56bA1477d53` | Base |

## 10. Scope — Oracle / Pricing

| Contract | Address | Live on |
|---|---|---|
| ChainlinkOM | `0x6a5485E3ce6913890ae5e8bDc08a868D432eEB31` | All 3 chains |

Single oracle module — all primary asset prices come through a Chainlink wrapper. Auditing focus: staleness checks, decimals normalisation, base-currency conversion, behaviour on Chainlink feed deprecation.

## 11. Scope — Operational Periphery

| Asset | Address | Chain | Note |
|---|---|---|---|
| AAA token | `0xaaa843fb2916c0B57454270418E121C626402AAa` | Base | Immutable ERC-20, governance/utility |
| stAAA token | `0xDeA1531d8a1505785eb517C7A28526443df223F3` | Base | Staked AAA (rebalancer-quota benefits) |
| ART (Recovery Token) | `0x9089397444EF32F1777d2A9d0c0886592C8eF449` | Base | 1:1 USD claim post-hack |
| stART (Staked Recovery) | `0x3889255C5a9A55137DfdF870a0C30A285978176A` | Base | Pro-rata passive USDC redemption |
| Gas Relayer (operational EOA) | `0xD938C8d04cF91094fecAF0A2018EAac483a40137` | Base | AAA-funded rebalancer gas relay |

**Roles** (per docs/security-and-risk/roles): Owner, Risk Manager, Pause Guardian — all Safe multisigs. Specific multisig addresses, threshold, and timelock duration are not published. Treat as not-on-chain-documented and verify at audit time.

**Circuit breakers:** Hexagate monitoring drives an automated protocol-wide pause on suspicious activity.

**User cover:** Nexus Mutual product 156, Base DeFi Pass via OpenCover.

## 12. Scope — V1 Legacy

V1 protocol on Ethereum and Optimism is operationally deprecated:

- DefiLlama V1 TVL: $23,083 (Ethereum + Optimism, 2026-05-08, mostly stranded user positions)
- The 2023-07-10 hack was on V1.
- New users go to V2 on Base/Optimism/Unichain.
- V1 contracts (Vaults / Factories / Liquidator) are not actively scoped here — any new audit work that touches V1 should treat it as legacy and prioritise migration off the protocol.

## 13. Audit Coverage

### Audit history

| Date | Auditor | Scope | Where |
|---|---|---|---|
| 2022-06 | SourceHat (Solidity Finance) | Factory / Vault / Liquidator / Registry — initial audit | sourcehat.com/audits/ArcadiaFinance |
| 2022-Q4 → 2023-Q1 | Nethermind | Complete codebase Arcadia V1 | NethermindEth/PublicAuditReports `NM0072-FINAL_ARCADIA.pdf` |
| 2023-12 | Trust Security | Complete codebase Arcadia V2 | `arcadia-finance-audits/audits-v2/2023-12 Trust Security.pdf` |
| 2024-01 | Renascence | Complete codebase Arcadia V2 | `audits-v2/2024-01 Renascense.pdf` |
| 2024-01 | Pashov Audit Group | Complete codebase Arcadia V2 | `audits-v2/2024-01 Pashov Group.pdf` |
| 2024-02 | Sherlock contest | Complete codebase Arcadia V2 | `audits-v2/2024-02 Sherlock.pdf` |
| 2024-04 | Sherlock contest | Aerodrome Asset Modules | `audits-v2/2024-04 Sherlock.pdf` |
| 2024-06 | Renascence | Aerodrome staked Slipstream, Auto-compounder, Tranche Wrapper | `audits-v2/2024-06 Renascense.pdf` |
| 2024-10 | Pashov Group | Spot Accounts, Uniswap V4 Asset Module | `audits-v2/2024-10 Pashov Group.pdf` |
| 2025-01 | Renascence | Staking contracts | `audits-v2/2025-01 Renascense.pdf` |
| 2025-09 | Sherlock | New Account versions, multichain deployment (post-hack) | `audits-v2/2025-09 Sherlock.pdf` |
| 2026-01 | Sherlock | (latest, scope not yet documented on docs site) | `audits-v2/2026-01 Sherlock.pdf` |

### Coverage by architecture layer

| Layer | Last covered | Notes |
|---|---|---|
| Core (Factory / Registry / Liquidator) | Multi-auditor 2023-12 → 2024-02 | Sherlock 2025-09 / 2026-01 likely re-touched |
| Account implementations | AccountV1/V2 covered 2023-12 → 2024-02; AccountV3/V4 audited Sherlock 2025-09 |
| Lending pools / Tranches | 2024-06 (Renascence — Tranche Wrapper) | Older code well-covered |
| Asset Modules — Uniswap V3 | 2023-12 → 2024-02 | |
| Asset Modules — Uniswap V4 | 2024-10 (Pashov) | |
| Asset Modules — Aerodrome | 2024-04 (Sherlock contest) + 2024-06 (Renascence) | |
| Asset Modules — Slipstream V2/V3 | Partial; V3 family only briefly visible to 2025-09 Sherlock | **Highest priority gap** |
| Asset Managers — Compounder (Slipstream/UniV3/UniV4) | 2024-06 (Renascence Auto-compounder) | UniV4 Compounder less covered |
| Asset Managers — Rebalancer | **Audited prior to July 2025 hack but exploited.** Post-hack RebalancerSlipstreamV3 + Router Trampoline architecture audited 2025-09 |
| Asset Managers — Yield Claimer | Coverage uncertain — no dedicated mention |
| Asset Managers — CoW Swapper | Pashov 2024-10 likely partial |
| Asset Managers — Merkl Operator | No dedicated public review found |
| Oracle (ChainlinkOM) | 2023-12 → 2024-02 | |
| Recovery system (ART/stART/Controller) | No public audit listed for `recovery-token` repo |

### Gap analysis

1. **`recovery-token/` repo (RecoveryToken.sol, RecoveryController.sol)** — claims to be immutable; no public audit listed. This holds user redemption rights post-hack and is a high-trust contract.
2. **Slipstream V2/V3 modules and managers (`SlipstreamV2AM`, `SlipstreamV3AM`, `Staked*AM`, `RebalancerSlipstreamV2/V3`, `CompounderSlipstreamV2/V3`, `YieldClaimerSlipstreamV2/V3`)** — deployed Base-only, only the latest passed Sherlock 2025-09. Earlier intermediate versions (V2 line) may have been live in production with limited external review.
3. **CompounderUniswapV4 / YieldClaimerUniswapV4 / RebalancerUniswapV4** — Uniswap V4 path is recent; only Pashov 2024-10 covers V4 Asset Module, not V4 manager-side flows in the new Router-Trampoline architecture.
4. **Cross-chain compiler-version drift** — same source, three compiler versions (v0.8.22 Base, v0.8.30 Unichain, v0.8.34 Optimism). Subtle differences in panic-code handling, SMTChecker, intermediate-rep optimizer, and library inlining can introduce per-chain divergences not exercised by single-chain test suites.
5. **Sherlock 2026-01** — scope not yet on docs site; assume some recent additions remain ahead of public-facing audit coverage.

## 14. Targeting Recommendation

For an audit agent walking into Arcadia today, ranked by severity * likelihood:

1. **Asset-Manager privilege boundary** — every contract that the Account opts-in via `setAssetManager()` (Compounders, Rebalancers, Yield Claimers, Merkl Operator, CoW Swapper, future custom managers). The two historical hacks both exploited insufficient validation of *who* gets called with `msg.sender == AssetManager`. Trace every external call inside `flashAction()` flows.
2. **Router and hook injection points** — the V2 hack was specifically a Router-injection bug. Now there's a Router Trampoline; verify the Trampoline's allowlist is genuinely immutable, that its callers can be the Rebalancer only, and that no other call path lets an attacker substitute a router/hook contract address in `swapData`/`actionTargetData`.
3. **`flashAction()` on the Account** — the health check is the only thing standing between an under-collateralised state and bad debt. Examine: numeric edge cases of `isAccountUnhealthy()`, asset-pricing recursion bound, behaviour with stale Chainlink feeds, partial-state revert atomicity, and the `transferFromOwnerData` permit-replay surface.
4. **Liquidator Dutch-auction price decay and partial-fill accounting** — exponential-decay model, cutoff-time fallback to protocol owner, end-auction reward split. Reentrancy across `bid()` → `_calculateRewards()` → external creditor callback.
5. **Tranche / LendingPool ERC-4626 deviations** — non-standard approval flow (approvals go to LendingPool, not Tranche). Bad-debt distribution, pro-rata default-event accounting, interest-rate update timing.
6. **UniswapV4HooksRegistry hook allowlist** — controls which V4 hook permutations are price-able; misconfigured permutations could let a malicious hook influence positions' on-chain valuation.
7. **Recovery system (ART/stART/RecoveryController)** — no public audit; holds redemption rights for victim USD claims. Examine the redemption math, anti-front-run mechanics, and admin keys.
8. **Compiler-version cross-chain drift** — sample at least one Asset Module across all three chains and confirm bytecode divergence is benign (constructor args, immutables) vs accidental semantic change.

Reflexively de-prioritise: legacy V1 (Ethereum/Optimism) — minimal residual TVL, deprecated; tokens (AAA, stAAA — immutable, simple).

## 15. Appendix

- **Repos:**
  - `arcadia-finance/accounts-v2` (tags: v2.0.0, v2.1.0, v2.1.1, v2.2, v2.3.0)
  - `arcadia-finance/lending-v2` (tags: v2.0.0, v2.0.1, v2.0.2, v2.1.0)
  - `arcadia-finance/asset-managers` (tags: v2.0.0, v2.0.1, v2.1.0, v2.2.0)
  - `arcadia-finance/arcadia-finance-audits` (PDF audit collection)
  - `arcadia-finance/recovery-token` (Recovery Tokens / Controller)
  - `arcadia-finance/whitepapers` (`main.pdf` whitepaper)
- **Docs:** `https://docs.arcadia.finance` (`llms-full.txt` is the structured export)
- **DefiLlama slugs:** `arcadia-finance` (parent), `arcadia-v2` (active), `arcadia-v1` (legacy)
- **Block explorers:** `basescan.org`, `optimistic.etherscan.io`, `uniscan.xyz`
- **Cover:** `v2.nexusmutual.io/cover/product/156`, `opencover.com/arcadia`, `opencover.com/basepass`
- **Risk dashboard:** `portal.llamarisk.com/arcadia/overview`
- **AccountV1.sol reference (Margin):** `arcadia-finance/accounts-v2/blob/v2.0.0/src/accounts/AccountV1.sol`
- **AccountV3.sol reference (Margin, post-hack):** `arcadia-finance/accounts-v2/blob/v2.3.0/src/accounts/AccountV3.sol`
- **Rebalancer.sol (post-hack with Router Trampoline):** `arcadia-finance/asset-managers/blob/main/src/cl-managers/rebalancers/Rebalancer.sol`
