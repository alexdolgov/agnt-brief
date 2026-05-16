# Agentic Brief: Asymmetry Finance (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md), [`manifest_gold_standard.json`](manifest_gold_standard.json), and [`contracts_gold_standard/`](contracts_gold_standard/). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** Asymmetry Finance (parent DL slug `asymmetry`, child slugs `asymmetry-finance` + `asymmetry-usdaf`)
- **Website:** asymmetry.fi
- **Source repos:** four production repos under `github.com/asymmetryfinance` — `safeth` (LST basket), `afeth` (auto-compounding ETH), `afCVX` (CVX yield vault), `USDaf` + `USDaf-v2` (Liquity-V2 CDP fork)
- **DL category:** parent **Indexes** (LST stack framing) + child slug **CDP** (USDaf)
- **Chains (verified):** **1 (Ethereum) only.** No L2 deployments.
- **TVL:** **$3.39M total** = $2.36M `asymmetry-finance` + $1.03M `asymmetry-usdaf`, plus $0.28M ASF staking (DL `staking` bucket). **DL USDaf TVL undercounts the dominant Jan-2025 deployment**; see TVL Methodology Note in [`brief_gold_standard.md`](brief_gold_standard.md).
- **Lifecycle:** **active, multi-product, mature.** safETH live since 2023-05-10. afETH live since 2024-02-19. afCVX live since 2024-05-02. veASF/ASF live since 2024-10-22. USDaf has had **three distinct mainnet deployments** (2025-01 / 2025-05 / 2025-07).
- **Audit history:** 8 direct external audits across 6 auditors (Code4rena ×3 for safETH and afETH; Zellic for safETH; adrianromero solo + yAudit ×2 for afCVX and veASF) + 2 Cantina competitions (USDaf-related) + ~4 inherited Liquity V2 audits applicable to USDaf (Coinspect + ChainSecurity + Dedaub + Certora).
- **Tier:** **Tier 2 — multi-product LST/CDP protocol with deep audit history.**
- **Commercial fit:** Multi-product audit targeting. Interesting gap concentrates in **afCVX post-Apr-2025 changes**, **USDaf May/Jul-2025 deployment deltas**, and **AfEthRelayer**.

Asymmetry Finance has **44 canonical contracts** enumerated in this gold standard across **4 product systems** + **3 USDaf mainnet deployments** + **1 admin multisig** on Ethereum:
- safETH: 8 (7 transparent proxies + ProxyAdmin)
- afETH: 6 (3 proxies + 3 implementations)
- afCVX: 4 (2 SimpleProxy + 2 implementations)
- veASF + ASF: 2
- USDaf Jan-2025 (dominant deployment): 21 (5 protocol + 15 branch + 1 governance)
- USDaf May-2025 (DL adapter v1): 2 (CollateralRegistry + BoldToken)
- USDaf Jul-2025 (DL adapter v2): 1 (CollateralRegistry only enumerated; branches require event spelunking)

The v1 pipeline brief renders only **4 contracts** — undercounting by ~11× and including **2 wrong attributions** (Curve crvUSD oracles `CryptoWithStablePriceWBTC` + `CryptoWithStablePriceTBTC` are NOT Asymmetry).

---

## Lifecycle and Recent Activity

Lifecycle status: **active**. Verified by Etherscan `getcontractcreation` against the canonical addresses:

- **2023-05-10:** safETH mainnet launch
- **2024-02-19:** afETH mainnet launch
- **2024-05-02:** afCVX mainnet launch
- **2024-10-22:** ASF token + veASF locker launch
- **2025-01-17 to 2025-02-04:** USDaf Jan-2025 deployment (21 contracts: WETH/wstETH/rETH branches, governance)
- **2025-05-24:** USDaf May-2025 deployment (CollateralRegistry + BoldToken)
- **2025-07-22:** USDaf Jul-2025 deployment (CollateralRegistry)
- **2025-10-27:** Most recent code commit on the `afCVX` repo (active maintenance signal)

Lifecycle source: **etherscan_getcontractcreation** + **github_commits**. Most recent deployment: USDaf Jul-2025 (deployed ~10 months ago). The v1 pipeline reports `lifecycle = default_fallback`; the timeline above is derivable from public APIs.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **44 contracts across 1 chain (Ethereum)**.

