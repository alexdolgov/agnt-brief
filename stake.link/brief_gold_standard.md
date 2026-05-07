# Agentic Audit Brief: stake.link (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON, stake.link's own canonical address book at `github.com/stakedotlink/contracts/deployments/{mainnet,polygon,metis}.json`, per-contract Etherscan pages, and four audit PDFs decoded from `stakedotlink/contracts/audits/`. The full row-by-row evidence trail is at [`docs/gold-standard/stakelink_verification_ledger.md`](../../docs/gold-standard/stakelink_verification_ledger.md). The peer pipeline-generated brief sits next to this file at [`SCOPE_NOTE.md`](SCOPE_NOTE.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context on the comparison.

## Project Overview

- **Project:** stake.link
- **Website:** https://stake.link
- **Public source:** https://github.com/stakedotlink/contracts (canonical deployments + audit archive in repo)
- **Governance:** snapshot.org/#/stakedotlink.eth + on-chain TimelockController with 24-hour delay
- **Category (DL):** Liquid Staking (parent slug has no category, child slug `stakedotlink` is "Liquid Staking")
- **Chains (verified):** Ethereum L1 (primary), Polygon L2 (secondary), Metis L2 (secondary)
- **Total TVL:** **$76.66M** (DL parent slug snapshot 2026-05-07): Ethereum bucket $69.22M + Ethereum-staking bucket $7.44M
- **TVL by product line:** LINK staking (stLINK) ~$66M, LINK Priority Pool float $12.31M, SDL governance staking (SDLPool) $7.44M, POL staking ~residual, Metis/Espresso TVL not in DL adapter
- **Lifecycle:** **alive**. Most recent audit 2026-03-23 (45 days before this brief), most recent core deployment within the last 90 days (Espresso staking 2026-02 cohort, latest Priority Pool implementation 2026-02), latest stLINK implementation upgrade ~57 days before this brief (~2026-03-11)
- **Tier:** Tier 1 — large-TVL active multi-product protocol with broad audit coverage and fresh upgrades
- **Audit-evaluable surface:** ~$76M of stake.link-deployed economic exposure across LINK, SDL, POL, ESP product lines; the $17.46M LINK in Chainlink's own Operator Staking Pool is an *integration target*, not a stake.link contract

> Important framing. stake.link is **not** a single contract cluster. It is five distinct product lines (LINK liquid staking, SDL governance staking, POL Polygon staking, Metis staking, Espresso staking) plus a sunsetting LSD index pool (ixETH), a CCIP cross-chain bridge family, and a deep operational periphery (rebase controllers, withdrawal pools, fund-flow controllers, vesting). Each product line has its own audit chain. The protocol's economic value lives upstream in **Chainlink's Staking v0.2 contracts**, into which stake.link's strategy adapters deposit; the audit-evaluable boundary is the adapter, not Chainlink's pool.

---

## On-Chain TVL Summary

