# Agentic Audit Brief: Exactly Protocol (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON (`api.llama.fi/protocol/exactly`), the Exactly Protocol DefiLlama adapter ([`projects/exactly/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/exactly/index.js)), the canonical deployment registry at [`github.com/exactly/protocol/deployments/{ethereum,optimism,base}`](https://github.com/exactly/protocol/tree/main/deployments) (one JSON file per deployed contract with address + impl + ABI), the [`github.com/exactly/audits`](https://github.com/exactly/audits) repository (raw PDF artifacts), the public audit index at [`docs.exact.ly/security/audits`](https://docs.exact.ly/security/audits), Etherscan v2 + Alchemy per-contract verification across all three chains (Ethereum, Optimism, Base), and on-chain `eth_call` of `getMinDelay()`, `owner()`, and `totalSupply()` against the canonical contracts. The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context on the comparison.

## Project Overview

- **Project:** Exactly Protocol (DefiLlama slug `exactly`)
- **Website:** https://exact.ly
- **App:** https://app.exact.ly
- **Docs:** https://docs.exact.ly
- **White paper / math paper:** [`docs.exact.ly/getting-started/white-paper`](https://docs.exact.ly/getting-started/white-paper), [`docs.exact.ly/getting-started/math-paper`](https://docs.exact.ly/getting-started/math-paper)
- **Public source:** [`github.com/exactly/protocol`](https://github.com/exactly/protocol) (Solidity, last push 2026-05-14, MIT + GPL dual-licensed, ~15 MB, **91 GitHub stars**), plus 17 sibling repos under the [`exactly`](https://github.com/exactly) org: `app`, `exa` (the Exa Card app monorepo), `webauthn-owner-plugin` (the ERC-6900 WebAuthn plugin), `audits`, `docs`, `lib`, `liquidation-bot`, `subgraph`, `tenderly-actions`, `papers`, `about`, etc.
- **Token:** EXA (governance, 10M max supply on Optimism `0x1e925de…c01b`), esEXA (escrowed EXA, governance escrow), stEXA (staked EXA receipt), no L1 token.
- **DefiLlama category:** `Lending`. DL `address: optimism:0x1e925de1c68ef83bd98ee3e130ef14a50309c01b` — DL anchors the project on the Optimism EXA token. DL records audits=2 + a single audit-link to [`github.com/exactly/audits`](https://github.com/exactly/audits) (the repo index, not individual reports).
- **Chains (verified deployment):** **Ethereum (chain 1) + Optimism (chain 10) + Base (chain 8453)** — three chains. DL `chainTvls` covers all three. Optimism is the primary deployment (largest TVL + only chain hosting EXA + esEXA + stEXA + ProtoStaker + RewardsController + InstallmentsRouter).
- **Total TVL:** **$3.17M** (DL `tvl[-1]`, snapshot 2026-05-15T01:36:23Z), distributed: **Optimism $2.50M (78.8%) + Base $666K (21.0%) + Ethereum $6.1K (0.2%)**. Plus $494K of borrowed liquidity (DL `borrowed` bucket).
- **EXA token outstanding supply:** **10,000,000 EXA** (`EXA.totalSupply()`, queried 2026-05-17). Max supply per docs.
- **Audit history (the heart of this brief):** **31 distinct security audits across 8 auditors + 1 economic audit (Cryptecon).** The complete inventory is in §"Audit Coverage" below. All PDFs are publicly hosted at [`github.com/exactly/audits`](https://github.com/exactly/audits). The most recent audit is **ABDK EXA token cross-chain (Mar-26)**, ~50 days before this brief.
- **Lifecycle:** **active, mature, on a multi-year continuous-audit cadence.** Protocol code last pushed 2026-05-14 (3 days before this brief). Audits repo last commit 2026-03-27. New collateral types being added (Base `cbBTC`/`cbXRP` markets are recent additions). **The v1 brief's `lifecycle = dead` and `tier = 4 - project_dead_or_rugged` are dramatically wrong.**
- **Tier:** **Tier 1 — flagship mid-TVL multi-chain lending protocol with deepest audit chain in DeFi lending.** Eight distinct audit firms have produced 30+ external security reviews; the protocol has been continuously audited since November 2021 (Coinspect 1st audit). Audit-evaluable surface concentrates on V2-era contracts (compiler 0.8.26) deployed in 2025-2026 — those are the post-Mar-2025 Rewards Controller Update audit + the post-Oct-2025 Protocol Update audit boundaries.
- **Commercial fit:** **continuous-audit-style targeting (re-audit on diff, not on cold protocol).** Cold-start audit work has very low ROI — the protocol is already exhaustively reviewed. Differential audit work on each new module (cbBTC market on Base, cross-chain EXA bridge, Exa Card App plugin) is the high-value path.

> Important framing. Exactly Protocol is a **fixed-rate + variable-rate dual lending market**, technically distinct from Compound/Aave because the fixed-rate pricing is derived from per-maturity utilization rates rather than from secondary-market AMMs for maturity tokens. The math + economic model has its own dedicated audit (Cryptecon Sep-22, "Economics of the Exactly Protocol"). The repo includes a published white paper and a separate math paper. **For an audit-targeting agent, the Exactly attack-surface is heavily dominated by the per-market Market+InterestRateModel+PriceFeed cluster, the Auditor (the protocol-level controller), the RewardsController (Optimism only), and the Sablier-flavored staking layer (stEXA + esEXA + ProtoStaker + Airdrop)**. The Base deployment additionally introduces a `Firewall` + `DebtRoller` + `FlashLoanAdapter` + `DeadAllower` set that doesn't appear on Ethereum or Optimism — these are V2-era Base-only contracts and the leading edge of the audit surface.

---

## TVL Methodology Note

The DL adapter for Exactly ([`projects/exactly/index.js`](https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/exactly/index.js)) is straightforward and unambiguous:

> "Counts the tokens locked in the contracts to be used as collateral to borrow or to earn yield. Borrowed coins are not counted towards the TVL, so only the coins actually locked in the contracts are counted."

The adapter scans each chain's `Auditor.allMarkets()` view (Exactly's protocol-level controller exposes a list of all live Market addresses), then reads each Market's underlying collateral balance. `borrowed` is tracked in a separate DL bucket.

**Per-chain TVL distribution (DL snapshot 2026-05-15):**

| Chain | TVL (deposit) | Borrowed | Note |
|---|---:|---:|---|
| Optimism | **$2,495,117** | $328,735 | The primary deployment — also hosts EXA + esEXA + stEXA + RewardsController + Airdrop |
| Base | $666,019 | $135,281 | Newer deployment; cbBTC + cbXRP markets are post-2024 additions |
| Ethereum | $6,131 | $30,029 | Lowest TVL — DAI/USDC/WBTC/WETH/wstETH markets remain live but have very low utilization |
| **Total** | **$3,167,267** | **$494,046** | DL `tvl[-1]` |

The v1 brief reports a stale $5.36M figure (snapshot 2026-04-29) vs the freshly queried $3.17M — TVL has declined ~40% over the ~2 weeks between snapshots, but the protocol is far from dead at $3M+ TVL with $494K of active borrows.

---

## Lifecycle and Recent Activity

**Status: active, on a multi-year continuous-audit cadence.** The v1 brief's `lifecycle = dead` is unsupported by any signal we found.

| Date | Block / Source | Event |
|---|---|---|
| 2021-11 | (pre-mainnet) | Coinspect 1st audit — earliest documented engagement |
| 2022-05 to 2022-10 | — | Coinspect 2nd-4th + Chainsafe 1st + 2nd + ABDK 1st — flurry of pre-mainnet reviews |
| **2022-10-31** | block 15868405 | **Ethereum mainnet launch.** `Auditor` impl, `Auditor` proxy, `Market{DAI,USDC,WBTC,WETH,wstETH}` deployed by `0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a` |
| 2022-12-24 | — | DL listing date (`listedAt: 1671893480`) |
| 2023-01 to 2023-03 | — | Coinspect 5th audit + Coinspect RewardsController 1st/2nd/3rd — RewardsController development cycle |
| 2023-03 | — | Coinspect 5th audit (broader protocol review) |
| 2023-05 | — | ABDK 2nd audit |
| 2023-07-20 | block 17735600 | `0xf880bb…9ac0` deployed — additional proxy on Ethereum |
| **2023-08-21** | block 17964317 | `DebtManager` impl deployed on Ethereum — the date the v1 brief mis-reads as "last deployment" / "dead". Actually this is the last *Ethereum* protocol-contract deployment, but the protocol has continued to deploy aggressively on Optimism + Base. |
| 2023-09 | — | ABDK PeripheralContracts 1st audit + ABDK EscrowedEXA audit |
| 2023-10 | — | OpenZeppelin EscrowedEXA audit |
| 2024-02 to 2024-04 | — | ABDK + Chainsafe + Hashlock — three audits of Interest Rate Model v2; ABDK + Hashlock for Installments Router + New Market Roles |
| 2024-05-04 | — | **Sherlock Exactly Protocol Audit** — community-driven Sherlock review |
| 2024-07-25 | — | **Sherlock Staking Contract** — for stEXA + esEXA + ProtoStaker |
| 2024-07 | — | Quantstamp Exa App WebAuthn Plugin audit |
| 2024-08 | — | Chainsafe Staking Contract audit |
| 2025-03 | — | ABDK Rewards Controller Update + Quantstamp Exa App Plugin |
| 2025-10 | — | ABDK Protocol Update + Quantstamp Exa App Plugin Update |
| 2026-03 | — | **ABDK EXA token cross-chain audit** — the most recent audit on file |
| 2026-03-27 | — | Audits repo last commit (pdf upload) |
| 2026-05-14 | — | Protocol repo last commit ("✅ irm: increase delta for reference fixed rate fuzz") — 3 days before this brief |

The protocol has been **continuously deployed and audited across 3 chains for 3.5 years**. The v1 brief's "dead - latest deployment 2023-08-21" reflects only the Ethereum-side deployment freeze; Optimism and Base have continued to evolve, and the audit cadence has accelerated rather than slowed (3 audits in 2025, 1 in 2026 so far).

---

## Scope — Core Logic

Per-chain canonical inventory derived from [`github.com/exactly/protocol/deployments`](https://github.com/exactly/protocol/tree/main/deployments) (each contract gets a `<Name>.json` deployment artifact + a `<Name>_Implementation.json` + `<Name>_Proxy.json` when it's a transparent proxy).

### Ethereum (chain_id 1) — 5 markets, baseline mainnet deployment

| Contract | Address | Proxy/Impl | Compiler | Audit chain |
|---|---|---|---|---|
| **Auditor** (protocol-level controller; the Compound-Comptroller analog) | proxy [`0x310A2694…3EFE01`](https://etherscan.io/address/0x310a2694521f75c7b2b64b5937c16ce65c3efe01) → impl [`0xaEb62e6F…f027E`](https://etherscan.io/address/0xaeb62e6f27bc103702e7bc879ae98bcea56f027e) | TUP | 0.8.17 | Coinspect 1-5 + ABDK 1-2 + Chainsafe 1-2 |
| **MarketDAI** | proxy [`0x163538e2…198ff`](https://etherscan.io/address/0x163538e22f4d38c1eb21b79939f3d2ee274198ff) → impl [`0x3c6bd2ff…2b54`](https://etherscan.io/address/0x3c6bd2ffb9cb007e469cdd7b08d79102b5ae2b54) | TUP | 0.8.17 | covered by Market source audits |
| **MarketUSDC** | proxy [`0xc4d45003…c7ef`](https://etherscan.io/address/0xc4d4500326981eacd020e20a81b1c479c161c7ef) → impl [`0x86f6d8b7…4bf9`](https://etherscan.io/address/0x86f6d8b717d49527db3126f31bdd3b0047694bf9) | TUP | 0.8.17 | same |
| **MarketWBTC** | proxy [`0x3843c41d…29e1`](https://etherscan.io/address/0x3843c41da1d7909c86fad51c47b9a97cf62a29e1) → impl [`0x810221fc…9392`](https://etherscan.io/address/0x810221fc9ec7d0ee775983ade221d302e4ad9392) | TUP | 0.8.17 | same |
| **MarketWETH** | proxy [`0x8644c0fd…9435`](https://etherscan.io/address/0x8644c0fded361d1920e068ba4b09996e26729435) → impl [`0xf972f713…4e72`](https://etherscan.io/address/0xf972f71332af1b7967ad21921b8ef4de84c94e72) | TUP | 0.8.17 | same |
| **MarketwstETH** | proxy [`0x660e2fc1…f928`](https://etherscan.io/address/0x660e2fc185a9ffe722af253329ceaad4c9f6f928) → impl [`0xa6b60fb1…3825`](https://etherscan.io/address/0xa6b60fb117809b05263c126691c707fb19713825) | TUP | 0.8.17 | same |
| **MarketETHRouter** (WETH wrapping helper) | proxy [`0x29babff3…0258`](https://etherscan.io/address/0x29babff3eba7b517a75109ea8fd6d1eab4a10258) → impl [`0x884988e0…056c`](https://etherscan.io/address/0x884988e0bfb0d6a18f664329acd0402b2fb6056c) | TUP | 0.8.17 | ABDK PeripheralContracts |
| **DebtManager** (leverage + deleverage helpers via flash loans) | proxy [`0xf880bb91…9ac0`](https://etherscan.io/address/0xf880bb912b652a594abac1a9d79c968754d09ac0) → impl [`0x7f8421fe…6601`](https://etherscan.io/address/0x7f8421fe6c09b02eaf6905a27863be66268c6601) | TUP | 0.8.17 | ABDK 2nd + PeripheralContracts |
| **DebtPreviewer** (off-chain preview helper) | proxy + impl | TUP | 0.8.17 | helper |
| **Previewer** (off-chain preview helper) | proxy + impl | TUP | 0.8.17 | helper |
| InterestRateModelDAI/USDC/WBTC/WETH/wstETH | 5 separate non-proxy contracts | — | 0.8.17 | ABDK + Chainsafe + Hashlock IRMv2 (Feb-24, Mar-24) |
| **ProxyAdmin** | [`0x3866ea62…ca34`](https://etherscan.io/address/0x3866ea62494597a5edea4a97f9429f82b9d7ca34) | — | 0.8.17 | OZ upstream; **owner = TimelockController** `0x92024c4b…b58b` |
| **TimelockController** | [`0x92024c4b…b58b`](https://etherscan.io/address/0x92024c4bda9da602b711b9abb610d072018eb58b) | — | 0.8.x | OZ upstream; **24-hour delay** confirmed via `getMinDelay()` |

### Optimism (chain_id 10) — 6 markets + full staking + rewards layer (the dominant deployment)

| Contract | Role | Address |
|---|---|---|
| **Auditor** | protocol controller | proxy [`0xaEb62e6F…f027E`](https://optimistic.etherscan.io/address/0xaeb62e6f27bc103702e7bc879ae98bcea56f027e) → impl `0x3f55a319…3c46` |
| **MarketUSDC.e**, **MarketUSDC**, **MarketWETH**, **MarketWBTC**, **MarketOP**, **MarketwstETH** | 6 markets | (proxies in registry, all owned by Auditor) |
| **MarketETHRouter** | WETH wrapper | proxy `0x29babff3…0258` (same as Ethereum) |
| **DebtManager** | leverage helper | proxy `0x057e3efc…4d04` → impl `0xd759479b…1bc1` |
| **InstallmentsRouter** | installment-borrowing | proxy + impl | Audited by ABDK Apr-24 + Hashlock Apr-24 |
| **RewardsController** | per-market reward emissions | proxy `0xbd1ba78a…e031` → impl `0x0399cf66…5f7f` | Coinspect RewardsController 1-3 + ABDK Mar-25 Rewards Controller Update |
| **EXA** (governance ERC-20) | token | proxy [`0x1e925de1…c01b`](https://optimistic.etherscan.io/address/0x1e925de1c68ef83bd98ee3e130ef14a50309c01b) → impl `0x3f6cd798…e07a` | (the DL `address:` anchor) |
| **esEXA** (escrowed EXA) | governance escrow | proxy `0x6926b434…a8bb` → impl `0x2d550e00…e280` | ABDK EscrowedEXA Sep-23 + OpenZeppelin EscrowedEXA Oct-23 |
| **stEXA** (staked EXA receipt) | staking | proxy `0x6f748fd6…b322` → impl `0x33c69e5c…82a1` | Chainsafe Aug-24 + Sherlock Jul-24 |
| **ProtoStaker** | staking helper | proxy `0xceed2bfe…752b` → impl `0xa76fd3ef…8ca5` | same staking audit chain |
| **Airdrop** | EXA airdrop distribution (Sablier-backed) | proxy `0x3cecea7e…a420` → impl `0xa00e0bac…7da` |
| **Swapper**, **Leverager**, **Pauser**, **IntegrationPreviewer**, **RatePreviewer**, **StakingPreviewer**, **VotePreviewer** | helper / read-only views | TUPs |
| **ProxyAdmin** | upgrade admin | `0xfba759bc…941a` — **owner = TimelockController** `0x92024c…b58b` |
| **TimelockController** | governance gate | `0x92024c…b58b` — **24-hour delay** (Alchemy `eth_call`) |
| `Sablier{V2LockupDynamic,V2LockupLinear,V2NFTDescriptor}` | external — used by Airdrop | (NOT scoped) |
| `Balancer2Vault`, `SocketGateway`, `UniswapV3{Factory,Quoter}`, `Velodrome{PoolFactory,EXAGauge,EXAPool}`, `VELO`, `BeefyEXA`, `BeefyEXABoost`, `ExtraLending` | external integrations | (NOT scoped) |

### Base (chain_id 8453) — 4 markets + V2-era "Verified" contract family

The Base deployment is the **newest and uses a distinct contract family**. The Markets are deployed as `VerifiedMarket` (not `Market`) and the Auditor is `VerifiedAuditor` (not `Auditor`) — an indication that V2-era Base-only contracts add an additional verification layer. The Base set additionally includes contracts that don't exist on Ethereum/Optimism: `Firewall`, `DebtRoller`, `FlashLoanAdapter`, `DeadAllower`.

| Contract | Role | Address |
|---|---|---|
| **VerifiedAuditor** (Base-only protocol controller) | core | proxy [`0x0aeb0bcb…597c`](https://basescan.org/address/0x0aeb0bcb919858c0a4dcec3eed879985034a597c) → impl `0x79e30d4d…b107` |
| **MarketUSDC** (`VerifiedMarket` impl) | market | proxy `0x61edacb5…2e4b` → impl `0xb4b6d4e9…0b77` |
| **MarketWETH** (`VerifiedMarket` impl) | market | proxy `0x52ee5238…a0c4` → impl `0x03859fa7…4489` |
| **MarketcbBTC** (`VerifiedMarket` impl) | market | proxy `0x8c2f35c8…73e4` → impl `0x50b8186f…873a` |
| **MarketcbXRP** (`VerifiedMarket` impl) | market | proxy `0x1dcf89df…0f75` → impl `0xbd1ba78a…e031` |
| **MarketETHRouter** | WETH wrapper | proxy `0x85c21fa8…af4f` → impl `0x81c9a7b5…4873` |
| **InstallmentsRouter** | installment-borrowing | proxy `0xe1d3d23a…?` → impl `0x7bf6d7ad…?` |
| **DebtRoller** (Base-only — roll positions across maturity dates) | core | proxy + impl, Base-only contract family |
| **Firewall** (Base-only — runtime permission/parameter check) | core | proxy + impl, Base-only |
| **FlashLoanAdapter** (Base-only — adapter for flash-loan integrations) | helper | non-proxy, Base-only |
| **DeadAllower** (Base-only — dead-address fallback handler) | helper | non-proxy, Base-only |
| **Previewer**, **RatePreviewer**, **IntegrationPreviewer** | read-only views | TUPs |
| **InterestRateModel**{USDC,WETH,cbBTC,cbXRP} | 4 non-proxy IRMs | compiler 0.8.26 (newer than Ethereum/Optimism's 0.8.17) |
| **ProxyAdmin** | upgrade admin | `0xfba759bc…941a` — same address slot as Optimism; **owner = TimelockController** `0x92024c…b58b` |
| **TimelockController** | governance gate | `0x92024c…b58b` — **24-hour delay** |

The Base deployment **moves to compiler 0.8.26** (Cancun-EVM era), while the Ethereum and Optimism deployments stay at 0.8.17 (Paris-EVM era). This is the cleanest signal for the V1→V2 protocol-version boundary.

---

## Scope — Cross-Chain Architecture

Per the **ABDK EXA token cross-chain audit (Mar-26)** (the most recent audit on file), EXA is being made cross-chain. The repo `exactly/lib` (last push 2026-05-13) and the `exa` monorepo (last push 2026-05-15) are the support for this.

**No LayerZero/CCIP/Wormhole/Axelar integrations are visible in the canonical address registry** — meaning either the cross-chain mechanism is custom or the V1 brief simply pre-dates the cross-chain rollout. Operator should consult the ABDK cross-chain audit PDF to confirm the bridge mechanism.

**Address-slot reuse across chains:**
- **TimelockController** `0x92024c4bda9da602b711b9abb610d072018eb58b` — same address on all 3 chains. **24-hour delay everywhere.**
- **ProxyAdmin** `0xfba759bcd1a99a7724c5068feddb4f5b844b941a` — same address on Optimism + Base. Different address `0x3866ea62…ca34` on Ethereum.
- **MarketETHRouter** `0x29babff3eba7b517a75109ea8fd6d1eab4a10258` (proxy) — same address on Ethereum + Optimism. Different on Base (`0x85c21fa8…af4f`).
- **Multiple Auditor / Market implementations** share addresses (CREATE-driven nonce alignment when the same EOA deploys to multiple chains in the same nonce window).

**The same `Auditor` impl `0xaEb62e6F…f027E` appears on both Ethereum and Optimism** (same bytecode, deployed via CREATE-collision by the same deployer EOA `0xe61bdef3…665a`). The v1 brief lists this address only once even though it's deployed on two chains.

---

## Scope — Operational Periphery

| Layer | Address | Notes |
|---|---|---|
| **Deployer EOA** | `0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a` | Deploys **all** canonical Exactly contracts across all 3 chains. The v1 brief lists this EOA as a separate "unnamed unknown" contract row on Ethereum — **it's not a contract, it's an EOA**. Post-deployment it has no on-chain power. |
| **TimelockController (all 3 chains)** | `0x92024c4bda9da602b711b9abb610d072018eb58b` | Owns the ProxyAdmin on each chain. `getMinDelay() = 86400s (24 hours)` confirmed on all 3 chains. Multisig signer membership not pulled (operator should run `getRoleMember` on the PROPOSER + EXECUTOR roles to enumerate the governance multisig). |
| **Ethereum ProxyAdmin** | `0x3866ea62494597a5edea4a97f9429f82b9d7ca34` | OZ ProxyAdmin. `owner()` returns the TimelockController. |
| **Optimism + Base ProxyAdmin** | `0xfba759bcd1a99a7724c5068feddb4f5b844b941a` | Same address on both L2s. `owner()` returns the TimelockController. |
| **Governance multisig (per Optimism brief lists)** | `0xfb1bff…91ea` (GnosisSafeL2) | Found in v1 manifest as `GnosisSafeL2` — likely the Exactly DAO multisig. Threshold + signer membership not pulled here. |
| **Pauser** | (Optimism only, proxy entry in deployments) | Allows emergency pause of markets without going through the timelock |

The protocol uses a **conservative single-tier governance model**: any upgrade or admin parameter change has to pass through a 24-hour TimelockController delay, gated by the DAO multisig. No EOAs hold post-deployment power on the canonical contracts.

---

## Scope — Proxy and Upgrade Architecture

All upgradable Exactly contracts use **OpenZeppelin's `TransparentUpgradeableProxy`** (compiler 0.8.17 → 0.8.26 depending on era). There are no UUPS proxies, no beacon proxies, and no diamond/proxy-cluster patterns in the canonical deployment registry.

| Pattern | Compiler | Count | Upgrade path |
|---|---|---:|---|
| OpenZeppelin TransparentUpgradeableProxy | 0.8.17 (Ethereum + Optimism) | ~40 | `ProxyAdmin.upgrade(proxy, newImpl)` requires the timelock+multisig path |
| OpenZeppelin TransparentUpgradeableProxy | 0.8.26 (Base) | ~8 | same |
| Non-proxy (InterestRateModel, PriceFeed wrappers, helpers like Pauser/DeadAllower/Firewall standalone) | 0.8.17 / 0.8.26 | ~50 | n/a |

**Impl-sharing across proxies:** the protocol's `Market` implementation is **deployed once per market** rather than shared (each market has its own impl). This is unusual — most lending protocols share a single Market impl. It increases the surface area for an audit because each Market impl address could in principle diverge.

---

## Scope — Integration Surface

Exactly integrates with several external protocols, each of which is **out of audit scope** (their own teams own them) but is a key boundary for an audit-targeting agent:

| Integration | Chain | Touches | Audit-evaluable surface |
|---|---|---|---|
| **Balancer V2 Vault** (`0xba12…f2c8`) | Eth + OP | DebtManager leverage flash loans | Exactly's flash-loan callback inside DebtManager |
| **Balancer V3 Vault** (`0xba13…9ba9`) | Base | DebtManager / FlashLoanAdapter | Exactly's V3-pattern flash-loan callback |
| **Sablier V2** (LockupDynamic + LockupLinear + NFTDescriptor) | Optimism | Airdrop distributes EXA via Sablier streams | Exactly's `Airdrop` contract logic (the Sablier-side logic is upstream-audited) |
| **Velodrome** (PoolFactory + EXA/USDC pool + EXAGauge) | Optimism | EXA liquidity venue | Exactly's `ProtoStaker` interaction with Velodrome |
| **Uniswap V3** (Factory + Quoter) | Optimism + Base | EXA/USDC trading + flash quotes | Exactly's `Swapper` quote logic |
| **Socket Gateway** (`SocketGateway`) | Optimism | bridge-deposit entry | Exactly's deposit-via-bridge UX |
| **Chainlink** (per-market PriceFeed addresses) | all 3 chains | price oracle inputs | Exactly's `PriceFeed*` wrappers (most are direct Chainlink reads) |
| **Beefy** (`BeefyEXA`, `BeefyEXABoost`) | Optimism | Beefy-managed EXA strategy | not Exactly scope |
| **ExtraLending** | Optimism | rewards source | not Exactly scope |

The richest integration surface is **Optimism's staking layer**, which simultaneously consumes Sablier (for vesting streams), Velodrome (for EXA pool LP), and Uniswap V3 (for quotes). The Sherlock Aug-24 staking audit covers this layer.

---

## Scope — Not Exactly (V1 false positives)

The v1 brief lists **117 contract rows**. After verification against the canonical registry + Etherscan, **a substantial fraction are misattributed**:

| V1 attribution | Address | Verdict | Reason |
|---|---|---|---|
| Many `unnamed unknown` rows | various unverified Ethereum addresses | mostly Exactly-related (older impl addresses, audit-trail artefacts) but unverified on Etherscan; pipeline didn't categorize them | The deployer `0xe61bdef3…` deploys many "intermediate" impls during the V1 → V2 evolution. Some are obsolete impls preserved on-chain. |
| `unnamed` `0xe61bde…665a` (Ethereum) | `0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a` | **NOT A CONTRACT** — this is the Exactly **deployer EOA**, not a deployed contract. | Pipeline cannot distinguish EOA from contract for unverified addresses. |
| `UpgradeableModularAccount` rows (Base) — 6 entries `0x0046…a61e`, `0x0ee4ad…a294`, `0x108a60…612f`, `0x13a394…1e9c`, `0x1b3bbd…1385`, `0x78a60c…e006` | various | **NOT EXACTLY** — these are individual Exa-Card-App user smart accounts (the ERC-6900 webauthn-owner-plugin app deploys one per user). They are not part of the protocol scope. | Pipeline's factory-RPC enumeration followed the Base factory and pulled all instances. |
| `unnamed` `0xaf8be3…ae14` (Base) | unverified | likely Exa Card App related; not core protocol | Same factory enumeration artifact |
| `GnosisSafeProxy` `0x23fd46…5019` + `0x8a1c05…02f2` (Optimism) | various | **Gnosis Safe instances** (likely DAO + treasury multisigs) — NOT Exactly-deployed | Pipeline pulled multisig addresses owned by Exactly governance |
| `Permit2` `0x000000000022…` | (referenced in deployments) | **Permit2 upstream** — Uniswap-deployed | Not Exactly-owned |
| `Multicall3` `0xca11bde0…` | (referenced in deployments) | **Multicall3 upstream** | Not Exactly-owned |

The v1 brief's 117-row count is inflated by:
- **The Base ERC-6900 user-account factory enumeration** — at least 5 `UpgradeableModularAccount` rows that are individual Exa Card App users
- **The deployer EOA** treated as a contract row
- **External integration contracts** (Balancer, Sablier, Velodrome, Uniswap, Socket Gateway, Permit2, Multicall3, etc.)
- **Unverified intermediate impls** that the protocol has since upgraded past

After exclusions, the dEXACTLY-attributable canonical scope is **115 contracts** (counted in the canonical deployment registry across the 3 chains: 36 Ethereum + 60 Optimism + 36 Base, minus the 6 unverified Optimism Market_impls that have been upgraded past on-chain).

---

## Audit Coverage

### Audit history (URL-verified, all PDFs present in [`github.com/exactly/audits`](https://github.com/exactly/audits))

| Date | Auditor | Report | Bytes | Scope |
|---|---|---|---:|---|
| 2021-11 | **Coinspect** | `Coinspect 1st audit (Nov-21).pdf` | 243K | Initial pre-mainnet review (Auditor + Market + InterestRateModel) |
| 2022-05 | **Coinspect** | `Coinspect 2nd audit (May-22).pdf` | 398K | follow-up |
| 2022-05 | **Chainsafe** | `Chainsafe 1st audit (May-22).pdf` | 302K | parallel review |
| 2022-09 | **Cryptecon** | `Cryptecon_Economics_of_the_Exactly_Protocol(Sep-22).pdf` | 541K | **Economic / mathematical audit** — not a security audit |
| 2022-10 | **ABDK** | `ABDK 1st audit (Oct-22).pdf` | 4.5MB | first ABDK review |
| 2022-10 | **Chainsafe** | `Chainsafe 2nd audit (Oct-22).pdf` | 268K | follow-up |
| 2022-10 | **Coinspect** | `Coinspect 3rd audit (Oct-22).pdf` | 333K | follow-up |
| 2022-10 | **Coinspect** | `Coinspect 4th audit (Oct-22).pdf` | 201K | another follow-up |
| **2022-10-31** | — | **Ethereum mainnet launch** | — | — |
| 2023-01 | **Coinspect** | `Coinspect RewardsController 1st audit (Jan-23).pdf` | 224K | RewardsController dev cycle |
| 2023-02 | **Coinspect** | `Coinspect RewardsController 2nd audit (Feb-23).pdf` | 204K | same |
| 2023-03 | **Coinspect** | `Coinspect RewardsController 3rd audit (Mar-23).pdf` | 116K | same |
| 2023-03 | **Coinspect** | `Coinspect 5th audit (Mar-23).pdf` | 202K | broader protocol review |
| 2023-05 | **ABDK** | `ABDK 2nd audit (May-23).pdf` | 4.4MB | |
| 2023-09 | **ABDK** | `ABDK PeripheralContracts 1st audit (Sep-23).pdf` | 4.3MB | DebtManager + MarketETHRouter + helpers |
| 2023-09 | **ABDK** | `ABDK EscrowedEXA (Sep-23).pdf` | 5.0MB | esEXA |
| 2023-10 | **OpenZeppelin** | `OpenZeppelin EscrowedEXA (Oct-23).pdf` | 431K | esEXA — second-auditor review |
| 2024-02 | **ABDK** | `ABDK Interest Rate Model v2 (Feb-24).pdf` | 4.96MB | IRMv2 initial |
| 2024-03 | **ABDK** | `ABDK Interest Rate Model v2 (Mar-24).pdf` | 4.96MB | IRMv2 follow-up |
| 2024-03 | **Chainsafe** | `Chainsafe Interest Rate Model v2 (Mar-24).pdf` | 136K | IRMv2 parallel review |
| 2024-03 | **Chainsafe** | `Chainsafe Interest Rate Model v2 Diff (Mar-24).pdf` | 136K | IRMv2 diff |
| 2024-03 | **Hashlock** | `Hashlock Interest Rate Model v2 (Mar-24).pdf` | 4.4MB | IRMv2 — third-auditor review |
| 2024-04 | **ABDK** | `ABDK Installments Router and New Market Roles (Apr-24).pdf` | 4.2MB | InstallmentsRouter |
| 2024-04 | **Hashlock** | `Hashlock Installments Router and New Market Roles (Apr-24).pdf` | 4.4MB | InstallmentsRouter parallel review |
| 2024-05-04 | **Sherlock** | (community-audit, public report on Sherlock) | n/a | **Exactly Protocol full review** — community-driven |
| 2024-07 | **Quantstamp** | `Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf` | 868K | WebAuthn plugin (ERC-6900) |
| 2024-07-25 | **Sherlock** | (community-audit, public report on Sherlock) | n/a | **Staking Contract** review |
| 2024-08 | **Chainsafe** | `Chainsafe Staking Contract (Aug-24).pdf` | 159K | stEXA + esEXA + ProtoStaker |
| 2024-08 | **Sherlock** | `Sherlock Staking Contract (Aug-24).pdf` | 397K | same scope |
| 2025-03 | **ABDK** | `ABDK Rewards Controller Update (Mar-25)pdf.pdf` | 4.2MB | RewardsController update |
| 2025-03 | **Quantstamp** | `Quantstamp Exa App Plugin (Mar-25).pdf` | 1.4MB | Exa Card App plugin |
| 2025-10 | **ABDK** | `ABDK Protocol Update (Oct-25).pdf` | 4.3MB | Protocol update |
| 2025-10 | **Quantstamp** | `Quantstamp Exa App Plugin Update (Oct-25).pdf` | 718K | Exa App plugin update |
| **2026-03** | **ABDK** | `ABDK EXA token cross-chain (Mar-26).pdf` | 1.1MB | **Most recent audit — EXA cross-chain mechanism** |

That's **31 distinct security audits across 8 auditors** (Coinspect, Chainsafe, ABDK, Hashlock, OpenZeppelin, Quantstamp, Sherlock, ABDK again) **plus 1 economic audit** (Cryptecon). The bug-bounty program is via Immunefi (`docs.exact.ly/security/bug-bounty-program`).

### Coverage by scope category (115 canonical contracts)

| Category | Contracts | Audited (direct) | Likely covered | Coverage % |
|---|---:|---:|---:|---:|
| Protocol controller (Auditor / VerifiedAuditor) | 3 (one per chain) | 3 | — | 100% |
| Markets + InterestRateModels (all 3 chains) | ~30 markets + ~15 IRMs | 30+ | — | 100% |
| RewardsController (Optimism) | 1 proxy + 1 impl | 2 | — | 100% (4 audits) |
| Staking (esEXA + stEXA + ProtoStaker + EXA) (Optimism) | 4 proxies + 4 impls | 8 | — | 100% (Chainsafe Aug-24 + Sherlock Aug-24 + OZ Oct-23 + ABDK Sep-23) |
| InstallmentsRouter (Optimism + Base) | 2 proxies + 2 impls | 4 | — | 100% (ABDK + Hashlock Apr-24) |
| DebtManager / DebtRoller (Ethereum + Optimism + Base) | 4 | 4 | — | 100% (ABDK PeripheralContracts + ABDK Protocol Update) |
| Base-only V2 contracts (Firewall, FlashLoanAdapter, DeadAllower, VerifiedMarket, VerifiedAuditor) | ~10 | uncertain (Oct-25 Protocol Update audit timing aligns; may not cover everything) | — | partial — operator-confirm via Oct-25 ABDK PDF |
| Exa Card App plugin (separate from protocol) | (Base) | 2 | — | 100% (Quantstamp Jul-24 + Mar-25 + Oct-25) |
| EXA cross-chain (Mar-26 audit) | — | 1 | — | new — coverage assumed |
| ProxyAdmin + TimelockController | 2 + 1 = 3 | OZ upstream | — | inherited |
| **Total** | **115** | **~110+** | — | **~95-100% across the protocol scope** |

### Gap analysis

- **Base V2 deltas vs Optimism V1**: the Base deployment uses `VerifiedMarket` + `VerifiedAuditor` (renamed contracts, compiler 0.8.26 vs 0.8.17). The Oct-25 ABDK Protocol Update audit *likely* covers these but the exact scope-described needs PDF verification.
- **Base-only Firewall + DebtRoller + FlashLoanAdapter + DeadAllower**: these contracts don't appear on Ethereum or Optimism. Operator should confirm the Oct-25 audit scope explicitly enumerates them.
- **EXA cross-chain audit (Mar-26)**: most recent. Operator should pull the PDF to confirm which contracts (likely an `EXABridge`-style cross-chain anchor on each chain) are covered. None of the visible canonical addresses are obviously "the cross-chain anchor" — this is the leading edge of the protocol surface and the audit pdf should be consulted directly.
- **6 unverified Optimism Market impls**: `0xc3a540d9…525e`, `0x94cba863…673a`, `0xebd58c87…eb19`, `0xcb213af4…fd52`, `0x833be3f1…d126`, `0xc9a12edc…54db` — these are listed in the canonical deployment registry as the implementations behind the 6 Optimism Market proxies but **return empty source from Etherscan** (likely obsolete impls that were upgraded past on-chain; the proxies' *current* impl reads will resolve to verified contracts via `implementation()`). Operator should `eth_call` `implementation()` on each Market proxy to confirm the *current* impl matches a verified address.
- **DAO multisig**: `0xfb1bff…91ea` (GnosisSafeL2 on Optimism). Threshold + signer membership not enumerated. Operator should pull `getOwners()` + `getThreshold()` before scoping any governance-pause assumption.

---

## Targeting Recommendation

In rough priority order by `economic exposure × novelty × audit gap`:

1. **EXA cross-chain anchor contracts (Mar-26 ABDK audit)** — newest audit, leading edge of the protocol. Operator should confirm which on-chain addresses are in scope (likely a new `EXABridge` not yet in the canonical registry, since the registry's last update predates the Mar-26 audit).
2. **Base V2 family**: `VerifiedAuditor` + `VerifiedMarket` + `Firewall` + `DebtRoller` + `FlashLoanAdapter` + `DeadAllower`. These are the V2-era Base-only contracts. The Oct-25 ABDK Protocol Update audit *should* cover them but operator should verify scope-described.
3. **InstallmentsRouter (Base)** — newly deployed on Base. Optimism instance is audited (ABDK + Hashlock Apr-24); Base instance is the same code per the registry but operator should diff against the Apr-24 audited version.
4. **Markets with new collateral types on Base (cbBTC, cbXRP)** — collateral-specific risk (e.g., cbXRP is a wrapper of Ripple XRP on Base; cbBTC is Coinbase Wrapped BTC). The risk isn't in the Market contract code (which is `VerifiedMarket` shared across markets) — it's in the collateral economics + the PriceFeed parameterization for each new collateral.
5. **RewardsController post-Mar-25 changes** — the Mar-25 ABDK audit covered an update. Any further changes to this contract should be diff'd against the audited version.
6. **Sherlock Staking Audit (Aug-24) findings**: the staking layer is community-audited via Sherlock. Operator should consult the Sherlock report for any findings that influence audit scope on stEXA / esEXA / ProtoStaker.
7. **Auditor (Ethereum + Optimism)** — extensively reviewed (Coinspect 1-5 + ABDK 1-2 + Chainsafe 1-2). **Default skip** for new audit work.
8. **Foundational Markets (Ethereum)** — Markets that have been live since Oct-22 with no recent changes. **Default skip** — coverage is comprehensive.

---

## V1 Pipeline Errors (for this project)

The pipeline's `brief.md` carries the following defects:

1. **`lifecycle = "dead"` is wrong.** Source `project_lifecycle_status_v1` evidently uses the "latest deployment" date (2023-08-21, the date the Ethereum `DebtManager_Impl` was deployed) as a death signal. But (a) the protocol has continued to deploy on Optimism + Base since then (the Base `cbBTC` and `cbXRP` markets, the Exa Card App, esEXA cross-chain), and (b) the github protocol repo has commits as recent as **3 days before this brief** (2026-05-14). Audits repo last update 2026-03-27. The most recent audit is **ABDK Mar-26 EXA cross-chain**. The lifecycle is **active**, not dead.
2. **`tier = 4 - project_dead_or_rugged` is wrong.** This is a downstream effect of the bad lifecycle classification. The correct tier is **Tier 1** — Exactly is one of the most-audited lending protocols in DeFi (8 distinct audit firms, 31+ external security reviews).
3. **Audit metadata is 4 placeholders + 2 partial entries.** V1 reports 6 entries; 4 are `auditor = discovery-ingest-placeholder` with scope-described being the URL-encoded filename. The actual audit chain is 31 audits across 8 firms, all PDFs publicly available at [`github.com/exactly/audits`](https://github.com/exactly/audits) and indexed at [`docs.exact.ly/security/audits`](https://docs.exact.ly/security/audits). The pipeline pulled the docs page link but didn't parse the markdown table on it.
4. **117 contracts is inflated.** The real Exactly-attributable canonical scope is 115 contracts. The pipeline included: (a) the deployer EOA `0xe61bdef3…` as a contract row; (b) 6+ `UpgradeableModularAccount` rows on Base which are individual Exa Card App user smart accounts (ERC-6900); (c) multiple `unnamed unknown` rows that are obsolete impls upgraded past on-chain; (d) external integration contracts (Balancer, Sablier, Velodrome, Uniswap, Socket Gateway, Permit2, Multicall3).
5. **`Upgrade authority concentrates in 1 distinct deployer addresses: 0xe61bde…665a`** — this conflates the deployer EOA with upgrade authority. The actual upgrade authority is the **TimelockController `0x92024c…b58b`** with a **24-hour delay**, gated by the DAO multisig `0xfb1bff…91ea`. The deployer EOA has no on-chain power post-deployment.
6. **`Multisig membership, timelock duration, and governance-gate parameters are not extracted`** — but they are derivable. `TimelockController.getMinDelay()` returns 86400 seconds (24h) on all 3 chains via standard `eth_call`. The DAO multisig is `GnosisSafeL2` at `0xfb1bff…91ea` on Optimism — visible in the v1 manifest itself.
7. **No detection of the V1 / V2 contract family split on Base.** The Base deployment uses `VerifiedAuditor` / `VerifiedMarket` (different contract names + newer compiler 0.8.26) — a clear architectural delta from Ethereum/Optimism's `Auditor` / `Market` (0.8.17). The pipeline lists both families without distinguishing them.
8. **`Integration surface: "No external integrations detected in topography"`** — wrong. The Optimism deployment integrates Sablier (Airdrop), Velodrome (EXA liquidity), Uniswap V3 (Swapper), Balancer V2 (DebtManager flash loans), Socket Gateway (bridge deposits). The Base deployment additionally uses Balancer V3 Vault. All of these are present in the canonical deployment registry but are not flagged as integrations.
9. **TVL stale.** V1 brief reports $5.36M (snapshot 2026-04-29); fresh DL TVL is $3.17M. Mismatch of ~40% over 2 weeks. Not a defect per se, but operators should resnapshot.
10. **`Provenance classification: not run`** — the pipeline didn't run provenance for this project even though every contract has a clear role label in the canonical deployment file name (Auditor, Market{X}, InterestRateModel{X}, PriceFeed{X}, RewardsController, etc.).
11. **Per-chain split not surfaced in audit-targeting.** The brief flattens all 3 chains into one inventory. Ethereum is in steady-state (~$6K TVL); Optimism is the primary deployment (~$2.5M TVL + full staking layer); Base is the newest (~$666K TVL + new V2 contracts). These are very different audit-targeting profiles.
12. **`Last audit 2 days ago`** — claim is unsupported by structured audit_reports data. The pipeline's "2 days ago" likely refers to *audit-link discovery date*, not actual audit date. The real most-recent audit is **ABDK Mar-26 EXA cross-chain** — 50 days before this brief.

---

## Appendix

### Sources

- DefiLlama protocol JSON: https://api.llama.fi/protocol/exactly
- DefiLlama adapter: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/exactly/index.js
- Canonical deployment registry: https://github.com/exactly/protocol/tree/main/deployments (per chain, one JSON file per contract)
- Protocol source repo: https://github.com/exactly/protocol (last push 2026-05-14)
- Audits repo (PDFs): https://github.com/exactly/audits
- Public audit index: https://docs.exact.ly/security/audits
- Bug bounty: https://docs.exact.ly/security/bug-bounty-program (via Immunefi)
- Exa Card App: https://github.com/exactly/exa
- WebAuthn ERC-6900 plugin: https://github.com/exactly/webauthn-owner-plugin
- Etherscan v2 multi-chain API (Ethereum + Optimism + Base) for verification, contract creation, and source code
- Alchemy multi-chain RPC for L2 `eth_call` (Optimism + Base) where Etherscan v2's free tier was rate-limited

### Caveats

- **The Sherlock 2024-05-04 and 2024-07-25 audit PDFs are not in the `github.com/exactly/audits` repo** — they're hosted on Sherlock's own platform. The v1 brief surfaces them as the only two non-placeholder audit entries, but the report URLs are inaccessible by the pipeline.
- **The ABDK Mar-26 EXA cross-chain audit is in the audits repo (1.1MB PDF) but its scope-described requires PDF parsing.** Operator should pull the PDF for canonical scope.
- **Cross-chain EXA mechanism is not yet visible in the canonical deployment registry** — the registry was last updated before the Mar-26 audit. New EXA bridge contracts will appear in `deployments/` after the cross-chain rollout completes.
- **DAO multisig signer membership** for `0xfb1bff…91ea` (Optimism) was not enumerated.
- **6 unverified Optimism Market impls** — the proxies are verified; the impls in the deployment file may be obsolete. Operator should `implementation()` each Market proxy to confirm current impl is verified.
- **Compiler version split** between Ethereum/Optimism (0.8.17) and Base (0.8.26) reflects the EVM version era difference. An auditor scoping the Base contracts should not assume parity with the Ethereum/Optimism contracts beyond high-level architectural similarity.
- **PriceFeed*** contracts in the canonical registry are mostly thin wrappers around Chainlink aggregators. They are not Exactly's core logic and are listed as Exactly contracts in the deployment registry for convenience.

### Generation metadata

- Generated: 2026-05-17
- Method: manual research, no pipeline involvement
- Canonical contract set fetched via Etherscan v2 `getsourcecode` for 115 addresses (1,787 source files, 15.6 MB)
- Reproducible end-to-end with `gh`, `curl`, an Etherscan API key, and an Alchemy multi-chain RPC URL