External-audit coverage breakdown:
- **safETH (8 contracts):** 100% — Zellic + Code4rena 2023-03 + Code4rena 2023-05 (mitigation) cover the system; OZ ProxyAdmin upstream.
- **afETH (6 contracts):** 67% direct (Code4rena 2023-09) + 33% partial (AfEthRelayer not named).
- **afCVX (4 contracts):** 100% — yAudit Apr-2025 + adrianromero solo May-2024.
- **veASF + ASF (2 contracts):** 100% — yAudit veASF Jun-2024.
- **USDaf Jan-2025 (21 contracts):** 100% inherited — Liquity V2 audits (Coinspect + ChainSecurity + Dedaub + Certora) apply to the fork.
- **USDaf May-2025 (2 contracts):** inherited Liquity V2 + 1 Cantina competition (scope unconfirmed).
- **USDaf Jul-2025 (1 contract enumerated):** inherited Liquity V2 + 1 Cantina competition (scope unconfirmed).

**Priority order** (economic exposure × novelty × audit gap):

1. **afCVX post-Apr-2025 changes** — yAudit covered a specific impl version; the repo has continued to be updated through Oct-2025.
2. **USDaf May-2025 + Jul-2025 deployment deltas** — Liquity-V2 inheritance covers the trove logic but per-deployment customization may not be in any specific report.
3. **AfEthRelayer** — small surface, not explicitly in code4rena 2023-09 contest.
4. **safETH version-rotation** — Swell/StaFi/Ankr derivative wrappers have both "old" and "current" versions live on-chain.
5. **USDaf Jan-2025 Governance** (`0x636deb76…6ac`) — Liquity-V2-pattern but Asymmetry-specific config (FUNDS_SAFE, EPOCH_START, registration thresholds).
6. **afCVX SimpleProxy pattern** — custom proxy contract (not OZ TUP or ERC1967); confirm admin slot semantics.
7. **Cantina competition reports** — operator should retrieve the two competition reports to determine their scope.

---

## Scope — Core Logic

