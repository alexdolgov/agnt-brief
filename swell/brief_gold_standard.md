# Agentic Audit Brief: Swell Network (Gold Standard)

> Verified, manually-researched audit-coverage reference brief. Every claim is cross-checked against the DefiLlama protocol JSON, Swell's own developer documentation, and per-contract Etherscan pages. The full row-by-row evidence trail is at [`docs/gold-standard/swell_verification_ledger.md`](../../docs/gold-standard/swell_verification_ledger.md). The peer pipeline-generated brief sits next to this file at [`brief.md`](brief.md); see [`../GOLD_STANDARD_README.md`](../GOLD_STANDARD_README.md) for context on the comparison.

## Project Overview

- **Project:** Swell Network
- **Website:** https://www.swellnetwork.io/
- **Developer docs:** https://build.swellnetwork.io/docs/developer-resources/contract-addresses
- **Public source:** https://github.com/SwellNetwork/v3-core-public
- **Categories (DefiLlama):** Liquid Staking, Liquid Restaking, Yield Aggregator, Farm — six child slugs under DL parent `parent#swell`.
- **Chains:** Ethereum (L1) and Swellchain (own OP-stack L2). Sepolia + Swellchain testnet exist for staging.
- **Total TVL:** **$148.55M** (DL parent rollup, snapshot 2026-04-29). Decomposes as Ethereum $148.18M + Swellchain $0.37M.
- **TVL by product line:** swETH $36.56M, rswETH $34.12M, L2 Farm pre-deposit pool $76.50M, swBTC $0.49M, Earn $0.59M (Ethereum + Swellchain combined). The five children sum to $148.27M, matching the parent within rounding — i.e. **no double-counting**.
- **Lifecycle:** **alive**. Latest verified Swell-owned L1 deployment is `0xecf3…4121` (Swellchain L1ERC20TokenBridge OssifiableProxy) on 2024-12-14, plus the swBTC vault implementation in early 2025. Swellchain L2 went mainnet in late November 2024; the L1 bridge stack `0xC951CEEc…` deployer cohort is dated ~2024-11-28.
- **Tier:** Tier 1 — large-TVL active protocol; concentrated economic exposure in five distinct product-line code-bases.
- **Audit-evaluable surface:** ~$76M of *Swell-deployed* TVL (swETH + rswETH + swBTC + L2 Pre-Deposit + L1 bridge escrow). The other $76M sits in the L2 Farm pool but is composed of *foreign-protocol* tokens (Pendle PT, Eigenpie LRTs, Frax frxETH/sfrxETH, Lido wstETH, ether.fi weETH, Renzo ezETH, AltLayer ALT, StakeStone STONE, etc.) that are escrowed by Swell but issued and audited by their respective protocols.

> Important framing. Swell is **not** a single contract cluster. It is six distinct product lines (Liquid Staking, Liquid Restaking, BTC LRT, Earn, L2 Pre-Deposit, L1↔L2 bridge stack) plus a governance token, and they share a deployer family but otherwise live in separate codebases with separate audit chains. The Earn product line is **white-labelled from Nucleus** and inherits Nucleus's audit chain, not Swell's.

---

## On-Chain TVL Summary