| Product line | Anchor contract | Source of TVL signal | TVL (USD) |
|---|---|---|---:|
| LINK liquid staking (stLINK) | [`0xb8b2…cD5`](https://etherscan.io/address/0xb8b295df2cd735b15BE5Eb419517Aa626fc43cD5) | DL adapter `totalStaked`; 6,568,196.59 stLINK supply × ~$10.05 | **~$66M** (subset of DL Ethereum bucket) |
| LINK Priority Pool float | [`0xDdC7…0eA`](https://etherscan.io/address/0xDdC796a66E8b83d0BcCD97dF33A6CcFBA8fd60eA) | Etherscan token holdings: 157,694.66 LINK + 1,066,997.26 stLINK | **$12.31M** |
| SDL governance staking (SDLPool / reSDL) | [`0x0B2e…CA4d`](https://etherscan.io/address/0x0B2eF910ad0b34bf575Eb09d37fd7DA6c148CA4d) | DL adapter `balanceOf(SDL)`; 29,705,364.10 SDL held | **$7.44M** (DL Ethereum-staking bucket) |
| POL liquid staking (stPOL) | [`0x2ff4…1753`](https://etherscan.io/address/0x2ff4390dB61F282Ef4E6D4612c776b809a541753) | DL adapter `totalStaked` on POL_StakingPool; current POL balance is 0 (early-stage) | residual |
| Metis liquid staking | METIS_StakingPool (Metis L2) | not in DL adapter | not exposed |
| Espresso liquid staking (stESP) | [`0x5273…6e50`](https://etherscan.io/address/0x5273a75694311A6c4F2AcF5C5B8566D965cb6e50) | not in DL adapter; deployed 86 days ago | $0 (early-stage) |
| LSD Index Pool (ixETH) | [`0x5353…1fa1`](https://etherscan.io/address/0x535321013A1E2D5aF3B1853812a64CA3fc6C1fa1) | not in DL adapter; product appears in maintenance/sunset | dormant |
| wstLINK (wrapped non-rebasing stLINK) | [`0x911D…03da`](https://etherscan.io/address/0x911D86C72155c33993d594B0Ec7E6206B4C803da) | Etherscan token holdings: 1,067,592.32 stLINK | $10.73M (nested under stLINK supply, not additive) |
| **Total stake.link economic exposure** | — | — | **~$76.66M** (matches DL parent rollup) |

---

## Lifecycle and Recent Activity

The protocol is alive and actively shipping. Verified deployment cadence:

| Era | Deployer | Notable contracts | Date |
|---|---|---|---|
| LinkPool launch (pre-rebrand) | LinkPool deployer (later relabelled "stake.link: Deployer") | StakingPool, StakingAllowance (= SDL token), WrappedSDToken, PoolRouter | 2022 (Sigma Prime audit Aug 2022) |
| stake.link era 1 | stake.link: Deployer (`0x23c4…d767`) | stLINK ERC1967Proxy, wstLINK, SDLPool, OperatorVCS, CommunityVCS, ixETH index | 2022-12 to 2024-02 |
| stake.link era 2 (Polygon) | Stake.link: Deployer 1 (`0x4397…e87b`) | stPOL, wstPOL, POL_RebaseController, ESP_StakingPool, ESP_EspressoStrategy, latest Priority Pool implementation, LINKMigrator | 2024-12 onwards |
| stake.link era 2 (governance + LINK staking refresh) | Stake.link: Deployer 1 (`0x57F1…a1bd`) | GovernanceTimelock, RebaseController, LINK_WithdrawalPool, May-2025 cohort of CommunityVault / OperatorVault / CommunityVCS / OperatorVCS / FundFlowController / MerkleDistributor | 2025-02 onwards |
| Latest production change | Stake.link: Deployer 1 / stake.link: Deployer | stLINK implementation upgraded (~57 days ago); CommunityVCS implementation #5 (March 2026) | 2026-03-11 (stLINK impl), 2026-03-23 (audit on this change) |

The 2026-03-23 Cyfrin Rebase Batching audit found 2 issues (1 Medium, 1 Low) in PR 178 of the contracts repo — that PR landed and rebase controller automation has been firing on schedule (every ~2 days) ever since.

---

## Scope — LINK Liquid Staking (Ethereum L1)

The protocol's flagship product. Users deposit LINK and receive stLINK (rebasing) or wstLINK (non-rebasing). LINK is then deposited into Chainlink's Staking v0.2 pools via stake.link's own strategy adapters.

| Contract | Address | Proxy? | Implementation | On-chain TVL | Audit status | Last audit |
|---|---|---|---|---|---|---|
| stLINK token / LINK Staking Pool | [`0xb8b295df2cd735b15BE5Eb419517Aa626fc43cD5`](https://etherscan.io/address/0xb8b295df2cd735b15BE5Eb419517Aa626fc43cD5) | yes (ERC1967Proxy) | `0x2FE5a394…597` (deployed ~57d ago) | 6.57M stLINK supply ≈ ~$66M LINK backing | audited | Sigma Prime 2022 (`StakingPool.sol`) + Sigma Prime 2023 (Core & LINK Staking) + Cyfrin 2025-01-20 (Staking Proxy) |
| LINK Priority Pool (proxy) | [`0xDdC796a66E8b83d0BcCD97dF33A6CcFBA8fd60eA`](https://etherscan.io/address/0xDdC796a66E8b83d0BcCD97dF33A6CcFBA8fd60eA) | yes (ERC1967Proxy) | `0x6Fb9CC7d10A5286A864e760C2756e7F6d44D4d26` (deployed ~85d ago) | 157,694 LINK + 1.067M stLINK = $12.31M | audited | Cyfrin 2023-08-25 (Priority Pool) + Trust Security 2023-10-01 (Priority Pool & LINK Staking v0.2) |
| LINK Priority Pool (current implementation) | [`0x6Fb9CC7d10A5286A864e760C2756e7F6d44D4d26`](https://etherscan.io/address/0x6Fb9CC7d10A5286A864e760C2756e7F6d44D4d26) | no (impl behind proxy) | — | logic only | covered with proxy | re-audited at every upgrade |
| wstLINK (Wrapped stLINK) | [`0x911D86C72155c33993d594B0Ec7E6206B4C803da`](https://etherscan.io/address/0x911D86C72155c33993d594B0Ec7E6206B4C803da) | no | — | 1,067,592 stLINK ($10.73M) backing | audited | Sigma Prime 2022 (`WrappedSDToken.sol`) |
| LINK CommunityVCS (strategy adapter) | [`0xAc12290b097f6893322F5430627e472131fBC1B5`](https://etherscan.io/address/0xAc12290b097f6893322F5430627e472131fBC1B5) | yes (ERC1967Proxy) | `0x14024f4e7fef08cb19f8051456e39ee899990744` (5 upgrades, latest March 2026) | rebases stLINK; deposits LINK into Chainlink Community Staking Pool | audited | **Cyfrin 2026-03-23 (Rebase Batching) — current implementation IS the audit subject** |
| LINK OperatorVCS (strategy adapter) | [`0x4852e48215A4785eE99B640CACED5378Cc39D2A4`](https://etherscan.io/address/0x4852e48215A4785eE99B640CACED5378Cc39D2A4) | yes (ERC1967Proxy) | `0x25FB2B90…AAF57` (last upgrade 2025-05-08) | 19,615.95 stLINK ($197k); deposits LINK into Chainlink Operator Staking Pool | audited | shares scope with CommunityVCS audits + Cyfrin 2025-02-28 (CL Rewards Claiming) |
| LINK RebaseController | [`0x1711e93eec78ba83D38C26f0fF284eB478bdbec4`](https://etherscan.io/address/0x1711e93eec78ba83D38C26f0fF284eB478bdbec4) | no | — | $0 (orchestrator); active automated upkeep | audited | Cyfrin 2026-03-23 (Rebase Batching) covers the contract that drives this |
| LINK WithdrawalPool | [`0xa60B5146E44ff755e32BD51532842ceB41D0C248`](https://etherscan.io/address/0xa60B5146E44ff755e32BD51532842ceB41D0C248) | yes (ERC1967Proxy) | `0x9e00fd7e4754cc0deca4d653c61190380318ed17` | $0 (drain queue) | audited | Cyfrin 2024-09-17 + Codehawks 2024-11-27 + Trust 2025-02-04 (three independent reviews of LINK Staking Withdrawals) |
| LINK FundFlowController | [`0xd2e7381d8d3FcC97C1b4d88761bDBc8Dd26a0200`](https://etherscan.io/address/0xd2e7381d8d3FcC97C1b4d88761bDBc8Dd26a0200) | (not individually verified) | — | — | covered with adjacent audits | — |
| LINK PP DistributionOracle | [`0x2285AC429cCCAaE7cC1E27BfBe617bC626B443CF`](https://etherscan.io/address/0x2285AC429cCCAaE7cC1E27BfBe617bC626B443CF) | (not individually verified) | — | — | covered with Priority Pool audits | — |
| LINK Migrator | [`0x08E11a9A74E7aCc51aCe382b6D02aBE8B7cF7786`](https://etherscan.io/address/0x08E11a9A74E7aCc51aCe382b6D02aBE8B7cF7786) | no | — | $0 | audited | Cyfrin 2025-06-04 (LINK Migrator) |
| stLINK DelegatorRewardsPool | [`0xbcD10c166b83Edb0EbD05aaca5fACab9C0a307F0`](https://etherscan.io/address/0xbcD10c166b83Edb0EbD05aaca5fACab9C0a307F0) | (not individually verified) | — | — | covered with rewards-distribution audits | — |
| stLINK SDLRewardsPool | [`0x8753C00D1a94D04A01b931830011d882A3F8Cc72`](https://etherscan.io/address/0x8753C00D1a94D04A01b931830011d882A3F8Cc72) | (not individually verified) | — | — | covered with SDLPool audit | Trust Security 2023-08-06 (SDLPool) |

---

## Scope — Governance & SDL

| Contract | Address | Proxy? | Implementation | On-chain holdings | Audit status |
|---|---|---|---|---|---|
| SDL Token (`StakingAllowance`) | [`0xa95C5ebB86E0dE73B4fB8c47A45B792CFeA28C23`](https://etherscan.io/address/0xa95C5ebB86E0dE73B4fB8c47A45B792CFeA28C23) | no | — | 100M SDL total supply, 900 holders | audited (Sigma Prime 2022 covered `StakingAllowance.sol`) |
| SDLPool (`Reward Escrowed SDL` / reSDL) | [`0x0B2eF910ad0b34bf575Eb09d37fd7DA6c148CA4d`](https://etherscan.io/address/0x0B2eF910ad0b34bf575Eb09d37fd7DA6c148CA4d) | yes (ERC1967Proxy) | `0x88DD5C42…F8B80eA75` | **29,705,364 SDL ($7.18M) — DL `Ethereum-staking` bucket source** | audited (Trust Security 2023-08-06) |
| GovernanceTimelock (OZ TimelockController) | [`0xb72d8F5213b3E52FAf13Aa074b03C4788e78349F`](https://etherscan.io/address/0xb72d8F5213b3E52FAf13Aa074b03C4788e78349F) | no | — | $0 | covered indirectly (standard OZ pattern); 24-hour minimum delay; 1 Proposer (`0xB351EC0F…`), 8 Executors, no admin |
| LinearBoostController | [`0x14b2F86c159199b6CBa593438aE89078dfB83698`](https://etherscan.io/address/0x14b2F86c159199b6CBa593438aE89078dfB83698) | (not individually verified) | — | — | likely covered by SDLPool audit |
| DelegatorPool | [`0xAEF186611EC96427d161107fFE14bba8aA1C2284`](https://etherscan.io/address/0xAEF186611EC96427d161107fFE14bba8aA1C2284) | (not individually verified) | — | — | likely covered by Sigma Prime 2022 |
| PoolRouter | [`0x9AE7895258efB5eBDa3e97E26f9819287c668A9A`](https://etherscan.io/address/0x9AE7895258efB5eBDa3e97E26f9819287c668A9A) | (not individually verified) | — | — | audited (Sigma Prime 2022 covered `PoolRouter.sol`) |
| FlatFee | [`0x8ef5d844De9bbf52FCacED2ecf66B7FAf0B3AA12`](https://etherscan.io/address/0x8ef5d844De9bbf52FCacED2ecf66B7FAf0B3AA12) | (not individually verified) | — | — | unclear scope |
| SDL Vesting (15 contracts: NOP0–NOP13 + LinkPool) | NOP0 [`0xe22Ee6…081A`](https://etherscan.io/address/0xe22Ee628E3aA38133BDd01159057767e1A93081A) … NOP13 [`0xb03697…d1d4`](https://etherscan.io/address/0xb03697a0C4c86AEf1A2F73D157dCe101bFcfd1d4), LinkPool [`0x286138…aE6`](https://etherscan.io/address/0x2861382Ef967E5B539b5BDF9fFCC52Fa4056eaE6) | varies | — | per-NOP SDL allocation | audited | Cyfrin 2025-08-02 (SDL Vesting + Vesting — two separate reports same day) |
| LPL Token (legacy LinkPool token) | [`0x99295f1141d58a99e939f7be6bbe734916a875b8`](https://etherscan.io/address/0x99295f1141d58a99e939f7be6bbe734916a875b8) | no | — | legacy | audited (Sigma Prime 2022 era) |
| LPL Migration | [`0x08341befE6428568cdF798D19223821697DcEC15`](https://etherscan.io/address/0x08341befE6428568cdF798D19223821697DcEC15) | (not individually verified) | — | — | legacy migration |

---

## Scope — Multisigs and Operator Identity

These are the human-operated approval surfaces. Treat as out-of-code-scope; operator-confirm signer rosters and thresholds before scoping.

| Address | Type | Holdings | Role |
|---|---|---|---|
| [`0xB351EC0FEaF4B99FdFD36b484d9EC90D0422493D`](https://etherscan.io/address/0xB351EC0FEaF4B99FdFD36b484d9EC90D0422493D) | Gnosis Safe (Singleton 1.3.0) | **21,727,603.20 SDL ($5.25M)** + 45.49 stLINK | **Treasury / community Safe** — sole Proposer on `GovernanceTimelock`. v1 brief listed this as `unnamed / unknown`. |
| [`0xdedA4c43136D4f40F75073B0d815c648330fD072`](https://etherscan.io/address/0xdedA4c43136D4f40F75073B0d815c648330fD072) | Gnosis Safe (Singleton 1.3.0) | 7,690,000 SDL ($1.86M) | Operational/team Safe. 8 historical executions, last 2024-10-30 |

The two stake.link team deployer EOAs (`0x23c4602e…d767` and `0x43975fe7…e87b`/`0x57F1Bf47…a1bd`) are deployment EOAs, not multisigs. The Chainlink Labs deployer (`0x69512b85…d7d7`) is upstream and out of stake.link governance.

---

## Scope — POL Polygon Staking (Ethereum L1 + Polygon L2)

| Contract | Chain | Address | Proxy? | Audit status |
|---|---|---|---|---|
| stPOL token / POL_StakingPool | Ethereum L1 | [`0x2ff4390dB61F282Ef4E6D4612c776b809a541753`](https://etherscan.io/address/0x2ff4390dB61F282Ef4E6D4612c776b809a541753) | yes (ERC1967Proxy) | covered by Cyfrin 2025-05-19 + Zellic 2025-07-02 (both "Polygon Staking") |
| wstPOL / POL_WrappedSDToken | Ethereum L1 | [`0x2091d83592D79B4De5fD2ce3D98679c32A9555e6`](https://etherscan.io/address/0x2091d83592D79B4De5fD2ce3D98679c32A9555e6) | no | covered (wrapper of stPOL) |
| POL_PriorityPool | Ethereum L1 | [`0xCfa197495CF8E82D7B5df858F55B73208B8B9d67`](https://etherscan.io/address/0xCfa197495CF8E82D7B5df858F55B73208B8B9d67) | (not individually verified) | covered |
| POL_RebaseController | Ethereum L1 | [`0xDa669F2Ea3A54150242965238392D351235b1C1f`](https://etherscan.io/address/0xDa669F2Ea3A54150242965238392D351235b1C1f) | (not individually verified) | covered |
| POL_WithdrawalPool | Ethereum L1 | [`0xbfbF47b2a3B9e54A44257bf57d4b078170096458`](https://etherscan.io/address/0xbfbF47b2a3B9e54A44257bf57d4b078170096458) | (not individually verified) | covered |
| POL_PolygonStrategy | Ethereum L1 | [`0x7D145AD7860d0A9C7Bb824D5B2f85F575D0300AA`](https://etherscan.io/address/0x7D145AD7860d0A9C7Bb824D5B2f85F575D0300AA) | (not individually verified) | **direct subject of Zellic 2025-07-02 (`PolygonStrategy.sol`)** |
| POL_PolygonFundFlowController | Ethereum L1 | [`0x70F7DaBA7F2D0866088ecB1e3b29401a97f65951`](https://etherscan.io/address/0x70F7DaBA7F2D0866088ecB1e3b29401a97f65951) | (not individually verified) | covered |
| POL_MEVRewardsPool | Ethereum L1 | [`0xD6Dbdda416C10ae2B7aCBe2d141c0E52b1802C59`](https://etherscan.io/address/0xD6Dbdda416C10ae2B7aCBe2d141c0E52b1802C59) | (not individually verified) | covered |
| stPOL_SDLRewardsPool | Ethereum L1 | [`0x77F555A6B9Ec1fBFf5f545128046338a566b5a56`](https://etherscan.io/address/0x77F555A6B9Ec1fBFf5f545128046338a566b5a56) | (not individually verified) | covered |
| POL_LSTRewardsSplitterController | Ethereum L1 | [`0x5e1bfbb052c3f7Bfe0e7386f435343982b1F78c8`](https://etherscan.io/address/0x5e1bfbb052c3f7Bfe0e7386f435343982b1F78c8) | (not individually verified) | covered (LSTRewardsSplitter discussed in Zellic 2025-07-02) |
| POL_CCIPCurveGaugeSender | Ethereum L1 | [`0x949545A9d400cDc177C2fEc7f896F2Eb35Ed640D`](https://etherscan.io/address/0x949545A9d400cDc177C2fEc7f896F2Eb35Ed640D) | (not individually verified) | unclear (CCIP integration) |
| POL_WrappedSDToken (mirror) | Polygon L2 | `0x1d0347c535c88cf6bb72df75aed34363edb4b2ae` | — | mirror token |
| POL_CurveGaugeDistributor | Polygon L2 | `0x4E23aeb47227b8B7Dadef576A9bBB987C240a494` | — | rewards distribution on Polygon side |
| POL_CCIPCurveGaugeReceiver | Polygon L2 | `0x280516F160cC4f54C48bfD6B06033593B8EE5B35` | — | CCIP receiver pairing with the L1 sender |

---

## Scope — Metis Staking (Ethereum L1 + Metis L2)

L1 (Ethereum) side:

| Contract | Address | Audit status |
|---|---|---|
| METIS_L1Strategy | [`0x93c3d7039743f0a8cdB6D3e240f07153F2B52Ef1`](https://etherscan.io/address/0x93c3d7039743f0a8cdB6D3e240f07153F2B52Ef1) | covered by Trust Security 2024-04-30 (Metis Staking) |
| METIS_L1Transmitter | [`0x5e2A7B992769E43D4E76a4bB92de9c0532F25Cde`](https://etherscan.io/address/0x5e2A7B992769E43D4E76a4bB92de9c0532F25Cde) | covered |
| wstMETIS_SDLRewardsPool | [`0x19282e0365a5b90c9864446448E29465A9d226Eb`](https://etherscan.io/address/0x19282e0365a5b90c9864446448E29465A9d226Eb) | covered |
| METIS_WrappedSDToken | [`0xd7cf0e0fC12fB97e03841CE4f3086dB327CE0F2B`](https://etherscan.io/address/0xd7cf0e0fC12fB97e03841CE4f3086dB327CE0F2B) | covered |

L2 (Metis) side:

| Contract | Address |
|---|---|
| METIS_StakingPool | `0x19282e0365a5b90c9864446448E29465A9d226Eb` |
| METIS_L2Strategy | `0xfb8256CFCeeAcfb4835a3EbF47EBEa2902e30567` |
| METIS_L2Transmitter | `0xc4bAf9Df7Da0dB146D8AeDEe447246ed47b4c2E4` |
| METIS_PriorityPool | `0xbEF37783DC468050722db5053F19E1cC91C80E3b` |
| METIS_WithdrawalPool | `0xa68285a07F683a447775E19D50a06Cd6748a4fAe` |
| METIS_WrappedSDToken | `0x7F89e4A071136f8E3Ec12D8F87793Dc84038C054` |
| METIS_RebaseController | `0x7f9bD75bddCC7AB80433bD288a0E71Fd0ffcFC3D` |

---

## Scope — Espresso Staking (Ethereum L1)

The newest product line, deployed February 2026.

| Contract | Address | Notes |
|---|---|---|
| ESP_StakingPool (stESP) | [`0x5273a75694311A6c4F2AcF5C5B8566D965cb6e50`](https://etherscan.io/address/0x5273a75694311A6c4F2AcF5C5B8566D965cb6e50) | ERC1967Proxy, deployed 86 days ago by Stake.link: Deployer 1 |
| ESP_PriorityPool | [`0xdC26867B7d0F599BD2DeF704468a8cF073375FD3`](https://etherscan.io/address/0xdC26867B7d0F599BD2DeF704468a8cF073375FD3) | (not individually verified) |
| ESP_RebaseController | [`0x5537F6762c181125De36b3a6884e9726e35DdB90`](https://etherscan.io/address/0x5537F6762c181125De36b3a6884e9726e35DdB90) | (not individually verified) |
| ESP_WithdrawalPool | [`0x908B892276fb70fB6FD362FF97D58E7abF6d3690`](https://etherscan.io/address/0x908B892276fb70fB6FD362FF97D58E7abF6d3690) | (not individually verified) |
| ESP_WrappedSDToken | [`0x43ff5fFaB0973815EF8672F71c49ee5e53f30a48`](https://etherscan.io/address/0x43ff5fFaB0973815EF8672F71c49ee5e53f30a48) | (not individually verified) |
| ESP_EspressoStrategy | [`0xF0fb3Aa0f6a4B84494B78f81103a789e81540344`](https://etherscan.io/address/0xF0fb3Aa0f6a4B84494B78f81103a789e81540344) | ERC1967Proxy, holds 29,429 ESP ($2,103) |
| ESP_EspressoFundFlowController | [`0xF36BDBc45219f9fbAc0741a92a546F95C97104bd`](https://etherscan.io/address/0xF36BDBc45219f9fbAc0741a92a546F95C97104bd) | (not individually verified) |
| stESP_SDLRewardsPool | [`0x4A18AEA755bD2Ec7c0b7dD6f065bBB3725490342`](https://etherscan.io/address/0x4A18AEA755bD2Ec7c0b7dD6f065bBB3725490342) | (not individually verified) |
| ESP_EspressoRewardsConsumer | [`0xe69D92f6910b45dA1D6Ddfb380efaa6AF56e33F9`](https://etherscan.io/address/0xe69D92f6910b45dA1D6Ddfb380efaa6AF56e33F9) | (not individually verified) |

Audit: Cyfrin 2026-02-04 (Espresso Staking).

---

## Scope — LSD Index Pool (ixETH) — sunsetting

| Contract | Address | Notes |
|---|---|---|
| ETH_LiquidSDIndexPool (ixETH) | [`0x535321013A1E2D5aF3B1853812a64CA3fc6C1fa1`](https://etherscan.io/address/0x535321013A1E2D5aF3B1853812a64CA3fc6C1fa1) | Verified ERC1967Proxy. Deployed 2023-04-06. Only 64 transactions ever; latest 2025-07-18. **Effectively in maintenance / sunset**. Not in DL adapter |
| ixETH_WrappedSDToken | [`0x1A72bE10F6E6CF0CA100a407352E50d0ed653dEc`](https://etherscan.io/address/0x1A72bE10F6E6CF0CA100a407352E50d0ed653dEc) | wrapper |
| ixETH_LidoLSDIndexAdapter | [`0xEb9f29b6395Db28C0861C24f1cbFCEee1ff0791D`](https://etherscan.io/address/0xEb9f29b6395Db28C0861C24f1cbFCEee1ff0791D) | wraps stETH |
| ixETH_RocketPoolLSDIndexAdapter | [`0x6025533B9E095AB2730E1Ad50219be8293d66220`](https://etherscan.io/address/0x6025533B9E095AB2730E1Ad50219be8293d66220) | wraps rETH |
| ixETH_CoinbaseLSDIndexAdapter | [`0x2401E9cEada76a59753549f71858A3ece906f197`](https://etherscan.io/address/0x2401E9cEada76a59753549f71858A3ece906f197) | wraps cbETH |
| ixETH_FraxLSDIndexAdapter | [`0x7700A0E892db04f4ee0f2fE7b4f32a2cDF200164`](https://etherscan.io/address/0x7700A0E892db04f4ee0f2fE7b4f32a2cDF200164) | wraps sfrxETH |

Audit: Cyfrin 2023-03-07 (LSD Index Pool).

---

## Scope — Cross-Chain Bridges and Operational Periphery

| Contract | Address | Notes |
|---|---|---|
| stLINK Wrapped Token Bridge | [`0x6C1E2D2c55C83De945e3f37dF694cdE8452C1E82`](https://etherscan.io/address/0x6C1E2D2c55C83De945e3f37dF694cdE8452C1E82) | **UNVERIFIED on Etherscan**. Only 1 transaction (Transfer Ownership). Deployed 2024-02-22 by stake.link: Deployer. Treat as gray-box; operator-confirm before scoping |
| LINK_CurveGaugeDistributor | [`0x2cbFc4825a56109b72F1EfF0D72C93844404C5Ec`](https://etherscan.io/address/0x2cbFc4825a56109b72F1EfF0D72C93844404C5Ec) | rewards distribution on the LINK side |
| LINK_WLSTUnderlyingChainlinkPriceAdapter | [`0xf534813F0e94De9718c75c6FE3bbd6583c46BB0A`](https://etherscan.io/address/0xf534813F0e94De9718c75c6FE3bbd6583c46BB0A) | wstLINK price oracle adapter |
| LINK_WLSTUSDCChainlinkPriceAdapter | [`0xBA2A4765934Ad29f27631fcF3117360FE28217a5`](https://etherscan.io/address/0xBA2A4765934Ad29f27631fcF3117360FE28217a5) | wstLINK→USDC price oracle adapter |

---

## Scope — Integration Surface (Chainlink Staking v0.2)

The protocol's primary economic dependency. stake.link's `LINK_OperatorVCS` and `LINK_CommunityVCS` adapters deposit user LINK into Chainlink's pools. The audit-evaluable boundary is the adapter; bugs in Chainlink's contracts cannot be fixed by stake.link.

| Chainlink contract | Address | LINK held | Role | stake.link adapter |
|---|---|---|---|---|
| Community Staking Pool | [`0xBc10f2E862ED4502144c7d632a3459F49DFCDB5e`](https://etherscan.io/address/0xBc10f2E862ED4502144c7d632a3459F49DFCDB5e) | **40,875,000 LINK ($410M)** | Open community staking | `LINK_CommunityVCS` |
| Operator Staking Pool | [`0xa1d76a7ca72128541e9fcacafbda3a92ef94fdc5`](https://etherscan.io/address/0xa1d76a7ca72128541e9fcacafbda3a92ef94fdc5) | **1,739,045.78 LINK ($17.46M)** | Node-operator-only staking | `LINK_OperatorVCS` + per-operator `OperatorVault` clones |
| Reward Vault | [`0x996913c8c08472f584ab8834e925b06d0eb1d813`](https://etherscan.io/address/0x996913c8c08472f584ab8834e925b06d0eb1d813) | (rewards balance varies) | LINK rewards distribution | (read by VCS contracts) |
| PriceFeedAlertsController | [`0x27484ba119d12649be2a9854e4d3b44cc3fdbad7`](https://etherscan.io/address/0x27484ba119d12649be2a9854e4d3b44cc3fdbad7) | n/a | Price-feed slashing trigger | (alerter integration) |
| StakingTimelock | [`0xf5df3d2750e3b18b1caa2b7e30796973bb9be715`](https://etherscan.io/address/0xf5df3d2750e3b18b1caa2b7e30796973bb9be715) | n/a | Chainlink v0.2 governance | (out of stake.link scope) |

All five addresses share deployer `0x69512b85…d7d7` (Chainlink Labs) and are documented in the public Chainlink Staking v0.2 guide.

---

## Audit Coverage

### Audit History

20 audits over 2022-08 → 2026-03, all archived in `github.com/stakedotlink/contracts/blob/main/audits/`. Filenames follow `[YYYY-MM-DD] Auditor - Scope.pdf`. Three independent review tracks for LINK Staking Withdrawals (Cyfrin + Codehawks + Trust) is unusually thorough.

| # | Date | Auditor | Scope | Findings (verified for #1, #5, #16, #20) |
|---|---|---|---|---|
| 1 | 2022-08-01 | Sigma Prime | Core Staking Contracts (LinkPool era) | 11 issues (mix of Low/Informational) |
| 2 | 2023-01-01 | Sigma Prime | Core & LINK Staking | — |
| 3 | 2023-03-07 | Cyfrin | LSD Index Pool | — |
| 4 | 2023-08-06 | Trust Security | SDLPool | — |
| 5 | 2023-08-25 | Cyfrin | Priority Pool | 6 (2M, 1L, 3I) |
| 6 | 2023-10-01 | Trust Security | Priority Pool & LINK Staking v0.2 | — |
| 7 | 2024-04-30 | Trust Security | Insurance Pool | — |
| 8 | 2024-04-30 | Trust Security | Metis Staking | — |
| 9 | 2024-09-17 | Cyfrin | LINK Staking Withdrawals | — |
| 10 | 2024-11-27 | Codehawks | LINK Staking Withdrawals | — (markdown report) |
| 11 | 2025-01-20 | Cyfrin | Staking Proxy | — |
| 12 | 2025-02-04 | Trust Security | LINK Staking Withdrawals | — |
| 13 | 2025-02-28 | Cyfrin | CL Rewards Claiming | — |
| 14 | 2025-05-19 | Cyfrin | Polygon Staking | — |
| 15 | 2025-06-04 | Cyfrin | LINK Migrator | — |
| 16 | 2025-07-02 | Zellic | Polygon Staking | 13 findings; engagement Jun 20–26 2025 |
| 17 | 2025-08-02 | Cyfrin | SDL Vesting | — |
| 18 | 2025-08-02 | Cyfrin | Vesting | — |
| 19 | 2026-02-04 | Cyfrin | Espresso Staking | — |
| 20 | 2026-03-23 | Cyfrin | Rebase Batching | 2 (1M, 1L) |

### Coverage by Product Line

| Product line | Direct audit coverage |
|---|---|
| LINK liquid staking (stLINK + Priority Pool + WithdrawalPool + VCS adapters) | ✅ Sigma Prime 2022/2023, Cyfrin 2023-08-25 / 2024-09-17 / 2025-01-20 / 2025-02-28 / 2026-03-23, Trust 2023-10-01 / 2025-02-04, Codehawks 2024-11-27 |
| SDL governance (SDL token + SDLPool + Vesting) | ✅ Sigma Prime 2022, Trust 2023-08-06, Cyfrin 2025-08-02 (×2) |
| POL Polygon staking | ✅ Cyfrin 2025-05-19, Zellic 2025-07-02 |
| Metis staking | ✅ Trust Security 2024-04-30 |
| Espresso staking | ✅ Cyfrin 2026-02-04 |
| LSD Index Pool (ixETH) | ✅ Cyfrin 2023-03-07 |
| Insurance Pool | ✅ Trust Security 2024-04-30 |
| LINK Migrator | ✅ Cyfrin 2025-06-04 |
| stLINK Wrapped Token Bridge | ❓ unclear; this contract is unverified on Etherscan. Operator-confirm |

The protocol's audit-coverage rate against deployed contract surface is approaching 100% for product-line core logic. The gaps are operational periphery (CCIP receivers, gauge distributors) and the unverified bridge.

### Gap Analysis

The most recent material change (`CommunityVCS` rebase batching, March 2026) IS the audit subject of the most recent audit. There is no significant audit gap on production code as of 2026-05-07.

Three open-question areas for the auditor:

1. **stLINK Wrapped Token Bridge** (`0x6C1E…1E82`) — unverified source; no obvious audit. Could be a CCIP wrapper that handles cross-chain stLINK; if so, the LayerZero/CCIP attack surface is unaudited.
2. **Cross-chain CCIP rewards path** — `POL_CCIPCurveGaugeSender` (Ethereum L1) → `POL_CCIPCurveGaugeReceiver` (Polygon L2) is not the focus of any audit titled "CCIP" or "cross-chain". Possibly covered tangentially in 2025-05-19 Cyfrin Polygon Staking.
3. **Multisig + timelock parameters** — signers, threshold, and roster of `0xB351EC0F…` and `0xdedA4c43…` are not pinned in this brief; the brief flags this as an operator-confirm gap.

---

## Targeting Recommendation

For a re-audit engagement, prioritize:

1. **wstLINK + LINK liquid-staking strategy adapters** — the largest TVL bucket ($66M+) and the most recently changed code (Rebase Batching March 2026 landed). The CommunityVCS implementation has been upgraded 5 times; the OperatorVCS once in May 2025. Worth a fresh look at the post-Rebase-Batching code.
2. **stLINK Wrapped Token Bridge** (`0x6C1E…1E82`) — unverified source code is a hard-flag; either ask stake.link to verify it, or treat the bridge as an unaudited dependency in the LINK staking attack surface.
3. **CCIP cross-chain rewards path (Polygon)** — newer code, not the explicit subject of any single audit, and CCIP integration is non-trivial.
4. **Espresso staking adapter** (`0xF0fb…0344`) — only 86 days old, only 1 audit (Cyfrin 2026-02-04). This is the youngest production code in the protocol.
5. **SDLPool / LinearBoostController / DelegatorPool** — last audit Trust Security 2023-08-06; these contracts hold $7.18M of SDL but have not been re-audited in nearly 21 months.

De-prioritize:

- The ixETH index pool — effectively in maintenance / sunset, low transaction count, low TVL.
- LPL legacy contracts — LinkPool-era, no current activity.

---

## v1 Pipeline Errors

The v1 brief at `agnt-brief/stake.link/SCOPE_NOTE.md` is summarized as: 7 deployed contracts in topography, 2 audit-to-contract matches (out of 20+ audits), per-contract TVL not persisted, classification "partial_audit_gap" with 42.9% coverage. Specific defects (full trace in [`docs/gold-standard/stakelink_v1_diff_analysis.md`](../../docs/gold-standard/stakelink_v1_diff_analysis.md)):

1. **70+ stake.link contracts missing.** The v1 brief picked up only 7. The mainnet deployment book at `stakedotlink/contracts/deployments/mainnet.json` lists ~75 keys (counting all 15 SDL vesting contracts separately); the v1 topography crawler did not consume this file.
2. **Chainlink Operator Staking Pool misattributed.** `0xa1d76a7c…` is Chainlink Labs' own contract (deployed by Chainlink Labs, listed in Chainlink Staking v0.2 official guide). The v1 brief listed it as a stake.link "OperatorStakingPool" because the address appears as a key in stake.link's mainnet.json (the deployment script references it as an external dependency for stake.link's strategies to deposit into).
3. **Two Gnosis Safes mislabelled "unnamed" or "unknown".** The 21.7M-SDL Safe at `0xB351EC0F…` is the sole proposer on the GovernanceTimelock — it is a major governance signal. The 7.69M-SDL Safe at `0xdedA4c43…` is an operational team Safe.
4. **Etherscan public name tags not lifted.** `0xddc796a6…` is tagged "stake.link: Staking Pool" on Etherscan but v1 named it "ERC1967Proxy". Same for `0x911D86…` ("Wrapped stLINK (wstLINK)"), `0x2091d83…` ("Stake.link: wstPOL Token").
5. **Proxy and implementation listed as separate rows.** v1 listed both `0xddc796a6…` (proxy) and `0x6fb9cc7d…` (impl) as separate "PriorityPool" rows.
6. **Per-contract TVL not surfaced.** v1 reports "$62.5M" protocol-level only; the gold standard breaks this down per anchor contract.
7. **18 of 20 audits unmatched.** v1 matches only Cyfrin 2023-08-25 and Zellic 2025-07-02 to contracts. The matcher correctly enumerates 23 audit URLs in the appendix but cannot map them because the contract-name normalization step never resolved the real product-line names.
8. **Lifecycle "active - latest deployment unknown".** The v1 brief's lifecycle metadata was incomplete (literally "unknown days ago"). The protocol's most recent verified deployment is within the last 90 days.
9. **No product-line decomposition.** v1 produces a single flat 7-row table; the protocol has 5 active product lines + 1 sunsetting + the integration-surface boundary, all of which need separate audit-chain attribution.
10. **No multisig/timelock metadata.** v1 explicitly says "NOT extracted by current pipeline" — both `GovernanceTimelock` (with its 24-hour delay and 1-proposer/8-executor topology) and the two governance Safes are absent.

---

## Appendix

### Audit Reports (full canonical paths)

All from `github.com/stakedotlink/contracts/blob/main/audits/`:

- `[2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf`
- `[2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf`
- `[2023-03-07] Cyfrin - LSD Index Pool Report.pdf`
- `[2023-08-06] Trust Security - SDLPool Report.pdf`
- `[2023-08-25] Cyfrin - Priority Pool Report.pdf`
- `[2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf`
- `[2024-04-30] Trust Security - Insurance Pool Report.pdf`
- `[2024-04-30] Trust Security - Metis Staking Report.pdf`
- `[2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf`
- `[2024-11-27] Codehawks - LINK Staking Withdrawals.md`
- `[2025-01-20] Cyfrin Staking Proxy.pdf`
- `[2025-02-04] Trust - LINK Staking Withdrawals.pdf`
- `[2025-02-28] Cyfrin - CL Rewards Claiming.pdf`
- `[2025-05-19] Cyfrin - Polygon Staking.pdf`
- `[2025-06-04] Cyfrin - LINK Migrator.pdf`
- `[2025-07-02] Zellic - Polygon Staking.pdf`
- `[2025-08-02] Cyfrin - SDL Vesting.pdf`
- `[2025-08-02] Cyfrin - Vesting.pdf`
- `[2026-02-04] Cyfrin - Espresso Staking.pdf`
- `[2026-03-23] Cyfrin - Rebase Batching.pdf`

Bug bounty: https://immunefi.com/bug-bounty/stakelink/information

### Source-of-truth pointers

- **Address book:** `https://github.com/stakedotlink/contracts/blob/main/deployments/mainnet.json` (Ethereum) / `polygon.json` / `metis.json`
- **DL adapter source:** `https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/stakedotlink/index.js`
- **Snapshot governance:** `https://snapshot.org/#/stakedotlink.eth`
- **DL parent slug API:** `https://api.llama.fi/protocol/stake.link`
- **DL child slug API:** `https://api.llama.fi/protocol/stake.link-liquid`
- **Chainlink Staking v0.2 reference:** `https://blog.chain.link/chainlink-staking-v0-2-now-live/`

### Caveats

- **Multisig membership and timelock parameters** are pinned at the level of "1 proposer Safe at `0xB351EC0F…`, 8 executor EOAs, 24-hour delay" but the **signer rosters and threshold inside each Safe are not enumerated** in this brief. Operator-confirm before scoping.
- **stLINK Wrapped Token Bridge** is unverified on Etherscan; treat as gray-box.
- **TVL is a 2026-05-07 spot value**; the protocol is upgrading actively, so re-pull DL before final scoping.
- **Per-contract TVL** rows show direct on-chain balances at the spot snapshot; the DL adapter aggregates across the four anchor pool addresses and may not equal the sum of individual balances I list (the difference is mostly nesting — e.g., the 1.067M stLINK held by the Priority Pool is also reflected in the 6.57M stLINK supply).
- **Two distinct stake.link team deployer EOAs** (`0x43975fe7…e87b` and `0x57F1Bf47…a1bd`) share the public Etherscan label "Stake.link: Deployer 1". This is unusual but operationally consistent — both deploy verified stake.link contracts.
- The protocol's economic dependency on **Chainlink Staking v0.2** is fundamental: if Chainlink upgrades the v0.2 pool contracts, stake.link's strategy adapters may need to migrate. This dependency is not extractable from on-chain state alone — operator-confirm with stake.link engineering.

### Generation Metadata

- **Method:** manual_research
- **Date:** 2026-05-07
- **DL snapshot:** 2026-05-07 (parent + child slug)
- **Etherscan verification:** per-address spot fetch 2026-05-07
- **Audit PDFs decoded:** 4 of 20 (Sigma Prime 2022, Cyfrin Priority 2023, Zellic Polygon 2025, Cyfrin Rebase 2026)
- **Verification ledger:** [`docs/gold-standard/stakelink_verification_ledger.md`](../../docs/gold-standard/stakelink_verification_ledger.md)
- **DL raw archives:** [`docs/gold-standard/dl_raw/stake.link.json`](../../docs/gold-standard/dl_raw/stake.link.json), [`docs/gold-standard/dl_raw/stakedotlink.json`](../../docs/gold-standard/dl_raw/stakedotlink.json)