### safETH (LST basket — 8 contracts)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| SafEth | core | Main aggregator / safETH ERC-20 token (Transparent proxy) | audited (Zellic + Code4rena ×2) | [0x6732Ef…3e5](https://etherscan.io/address/0x6732Efaf6f39926346BeF8b821a04B6361C4F3e5) |
| Reth | derivative_wrapper | Holds rETH (Rocket Pool) | audited | [0x7B6633…cA3](https://etherscan.io/address/0x7B6633c0cD81dC338688A528c0A3f346561F5cA3) |
| SfrxEth | derivative_wrapper | Holds sfrxETH (Frax) | audited | [0x36Ce17…20A](https://etherscan.io/address/0x36Ce17a5c81E74dC111547f5DFFbf40b8BF6B20A) |
| WstEth | derivative_wrapper | Holds wstETH (Lido) | audited | [0x972A53…Fad](https://etherscan.io/address/0x972A53e3A9114f61b98921Fb5B86C517e8F23Fad) |
| Swell | derivative_wrapper | Holds swETH (current; DL adapter still reads old wrapper 0xF5cCaF…) | partial | [0xFB8725…1B1](https://etherscan.io/address/0xFB8725366b3e3011Ff7445106f40fab97a8371B1) |
| StaFi | derivative_wrapper | Holds StaFi rETH (current; DL adapter old 0xAd0e8E…) | partial | [0xc9bbcc…2DA](https://etherscan.io/address/0xc9bbccaf813B3329586A2479ff04F1FC794822DA) |
| Ankr | derivative_wrapper | Holds ankrETH (current; DL adapter old 0xf4A173…) | partial | [0xfA2D4c…82F](https://etherscan.io/address/0xfA2D4c03b9b48918f37C926f2DD08dca70D7082F) |
| ProxyAdmin | admin | Controls all 13 safETH transparent proxies; owner = admin Safe `0x263b…ddeb` | upstream OZ | [0x2b408d…09E](https://etherscan.io/address/0x2b408df4B4e112276119bd6Ca1710b6C9966809E) |

### afETH (hybrid ETH — 6 contracts)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AfEth (proxy) | core | Main contract; ERC-20 afETH; allocates ETH ~50/50 to sfrxETH + Votium-managed vlCVX | audited (Code4rena 2023-09) | [0x000000…7a11](https://etherscan.io/address/0x0000000016E6Cb3038203c1129c8B4aEE7af7a11) |
| AfEth (impl) | core | AfEth implementation | audited | [0x0A3622…D6A](https://etherscan.io/address/0x0A36224486D4E49dEB27b489233c6B64e0241D6A) |
| VotiumStrategy (proxy) | strategy | Custodies vlCVX, claims Votium rewards | audited (Code4rena 2023-09 + mitigation 2023-05) | [0x000000…0BF](https://etherscan.io/address/0x00000069aBbB0B1Ad6975bcF753eEe15D318A0BF) |
| VotiumStrategy (impl) | strategy | VotiumStrategy implementation | audited | [0x01e111…2E4](https://etherscan.io/address/0x01e111D815261c8ad6A1271861970E804E4282E4) |
| AfEthRelayer (proxy) | gateway | Deposit-side relayer for afETH | partial (not specifically named in audit) | [0x000000…7da](https://etherscan.io/address/0x0000005aC28De2cbda005a8500A9578921FDB7da) |
| AfEthRelayer (impl) | gateway | Relayer implementation | partial | [0x47c212…b72](https://etherscan.io/address/0x47c212ddebcad886d0e7b8482bd13f8a27eb0b72) |

### afCVX (CVX yield vault — 4 contracts)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AfCvx (proxy) | vault_pool | ERC-4626 over CVX; 20% Convex Staking (inline) + 80% Clever | audited (yAudit Apr-2025 + adrianromero May-2024) | [0x8668a1…7Cf](https://etherscan.io/address/0x8668a15b7b023Dc77B372a740FCb8939E15257Cf) |
| AfCvx (impl) | vault_pool | AfCvx implementation | audited | [0x56664F…799](https://etherscan.io/address/0x56664FFcCfF6BB282CcA96808AF03d9042e1f799) |
| CleverCvxStrategy (proxy) | strategy | 80% allocation: CLever Locker + Furnace yield compounding | audited (yAudit + adrianromero) | [0xB828a3…d2a](https://etherscan.io/address/0xB828a33aF42ab2e8908DfA8C2470850db7e4Fd2a) |
| CleverCvxStrategy (impl) | strategy | CleverCvxStrategy implementation | audited | [0xD0F774…aB0](https://etherscan.io/address/0xD0F77441B70c84aa3366a9F79F2fD16618739aB0) |

### Governance — ASF + veASF (2 contracts)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AsfToken | governance_token | ASF ERC-20, fixed supply 51M | audited (yAudit Jun-2024) | [0x59a529…8Aa](https://etherscan.io/address/0x59a529070fBb61e6D6c91f952CcB7f35c34Cf8Aa) |
| TokenLocker (veASF) | governance | Locked ASF for voting + revenue share | audited (yAudit Jun-2024) | [0xf119b5…034](https://etherscan.io/address/0xf119b5aa93a7755b09952b3a88d04cdaf5329034) |

### USDaf Jan-2025 deployment (Liquity V2 fork, dominant by supply — 21 contracts)

| Layer | Contract | Address |
|---|---|---|
| Protocol | CollateralRegistry | [0xd99de7…3f7](https://etherscan.io/address/0xd99de73b95236f69a559117ecd6f519af780f3f7) |
| Protocol | BoldToken (USDaf) — totalSupply 308,126 | [0xb01dd8…b98](https://etherscan.io/address/0xb01dd87b29d187f3e3a4bf6cdaebfb97f3d9ab98) |
| Protocol | HintHelpers | [0xe3bb97…ada](https://etherscan.io/address/0xe3bb97ee79ac4bdfc0c30a95ad82c243c9913ada) |
| Protocol | MultiTroveGetter | [0x0C6Ae1…978](https://etherscan.io/address/0x0C6Ae14FFdfA799b6d456483bEBf52D7bC2Ec978) |
| Protocol | HybridCurveUniV3ExchangeHelpers | [0x28c9de…8dc](https://etherscan.io/address/0x28c9decfacee0e796409b4b63eb263610e5e38dc) |
| WETH branch | AddressesRegistry | [0x38e1f0…476](https://etherscan.io/address/0x38e1f07b954cfab7239d7acab49997fbaad96476) |
| WETH branch | BorrowerOperations | [0x0b9956…f1c](https://etherscan.io/address/0x0b995602b5a797823f92027e8b40c0f2d97aff1c) |
| WETH branch | TroveManager | [0x81d788…e66](https://etherscan.io/address/0x81d78814df42da2cab0e8870c477bc3ed861de66) |
| WETH branch | StabilityPool | [0xf69eb8…3cf](https://etherscan.io/address/0xf69eb8c0d95d4094c16686769460f678727393cf) |
| WETH branch | PriceFeed (WETHPriceFeed) | [0x3279e2…c2d](https://etherscan.io/address/0x3279e2b49ff60dafb276fbaff847383b67a7ec2d) |
| wstETH branch | AddressesRegistry | [0x2d4ef5…c61](https://etherscan.io/address/0x2d4ef56cb626e9a4c90c156018ba9ce269573c61) |
| wstETH branch | BorrowerOperations | [0x94c161…1be](https://etherscan.io/address/0x94c1610a7373919bd9cfb09ded19894601f4a1be) |
| wstETH branch | TroveManager | [0xb47ef6…046](https://etherscan.io/address/0xb47ef60132deabc89580fd40e49c062d93070046) |
| wstETH branch | StabilityPool | [0xcf46da…27f](https://etherscan.io/address/0xcf46dab575c364a8b91bda147720ff4361f4627f) |
| wstETH branch | PriceFeed (WSTETHPriceFeed) | [0x4c2756…0fa](https://etherscan.io/address/0x4c275608887ad2eb049d9006e6852bc3ee8a00fa) |
| rETH branch | AddressesRegistry | [0x3b4816…a2f](https://etherscan.io/address/0x3b48169809dd827f22c9e0f2d71ff12ea7a94a2f) |
| rETH branch | BorrowerOperations | [0xa351d5…60d](https://etherscan.io/address/0xa351d5b9cda9eb518727c3ceff02208915fda60d) |
| rETH branch | TroveManager | [0xde0264…fca](https://etherscan.io/address/0xde026433882a9dded65cac4fff8402fafff40fca) |
| rETH branch | StabilityPool | [0xc4463b…f7a](https://etherscan.io/address/0xc4463b26be1a6064000558a84ef9b6a58abe4f7a) |
| rETH branch | PriceFeed (RETHPriceFeed) | [0x93d3a2…e97](https://etherscan.io/address/0x93d3a2234e67c2ad494735cd6676fb4b79a6de97) |
| Governance | Governance (Liquity-style epoch voting) | [0x636deb…6ac](https://etherscan.io/address/0x636deb767cd7d0f15ca4ab8ea9a9b26e98b426ac) |

### USDaf May-2025 deployment (DL adapter v1, ~2,821 USDaf supply — 2 contracts enumerated)

| Contract | Address | Note |
|---|---|---|
| CollateralRegistry | [0xCFf0Dc…791](https://etherscan.io/address/0xCFf0DcAb01563e5324ef9D0AdB0677d9C167d791) | DL adapter v1 entry; v1 brief mis-classifies as "unnamed unknown" |
| BoldToken | [0x85e30b…9da](https://etherscan.io/address/0x85e30b8b263bc64d94b827ed450f2edfee8579da) | The only Asymmetry contract correctly named in v1 brief |

### USDaf Jul-2025 deployment (DL adapter v2 — 1 contract enumerated)

| Contract | Address | Note |
|---|---|---|
| CollateralRegistry | [0x33D680…0Fe](https://etherscan.io/address/0x33D68055Cd54061991B2e98b9ab326fFCE4d60Fe) | DL adapter v2 entry; per-branch contracts derivable via on-chain reads |

---

## Scope — Operational Periphery

**Asymmetry admin multisig: `0x263b03bba0bbbc320928b6026f5eaafad9f1ddeb`** (Gnosis Safe). Owns:
- safETH ProxyAdmin (`0x2b408d…09E`) → controls all 13 safETH proxies
- afCVX vault (`0x8668a1…7Cf`) — `owner()` confirms
- veASF locker (`0xf119b5…034`) — `owner()` confirms

The Safe's `getOwners()` + `getThreshold()` were not pulled in this brief — operator should confirm. veASF holders vote on Asymmetry governance proposals separately.

USDaf governance uses Liquity-V2's epoch-based LQTY voting pattern: the Jan-2025 deployment's `Governance` contract at `0x636deb76…6ac` references `LQTYToken: 0x6dea81c8…c54d` (Liquity's LQTY) and `LUSDToken: 0x5f98805a…68ba0` (Liquity's LUSD) as voting/anchor tokens. This is inherited from the Liquity-V2 fork pattern, not custom Asymmetry logic.

---

## Scope — Proxy and Upgrade Architecture

Three distinct proxy patterns across the four products:

| Product | Pattern | Compiler | Upgrade authority |
|---|---|---|---|
| safETH (13 transparent proxies) | OpenZeppelin `TransparentUpgradeableProxy` | 0.8.9 | `ProxyAdmin` → Asymmetry admin multisig |
| afETH (3 ERC1967 proxies) | OpenZeppelin ERC1967 (UUPS pattern likely) | 0.8.20 | encoded in impl; operator-confirm via `proxiableUUID()` |
| afCVX (2 SimpleProxy) | **Custom `SimpleProxy` contract** (not OZ TUP, not ERC1967) | 0.8.25 | `owner()` returns admin multisig |
| veASF + ASF + USDaf (all 3 deployments) | Non-proxy (immutable) | 0.8.20 / 0.8.24 | n/a |

The afCVX `SimpleProxy` is a non-standard custom pattern. An auditor scoping afCVX should re-read the proxy contract carefully — admin slot semantics differ from OZ TUP/ERC1967.

---

## Scope — Factory Architecture

No "factories" in the deploy-many-instances sense. Per-trove cloning in USDaf is handled by `TroveNFT` minting against `TroveManager` storage — no Solidity factory contract per trove.

---

## Scope — Integration Surface

Substantial external integrations across all 4 products:

| Product | External integrations |
|---|---|
| safETH | 6 LST issuers: Lido, Rocket Pool, Frax, Ankr, Swell, StaFi |
| afETH | Frax (sfrxETH), Convex (vlCVX), Votium (bribe-claim), Curve (CVX/ETH swap pool) |
| afCVX | Convex (Cvx Rewards Pool), CLever (CvxLocker + Furnace), Curve (CVX/clevCVX pool) |
| USDaf | Liquity V2 (governance pattern + LQTY/LUSD as voting anchors), Curve + Uniswap V3 (via HybridCurveUniV3ExchangeHelpers) |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Direct external | Inherited (Liquity V2) | Coverage % |
|---|---:|---:|---:|---:|
| safETH (8) | 8 | 7 | — | 100% |
| afETH (6) | 6 | 4 | — | 67% direct, 100% partial |
| afCVX (4) | 4 | 4 | — | 100% |
| veASF + ASF (2) | 2 | 2 | — | 100% |
| USDaf Jan-2025 (21) | 21 | 0 USDaf-specific | 21 | 100% inherited |
| USDaf May-2025 (2) | 2 | 1 Cantina (unconfirmed) | 2 | 100% inherited + partial |
| USDaf Jul-2025 (1) | 1 | 1 Cantina (unconfirmed) | 1 | 100% inherited |
| **Total** | **44** | **19 direct + 24 inherited** | — | High coverage |

### Past Audits

| Date | Auditor | Scope | Relationship | Link |
|---|---|---|---|---|
| 2023-03 | Code4rena | safETH contest | direct | [`code4rena.com/audits/2023-03-asymmetry-contest`](https://code4rena.com/audits/2023-03-asymmetry-contest) |
| 2023-05 | Code4rena | safETH mitigation review | direct | [`code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest`](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) |
| 2023 | Zellic | safETH | direct | [`Zellic/publications`](https://github.com/Zellic/publications/blob/main/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) |
| 2023-09 | Code4rena | afETH contest | direct | [`code4rena.com/reports/2023-09-asymmetry`](https://code4rena.com/reports/2023-09-asymmetry) |
| 2024-05 | adrianromero (solo) | afCVX | direct | [`romeroadrian/audits/solo/2024-05-afcvx`](https://github.com/romeroadrian/audits/tree/main/solo/2024-05-afcvx) |
| 2024-06 | yAudit | veASF | direct | [`yAudit/reports/06-2024-Asymmetry-veASF.pdf`](https://github.com/yAudit/reports/blob/main/06-2024-Asymmetry-veASF.pdf) |
| 2025-04 | yAudit | afCVX continuous | direct | [`reports.yaudit.dev/reports/04-2025-asymmetry-afCFV/`](https://reports.yaudit.dev/reports/04-2025-asymmetry-afCFV/) |
| unspecified | Cantina | USDaf competition | direct | [`cantina.xyz/competitions/3765f098-…`](https://cantina.xyz/competitions/3765f098-ef5c-47be-beb9-3f4ce9dcb407) |
| unspecified | Cantina | USDaf competition | direct | [`cantina.xyz/competitions/d86632df-…`](https://cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712) |
| 2024-08-28 | Dedaub | Liquity V2 | inherited (USDaf) | [`dedaub.com/audits/liquity/liquity-v2-aug-28-2024`](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) |
| 2024-12-31 | Coinspect | Liquity Bold | inherited (USDaf) | [`coinspect.com/doc/Liquity Bold v241231.pdf`](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20-%20Bold%20-%20v241231.pdf) |
| continuous | ChainSecurity | Liquity Bold | inherited (USDaf) | [`chainsecurity.com/security-audit/liquity-bold-smart-contracts`](https://www.chainsecurity.com/security-audit/liquity-bold-smart-contracts) |
| continuous | Certora | Liquity V2 formal verification | inherited (USDaf) | [`certora.cdn.prismic.io`](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) |

### Gap Analysis

- **AfEthRelayer** not in any explicitly-named scope.
- **CleverCvxStrategy post-yAudit-Apr-2025 changes** — afCVX repo continued through Oct-2025; any post-Apr-2025 impl rotation lacks coverage.
- **USDaf May-2025 + Jul-2025 deltas vs Liquity V2 and Jan-2025** — not specifically audited.
- **safETH version-rotation code path** for Swell/StaFi/Ankr derivative wrappers (old vs current versions live concurrently on-chain).
- **safETH ProxyAdmin multisig signer membership** — not pulled in this brief; operator-confirm.

Last direct audit: **yAudit afCVX (April 2025)**. Last inherited audit: **Coinspect Liquity Bold (2024-12-31)**.

---

## Appendix

### Docs Pages Referenced

- https://docs.asymmetry.finance — main documentation site
- https://docs.asymmetry.finance/security/audits-bug-bounties — security index page
- https://docs.asymmetry.finance/safeth/* — safETH product docs
- https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/* — afETH product docs
- https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/* — afCVX product docs
- https://docs.asymmetry.finance/usdasf-asymmetry-finance-token/veasf-governance — veASF docs
- https://github.com/asymmetryfinance/afeth/blob/main/docs/AfEth.md — afETH design doc
- https://github.com/asymmetryfinance/afeth/blob/main/docs/Operating-Manual.md — afETH operating manual
- https://github.com/asymmetryfinance/USDaf-v2/blob/main/contracts/addresses/1.json — USDaf mainnet address registry

### Audit Reports (full list, time-ordered)

1. 2023-03 — Code4rena safETH contest — direct
2. 2023-05 — Code4rena safETH mitigation — direct
3. 2023 — Zellic safETH — direct
4. 2023-09 — Code4rena afETH contest — direct
5. 2024-05 — adrianromero afCVX solo — direct
6. 2024-06 — yAudit veASF — direct
7. 2024-08-28 — Dedaub Liquity V2 — inherited
8. 2024-12-31 — Coinspect Liquity Bold — inherited
9. 2025-04 — yAudit afCVX continuous — direct
10. continuous — ChainSecurity Liquity Bold — inherited
11. continuous — Certora Liquity V2 formal verification — inherited
12. unspecified — Cantina competition (USDaf?) — direct
13. unspecified — Cantina competition (USDaf?) — direct

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) — 44 contracts, 1,183 source files, ~8.5 MB

### Excluded Contracts (v1 false positives)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| External Curve oracle infrastructure (CryptoWithStablePrice family) | 2 | `0xbe83fd…8dcb` (CryptoWithStablePriceWBTC) + `0xbef434…4217` (CryptoWithStablePriceTBTC). Curve crvUSD oracle code (Vyper). |
| infrastructure blocklist | 0 | Not applicable |
| shared deployer contamination | 0 | Not applicable |
| **Total excluded** | **2** | Of 4 v1 rows, 2 are wrong |

### Data Availability Notes

- **Canonical address registry:** Pulled from the four product repos (`safeth/.openzeppelin/mainnet.json`, `afeth/README.md`, `afCVX/README.md`, `USDaf-v2/contracts/addresses/1.json`) and the two DL adapters (`asymmetry-fi/index.js`, `asymmetry-usdaf/index.js`).
- **Provenance classification:** Manually verified per-contract role.
- **Multisig metadata:** Asymmetry admin Safe `0x263b…ddeb` identified as `GnosisSafeProxy`. Threshold + signer membership not pulled in this brief.
- **Per-contract TVL:** Verified via `eth_call` of `totalSupply` on 2026-05-16. afCVX 952,812 afCVX; afETH 94.81 afETH; safETH 10.59 safETH; USDaf Jan-2025 BoldToken 308,126; USDaf May-2025 BoldToken 2,821.
- **Docs extraction status:** README of each product repo + addresses/1.json + DL adapter source — all four sources cross-checked.

### Generation Metadata

- **Generated at:** 2026-05-16
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** parent + child slugs queried 2026-05-15
- **Etherscan v2:** chain 1 only
- **Source registries:** `@asymmetryfinance` GitHub org (18 repos)

---

## Divergences from v1 SCOPE_NOTE.md

A concise mapping for downstream tooling:

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `total_contracts` | 4 | 44 | V1 captures only 2 real USDaf contracts + 2 wrong Curve oracles |
| `chains` | 1 (Ethereum) | 1 (Ethereum) | Same (Asymmetry doesn't deploy L2s) |
| `lifecycle_status_source` | default_fallback | etherscan_getcontractcreation + github_commits | Pipeline didn't query Etherscan |
| `latest_deployment` | unknown | 2025-07-22 (USDaf Jul) | Same |
| `audits` | 2 placeholders | 13 (8 direct + ~5 inherited Liquity V2) | Pipeline failed to parse audit links into structured entries |
| `tier` | 1 - partial_audit_gap (small_tvl_coverage_filler) | 2 - multi-product-LST-CDP (broad audit chain) | Undersells the audit context |
| `proxy_architecture` | "No proxy or upgrade architecture detected" | 18 proxies across 3 patterns (13 OZ TUP + 3 ERC1967 + 2 SimpleProxy) | Pipeline's proxy detector misses non-ERC1967 + non-standard patterns |
| `integration_surface` | "No external integrations detected" | 4 product systems each with substantial integrations (6 LST issuers; Frax+Convex+Votium+Curve; Convex+CLever+Furnace+Curve; Liquity V2+Curve+UniV3) | Pipeline doesn't follow integration boundaries |
| `parent_child_dl_slugs` | uses parent `asymmetry` only | recognizes `asymmetry-finance` + `asymmetry-usdaf` as separate child slugs with different categories (Indexes + CDP) | Pipeline collapses to parent |
| `usdaf_deployments` | 1 (only May-2025 partially) | 3 distinct (Jan-2025, May-2025, Jul-2025) | Pipeline doesn't detect multiple disjoint deployments per product |
| `unnamed` rows | 2 unknowns at `0xbef434…4217` (Curve TBTC oracle) and `0xcff0dc…d791` (USDaf May CollateralRegistry, mis-classified) | 1 Curve oracle (rejected from scope) + 1 USDaf May CollateralRegistry (named correctly) | Etherscan-verified contract names not picked up |
