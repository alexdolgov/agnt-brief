# Agentic Audit Brief: Asymmetry Finance (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama parent JSON (`api.llama.fi/protocol/asymmetry`) and the two child slugs (`asymmetry-finance` for the LST stack + `asymmetry-usdaf` for the CDP), the Asymmetry Finance DefiLlama adapter ([`projects/asymmetry-fi/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/asymmetry-fi/index.js)), the four product GitHub repos (`asymmetryfinance/{safeth,afeth,afCVX,USDaf,USDaf-v2}`), the safETH OpenZeppelin upgrades manifest (`.openzeppelin/mainnet.json`), the afETH + afCVX READMEs (explicit Deployed Contracts tables), the USDaf-v2 `addresses/1.json` mainnet snapshot, Etherscan v2 per-contract verification across all 44 canonical contracts, and on-chain `eth_call` of `totalSupply` / `owner` / `getcontractcreation`. The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context on the comparison.

## Project Overview

- **Project:** Asymmetry Finance (parent DL slug `asymmetry`, two child slugs `asymmetry-finance` + `asymmetry-usdaf`)
- **Website:** https://asymmetry.fi (the original `asymmetry.finance` domain is the legacy product page)
- **Docs:** https://docs.asymmetry.finance
- **Public source:** four production-relevant repos plus seven support repos under the [`asymmetryfinance`](https://github.com/asymmetryfinance) org:
  - [`safeth`](https://github.com/asymmetryfinance/safeth) (TypeScript+Solidity 0.8.19, last push 2023-12-20) — the original LST basket
  - [`afeth`](https://github.com/asymmetryfinance/afeth) (Solidity 0.8.20, last push 2024-05-13, Foundry) — the auto-compounding hybrid ETH product
  - [`afCVX`](https://github.com/asymmetryfinance/afCVX) (Solidity 0.8.25, last push 2025-10-27, Foundry) — the CVX yield vault
  - [`USDaf`](https://github.com/asymmetryfinance/USDaf) (Liquity-v2-fork monorepo, first USDaf iteration)
  - [`USDaf-v2`](https://github.com/asymmetryfinance/USDaf-v2) (Liquity-v2-fork monorepo, second USDaf iteration, MIT)
  - Plus `usdaf-port`, `AsymmetryFinance-DefiLlamaAdapter`, `cowidget-token-lists`, `api.usdafv2`, `usdaf-trove-monitor`, `usdaf-indexer`, `asf-buy-bot`, `asym-stats-bot`, `afcvx-notif`, `veasf-notif`, `sunbeam-indexer`, `api.usadollar`
- **DL categories:** parent `Indexes` (per the LST-basket framing of safETH/afETH/afCVX); USDaf child slug is categorized `CDP`.
- **Tokens:** safETH (LST basket index), afETH (hybrid ETH yield), afCVX (CVX vault share), ASF (governance), veASF (locked ASF), USDaf "BoldToken" (per-deployment dollar-pegged debt token, three distinct mainnet versions; details below).
- **Chains:** **Ethereum only.** Both DL child slugs list `chains: ["Ethereum"]`. No L2 deployments.
- **Total TVL:** **$3.39M** (combined DL `tvl[-1]`, snapshots 2026-05-15): `$2.36M` for `asymmetry-finance` (safETH + afETH + afCVX + ASF-in-veASF) plus `$1.03M` for `asymmetry-usdaf`. Plus `$0.28M` ASF staking displayed under DL's `staking` bucket.
- **Audit history:** 8 distinct audit reports across 6 auditors + 2 Cantina competitions. Most-recent audit is the **yAudit afCVX review (Apr 2025)**. Audit detail in §"Audit Coverage" below.
- **Lifecycle:** **active, multi-product, mature.** Original safETH live since 2023-05-10 (~3 years). afETH live since 2024-02-19. afCVX live since 2024-05-02. veASF/ASF launched 2024-10-22. USDaf has had **three distinct mainnet deployments** (2025-01 / 2025-05 / 2025-07), of which the January deployment carries the dominant share of USDaf TVL.
- **Tier:** **Tier 2 — multi-product LST/CDP protocol with deep audit history.** The audit-evaluable surface spans 4 distinct product systems; the interesting gap is the USDaf May/Jul 2025 redeployments which are largely Liquity-V2-inherited but carry product-specific deltas not yet externally re-audited at the address level.
- **Commercial fit:** broad-multi-product-audit-targeting. Six independent audit firms have already touched parts of the codebase; the right audit work is in **(a)** the deltas between the three USDaf mainnet deployments, **(b)** the afETH↔Votium↔Convex integration boundary, and **(c)** the CleverCvxStrategy → Furnace/CLever boundary in afCVX.

> Important framing. Asymmetry Finance is a **portfolio of four largely-independent products**, not a single integrated protocol. Each product has its own audit chain, its own governance posture (most are non-upgradable; safETH is the exception with 13 transparent proxies behind a shared ProxyAdmin), and its own integration surface (safETH integrates with six LST issuers; afETH integrates with Frax + Votium + Convex; afCVX integrates with Convex + Clever + Furnace; USDaf is a Liquity-V2 fork integrating with various LST/savings collateral). An audit-targeting agent should treat each as a separate audit-scoping object, not as a monolith.

---

## TVL Methodology Note

The DL parent slug `asymmetry` aggregates two child slugs whose adapters track different things:

| Child slug | Asset accounted for | DL TVL (2026-05-15) | Adapter file |
|---|---|---:|---|
| `asymmetry-finance` | safETH derivatives (wstETH, rETH, sfrxETH, ankrETH, swETH, StaFi rETH) held by 6 derivative wrappers + Votium-managed CVX from afETH + total CVX in afCVX (Convex Staking + Clever Strategy) | $2.36M | [`projects/asymmetry-fi/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/asymmetry-fi/index.js) |
| `asymmetry-usdaf` | Liquity-V2 active+default pool balances across **two** CollateralRegistry deployments: `0xCFf0DcAb…` (May-2025) + `0x33D68055…` (Jul-2025). The Jan-2025 mainnet deployment (`0xd99de73b…`, the dominant one by USDaf supply) is **NOT counted by the DL adapter.** | $1.03M | [`projects/asymmetry-usdaf/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/asymmetry-usdaf/index.js) |

The DL adapter undercount for `asymmetry-usdaf` matters: the Jan-2025 BoldToken (`0xb01dd87b…`) has a `totalSupply` of **308,126 USDaf** vs the May-2025 BoldToken (`0x85e30b…`) at **2,821 USDaf**. The DL TVL figure misses the dominant deployment entirely. Operator should pull on-chain supply across all three USDaf CollateralRegistry deployments before sizing the protocol economically.

**On-chain state (queried 2026-05-16 via `eth_call`):**

| Product | Contract | `totalSupply` | Note |
|---|---|---:|---|
| safETH | `SafEth` main `0x6732Efaf…3e5` | **10.59 safETH** | ~$30K at current ETH price; the original product has been heavily redeemed |
| afETH | `AfEth` proxy `0x000000016…7a11` | **94.81 afETH** | ~$280K |
| afCVX | `AfCvx` proxy `0x8668a15b…7Cf` | **952,812.39 afCVX** | The largest live product by token count; ~$4.8M of CVX exposure |
| ASF (governance) | `AsfToken` `0x59a52907…f8Aa` | **51,000,000 ASF** | Fixed-supply governance token |
| USDaf Jan-2025 | `BoldToken` `0xb01dd87b…ab98` | **308,126 USDaf** | Dominant USDaf supply, NOT in DL adapter |
| USDaf May-2025 | `BoldToken` `0x85e30b…79da` | **2,821 USDaf** | Small; DL adapter v1 entry |
| USDaf Jul-2025 | (BoldToken address not yet pulled) | — | DL adapter v2 entry; only CollateralRegistry verified |

The audit-evaluable economic exposure is dominated by **afCVX (~$4.8M CVX)** and **USDaf Jan-2025 (~$308K BOLD supply)**. The original safETH product has decayed significantly (~$30K from a much larger peak).

---

## Lifecycle and Recent Activity

**Status: active, multi-product, mature.** Verified deployment timeline via Etherscan `getcontractcreation`:

| Date | Block | Product / Event | Source |
|---|---|---|---|
| 2023-05-10 | 17231617 | **safETH mainnet launch** — first deployment by `0xc90c5cc1…3602`. 13 transparent proxies will follow. | Etherscan |
| 2024-02-19 | 19258970 | **afETH mainnet launch** — `AfEth` ERC1967 proxy by `0x67b80ff3…1efb`. | Etherscan |
| 2024-05-02 | 19784027 | **afCVX mainnet launch** — `AfCvx` proxy by `0x318d0059…3981`. | Etherscan |
| 2024-10-22 | 21018699 / 21018718 | **ASF + veASF launch** — `AsfToken` then `TokenLocker` (veASF), both by `0x318d0059…3981`. | Etherscan |
| 2025-01-17 to 2025-02-04 | 21640111–21773002 | **USDaf "Jan" mainnet deployment** — Liquity-V2 fork with 3 collateral branches (WETH, wstETH, rETH). Deployer `0xbec25c55…772c`. 5 protocol-level + 15 branch contracts + 1 governance contract. **This is the deployment captured in [`USDaf-v2/contracts/addresses/1.json`](https://github.com/asymmetryfinance/USDaf-v2/blob/main/contracts/addresses/1.json).** | Etherscan |
| 2025-05-24 | 22548797 / 22548803 | **USDaf "May" deployment** — `BoldToken` then `CollateralRegistry`, deployer `0x285e3b1e…b43b`. The DL `asymmetry-usdaf` adapter calls this its "v1" entry. | Etherscan |
| 2025-07-22 | 22976155 | **USDaf "Jul" deployment** — `CollateralRegistry` only by deployer `0x6969acca…1f25`. DL adapter calls this "v2". Smaller than the Jan-2025 deployment by orders of magnitude. | Etherscan |
| 2024-05 (audit) | — | **adrianromero solo audit of afCVX** | https://github.com/romeroadrian/audits |
| 2025-04 (audit) | — | **yAudit afCVX review** — most recent audit. | https://reports.yaudit.dev/reports/04-2025-asymmetry-afCFV/ |
| 2025-10-27 | — | Most recent code push to `afCVX` repo. The repo is still actively maintained. | GitHub |

There is no single "version progression" — Asymmetry's products evolve independently. safETH last received a contracts repo push in **Dec 2023** (looks frozen); afETH last in **May 2024** (idle); afCVX last in **Oct 2025** (active); USDaf-v2 repo is most recently active. The "active development" signal lives in afCVX and USDaf-v2; safETH and afETH are in steady-state operation.

---

## Scope — Core Logic

Each product is its own audit-scoping object. Listed per product, in approximate order of current TVL.

### afCVX (~$4.8M CVX exposure, most active)

| Contract | Address | Compiler | Audit status |
|---|---|---|---|
| **AfCvx** proxy (ERC-4626 over CVX; 20% Convex Staking + 80% Clever) | [`0x8668a15b7b023Dc77B372a740FCb8939E15257Cf`](https://etherscan.io/address/0x8668a15b7b023Dc77B372a740FCb8939E15257Cf) | 0.8.25 | yAudit (Apr 2025) + adrianromero (May 2024) |
| AfCvx **implementation** | [`0x56664FFcCfF6BB282CcA96808AF03d9042e1f799`](https://etherscan.io/address/0x56664FFcCfF6BB282CcA96808AF03d9042e1f799) | 0.8.25 | audited |
| **CleverCvxStrategy** proxy (handles the 80% Clever allocation: locked CVX in CLever Locker + clevCVX in Furnace) | [`0xB828a33aF42ab2e8908DfA8C2470850db7e4Fd2a`](https://etherscan.io/address/0xB828a33aF42ab2e8908DfA8C2470850db7e4Fd2a) | 0.8.25 | yAudit (Apr 2025) + adrianromero (May 2024) |
| CleverCvxStrategy **implementation** | [`0xD0F77441B70c84aa3366a9F79F2fD16618739aB0`](https://etherscan.io/address/0xD0F77441B70c84aa3366a9F79F2fD16618739aB0) | 0.8.25 | audited |

The **Convex Staking strategy is implemented inline inside `AfCvx`** (no separate strategy contract for the 20% allocation), per the afCVX README. The CLever strategy is the bigger and more complex one — it utilizes Curve CVX/clevCVX pool + CLever CVX Locker + Furnace to compound yield, all of which are external Convex/Clever contracts (not Asymmetry's audit scope).

### afETH (~$280K)

| Contract | Address | Compiler | Audit status |
|---|---|---|---|
| **AfEth** main proxy (ERC1967, ERC-20 afETH) | [`0x0000000016E6Cb3038203c1129c8B4aEE7af7a11`](https://etherscan.io/address/0x0000000016E6Cb3038203c1129c8B4aEE7af7a11) | 0.8.20 | code4rena 2023-09 (afETH contest) |
| AfEth **implementation** | [`0x0A36224486D4E49dEB27b489233c6B64e0241D6A`](https://etherscan.io/address/0x0A36224486D4E49dEB27b489233c6B64e0241D6A) | 0.8.20 | audited |
| **VotiumStrategy** proxy (custodies vlCVX, claims Votium rewards, used by half of afETH allocation) | [`0x00000069aBbB0B1Ad6975bcF753eEe15D318A0BF`](https://etherscan.io/address/0x00000069aBbB0B1Ad6975bcF753eEe15D318A0BF) | 0.8.20 | code4rena 2023-09 + mitigation 2023-05 |
| VotiumStrategy **implementation** | [`0x01e111D815261c8ad6A1271861970E804E4282E4`](https://etherscan.io/address/0x01e111D815261c8ad6A1271861970E804E4282E4) | 0.8.20 | audited |
| **AfEthRelayer** proxy (deposit-side frontend relayer) | [`0x0000005aC28De2cbda005a8500A9578921FDB7da`](https://etherscan.io/address/0x0000005aC28De2cbda005a8500A9578921FDB7da) | 0.8.20 | not specifically named in audit list |
| AfEthRelayer **implementation** | [`0x47c212ddebcad886d0e7b8482bd13f8a27eb0b72`](https://etherscan.io/address/0x47c212ddebcad886d0e7b8482bd13f8a27eb0b72) | 0.8.20 | partial |

afETH allocates user ETH ~50/50 between sfrxETH (held directly by AfEth proxy as collateral) and Votium-managed vlCVX (via VotiumStrategy). The Votium boundary is the dominant attack surface; the README's `assets/AfEth-Architecture.drawio` diagrams the integration.

### safETH (~$30K, in steady-state decline)

| Contract | Address | Compiler | Audit status | Doc role |
|---|---|---|---|---|
| **SafEth** main (Transparent proxy, ERC-20 safETH) | [`0x6732Efaf6f39926346BeF8b821a04B6361C4F3e5`](https://etherscan.io/address/0x6732Efaf6f39926346BeF8b821a04B6361C4F3e5) | 0.8.19 | Zellic safETH + code4rena 2023-03 + mitigation 2023-05 | Main aggregator |
| **Reth** derivative wrapper | [`0x7B6633c0cD81dC338688A528c0A3f346561F5cA3`](https://etherscan.io/address/0x7B6633c0cD81dC338688A528c0A3f346561F5cA3) | 0.8.19 | Zellic + code4rena | Holds rETH (Rocket Pool) |
| **SfrxEth** derivative wrapper | [`0x36Ce17a5c81E74dC111547f5DFFbf40b8BF6B20A`](https://etherscan.io/address/0x36Ce17a5c81E74dC111547f5DFFbf40b8BF6B20A) | 0.8.19 | Zellic + code4rena | Holds sfrxETH (Frax) |
| **WstEth** derivative wrapper | [`0x972A53e3A9114f61b98921Fb5B86C517e8F23Fad`](https://etherscan.io/address/0x972A53e3A9114f61b98921Fb5B86C517e8F23Fad) | 0.8.19 | Zellic + code4rena | Holds wstETH (Lido) |
| **Swell** derivative wrapper (current) | [`0xFB8725366b3e3011Ff7445106f40fab97a8371B1`](https://etherscan.io/address/0xFB8725366b3e3011Ff7445106f40fab97a8371B1) | 0.8.19 | partial | Holds swETH; current version after rotation. The older Swell wrapper (`0xF5cCaF2Dbed…`) is still in DL adapter for TVL accounting. |
| **StaFi** derivative wrapper (current) | [`0xc9bbccaf813B3329586A2479ff04F1FC794822DA`](https://etherscan.io/address/0xc9bbccaf813B3329586A2479ff04F1FC794822DA) | 0.8.19 | partial | Holds StaFi rETH. Older version (`0xAd0e8EdBDabDC…`) still tracked by DL. |
| **Ankr** derivative wrapper (current) | [`0xfA2D4c03b9b48918f37C926f2DD08dca70D7082F`](https://etherscan.io/address/0xfA2D4c03b9b48918f37C926f2DD08dca70D7082F) | 0.8.19 | partial | Holds ankrETH. Older version (`0xf4A1735505188…`) still tracked by DL. |
| **ProxyAdmin** (controls all 13 safETH transparent proxies) | [`0x2b408df4B4e112276119bd6Ca1710b6C9966809E`](https://etherscan.io/address/0x2b408df4B4e112276119bd6Ca1710b6C9966809E) | 0.8.9 | OZ upstream | Owner is the Asymmetry admin Safe `0x263b…ddeb` |

The README enumerates 7 user-facing proxy addresses; the OpenZeppelin upgrades manifest (`.openzeppelin/mainnet.json`) lists **13 transparent proxies + 23 implementations**, because each of the Swell/StaFi/Ankr derivatives has been rotated (the prior versions live alongside the new ones because old user deposits still reference them). An audit team scoping a fresh review would scope **both the latest and the legacy versions** until all legacy positions are migrated.

### ASF governance + veASF

| Contract | Address | Compiler | Audit status |
|---|---|---|---|
| **AsfToken** (ASF ERC-20, governance) | [`0x59a529070fBb61e6D6c91f952CcB7f35c34Cf8Aa`](https://etherscan.io/address/0x59a529070fBb61e6D6c91f952CcB7f35c34Cf8Aa) | 0.8.20 | yAudit veASF (Jun 2024) |
| **veASF** locker (`TokenLocker`) | [`0xf119b5aa93a7755b09952b3a88d04cdaf5329034`](https://etherscan.io/address/0xf119b5aa93a7755b09952b3a88d04cdaf5329034) | 0.8.20 | yAudit veASF (Jun 2024) |

ASF supply is **51,000,000** (fixed). The DL adapter's `staking` bucket reports **$282K of ASF staked in veASF**.

### USDaf (three distinct mainnet deployments — see TVL Methodology Note)

#### USDaf "Jan-2025" mainnet deployment — the dominant one by supply

Deployer `0xbec25c55…772c`. Deployed 2025-01-17 to 2025-02-04. Three collateral branches: WETH, wstETH, rETH. Per [`USDaf-v2/contracts/addresses/1.json`](https://github.com/asymmetryfinance/USDaf-v2/blob/main/contracts/addresses/1.json):

| Layer | Contract | Address |
|---|---|---|
| Protocol | CollateralRegistry | [`0xd99de73b95236f69a559117ecd6f519af780f3f7`](https://etherscan.io/address/0xd99de73b95236f69a559117ecd6f519af780f3f7) |
| Protocol | BoldToken (USDaf) | [`0xb01dd87b29d187f3e3a4bf6cdaebfb97f3d9ab98`](https://etherscan.io/address/0xb01dd87b29d187f3e3a4bf6cdaebfb97f3d9ab98) |
| Protocol | HintHelpers | [`0xe3bb97ee79ac4bdfc0c30a95ad82c243c9913ada`](https://etherscan.io/address/0xe3bb97ee79ac4bdfc0c30a95ad82c243c9913ada) |
| Protocol | MultiTroveGetter | [`0x0c6ae14ffdfa799b6d456483bebf52d7bc2ec978`](https://etherscan.io/address/0x0c6ae14ffdfa799b6d456483bebf52d7bc2ec978) |
| Protocol | HybridCurveUniV3ExchangeHelpers | [`0x28c9decfacee0e796409b4b63eb263610e5e38dc`](https://etherscan.io/address/0x28c9decfacee0e796409b4b63eb263610e5e38dc) |
| WETH branch | AddressesRegistry / BorrowerOperations / TroveManager / StabilityPool / PriceFeed | [`0x38e1…6476`](https://etherscan.io/address/0x38e1f07b954cfab7239d7acab49997fbaad96476) / [`0x0b99…f1c`](https://etherscan.io/address/0x0b995602b5a797823f92027e8b40c0f2d97aff1c) / [`0x81d7…de66`](https://etherscan.io/address/0x81d78814df42da2cab0e8870c477bc3ed861de66) / [`0xf69e…3cf`](https://etherscan.io/address/0xf69eb8c0d95d4094c16686769460f678727393cf) / [`0x3279…ec2d`](https://etherscan.io/address/0x3279e2b49ff60dafb276fbaff847383b67a7ec2d) |
| wstETH branch | AddressesRegistry / BorrowerOperations / TroveManager / StabilityPool / PriceFeed | [`0x2d4e…3c61`](https://etherscan.io/address/0x2d4ef56cb626e9a4c90c156018ba9ce269573c61) / [`0x94c1…a1be`](https://etherscan.io/address/0x94c1610a7373919bd9cfb09ded19894601f4a1be) / [`0xb47e…0046`](https://etherscan.io/address/0xb47ef60132deabc89580fd40e49c062d93070046) / [`0xcf46…627f`](https://etherscan.io/address/0xcf46dab575c364a8b91bda147720ff4361f4627f) / [`0x4c27…00fa`](https://etherscan.io/address/0x4c275608887ad2eb049d9006e6852bc3ee8a00fa) |
| rETH branch | AddressesRegistry / BorrowerOperations / TroveManager / StabilityPool / PriceFeed | [`0x3b48…4a2f`](https://etherscan.io/address/0x3b48169809dd827f22c9e0f2d71ff12ea7a94a2f) / [`0xa351…a60d`](https://etherscan.io/address/0xa351d5b9cda9eb518727c3ceff02208915fda60d) / [`0xde02…0fca`](https://etherscan.io/address/0xde026433882a9dded65cac4fff8402fafff40fca) / [`0xc446…4f7a`](https://etherscan.io/address/0xc4463b26be1a6064000558a84ef9b6a58abe4f7a) / [`0x93d3…de97`](https://etherscan.io/address/0x93d3a2234e67c2ad494735cd6676fb4b79a6de97) |
| Governance | Governance (Liquity-style epoch voting) | [`0x636deb767cd7d0f15ca4ab8ea9a9b26e98b426ac`](https://etherscan.io/address/0x636deb767cd7d0f15ca4ab8ea9a9b26e98b426ac) |

The Jan-2025 deployment uses the **vanilla Liquity-V2 collateral set (WETH/wstETH/rETH)** and the **Liquity governance pattern** (LQTY voting, `LUSDToken: 0x5f9880…68ba0` is referenced in the addresses/1.json governance config; that's Liquity's LUSD, used as a registration anchor by the Asymmetry governance fork). Architectures match Liquity V2 1:1 except for the BoldToken rename to "USDaf" branding.

#### USDaf "May-2025" deployment — DL adapter `asymmetry-usdaf` v1 entry

| Contract | Address | Note |
|---|---|---|
| CollateralRegistry | [`0xCFf0DcAb01563e5324ef9D0AdB0677d9C167d791`](https://etherscan.io/address/0xCFf0DcAb01563e5324ef9D0AdB0677d9C167d791) | DL adapter v1 entry |
| BoldToken | [`0x85e30b8b263bc64d94b827ed450f2edfee8579da`](https://etherscan.io/address/0x85e30b8b263bc64d94b827ed450f2edfee8579da) | The contract the v1 pipeline brief surfaces as "BoldToken (token, TP-covered)" |

`totalCollaterals()` returns 0 in our probe (and `boldToken()` selector fails), suggesting either a different Liquity-fork ABI layout or that the May deployment's branches were configured differently. Branch enumeration requires reading deployment events on-chain.

#### USDaf "Jul-2025" deployment — DL adapter `asymmetry-usdaf` v2 entry

| Contract | Address | Note |
|---|---|---|
| CollateralRegistry | [`0x33D68055Cd54061991B2e98b9ab326fFCE4d60Fe`](https://etherscan.io/address/0x33D68055Cd54061991B2e98b9ab326fFCE4d60Fe) | DL adapter v2 entry; CollateralRegistry source is verified |

Only the CollateralRegistry was enumerated for this brief; the per-branch contracts can be derived via `getTroveManager(i)` reads on the registry for `i in [0, totalCollaterals())`.

---

## Scope — Operational Periphery

### Asymmetry Admin Multisig

**`0x263b03bba0bbbc320928b6026f5eaafad9f1ddeb`** — Gnosis Safe (verified as `GnosisSafeProxy` on Etherscan) — is the unified Asymmetry admin. It owns:

- `safETH ProxyAdmin` (`0x2b408df4…6809E`) — which in turn controls all 13 safETH transparent proxies
- `afCVX` proxy (`0x8668a15b…7Cf`) — `owner()` returns the multisig
- `veASF` locker (`0xf119b5aa…9034`) — `owner()` returns the multisig

The multisig's `getOwners()` + `getThreshold()` were not pulled in this brief — operator should pull on-chain before scoping any governance-pause assumption. veASF holders vote on Asymmetry governance proposals separately (the multisig is for upgrades/parameter changes, not for protocol-level decisions).

### Deployers

| Address | Label | Deploys |
|---|---|---|
| `0xc90c5cc170a8db4c1b66939e1a0bb9ad47c93602` | Initial safETH deployer (2023) | SafEth main + 12 derivative proxies |
| `0x67b80ff33e5937b58b2a46870a912cb11d231efb` | afETH deployer | AfEth proxy + impl + Votium + Relayer |
| `0x318d0059efe546b5687fa6744af4339391153981` | Main Asymmetry product deployer | afCVX + ASF token + veASF locker |
| `0xbec25c5590e89596bde2dfcdc71579e66858772c` | USDaf Jan-2025 deployer | All 21 USDaf-Jan contracts |
| `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` | USDaf May-2025 deployer | CollateralRegistry + BoldToken for May |
| `0x6969acca95b7fb9631a114085eeebd161ec19f25` | USDaf Jul-2025 deployer | CollateralRegistry for Jul |

These EOAs have no on-chain power post-deployment for the non-upgradable contracts. For the upgradable safETH proxies, upgrade authority is the ProxyAdmin (owned by the admin multisig); deployer EOAs are historical only.

---

## Scope — Proxy and Upgrade Architecture

| Product | Upgrade pattern | Upgrade authority |
|---|---|---|
| safETH (13 proxies) | OpenZeppelin TransparentUpgradeableProxy (compiler 0.8.9) | `ProxyAdmin` `0x2b408df4…` → owned by Asymmetry admin multisig `0x263b…ddeb` |
| afETH (3 proxies: AfEth + VotiumStrategy + AfEthRelayer) | ERC1967 (likely UUPS pattern based on README description as "ERC1967 proxy") | Upgrade authority is encoded in the impl; operator-confirm via `proxiableUUID()` |
| afCVX (2 proxies: AfCvx + CleverCvxStrategy) | `SimpleProxy` (compiler 0.8.25, custom proxy pattern) | `owner()` returns admin multisig |
| veASF / ASF / USDaf | Non-proxy (immutable) | n/a — contracts are non-upgradable |

The afCVX `SimpleProxy` is worth a careful look — it's not OZ's TransparentUpgradeableProxy and not ERC1967; it's a custom proxy pattern that Asymmetry implemented (verified on Etherscan as `SimpleProxy` with compiler `0.8.25+commit.b61c2a91`). The upgrade authority and admin slot semantics differ from the standard patterns; an auditor scoping afCVX should re-read this proxy contract carefully.

---

## Scope — Integration Surface

Each Asymmetry product is heavily dependent on external integrations:

| Product | External integrations |
|---|---|
| safETH | 6 LST issuers: Lido (wstETH), Rocket Pool (rETH), Frax (sfrxETH), Ankr (ankrETH), Swell (swETH), StaFi (rETH). Each derivative wrapper directly calls the LST's deposit/withdraw functions. |
| afETH | Frax (sfrxETH); Convex (vlCVX); Votium (bribe-claim infrastructure at `0x00000069aBbB…` is actually Asymmetry's VotiumStrategy contract, but it interacts with Votium's `VlCvxExtraRewardDistribution` and the Convex `CvxLockerV2`); Curve (CVX/ETH swap pool). |
| afCVX | Convex (`Cvx Rewards Pool 0xCF50b810…9332`); CLever (`CvxLocker 0x96C68D…4154`); Furnace (`0xCe4dCc…b72a`); Curve (CVX/clevCVX pool). |
| USDaf (all three deployments) | Liquity V2 governance pattern (uses Liquity's `LQTYToken 0x6dea81c8…c54d` + `LUSDToken 0x5f98805a…8ba0` as voting/anchor tokens); Curve (for `HybridCurveUniV3ExchangeHelpers`); Uniswap V3 (same). |

For USDaf specifically: per the addresses/1.json `governance.LQTYToken` field, USDaf's governance contract treats LQTY (Liquity's governance token) as a voting input — an unusual choice indicating that USDaf inherits Liquity's protocol-incentives-distribution machinery wholesale, not just the trove logic.

---

## Scope — Not Asymmetry (V1 false positives)

The pipeline's v1 brief lists 4 contracts. After verification:

| V1 attribution | Address | Verdict | Reason |
|---|---|---|---|
| `BoldToken` (token, TP-covered) | `0x85e30b8b263bc64d94b827ed450f2edfee8579da` | **REAL Asymmetry** (USDaf May-2025 BoldToken) | Correctly attributed. Note this is the May deployment, not the dominant Jan one. |
| `CryptoWithStablePriceWBTC` (oracle, "likely in scope") | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | **NOT ASYMMETRY** — Curve protocol's `CryptoWithStablePriceWBTC` (Vyper 0.3.7), part of Curve's crvUSD WBTC oracle infrastructure. | Pipeline followed external oracle integration into Curve's own contracts. |
| `unnamed` (unmatched) | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | **NOT ASYMMETRY** — Curve's `CryptoWithStablePriceTBTC` (Vyper 0.3.9), crvUSD TBTC oracle. | Same — Curve-owned oracle code, not Asymmetry. |
| `unnamed` (unmatched) | `0xcff0dcab01563e5324ef9d0adb0677d9c167d791` | **REAL Asymmetry** (USDaf May-2025 CollateralRegistry) — verified on Etherscan as `CollateralRegistry`, mis-classified by pipeline as "unknown unnamed". | Pipeline failed to ingest the verified Etherscan contract name. |

Net: of the 4 rows the v1 brief renders, **2 are wrong attributions** (Curve crvUSD oracles) and **2 are real Asymmetry but only cover the May-2025 USDaf deployment** — the v1 brief **completely misses safETH, afETH, afCVX, veASF/ASF, the dominant USDaf-Jan-2025 deployment (21 contracts), and the USDaf-Jul-2025 deployment**. The 4-contract scope undercounts the real Asymmetry footprint by a factor of ~11×.

---

## Audit Coverage

### Audit history (URL-verified)

| Date | Auditor | Report | Product covered |
|---|---|---|---|
| 2023-03-?? | **Code4rena** | [`2023-03-asymmetry-contest`](https://code4rena.com/audits/2023-03-asymmetry-contest) | safETH (contest, peer-reviewed) |
| 2023-05-?? | **Code4rena** | [`2023-05-asymmetry-mitigation-review-contest`](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) | safETH mitigation review |
| 2023 (date unspecified) | **Zellic** | [`Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf`](https://github.com/Zellic/publications/blob/main/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) | safETH |
| 2023-09 | **Code4rena** | [`2023-09-asymmetry`](https://code4rena.com/reports/2023-09-asymmetry) | afETH contest |
| 2024-05 | **adrianromero (solo)** | [`2024-05-afcvx`](https://github.com/romeroadrian/audits/tree/main/solo/2024-05-afcvx) | afCVX initial audit |
| 2024-06 | **yAudit** | [`06-2024-Asymmetry-veASF.pdf`](https://github.com/yAudit/reports/blob/main/06-2024-Asymmetry-veASF.pdf) | veASF / ASF locker |
| 2025-04 | **yAudit** | [`04-2025-asymmetry-afCFV`](https://reports.yaudit.dev/reports/04-2025-asymmetry-afCFV/) | afCVX continuous review |
| (date unspec) | **Cantina** | [`3765f098-…`](https://cantina.xyz/competitions/3765f098-ef5c-47be-beb9-3f4ce9dcb407) | competition (likely afCVX or USDaf) |
| (date unspec) | **Cantina** | [`d86632df-…`](https://cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712) | competition (likely USDaf) |

### Audit inheritance from Liquity V2 (for USDaf)

USDaf is a Liquity V2 fork — the README of the USDaf and USDaf-v2 repos describes this directly. That means **USDaf inherits the Liquity V2 audit chain** even though no audit explicitly named "USDaf" is in the URL list:

| Date | Auditor | Liquity V2 audit (inherited by USDaf) | Link |
|---|---|---|---|
| 2024-12-31 | **Coinspect** | Smart Contract Audit — Liquity Bold | [`Coinspect - Liquity Bold - v241231.pdf`](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20-%20Bold%20-%20v241231.pdf) |
| (continuous) | **ChainSecurity** | Liquity Bold smart contracts audit | [`chainsecurity.com/security-audit/liquity-bold-smart-contracts`](https://www.chainsecurity.com/security-audit/liquity-bold-smart-contracts) |
| 2024-08-28 | **Dedaub** | Liquity V2 | [`dedaub.com/audits/liquity/liquity-v2-aug-28-2024`](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) |
| (continuous) | **Certora** | Formal verification of Liquity V2 | [`Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf`](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) |
| (continuous) | **Sanity-hosted PDF** | Likely another Liquity V2 review | [`ca6a4815…ddbec.pdf`](https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf) |

The two Cantina competitions in the v1 brief's audit-link list are likely USDaf-specific competitions; their target IDs aren't decodable from the URLs alone, so the v1 pipeline's "discovery-ingest-placeholder" classification reflects an unparsed competition identity.

### Coverage by scope category (44 canonical contracts)

| Product | Contracts (this brief) | Direct external audits | Inherited audits | Coverage % |
|---|---:|---:|---:|---:|
| safETH (8: 7 proxies + ProxyAdmin) | 8 | 7 (Zellic + Code4rena 2023-03 + 2023-05 + OZ ProxyAdmin upstream) | — | 100% |
| afETH (6: 3 proxies + 3 impls) | 6 | 4 (Code4rena 2023-09 covers AfEth + VotiumStrategy; Relayer partial) | — | 67% direct, 100% partial |
| afCVX (4: 2 proxies + 2 impls) | 4 | 4 (yAudit Apr-2025 + adrianromero May-2024 cover both contracts) | — | 100% |
| veASF + ASF (2) | 2 | 2 (yAudit veASF Jun-2024) | — | 100% |
| USDaf Jan-2025 (21: 5 protocol + 15 branch + 1 governance) | 21 | 0 specifically named "USDaf" | 21 (Liquity V2: Coinspect + ChainSecurity + Dedaub + Certora) | 100% inherited |
| USDaf May-2025 (2: CollateralRegistry + BoldToken) | 2 | 1 (Cantina competition assumed) | 2 (Liquity V2) | 100% inherited + partial direct |
| USDaf Jul-2025 (1: CollateralRegistry) | 1 | 1 (Cantina competition assumed) | 1 (Liquity V2) | 100% inherited |
| **Total** | **44** | **19 direct + 24 inherited (Liquity)** | — | High — every contract has *some* audit coverage |

### Gap analysis

- **AfEthRelayer** — surfaces in the `assets/AfEth-Architecture.drawio` but not specifically named in the code4rena 2023-09 contest scope. If the Relayer was deployed post-audit (the Relayer addresses look like vanity addresses that imply later deployment), it would lack direct coverage.
- **CleverCvxStrategy update path** — yAudit's Apr-2025 review covers a specific version of `CleverCvxStrategy` (impl `0xD0F77441…`). If the impl is later upgraded via the `SimpleProxy` admin slot (a `0x8668a15b…` `upgrade` call from the admin multisig), the new impl would be a fresh audit gap.
- **USDaf May-2025 + Jul-2025 deployment deltas vs Liquity V2** — these are forks, not vanilla Liquity V2. Any per-deployment customization (different collateral, different governance config, different parameter values) is uncovered by Liquity's own audits and not specifically named in the Cantina competition titles.
- **safETH derivative-wrapper version rotations** — the `Swell/StaFi/Ankr` derivatives each have an "old" and "current" version on-chain (DL adapter still reads from the old versions for TVL). If the version-rotation code path was not audited, it represents a gap.
- **safETH ProxyAdmin owner change** — operator should confirm the Asymmetry admin multisig `0x263b…ddeb` has been continuously controlled by the Asymmetry team (no compromise event) and that the Safe `getOwners()` + `getThreshold()` match expectations.
- **Multisig signer membership** — not extracted by this brief; operator-confirm.

---

## Targeting Recommendation

In rough priority order by `economic exposure × novelty × audit gap`:

1. **afCVX (`AfCvx` + `CleverCvxStrategy`)** — largest live exposure (~$4.8M CVX). Already covered by 2 audits (yAudit Apr-2025 + adrianromero May-2024) but the most active product (afCVX repo last push Oct-2025). Any post-Apr-2025 changes to `CleverCvxStrategy` or `AfCvx` are the priority re-audit target.
2. **USDaf May-2025 and Jul-2025 deployment deltas** — the two newer USDaf deployments are not the dominant supply but they exist, are tracked by DL, and are likely candidates for active development. Audit work should focus on the per-deployment deltas from Liquity V2 and from the Jan-2025 deployment.
3. **AfEthRelayer** — small surface but not explicitly covered. Worth a focused review of the relayer's deposit/refund logic.
4. **safETH version-rotation code path** — low-priority but worth a focused review if a wholesale safETH audit hasn't been done since 2023.
5. **USDaf Jan-2025 governance contract (`0x636deb76…6ac`)** — Liquity-V2-pattern governance, not specifically audited as an Asymmetry-named report. Inherits Liquity's coverage but the Asymmetry-specific config (FUNDS_SAFE, EPOCH_START, registration thresholds) is worth a focused look.
6. **afCVX `SimpleProxy` pattern** — non-standard proxy pattern. Audit value: confirm the admin slot semantics + upgrade path is correct.
7. **Cantina competition results** — operator should retrieve the two Cantina competition reports (the IDs in the audit-link list) to determine their scope; this is the cheapest way to close audit-coverage gaps.

---

## V1 Pipeline Errors (for this project)

The pipeline's `brief.md` carries the following defects, traced below:

1. **Massive scope under-count (4 vs 44+ contracts)**. The v1 brief renders 4 contracts; this gold-standard catalogue contains 44, and the true production set is likely larger (USDaf May/Jul branches not enumerated; safETH OZ manifest has 13 proxies + 23 impls). The pipeline appears to have indexed only the contracts that surfaced via cross-references from external audit-report URLs that mentioned addresses inline, missing the entire safETH + afETH + afCVX + veASF + Jan-2025 USDaf set.
2. **2 of 4 contracts are wrong attributions (Curve oracles)**. `CryptoWithStablePriceWBTC` and `CryptoWithStablePriceTBTC` are Curve's crvUSD oracle infrastructure, not Asymmetry. The pipeline followed external-oracle integration from USDaf into Curve's contracts.
3. **`CollateralRegistry` `0xcff0dc…d791` mis-classified as "unnamed unknown"**. Etherscan returns `ContractName: CollateralRegistry`; the pipeline failed to ingest the verified name.
4. **Three USDaf deployments not distinguished**. The May-2025 and Jul-2025 deployments are both in the DL adapter; the Jan-2025 (dominant) deployment is not. The v1 brief surfaces only May-2025 contracts; the pipeline does not detect that multiple disjoint deployments exist for the same product.
5. **Audit metadata is two placeholders**. V1 reports two audits with `auditor = discovery-ingest-placeholder`, `audit_date = unknown`, both pointing at Cantina competition URLs. The actual audit chain is 8 direct + ~4 inherited from Liquity V2 — all URLs are in the v1 brief's own `Docs Pages Referenced` list but not parsed into structured `audit_reports` entries.
6. **Lifecycle = `default_fallback`** despite explicit deployment timeline available via Etherscan `getcontractcreation` (queryable for every canonical address).
7. **Tier = `small_tvl_coverage_filler`** undersells the audit context. With 4 distinct product lines, 8 direct audits, a substantial Liquity-V2 inheritance chain, and a unified admin multisig, this is a Tier 2 multi-product protocol.
8. **No detection of the parent-child DL slug relationship**. The DL parent `asymmetry` has two child slugs (`asymmetry-finance` + `asymmetry-usdaf`) with different categories (`Indexes` + `CDP`). The v1 brief uses only the parent slug and inherits its `category: Indexes` framing, missing the CDP half of the protocol entirely.
9. **Proxy + Upgrade Architecture = "No proxy or upgrade architecture detected"** — wrong. safETH has 13 transparent proxies behind a ProxyAdmin owned by a multisig; afETH has 3 ERC1967 proxies; afCVX has 2 `SimpleProxy` (custom-pattern) proxies. The pipeline's proxy detector misses non-ERC1967 patterns and possibly also misses contracts that aren't in the scope-match run.
10. **Multi-product nature not surfaced**. Asymmetry is 4 independent products; the v1 brief framing treats it as a single protocol with 4 contracts.

---

## Appendix

### Sources

- DefiLlama parent JSON: https://api.llama.fi/protocol/asymmetry
- DefiLlama child JSONs: https://api.llama.fi/protocol/asymmetry-finance + https://api.llama.fi/protocol/asymmetry-usdaf
- DefiLlama adapter (LST stack): https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/asymmetry-fi/index.js
- DefiLlama adapter (USDaf): https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/asymmetry-usdaf/index.js
- Source repos: https://github.com/asymmetryfinance (18 repos under the org)
- safETH OZ upgrades manifest: https://github.com/asymmetryfinance/safeth/blob/main/.openzeppelin/mainnet.json (13 proxies + 23 implementations)
- afETH README with explicit Deployed Addresses table: https://github.com/asymmetryfinance/afeth/blob/main/README.md
- afCVX README with explicit Deployed Contracts table + audit links: https://github.com/asymmetryfinance/afCVX/blob/main/README.md
- USDaf-v2 mainnet addresses: https://github.com/asymmetryfinance/USDaf-v2/blob/main/contracts/addresses/1.json
- USDaf-v2 deployment-manifest (testnet — not used in this brief): https://github.com/asymmetryfinance/USDaf-v2/blob/main/contracts/deployment-manifest.json
- Etherscan v2 multi-chain API: `api.etherscan.io/v2/api` for chain 1 (Ethereum only — Asymmetry doesn't deploy on any L2)

### Caveats

- **Three USDaf deployments are tracked piecemeal**. Only the Jan-2025 deployment is enumerated end-to-end (5 protocol + 15 branch + 1 governance). The May-2025 deployment is enumerated only at the protocol level (CollateralRegistry + BoldToken). The Jul-2025 deployment is enumerated only at the CollateralRegistry level. A full audit-scoping pass would `getTroveManager(i)` enumerate the per-branch contracts for the May and Jul deployments.
- **safETH derivative-wrapper rotation** (Swell/StaFi/Ankr have both "old" and "current" versions live on-chain) is documented at the address level but the pipeline did not pull source for all 13 OZ proxies, only the 7 README-named ones.
- **USDaf governance contract relationship to Liquity** — the Jan-2025 governance config in addresses/1.json references `LQTYToken: 0x6dea81c8…c54d` and `LUSDToken: 0x5f98805a…68ba0` (both Liquity contracts). This means USDaf governance reads vote-weight from LQTY *holders*, which is unusual and worth confirming with the Asymmetry team before relying on it for an audit-scoping assumption.
- **The USDaf-v2 repo's `deployment-manifest.json` shows a 6-branch deployment that doesn't exist on mainnet**. The addresses `0xc6e32959…`, `0xceee19f6…`, and all six collateral branches (ysyBOLD, scrvUSD, sUSDS, sfrxUSD, tBTC, WBTC18) return zero bytecode on mainnet. That manifest is for a testnet/staging environment, not production.
- **Multi-sig threshold + signer membership** for the Asymmetry admin Safe `0x263b…ddeb` were not pulled in this brief — operator should run `getOwners()` + `getThreshold()` before relying on multisig-based governance for any scoping decision.
- **Cantina competition contents** are not parsed — the two Cantina URLs in the v1 brief's docs list are referenced as "discovery-ingest-placeholder" by the v1 pipeline; the gold standard inherits the same gap. Cantina's reports are public and an operator should pull them.

### Generation metadata

- Generated: 2026-05-16
- Method: manual research, no pipeline involvement
- Canonical contract set fetched via Etherscan v2 `getsourcecode` for all 44 addresses (1,183 source files, 8.5 MB total)
- Reproducible end-to-end with `gh`, `curl`, and an Etherscan API key