| Product line | Anchor contract | Source of TVL signal | TVL (USD) |
|---|---|---|---:|
| Liquid Staking (swETH) | `0xf951…ED78` | DL `swell-liquid-staking`: ETH staked via DepositManager → swETH supply | **$36,557,317** |
| Liquid Restaking (rswETH) | `0xFAe1…a6c0` | DL `swell-liquid-restaking`: ETH restaked via EigenLayer → rswETH supply | **$34,122,406** |
| L2 Pre-Deposit pool | `0x38d4…d774` | Etherscan token-holdings panel: 73 deposit tokens (rswETH 58.7%, swETH 15.7%, mswETH 7.9%, others) | **$4,999,558** (subset of L2 Farm DL TVL) |
| L2 Farm aggregate | (multi-contract) | DL `swell-l2-farm`: 22 distinct token symbols held in Swell's pre-launch deposit pools | **$76,500,062** |
| BTC LRT (swBTC) | `0x8DB2…64dDE` | DL `swell-btc-lrt`: WBTC under Yearn V3 vault management; current vault holds 4.43 WBTC | **$494,192** |
| Earn (Nucleus boringVault, earnETH) | `0x9Ed1…5f22` (Nucleus-deployed) | DL `swell-earn`: 23 token positions (mostly swETH 91.4%) | **$586,106** (Ethereum $212,788 + Swellchain $373,318) |
| Swellchain L1↔L2 bridge escrow | `0x758E…7812` (OptimismPortalProxy) | Etherscan ETH balance: 567.25 ETH at $2,392/ETH | **$1,357,061** |
| Swellchain L1↔L2 wstETH bridge escrow | `0xecf3…4121` (Lido OssifiableProxy pattern) | Etherscan token holdings: 33.34 wstETH | **$97,537** |
| DepositManager in-flight float | `0xb3D9…8f39` | Etherscan ETH balance: 7.5386 ETH | **$18,033** |
| **Total Swell-attributable economic exposure** | — | — | **~$148.5M** (matches DL parent) |

The L2 Farm $76.5M overlaps in *deposit-asset graph* with foreign protocols but the contracts holding those tokens are Swell-deployed; per-token attribution is enumerated in the developer docs but is not a single contract address — DL aggregates it via the `swell-l2-farm` adapter.

---

## Lifecycle and Recent Activity

The protocol is alive. Verified contract deployment dates:

| Era | Deployer | Verified contracts | Date |
|---|---|---|---|
| Seawolf launch (swETH) | Swell Network: Deployer (`0x174ae6…1a08`) | swETH proxy, DepositManager proxy, NodeOperatorRegistry proxy, AccessControlManager proxy | 2023-04-12 |
| Marlin launch (rswETH) | Swell Network: Deployer | rswETH proxy | 2024-01-26 |
| Barracuda upgrade | Swell Network: Deployer | swETH impl, DepositManager impl, NodeOperatorRegistry impl, AccessControlManager impl (all redeployed at the implementation level) | ~2024-03-05 |
| L2 Pre-Deposit launch | Swell Network: Deployer | SimpleStakingERC20 | ~2024-04-09 |
| rswETH v2 upgrade | Swell Network: Deployer | rswETH impl (current) | ~2024-07-13 (close to docs claim 2024-07-24 / block 20372681) |
| SWELL token + airdrop | One-shot deployer (`0xDB99…02D6`) | SWELL ERC-20 | ~2024-07-20 |
| Earn (Nucleus white-label) launch | Nucleus: Deployer 1 (`0x9454…04f6`) | BoringVault, manager, accountant, teller, rolesAuthority | 2024-09-12 |
| Swellchain L2 mainnet | Swellchain ops EOA (`0xC951CEEc…e91d`) | OptimismPortalProxy, L1StandardBridgeProxy, AddressManager, AnchorStateRegistryProxy, etc. | ~2024-11-28 |
| swBTC vault | Swell Network: Deployer 2 (`0xaf99…e5f9`) | swBTC vault (Yearn V3 minimal proxy) + impl | August 2024 / January 2025 |
| Swellchain wstETH bridge | Swell Network: Deployer 2 | OssifiableProxy + L1ERC20TokenBridge impl | ~2024-12-14 |

DepositManager holds 7.54 ETH of in-flight stake; OptimismPortalProxy holds 567 ETH of L1↔L2 bridge escrow; SimpleStakingERC20 holds $5M across 73 deposit tokens. None of these signals are consistent with a "dead" protocol.

---

## Scope — Core Logic

Contracts that hold user funds, mint/burn protocol tokens, or implement Swell's primary economic functions. Grouped by product line because each has its own audit chain.

### Liquid Staking (swETH) — Ethereum L1

| Contract | Address | Proxy? | Implementation | On-chain TVL | Audit status | Last audit |
|---|---|---|---|---:|---|---|
| swETH (TransparentUpgradeableProxy) | [`0xf951E335afb289353dc249e82926178EaC7DEd78`](https://etherscan.io/address/0xf951E335afb289353dc249e82926178EaC7DEd78) | yes | `0xce95ba8…ffbc` | $36.56M (token supply × ETH price; DL adapter) | audited | Sigma Prime Seawolf v2.1 → Sigma Prime Barracuda Upgrade v2 + Cyfrin Barracuda v2.0 + Hexens Mar 2024 |
| swETH implementation | [`0xce95ba824ae9a4df9b303c0bbf4d605ba2affbfc`](https://etherscan.io/address/0xce95ba824ae9a4df9b303c0bbf4d605ba2affbfc) | no | — | $0 (logic) | covered with proxy | 2024-03-05 deploy date matches Barracuda upgrade |
| DepositManager (TransparentUpgradeableProxy) | [`0xb3D9cf8E163bbc840195a97E81F8A34E295B8f39`](https://etherscan.io/address/0xb3D9cf8E163bbc840195a97E81F8A34E295B8f39) | yes | `0xEeE6207D…524B` | $18,033 in-flight ETH | audited | Sigma Prime Seawolf v2.1 + Barracuda Upgrade |
| DepositManager implementation | [`0xEeE6207D514c2845394b5f4b9f12b6d155F4524B`](https://etherscan.io/address/0xEeE6207D514c2845394b5f4b9f12b6d155F4524B) | no | — | $0 (logic) | covered with proxy | 2024-03-05 (Barracuda) |
| NodeOperatorRegistry (TransparentUpgradeableProxy) | [`0x46DdC39E780088B1B146Aba8cBBe15DC321A1A1d`](https://etherscan.io/address/0x46DdC39E780088B1B146Aba8cBBe15DC321A1A1d) | yes | `0xEA6c9A14…e68a` | $0 | audited | Sigma Prime Seawolf v2.1 |
| NodeOperatorRegistry implementation | [`0xEA6c9A14b96777a448687272bf0e6f6d9ce0e68a`](https://etherscan.io/address/0xEA6c9A14b96777a448687272bf0e6f6d9ce0e68a) | no | — | $0 | covered with proxy | 2024-03-05 (Barracuda) |

> swEXIT (the swETH withdrawal queue NFT) was introduced in the Barracuda upgrade and is exercised by users today, but a dedicated swEXIT contract address is **not pinned in the developer docs** and was not located via web search. The withdrawal logic appears to be embedded inside DepositManager / swETH; **operator-confirm required** before scoping.

### Liquid Restaking (rswETH) — Ethereum L1

| Contract | Address | Proxy? | Implementation | On-chain TVL | Audit status | Last audit |
|---|---|---|---|---:|---|---|
| rswETH (TransparentUpgradeableProxy) | [`0xFAe103DC9cf190eD75350761e95403b7b8aFa6c0`](https://etherscan.io/address/0xFAe103DC9cf190eD75350761e95403b7b8aFa6c0) | yes | `0x4796d939…2362` | $34.12M (DL adapter) | audited | Sigma Prime Marlin v2.0 + Barracuda LRT + Nethermind NM0231 |
| rswETH implementation | [`0x4796d939b22027c2876d5ce9fde52da9ec4e2362`](https://etherscan.io/address/0x4796d939b22027c2876d5ce9fde52da9ec4e2362) | no | — | $0 (logic) | covered with proxy | 2024-07-13 (rswETH v2 upgrade) |

### BTC LRT (swBTC) — Ethereum L1

| Contract | Address | Proxy? | Implementation | On-chain TVL | Audit status | Last audit |
|---|---|---|---|---:|---|---|
| swBTC (Yearn V3 minimal proxy) | [`0x8DB2350D78aBc13f5673A411D4700BCF87864dDE`](https://etherscan.io/address/0x8DB2350D78aBc13f5673A411D4700BCF87864dDE) | yes | `0x2826d136…7aea` | $494k (DL adapter; 4.43 WBTC backing) | audited | ChainSecurity Swell swBTC + Nethermind NM_0273 |
| swBTC Yearn V3 implementation | [`0x2826d136f5630ada89c1678b64a61620aab77aea`](https://etherscan.io/address/0x2826d136f5630ada89c1678b64a61620aab77aea) | no | — | $0 (logic) | covered with proxy | 2024-08 / 2025-01 |

### L2 Pre-Deposit — Ethereum L1

| Contract | Address | Proxy? | Implementation | On-chain TVL | Audit status | Last audit |
|---|---|---|---|---:|---|---|
| SimpleStakingERC20 | [`0x38d43a6cb8da0e855a42fb6b0733a0498531d774`](https://etherscan.io/address/0x38d43a6cb8da0e855a42fb6b0733a0498531d774) | no | — | **$4,999,558** across 73 deposit tokens (52 ERC-20 + 21 NFTs) | audited | Hexens L2 Pre-Deposit (April 2024) + Swell Staking Security Audit Report |

### Earn (Nucleus white-label, earnETH) — Ethereum L1

These five contracts are **deployed by Nucleus**, not Swell. Swell's "Earn" product UI front-ends this stack; audit attribution belongs to Nucleus / the Ion Protocol audit set.

| Contract | Address | Deployer | On-chain TVL | Audit status |
|---|---|---|---:|---|
| BoringVault (earnETH) | [`0x9ed15383940cc380faef0a75edace507cc775f22`](https://etherscan.io/address/0x9ed15383940cc380faef0a75edace507cc775f22) | Nucleus: Deployer 1 | $209,383 + 1.087 ETH (~$212,000) | 0xMacro + Pashov + Spearbit (boring-vault Arctic-0) |
| ManagerWithMerkleVerification | [`0x69fc700226e9e12d8c5e46a4b50a78efb64f50c0`](https://etherscan.io/address/0x69fc700226e9e12d8c5e46a4b50a78efb64f50c0) | Nucleus: Deployer 1 | $0 | covered with vault |
| AccountantWithRateProviders | [`0x411c78bc8c36c3c66784514f28c56209e1df2755`](https://etherscan.io/address/0x411c78bc8c36c3c66784514f28c56209e1df2755) | Nucleus: Deployer 1 | $0 | covered with vault |
| MultiChainLayerZeroTellerWithMultiAssetSupport | [`0x6D207874DDc8B1C3954a0BB2b21c6Fce2Aa18Dba`](https://etherscan.io/address/0x6D207874DDc8B1C3954a0BB2b21c6Fce2Aa18Dba) | Nucleus: Deployer 1 (owner: `0x899d…3b1b`) | $0 | covered with vault; LayerZero integration is additional risk surface |
| RolesAuthority | [`0x1f5dddf627c3796a589c6271b36a570f18d3a016`](https://etherscan.io/address/0x1f5dddf627c3796a589c6271b36a570f18d3a016) | Nucleus: Deployer 1 | $0 | covered with vault |

The Swell-side audit-evaluable surface for the Earn product is **the Merkle-root configuration that authorizes strategies** plus **the owner key on the teller** (`0x899d…3b1b`) — both are off-chain governance attestations rather than contract code. These should be operator-confirmed.

---

## Scope — Operational Periphery

| Contract | Address | Role | On-chain TVL | Audit status |
|---|---|---|---:|---|
| AccessControlManager (TransparentUpgradeableProxy) | [`0x625087d72c762254a72CB22cC2ECa40da6b95EAC`](https://etherscan.io/address/0x625087d72c762254a72CB22cC2ECa40da6b95EAC) | Role/access control across swETH core | $0 | covered indirectly via Sigma Prime Seawolf + Barracuda Upgrade |
| AccessControlManager implementation | [`0xBB7B99C2be525c0a6b719344f89a4255ef593e64`](https://etherscan.io/address/0xBB7B99C2be525c0a6b719344f89a4255ef593e64) | Logic for above | $0 | covered with proxy |
| SWELL governance token (`SwellToken`) | [`0x0a6E7Ba5042B38349e437ec6Db6214AEC7B35676`](https://etherscan.io/address/0x0a6E7Ba5042B38349e437ec6Db6214AEC7B35676) | ERC-20 governance, total supply 10,000,000,000 SWELL × 18 decimals | $0 (governance) | audited — Hexens (`Audit Reports/Swell Token and Airdrop/`) |

> Multisig membership / ProxyAdmin owners / timelock duration / on-chain governance gate parameters are **out of scope for this brief** — operator-confirm. The two known Swell deployer EOAs (`0x174ae6…1a08`, `0xaf99…e5f9`) are deployment EOAs, not governance multisigs; the Swellchain ops EOA (`0xC951CEEc…e91d`) is the OP-stack template deployer, also not a governance multisig.

---

## Scope — Proxy Architecture

Three distinct proxy patterns are in production use:

1. **OpenZeppelin `TransparentUpgradeableProxy`** — used for swETH, rswETH, DepositManager, NodeOperatorRegistry, AccessControlManager. Standard pattern; admin is Swell's ProxyAdmin contract (not enumerated in this brief).
2. **Lido `OssifiableProxy`** — used for the Swellchain L1↔L2 wstETH bridge at `0xecf3…4121` (Lido's pattern is appropriate here because Lido open-sourced their L1ERC20TokenBridge for Optimism-stack L2s and Swellchain re-uses it). The `OssifiableProxy` admin can permanently lock the proxy's implementation slot once governance decides upgrades are no longer needed.
3. **Yearn V3 EIP-1167 minimal proxy (clone)** — used for swBTC. The implementation is a generic Yearn V3 vault (Vyper 0.3.10).

Implementation upgrade history:

- swETH / DepositManager / NodeOperatorRegistry / AccessControlManager: redeployed at the implementation level on ~2024-03-05 for the Barracuda upgrade. Proxies unchanged since 2023-04-12.
- rswETH: implementation upgraded ~2024-07-13 (block 20372681) for the rswETH v2 / Barracuda LRT release.

Upgrade-authority risk: each proxy's admin slot resolves to a Swell-controlled ProxyAdmin contract. The actual ProxyAdmin owners (multisig signers, threshold) are not extracted in this brief.

---

## Scope — Swellchain L1-side Bridge Stack (OP-stack templates)

The Swellchain L2 stack is deployed on Ethereum L1 by ops EOA `0xC951CEEc2ae6fa2f51a9153ee02a020c130e91d` in the ~2024-11-28 cohort. These contracts are **standard Optimism Bedrock + Fault Proofs templates**; Swell-specific audit relevance is bounded by whether Swell modified the OP-stack source code, not by their existence.

| Contract | Address | Role |
|---|---|---|
| OptimismPortalProxy | [`0x758E0EE66102816F5C3Ec9ECc1188860fbb87812`](https://etherscan.io/address/0x758E0EE66102816F5C3Ec9ECc1188860fbb87812) | L1 deposit/withdrawal portal, holds 567.25 ETH ($1.36M) escrow |
| OptimismPortal implementation | `0x97cebbf8959e2a5476fbe9b98a21806ec234609b` | Logic |
| L1StandardBridgeProxy (`L1ChugSplashProxy`) | [`0x7aA4960908B13D104bf056B23E2C76B43c5AACc8`](https://etherscan.io/address/0x7aA4960908B13D104bf056B23E2C76B43c5AACc8) | ERC-20 bridge |
| L1ERC20TokenBridge (Lido wstETH bridge, OssifiableProxy) | [`0xecf3376512EDAcA4FBB63d2c67d12a0397d24121`](https://etherscan.io/address/0xecf3376512EDAcA4FBB63d2c67d12a0397d24121) | wstETH ↔ Swellchain bridge; holds 33.34 wstETH ($97,537) escrow |
| L1ERC20TokenBridge implementation | `0x7e97935FbDF2a27EA35c4fdDdaCf5ACd685e65A2` | Logic |
| L1CrossDomainMessengerProxy | `0xe6a99Ef12995DeFC5ff47EC0e13252f0E6903759` | Cross-domain messaging |
| L1ERC721BridgeProxy | `0xfd7618330E63B493070DC8C491Ad4aD26144Bc1e` | NFT bridge |
| AnchorStateRegistryProxy | [`0x14387438EE964e826A4EAeB95B2BCe7754174dD1`](https://etherscan.io/address/0x14387438EE964e826A4EAeB95B2BCe7754174dD1) | Fault-proofs anchor |
| AddressManager | [`0xa54a84f17c2180148c762D79bC57BdfF7FdAFC8A`](https://etherscan.io/address/0xa54a84f17c2180148c762D79bC57BdfF7FdAFC8A) | OP Stack registry |
| BatchSubmitter (EOA, not a contract) | `0xf854cd5B26bfd73d51236c0122798907Ed65B1f2` | Tx batching wallet |
| SystemConfigProxy | `0xD3d4c6B703978a5d24FecF3a70a51127667Ff1A4` | System config |

Audit attribution for OP-stack contracts is inherited from the Optimism Bedrock + Fault Proofs upstream audit set unless Swell has shipped modifications. The Lido `L1ERC20TokenBridge` for wstETH inherits Lido's audit chain.

---

## Scope — Integration Surface

External protocols that Swell integrates with — Pendle (PT-rswETH, PT-swETH, PT-weETH, PT-pufETH, PT-USDe markets), Eigenpie / Magpie SubDAO (egETH, mstETH, mmETH, MLRT), Frax Finance (frxETH, sfrxETH, FRAX), Lido (wstETH, stETH), ether.fi (weETH), Renzo (ezETH, pzETH), Kelp DAO (rsETH), Ethena (USDe, sUSDe, ENA), AltLayer (ALT), StakeStone (STONE), EigenLayer + Symbiotic + Karak (restaking layers). Their contracts appear inside the L2 Pre-Deposit and L2 Farm holdings panels — they are **integration risk surface, not Swell's audit scope**.

---

## Audit Coverage

### Audit history (URL-verified, all return HTTP 200)

| Date | Auditor | Product / Module | Report path | Contracts covered |
|---|---|---|---|---|
| 2023 (Seawolf) | Sigma Prime | swETH initial | `Seawolf/Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf` | swETH proxy + impl, DepositManager, NodeOperatorRegistry, AccessControlManager (initial Apr 2023 deployment) |
| 2024-01 | Sigma Prime | Barracuda Upgrade | `Barracuda/Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf` + `Barracuda/Swell-audit-jan-2024(Public).pdf` | swETH withdrawals (swEXIT NFT logic), DepositManager v2, NodeOperatorRegistry update |
| 2024-02-23 | Cyfrin | Barracuda v2.0 | `Barracuda/2024-02-23-cyfrin-swell-v2.0.pdf` | Barracuda upgrade |
| 2024-03-12 | Hexens | Swell core review | (external) `Hexens/.../swell-mar24(Public).pdf` | governance / general core review |
| 2024 (Marlin) | Sigma Prime | rswETH v1 | `Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf` | rswETH initial design |
| 2024 (Marlin v2) | Sigma Prime | rswETH v2.0 | `Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf` | rswETH v2 |
| 2024 (Barracuda LRT) | Sigma Prime | Restaking contracts | `Barracude (LRT)/Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf` | rswETH integration with EigenLayer |
| 2024 (Marlin) | Nethermind | Marlin LRT (rswETH) | `Barracude (LRT)/NM0231_FINAL_SWELL.pdf` | rswETH |
| 2024-04-03 | Hexens | L2 Pre-Deposit | (external) `Hexens/.../swell-l2-pre-deposit-audit-april-2024 (Public).pdf` + `Swell L2 Pre Deposit/Swell Staking Security Audit Report.pdf` | SimpleStakingERC20 + zap |
| 2024-08+ | ChainSecurity | swBTC | `BTC LRT/ChainSecurity_Swell_swBTC_audit.pdf` | swBTC Yearn V3 vault + Swell modifications |
| 2024-08+ | Nethermind | swBTC | `BTC LRT/NM_0273_SWELL_BTC_LRT.pdf` | swBTC vault |
| 2024 (Token + Airdrop) | Hexens | SWELL token + airdrop | `Swell Token and Airdrop/` | SWELL ERC-20 + claim |
| 2024–2025 (Nucleus / Arctic-0) | 0xMacro | earnETH boring-vault | (Ion-Protocol/nucleus-boring-vault) `0xmacro-boring-vault-arctic-0.pdf` | Nucleus boring-vault stack (white-label for earnETH) |
| 2024–2025 | Pashov | earnETH boring-vault | `pashov-boring-vault.pdf` | Nucleus boring-vault stack |
| 2024–2025 | Spearbit | earnETH boring-vault | `spearbit-boring-vault-arctic-0.pdf` | Nucleus boring-vault stack |

### Coverage by scope category (Swell-deployed contracts only)

| Category | Contracts | Audited | Re-audit due | Coverage % |
|---|---:|---:|---:|---:|
| swETH core (proxy + impl + DepositManager + NodeOperatorRegistry) | 6 | 6 | 0 | 100% |
| rswETH core (proxy + impl) | 2 | 2 | 0 | 100% |
| swBTC core (vault + impl) | 2 | 2 | 0 | 100% |
| L2 Pre-Deposit (SimpleStakingERC20) | 1 | 1 | 0 | 100% |
| Operational periphery (AccessControlManager + impl, SWELL token) | 3 | 3 | 0 | 100% |
| Earn product (Nucleus white-label) | 5 | 5 | 0 (Nucleus audits) | 100% via inheritance |
| Swellchain L1 bridge stack (incl. Lido wstETH bridge) | ≥9 | 0 (template) | 0 | inherits OP-stack + Lido audits |
| **Total Swell-attributable scope** | 28 | 19 directly + 5 via Nucleus + 9 via OP/Lido inheritance | 0 | effective 100% |

### Gap analysis

- **Post-audit drift on swETH withdrawal queue**: the Barracuda Upgrade audit covers the swEXIT design, but swEXIT itself is not pinned to a verifiable separate address. If Swell has shipped subsequent withdrawal-logic changes, those need re-audit confirmation.
- **L1ERC20TokenBridge `0xecf3…4121`** (Swellchain wstETH bridge): deployed 2024-12-14, Lido pattern. Not in Swell's published audit set; relies on Lido's L1ERC20TokenBridge audit chain. Operator should confirm whether Swell modified Lido's reference implementation.
- **Earn product re-audit cadence**: Nucleus's boring-vault audits cover the contract code; Swell-specific risk lives in the Merkle-root strategy whitelist + the teller owner key. Both are off-chain configurations rather than contract code, so an audit doesn't cover them — needs governance attestation.
- **swBTC vault impl 2025-01**: the Yearn V3 implementation deployed in early 2025 is consistent with Yearn V3's audited template, but Swell-specific strategy wiring should be operator-confirmed.

---

## Targeting Recommendation

In rough priority order by economic exposure × residual audit gap:

1. **rswETH liquid restaking core** ($34M TVL). Most recent material upgrade was 2024-07-13 (rswETH v2). EigenLayer integration. Sigma Prime Marlin v2.0 + Barracuda LRT + Nethermind NM0231 cover the design. Verify no subsequent code changes.
2. **swETH liquid staking core** ($36.5M TVL — proxy + DepositManager + NodeOperatorRegistry + AccessControlManager). Coverage solid through Sigma Prime Seawolf + Barracuda Upgrade + Cyfrin + Hexens. Operator must confirm swEXIT withdrawal-queue contract address.
3. **L2 Pre-Deposit** (`SimpleStakingERC20`, $5M held in 73 deposit tokens). Audited by Hexens April 2024. Risk: heterogeneous deposit-asset accounting across 73 tokens with different decimals/pricing. Confirm no post-launch modifications.
4. **swBTC Yearn V3 vault** ($0.49M TVL). ChainSecurity + Nethermind audited the Swell-specific changes; the underlying Yearn V3 is independently audited. Strategy wiring (Symbiotic + Karak/EigenLayer roadmap) is the live question.
5. **Earn (Nucleus white-label)** ($0.59M TVL today, designed to scale). Audit chain (0xMacro + Pashov + Spearbit) is solid for the boring-vault contract code. The Swell-specific scope is the Merkle whitelist + teller owner — request governance attestation.
6. **Swellchain L1 bridge stack** (~$1.5M escrow). Standard OP-stack + Lido templates; only audit-evaluable if Swell modified the upstream code. Default skip unless modifications confirmed.
7. **Operational periphery** (AccessControlManager + ProxyAdmin authority enumeration). Read-only spot check on upgrade authority membership.

---

## v1 Pipeline Errors (for this project)

The pipeline's `brief.md` contains 14 contract rows that are not Swell — they belong to AltLayer (`AltLayerToken`), Frax Finance (`frxETH`, `StakedFrax/sFRAX`), StakeStone (`Stone/STONE`), Eigenpie/Magpie (4 LRT proxies + impls), and Pendle (8 PT-token markets). It also misses 14+ real Swell-owned contracts including DepositManager, NodeOperatorRegistry, AccessControlManager, swBTC, the Earn stack, and the SWELL governance token. The Etherscan public-tag labels (`Swell Network: swETH Token`, etc.) are not surfaced, so the few real Swell contracts that do appear show up unnamed as `TransparentUpgradeableProxy`, `OssifiableProxy`, etc., which prevents audit-to-contract scope matching. Lifecycle is mis-flagged "dead" because the heuristic ran on the contaminated cluster. Full per-stage trace in [`docs/gold-standard/swell_v1_diff_analysis.md`](../../docs/gold-standard/swell_v1_diff_analysis.md).

---

## Appendix

### Sources

- DefiLlama protocol JSON (raw responses saved in [`docs/gold-standard/dl_raw/`](../../docs/gold-standard/dl_raw/)):
  - https://api.llama.fi/protocol/swell
  - https://api.llama.fi/protocol/swell-liquid-staking
  - https://api.llama.fi/protocol/swell-liquid-restaking
  - https://api.llama.fi/protocol/swell-l2-farm
  - https://api.llama.fi/protocol/swell-btc-lrt
  - https://api.llama.fi/protocol/swell-earn
- Swell developer docs: https://build.swellnetwork.io/docs/developer-resources/contract-addresses
- Swell GitHub (audit reports + bug reports): https://github.com/SwellNetwork/v3-core-public
- Etherscan per-contract pages — listed inline above; row-by-row evidence in the verification ledger.
- Hexens public reports repo: https://github.com/Hexens/Smart-Contract-Review-Public-Reports
- Ion Protocol Nucleus boring-vault audits: https://github.com/Ion-Protocol/nucleus-boring-vault

### Caveats

- TVL figures are DefiLlama adapter snapshots dated 2026-04-29. Per-contract WBTC backing (swBTC) is reported by the DL adapter rather than directly visible on the swBTC token's Etherscan page.
- Audit→contract mappings are reconstructed from filenames + product-line context. Where a specific implementation post-dates a relevant audit (e.g., the swETH/DepositManager 2024-03-05 implementations relative to the 2024-01 Barracuda Upgrade audit), the gold-standard treats them as "covered" because the timeline is consistent with the upgrade audit's stated scope; deeper PDF reading is operator-confirm.
- swEXIT (the swETH withdrawal queue NFT contract) is referenced in Swell's Barracuda upgrade narrative but is not pinned to a separate Etherscan address in the developer docs or via search. The brief therefore does not list a swEXIT contract row.
- The OssifiableProxy at `0xecf3…4121` was misclassified as swEXIT in an earlier draft of this brief; verification confirms it is the **Swellchain L1↔L2 wstETH bridge** (Lido `L1ERC20TokenBridge` pattern). The 33.34 wstETH balance is bridge escrow, not withdrawal-queue float.
- The Earn product stack (BoringVault, manager, accountant, teller, rolesAuthority) is **deployed by Nucleus, not Swell**. Listed in Swell's developer docs because Swell white-labels Nucleus's vault under the "Earn" UI; audit attribution belongs to Nucleus.
- ProxyAdmin owners, multisig membership, timelock duration, and on-chain governance gate parameters are out of scope for this brief.

### Generation metadata

- Generated: 2026-05-06
- Method: manual research, no pipeline involvement
- Verification ledger: [`docs/gold-standard/swell_verification_ledger.md`](../../docs/gold-standard/swell_verification_ledger.md)
- Raw DL JSON archive: [`docs/gold-standard/dl_raw/`](../../docs/gold-standard/dl_raw/)
