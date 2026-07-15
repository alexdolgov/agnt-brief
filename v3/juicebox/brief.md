# Agentic Audit Brief: Juicebox

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 11 (1 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Juicebox (`juicebox`)
- Website: [https://juicebox.money/](https://juicebox.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, optimism-sepolia, sepolia
- Contract surface: 283 unique implementations (284 raw deployments)
- Coverage basis: 1/194 confirmed own live verified implementations (0.5%); conservative 0.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,209,787.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Juicebox. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 194 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, optimism-sepolia, sepolia. Structural roles: 128 unclassified, 41 core, 24 supporting, 1 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 194
- Structural roles: unclassified (128), core (41), supporting (24), infra (1)
- Contract kinds: contract (194)
- Detected standards: erc165 (28), ownable (21), erc721 (6), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (57), prb-math (24), uniswap (7), chainlink (5), solady (5), uniswap-v3 (5)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 194 contracts are derived from known codebases. 194 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CTDeployer (`0xc3c266...e5d8ea`, chain 1)
- CTDeployer (`0xc3c266...e5d8ea`, chain 10)
- CTDeployer (`0xc3c266...e5d8ea`, chain 8453)
- CTDeployer (`0xc3c266...e5d8ea`, chain 42161)
- CTProjectOwner (`0x127fa6...690883`, chain 1)
- CTProjectOwner (`0x127fa6...690883`, chain 10)
- CTProjectOwner (`0x127fa6...690883`, chain 8453)
- CTProjectOwner (`0x127fa6...690883`, chain 42161)
- CTPublisher (`0x03ef9e...20ee24`, chain 1)
- CTPublisher (`0x03ef9e...20ee24`, chain 10)
- CTPublisher (`0x03ef9e...20ee24`, chain 8453)
- CTPublisher (`0x03ef9e...20ee24`, chain 42161)
- ERC2771Forwarder (`0xc29d69...cbb566`, chain 1)
- ERC2771Forwarder (`0xc29d69...cbb566`, chain 10)
- ERC2771Forwarder (`0xc29d69...cbb566`, chain 8453)
- ERC2771Forwarder (`0xc29d69...cbb566`, chain 42161)
- JB721TiersHook (`0x749ac9...8eb25b`, chain 1)
- JB721TiersHook (`0x749ac9...8eb25b`, chain 10)
- JB721TiersHook (`0x749ac9...8eb25b`, chain 8453)
- JB721TiersHook (`0x749ac9...8eb25b`, chain 42161)
- JB721TiersHookDeployer (`0x792bdd...6d2732`, chain 1)
- JB721TiersHookDeployer (`0xef6087...d41ca7`, chain 1)
- JB721TiersHookDeployer (`0x792bdd...6d2732`, chain 10)
- JB721TiersHookDeployer (`0xef6087...d41ca7`, chain 10)
- JB721TiersHookDeployer (`0x792bdd...6d2732`, chain 8453)
- JB721TiersHookDeployer (`0xef6087...d41ca7`, chain 8453)
- JB721TiersHookDeployer (`0x792bdd...6d2732`, chain 42161)
- JB721TiersHookDeployer (`0xef6087...d41ca7`, chain 42161)
- JB721TiersHookProjectDeployer (`0x048626...0e725a`, chain 1)
- JB721TiersHookProjectDeployer (`0xeb15c1...c9a7f8`, chain 1)
- JB721TiersHookProjectDeployer (`0x048626...0e725a`, chain 10)
- JB721TiersHookProjectDeployer (`0xeb15c1...c9a7f8`, chain 10)
- JB721TiersHookProjectDeployer (`0x048626...0e725a`, chain 8453)
- JB721TiersHookProjectDeployer (`0xeb15c1...c9a7f8`, chain 8453)
- JB721TiersHookProjectDeployer (`0x048626...0e725a`, chain 42161)
- JB721TiersHookProjectDeployer (`0xeb15c1...c9a7f8`, chain 42161)
- JB721TiersHookStore (`0x2bc696...eba8ee`, chain 1)
- JB721TiersHookStore (`0x2bc696...eba8ee`, chain 10)
- JB721TiersHookStore (`0x2bc696...eba8ee`, chain 8453)
- JB721TiersHookStore (`0x2bc696...eba8ee`, chain 42161)
- JBArbitrumSuckerDeployer (`0xea06bd...5c9699`, chain 1)
- JBArbitrumSuckerDeployer (`0xea06bd...5c9699`, chain 42161)
- JBBaseSuckerDeployer (`0xd9f35d...947efd`, chain 1)
- JBBaseSuckerDeployer (`0xd9f35d...947efd`, chain 8453)
- JBBuybackHook (`0xd34249...fe0f9b`, chain 1)
- JBBuybackHook (`0x318f8a...7824f3`, chain 10)
- JBBuybackHook (`0xb6133a...51d088`, chain 8453)
- JBBuybackHook (`0x4ac3e2...4f0320`, chain 42161)
- JBBuybackHookRegistry (`0x9e1e0f...a12b1a`, chain 1)
- JBBuybackHookRegistry (`0x9e1e0f...a12b1a`, chain 10)
- JBBuybackHookRegistry (`0x9e1e0f...a12b1a`, chain 8453)
- JBBuybackHookRegistry (`0x9e1e0f...a12b1a`, chain 42161)
- JBCCIPSuckerDeployer (`0x172ad9...761816`, chain 1)
- JBCCIPSuckerDeployer (`0x195b4d...f88814`, chain 1)
- JBCCIPSuckerDeployer (`0xf816d2...ca4bcf`, chain 1)
- JBCCIPSuckerDeployer (`0x172ad9...761816`, chain 10)
- JBCCIPSuckerDeployer (`0x586839...4a3d7d`, chain 10)
- JBCCIPSuckerDeployer (`0xaa0dbd...c8bcd1`, chain 10)
- JBCCIPSuckerDeployer (`0x195b4d...f88814`, chain 8453)
- JBCCIPSuckerDeployer (`0x586839...4a3d7d`, chain 8453)
- JBCCIPSuckerDeployer (`0xc295a8...88c8a7`, chain 8453)
- JBCCIPSuckerDeployer (`0xaa0dbd...c8bcd1`, chain 42161)
- JBCCIPSuckerDeployer (`0xc295a8...88c8a7`, chain 42161)
- JBCCIPSuckerDeployer (`0xf816d2...ca4bcf`, chain 42161)
- JBChainlinkV3PriceFeed (`0x6ed8ee...28bba4`, chain 1)
- JBChainlinkV3SequencerPriceFeed (`0x6ed8ee...28bba4`, chain 10)
- JBChainlinkV3SequencerPriceFeed (`0x6ed8ee...28bba4`, chain 8453)
- JBChainlinkV3SequencerPriceFeed (`0x6ed8ee...28bba4`, chain 42161)
- JBController (`0x27da30...f7668a`, chain 1)
- JBController (`0xf3cc99...9987e1`, chain 1)
- JBController (`0x27da30...f7668a`, chain 10)
- JBController (`0xf3cc99...9987e1`, chain 10)
- JBController (`0x27da30...f7668a`, chain 8453)
- JBController (`0xf3cc99...9987e1`, chain 8453)
- JBController (`0x27da30...f7668a`, chain 42161)
- JBController (`0xf3cc99...9987e1`, chain 42161)
- JBDeadline1Day (`0xcffdd1...b924d7`, chain 1)
- JBDeadline1Day (`0xcffdd1...b924d7`, chain 10)
- JBDeadline1Day (`0xcffdd1...b924d7`, chain 8453)
- JBDeadline1Day (`0xcffdd1...b924d7`, chain 42161)
- JBDeadline3Days (`0x09b23b...17111b`, chain 1)
- JBDeadline3Days (`0x09b23b...17111b`, chain 10)
- JBDeadline3Days (`0x09b23b...17111b`, chain 8453)
- JBDeadline3Days (`0x09b23b...17111b`, chain 42161)
- JBDeadline3Hours (`0x4eeb65...71799a`, chain 1)
- JBDeadline3Hours (`0x4eeb65...71799a`, chain 10)
- JBDeadline3Hours (`0x4eeb65...71799a`, chain 8453)
- JBDeadline3Hours (`0x4eeb65...71799a`, chain 42161)
- JBDeadline7Days (`0xdf911b...636031`, chain 1)
- JBDeadline7Days (`0xdf911b...636031`, chain 10)
- JBDeadline7Days (`0xdf911b...636031`, chain 8453)
- JBDeadline7Days (`0xdf911b...636031`, chain 42161)
- JBDirectory (`0x0061e5...651dcf`, chain 1)
- JBDirectory (`0x0061e5...651dcf`, chain 10)
- JBDirectory (`0x0061e5...651dcf`, chain 8453)
- JBDirectory (`0x0061e5...651dcf`, chain 42161)
- JBERC20 (`0xaeac45...be5d31`, chain 1)
- JBERC20 (`0xaeac45...be5d31`, chain 10)
- JBERC20 (`0xaeac45...be5d31`, chain 8453)
- JBERC20 (`0xaeac45...be5d31`, chain 42161)
- JBFeelessAddresses (`0xfc702a...d91d53`, chain 1)
- JBFeelessAddresses (`0xfc702a...d91d53`, chain 10)
- JBFeelessAddresses (`0xfc702a...d91d53`, chain 8453)
- JBFeelessAddresses (`0xfc702a...d91d53`, chain 42161)
- JBFundAccessLimits (`0x3a46b2...497ce7`, chain 1)
- JBFundAccessLimits (`0x3a46b2...497ce7`, chain 10)
- JBFundAccessLimits (`0x3a46b2...497ce7`, chain 8453)
- JBFundAccessLimits (`0x3a46b2...497ce7`, chain 42161)
- JBMatchingPriceFeed (`0x6fbf8d...9e138a`, chain 1)
- JBMatchingPriceFeed (`0x6fbf8d...9e138a`, chain 10)
- JBMatchingPriceFeed (`0x6fbf8d...9e138a`, chain 8453)
- JBMatchingPriceFeed (`0x6fbf8d...9e138a`, chain 42161)
- JBMultiTerminal (`0x2db6d7...361846`, chain 1)
- JBMultiTerminal (`0x52869d...cd371c`, chain 1)
- JBMultiTerminal (`0x2db6d7...361846`, chain 10)
- JBMultiTerminal (`0x52869d...cd371c`, chain 10)
- JBMultiTerminal (`0x2db6d7...361846`, chain 8453)
- JBMultiTerminal (`0x52869d...cd371c`, chain 8453)
- JBMultiTerminal (`0x2db6d7...361846`, chain 42161)
- JBMultiTerminal (`0x52869d...cd371c`, chain 42161)
- JBOmnichainDeployer (`0x587bf8...c2fc71`, chain 1)
- JBOmnichainDeployer (`0x8f5ded...101590`, chain 1)
- JBOmnichainDeployer (`0x587bf8...c2fc71`, chain 10)
- JBOmnichainDeployer (`0x8f5ded...101590`, chain 10)
- JBOmnichainDeployer (`0x587bf8...c2fc71`, chain 8453)
- JBOmnichainDeployer (`0x8f5ded...101590`, chain 8453)
- JBOmnichainDeployer (`0x587bf8...c2fc71`, chain 42161)
- JBOmnichainDeployer (`0x8f5ded...101590`, chain 42161)
- JBOptimismSuckerDeployer (`0x77cdb0...cc3057`, chain 1)
- JBOptimismSuckerDeployer (`0x77cdb0...cc3057`, chain 10)
- JBPermissions (`0x04fd69...a7793d`, chain 1)
- JBPermissions (`0x04fd69...a7793d`, chain 10)
- JBPermissions (`0x04fd69...a7793d`, chain 8453)
- JBPermissions (`0x04fd69...a7793d`, chain 42161)
- JBPrices (`0x9b90e5...e614c4`, chain 1)
- JBPrices (`0x9b90e5...e614c4`, chain 10)
- JBPrices (`0x9b90e5...e614c4`, chain 8453)
- JBPrices (`0x9b90e5...e614c4`, chain 42161)
- JBProjects (`0x885f70...c8c1d4`, chain 1)
- JBProjects (`0x885f70...c8c1d4`, chain 10)
- JBProjects (`0x885f70...c8c1d4`, chain 8453)
- JBProjects (`0x885f70...c8c1d4`, chain 42161)
- JBRulesets (`0x629228...6ab428`, chain 1)
- JBRulesets (`0x629228...6ab428`, chain 10)
- JBRulesets (`0x629228...6ab428`, chain 8453)
- JBRulesets (`0x629228...6ab428`, chain 42161)
- JBRulesets5_1 (`0xd42570...14b056`, chain 1)
- JBRulesets5_1 (`0xd42570...14b056`, chain 10)
- JBRulesets5_1 (`0xd42570...14b056`, chain 8453)
- JBRulesets5_1 (`0xd42570...14b056`, chain 42161)
- JBSplits (`0x7160a3...df3c5e`, chain 1)
- JBSplits (`0x7160a3...df3c5e`, chain 10)
- JBSplits (`0x7160a3...df3c5e`, chain 8453)
- JBSplits (`0x7160a3...df3c5e`, chain 42161)
- JBSuckerRegistry (`0x07c8c5...24ece3`, chain 1)
- JBSuckerRegistry (`0x07c8c5...24ece3`, chain 10)
- JBSuckerRegistry (`0x07c8c5...24ece3`, chain 8453)
- JBSuckerRegistry (`0x07c8c5...24ece3`, chain 42161)
- JBSwapTerminal (`0x259385...b145dd`, chain 1)
- JBSwapTerminal (`0x73d045...aad774`, chain 10)
- JBSwapTerminal (`0x4fd73d...832edd`, chain 8453)
- JBSwapTerminal (`0x483c9b...c752ad`, chain 42161)
- JBSwapTerminal5_1 (`0x642f6f...378f80`, chain 1)
- JBSwapTerminal5_1 (`0x7ba67a...f4a0ed`, chain 10)
- JBSwapTerminal5_1 (`0x7e000e...bee8ab`, chain 8453)
- JBSwapTerminal5_1 (`0x36379b...d99c08`, chain 42161)
- JBSwapTerminalRegistry (`0x1ce40d...167422`, chain 1)
- JBSwapTerminalRegistry (`0x60b4f5...e6a4f6`, chain 1)
- JBSwapTerminalRegistry (`0x1ce40d...167422`, chain 10)
- JBSwapTerminalRegistry (`0x60b4f5...e6a4f6`, chain 10)
- JBSwapTerminalRegistry (`0x1ce40d...167422`, chain 8453)
- JBSwapTerminalRegistry (`0x60b4f5...e6a4f6`, chain 8453)
- JBSwapTerminalRegistry (`0x1ce40d...167422`, chain 42161)
- JBSwapTerminalRegistry (`0x60b4f5...e6a4f6`, chain 42161)
- JBTerminalStore (`0x5cdfcf...a1d964`, chain 1)
- JBTerminalStore (`0xfe33b4...014744`, chain 1)
- JBTerminalStore (`0x5cdfcf...a1d964`, chain 10)
- JBTerminalStore (`0xfe33b4...014744`, chain 10)
- JBTerminalStore (`0x5cdfcf...a1d964`, chain 8453)
- JBTerminalStore (`0xfe33b4...014744`, chain 8453)
- JBTerminalStore (`0x5cdfcf...a1d964`, chain 42161)
- JBTerminalStore (`0xfe33b4...014744`, chain 42161)
- JBTokens (`0x4d0edd...e87636`, chain 1)
- JBTokens (`0x4d0edd...e87636`, chain 10)
- JBTokens (`0x4d0edd...e87636`, chain 8453)
- JBTokens (`0x4d0edd...e87636`, chain 42161)
- REVDeployer (`0x2ca27b...de251d`, chain 1)
- REVDeployer (`0x2ca27b...de251d`, chain 10)
- REVDeployer (`0x2ca27b...de251d`, chain 8453)
- REVDeployer (`0x2ca27b...de251d`, chain 42161)
- REVLoans (`0x1880d8...d550bb`, chain 1)
- REVLoans (`0x1880d8...d550bb`, chain 10)
- REVLoans (`0x1880d8...d550bb`, chain 8453)
- REVLoans (`0x1880d8...d550bb`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 194; live-surface rows included: 194 (194 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 194/259 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/194 (0.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 194 own, 56 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 194 of 283 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/201
- Verified + Unaudited implementations: 200
- Verified by bytecode match: 0
- Unverified implementations: 82
- Unique implementations: 283
- Raw deployments: 284
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 0.5% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 0.5% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| JBChainlinkV3PriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-243646 | `0x6ed8ee...28bba4` | ✅ Audited |

### ⚠️ Verified + Unaudited (200)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CTDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243658 | `0xc3c266...e5d8ea` | ⚠️ Unaudited |
| CTDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243710 | `0xc3c266...e5d8ea` | ⚠️ Unaudited |
| CTDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243895 | `0xc3c266...e5d8ea` | ⚠️ Unaudited |
| CTDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243826 | `0xc3c266...e5d8ea` | ⚠️ Unaudited |
| CTProjectOwner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243627 | `0x127fa6...690883` | ⚠️ Unaudited |
| CTProjectOwner | unknown | project_anchor | own_supporting | 0 | optimism | unit-243677 | `0x127fa6...690883` | ⚠️ Unaudited |
| CTProjectOwner | unknown | project_anchor | own_supporting | 0 | base | unit-243851 | `0x127fa6...690883` | ⚠️ Unaudited |
| CTProjectOwner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243795 | `0x127fa6...690883` | ⚠️ Unaudited |
| CTPublisher | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243622 | `0x03ef9e...20ee24` | ⚠️ Unaudited |
| CTPublisher | unknown | project_anchor | own_supporting | 0 | optimism | unit-243672 | `0x03ef9e...20ee24` | ⚠️ Unaudited |
| CTPublisher | unknown | project_anchor | own_supporting | 0 | base | unit-243841 | `0x03ef9e...20ee24` | ⚠️ Unaudited |
| CTPublisher | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243790 | `0x03ef9e...20ee24` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243657 | `0xc29d69...cbb566` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | project_anchor | own_supporting | 0 | optimism | unit-243709 | `0xc29d69...cbb566` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | project_anchor | own_supporting | 0 | base | unit-243894 | `0xc29d69...cbb566` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243825 | `0xc29d69...cbb566` | ⚠️ Unaudited |
| JB721TiersHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243649 | `0x749ac9...8eb25b` | ⚠️ Unaudited |
| JB721TiersHook | unknown | project_anchor | own_supporting | 0 | optimism | unit-243699 | `0x749ac9...8eb25b` | ⚠️ Unaudited |
| JB721TiersHook | unknown | project_anchor | own_supporting | 0 | base | unit-243884 | `0x749ac9...8eb25b` | ⚠️ Unaudited |
| JB721TiersHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243816 | `0x749ac9...8eb25b` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243651 | `0x792bdd...6d2732` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243666 | `0xef6087...d41ca7` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243701 | `0x792bdd...6d2732` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243715 | `0xef6087...d41ca7` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243885 | `0x792bdd...6d2732` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243901 | `0xef6087...d41ca7` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243817 | `0x792bdd...6d2732` | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243832 | `0xef6087...d41ca7` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243623 | `0x048626...0e725a` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243665 | `0xeb15c1...c9a7f8` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243673 | `0x048626...0e725a` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243714 | `0xeb15c1...c9a7f8` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243843 | `0x048626...0e725a` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243900 | `0xeb15c1...c9a7f8` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243791 | `0x048626...0e725a` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243831 | `0xeb15c1...c9a7f8` | ⚠️ Unaudited |
| JB721TiersHookStore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243634 | `0x2bc696...eba8ee` | ⚠️ Unaudited |
| JB721TiersHookStore | unknown | project_anchor | own_supporting | 0 | optimism | unit-243682 | `0x2bc696...eba8ee` | ⚠️ Unaudited |
| JB721TiersHookStore | unknown | project_anchor | own_supporting | 0 | base | unit-243860 | `0x2bc696...eba8ee` | ⚠️ Unaudited |
| JB721TiersHookStore | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243799 | `0x2bc696...eba8ee` | ⚠️ Unaudited |
| JBArbitrumSuckerDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243664 | `0xea06bd...5c9699` | ⚠️ Unaudited |
| JBArbitrumSuckerDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243830 | `0xea06bd...5c9699` | ⚠️ Unaudited |
| JBBaseSuckerDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243662 | `0xd9f35d...947efd` | ⚠️ Unaudited |
| JBBaseSuckerDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243898 | `0xd9f35d...947efd` | ⚠️ Unaudited |
| JBBuybackHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243660 | `0xd34249...fe0f9b` | ⚠️ Unaudited |
| JBBuybackHook | unknown | project_anchor | own_supporting | 0 | optimism | unit-243685 | `0x318f8a...7824f3` | ⚠️ Unaudited |
| JBBuybackHook | unknown | project_anchor | own_supporting | 0 | base | unit-243892 | `0xb6133a...51d088` | ⚠️ Unaudited |
| JBBuybackHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243805 | `0x4ac3e2...4f0320` | ⚠️ Unaudited |
| JBBuybackHookRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-243655 | `0x9e1e0f...a12b1a` | ⚠️ Unaudited |
| JBBuybackHookRegistry | registry | project_anchor | own_supporting | 0 | optimism | unit-243706 | `0x9e1e0f...a12b1a` | ⚠️ Unaudited |
| JBBuybackHookRegistry | registry | project_anchor | own_supporting | 0 | base | unit-243890 | `0x9e1e0f...a12b1a` | ⚠️ Unaudited |
| JBBuybackHookRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-243821 | `0x9e1e0f...a12b1a` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243628 | `0x172ad9...761816` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243630 | `0x195b4d...f88814` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243668 | `0xf816d2...ca4bcf` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243678 | `0x172ad9...761816` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243690 | `0x586839...4a3d7d` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243707 | `0xaa0dbd...c8bcd1` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243855 | `0x195b4d...f88814` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243876 | `0x586839...4a3d7d` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243893 | `0xc295a8...88c8a7` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243822 | `0xaa0dbd...c8bcd1` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243824 | `0xc295a8...88c8a7` | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243834 | `0xf816d2...ca4bcf` | ⚠️ Unaudited |
| JBChainlinkV3SequencerPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-243695 | `0x6ed8ee...28bba4` | ⚠️ Unaudited |
| JBChainlinkV3SequencerPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | base | unit-243881 | `0x6ed8ee...28bba4` | ⚠️ Unaudited |
| JBChainlinkV3SequencerPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-243813 | `0x6ed8ee...28bba4` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | ethereum | unit-243633 | `0x27da30...f7668a` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | ethereum | unit-243667 | `0xf3cc99...9987e1` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | optimism | unit-243681 | `0x27da30...f7668a` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | optimism | unit-243716 | `0xf3cc99...9987e1` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | base | unit-243859 | `0x27da30...f7668a` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | base | unit-243902 | `0xf3cc99...9987e1` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-243798 | `0x27da30...f7668a` | ⚠️ Unaudited |
| JBController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-243833 | `0xf3cc99...9987e1` | ⚠️ Unaudited |
| JBController3_1 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a5b9...4bb59b` | ⚠️ Unaudited |
| JBDeadline1Day | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243659 | `0xcffdd1...b924d7` | ⚠️ Unaudited |
| JBDeadline1Day | unknown | project_anchor | own_supporting | 0 | optimism | unit-243711 | `0xcffdd1...b924d7` | ⚠️ Unaudited |
| JBDeadline1Day | unknown | project_anchor | own_supporting | 0 | base | unit-243896 | `0xcffdd1...b924d7` | ⚠️ Unaudited |
| JBDeadline1Day | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243827 | `0xcffdd1...b924d7` | ⚠️ Unaudited |
| JBDeadline3Days | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243626 | `0x09b23b...17111b` | ⚠️ Unaudited |
| JBDeadline3Days | unknown | project_anchor | own_supporting | 0 | optimism | unit-243676 | `0x09b23b...17111b` | ⚠️ Unaudited |
| JBDeadline3Days | unknown | project_anchor | own_supporting | 0 | base | unit-243849 | `0x09b23b...17111b` | ⚠️ Unaudited |
| JBDeadline3Days | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243794 | `0x09b23b...17111b` | ⚠️ Unaudited |
| JBDeadline3Hours | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243639 | `0x4eeb65...71799a` | ⚠️ Unaudited |
| JBDeadline3Hours | unknown | project_anchor | own_supporting | 0 | optimism | unit-243688 | `0x4eeb65...71799a` | ⚠️ Unaudited |
| JBDeadline3Hours | unknown | project_anchor | own_supporting | 0 | base | unit-243870 | `0x4eeb65...71799a` | ⚠️ Unaudited |
| JBDeadline3Hours | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243807 | `0x4eeb65...71799a` | ⚠️ Unaudited |
| JBDeadline7Days | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243663 | `0xdf911b...636031` | ⚠️ Unaudited |
| JBDeadline7Days | unknown | project_anchor | own_supporting | 0 | optimism | unit-243713 | `0xdf911b...636031` | ⚠️ Unaudited |
| JBDeadline7Days | unknown | project_anchor | own_supporting | 0 | base | unit-243899 | `0xdf911b...636031` | ⚠️ Unaudited |
| JBDeadline7Days | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243829 | `0xdf911b...636031` | ⚠️ Unaudited |
| JBDirectory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243621 | `0x0061e5...651dcf` | ⚠️ Unaudited |
| JBDirectory | unknown | project_anchor | own_supporting | 0 | optimism | unit-243671 | `0x0061e5...651dcf` | ⚠️ Unaudited |
| JBDirectory | unknown | project_anchor | own_supporting | 0 | base | unit-243839 | `0x0061e5...651dcf` | ⚠️ Unaudited |
| JBDirectory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243789 | `0x0061e5...651dcf` | ⚠️ Unaudited |
| JBERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-243656 | `0xaeac45...be5d31` | ⚠️ Unaudited |
| JBERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-243708 | `0xaeac45...be5d31` | ⚠️ Unaudited |
| JBERC20 | token | project_anchor | own_supporting | 0 | base | unit-243891 | `0xaeac45...be5d31` | ⚠️ Unaudited |
| JBERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-243823 | `0xaeac45...be5d31` | ⚠️ Unaudited |
| JBETHPaymentTerminal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x594cb2...64ec63`; ethereum `0x7ae63f...3b8397` | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa391d...607a5c` | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9619...680cc0` | ⚠️ Unaudited |
| JBFeelessAddresses | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243669 | `0xfc702a...d91d53` | ⚠️ Unaudited |
| JBFeelessAddresses | unknown | project_anchor | own_supporting | 0 | optimism | unit-243717 | `0xfc702a...d91d53` | ⚠️ Unaudited |
| JBFeelessAddresses | unknown | project_anchor | own_supporting | 0 | base | unit-243903 | `0xfc702a...d91d53` | ⚠️ Unaudited |
| JBFeelessAddresses | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243835 | `0xfc702a...d91d53` | ⚠️ Unaudited |
| JBFundAccessLimits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243637 | `0x3a46b2...497ce7` | ⚠️ Unaudited |
| JBFundAccessLimits | unknown | project_anchor | own_supporting | 0 | optimism | unit-243686 | `0x3a46b2...497ce7` | ⚠️ Unaudited |
| JBFundAccessLimits | unknown | project_anchor | own_supporting | 0 | base | unit-243866 | `0x3a46b2...497ce7` | ⚠️ Unaudited |
| JBFundAccessLimits | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243803 | `0x3a46b2...497ce7` | ⚠️ Unaudited |
| JBMatchingPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-243647 | `0x6fbf8d...9e138a` | ⚠️ Unaudited |
| JBMatchingPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-243696 | `0x6fbf8d...9e138a` | ⚠️ Unaudited |
| JBMatchingPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | base | unit-243882 | `0x6fbf8d...9e138a` | ⚠️ Unaudited |
| JBMatchingPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-243814 | `0x6fbf8d...9e138a` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243636 | `0x2db6d7...361846` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243640 | `0x52869d...cd371c` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | optimism | unit-243684 | `0x2db6d7...361846` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | optimism | unit-243689 | `0x52869d...cd371c` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | base | unit-243864 | `0x2db6d7...361846` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | base | unit-243874 | `0x52869d...cd371c` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243801 | `0x2db6d7...361846` | ⚠️ Unaudited |
| JBMultiTerminal | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243808 | `0x52869d...cd371c` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243641 | `0x587bf8...c2fc71` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243653 | `0x8f5ded...101590` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243691 | `0x587bf8...c2fc71` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243704 | `0x8f5ded...101590` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243877 | `0x587bf8...c2fc71` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243888 | `0x8f5ded...101590` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243809 | `0x587bf8...c2fc71` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243819 | `0x8f5ded...101590` | ⚠️ Unaudited |
| JBOptimismSuckerDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243650 | `0x77cdb0...cc3057` | ⚠️ Unaudited |
| JBOptimismSuckerDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243700 | `0x77cdb0...cc3057` | ⚠️ Unaudited |
| JBPermissions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243624 | `0x04fd69...a7793d` | ⚠️ Unaudited |
| JBPermissions | unknown | project_anchor | own_supporting | 0 | optimism | unit-243674 | `0x04fd69...a7793d` | ⚠️ Unaudited |
| JBPermissions | unknown | project_anchor | own_supporting | 0 | base | unit-243845 | `0x04fd69...a7793d` | ⚠️ Unaudited |
| JBPermissions | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243792 | `0x04fd69...a7793d` | ⚠️ Unaudited |
| JBPrices | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-243654 | `0x9b90e5...e614c4` | ⚠️ Unaudited |
| JBPrices | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-243705 | `0x9b90e5...e614c4` | ⚠️ Unaudited |
| JBPrices | operational_periphery | project_anchor | own_supporting | 0 | base | unit-243889 | `0x9b90e5...e614c4` | ⚠️ Unaudited |
| JBPrices | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-243820 | `0x9b90e5...e614c4` | ⚠️ Unaudited |
| JBProjectHandles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75d2e...b0a3a4` | ⚠️ Unaudited |
| JBProjects | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243652 | `0x885f70...c8c1d4` | ⚠️ Unaudited |
| JBProjects | unknown | project_anchor | own_supporting | 0 | optimism | unit-243703 | `0x885f70...c8c1d4` | ⚠️ Unaudited |
| JBProjects | unknown | project_anchor | own_supporting | 0 | base | unit-243887 | `0x885f70...c8c1d4` | ⚠️ Unaudited |
| JBProjects | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243818 | `0x885f70...c8c1d4` | ⚠️ Unaudited |
| JBRulesets | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243644 | `0x629228...6ab428` | ⚠️ Unaudited |
| JBRulesets | unknown | project_anchor | own_supporting | 0 | optimism | unit-243694 | `0x629228...6ab428` | ⚠️ Unaudited |
| JBRulesets | unknown | project_anchor | own_supporting | 0 | base | unit-243880 | `0x629228...6ab428` | ⚠️ Unaudited |
| JBRulesets | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243812 | `0x629228...6ab428` | ⚠️ Unaudited |
| JBRulesets5_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243661 | `0xd42570...14b056` | ⚠️ Unaudited |
| JBRulesets5_1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-243712 | `0xd42570...14b056` | ⚠️ Unaudited |
| JBRulesets5_1 | unknown | project_anchor | own_supporting | 0 | base | unit-243897 | `0xd42570...14b056` | ⚠️ Unaudited |
| JBRulesets5_1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243828 | `0xd42570...14b056` | ⚠️ Unaudited |
| JBSplits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243648 | `0x7160a3...df3c5e` | ⚠️ Unaudited |
| JBSplits | unknown | project_anchor | own_supporting | 0 | optimism | unit-243697 | `0x7160a3...df3c5e` | ⚠️ Unaudited |
| JBSplits | unknown | project_anchor | own_supporting | 0 | base | unit-243883 | `0x7160a3...df3c5e` | ⚠️ Unaudited |
| JBSplits | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243815 | `0x7160a3...df3c5e` | ⚠️ Unaudited |
| JBSuckerRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-243625 | `0x07c8c5...24ece3` | ⚠️ Unaudited |
| JBSuckerRegistry | registry | project_anchor | own_supporting | 0 | optimism | unit-243675 | `0x07c8c5...24ece3` | ⚠️ Unaudited |
| JBSuckerRegistry | registry | project_anchor | own_supporting | 0 | base | unit-243847 | `0x07c8c5...24ece3` | ⚠️ Unaudited |
| JBSuckerRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-243793 | `0x07c8c5...24ece3` | ⚠️ Unaudited |
| JBSwapTerminal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243632 | `0x259385...b145dd` | ⚠️ Unaudited |
| JBSwapTerminal | unknown | project_anchor | own_supporting | 0 | optimism | unit-243698 | `0x73d045...aad774` | ⚠️ Unaudited |
| JBSwapTerminal | unknown | project_anchor | own_supporting | 0 | base | unit-243872 | `0x4fd73d...832edd` | ⚠️ Unaudited |
| JBSwapTerminal | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243804 | `0x483c9b...c752ad` | ⚠️ Unaudited |
| JBSwapTerminal5_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243645 | `0x642f6f...378f80` | ⚠️ Unaudited |
| JBSwapTerminal5_1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-243702 | `0x7ba67a...f4a0ed` | ⚠️ Unaudited |
| JBSwapTerminal5_1 | unknown | project_anchor | own_supporting | 0 | base | unit-243886 | `0x7e000e...bee8ab` | ⚠️ Unaudited |
| JBSwapTerminal5_1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243802 | `0x36379b...d99c08` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-243631 | `0x1ce40d...167422` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-243643 | `0x60b4f5...e6a4f6` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | optimism | unit-243680 | `0x1ce40d...167422` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | optimism | unit-243693 | `0x60b4f5...e6a4f6` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | base | unit-243857 | `0x1ce40d...167422` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | base | unit-243879 | `0x60b4f5...e6a4f6` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-243797 | `0x1ce40d...167422` | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-243811 | `0x60b4f5...e6a4f6` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | ethereum | unit-243642 | `0x5cdfcf...a1d964` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | ethereum | unit-243670 | `0xfe33b4...014744` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | optimism | unit-243692 | `0x5cdfcf...a1d964` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | optimism | unit-243718 | `0xfe33b4...014744` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | base | unit-243878 | `0x5cdfcf...a1d964` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | base | unit-243904 | `0xfe33b4...014744` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | arbitrum | unit-243810 | `0x5cdfcf...a1d964` | ⚠️ Unaudited |
| JBTerminalStore | token | project_anchor | own_supporting | 0 | arbitrum | unit-243836 | `0xfe33b4...014744` | ⚠️ Unaudited |
| JBTokens | token | project_anchor | own_supporting | 0 | ethereum | unit-243638 | `0x4d0edd...e87636` | ⚠️ Unaudited |
| JBTokens | token | project_anchor | own_supporting | 0 | optimism | unit-243687 | `0x4d0edd...e87636` | ⚠️ Unaudited |
| JBTokens | token | project_anchor | own_supporting | 0 | base | unit-243868 | `0x4d0edd...e87636` | ⚠️ Unaudited |
| JBTokens | token | project_anchor | own_supporting | 0 | arbitrum | unit-243806 | `0x4d0edd...e87636` | ⚠️ Unaudited |
| REVDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243635 | `0x2ca27b...de251d` | ⚠️ Unaudited |
| REVDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-243683 | `0x2ca27b...de251d` | ⚠️ Unaudited |
| REVDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-243862 | `0x2ca27b...de251d` | ⚠️ Unaudited |
| REVDeployer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243800 | `0x2ca27b...de251d` | ⚠️ Unaudited |
| REVLoans | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243629 | `0x1880d8...d550bb` | ⚠️ Unaudited |
| REVLoans | unknown | project_anchor | own_supporting | 0 | optimism | unit-243679 | `0x1880d8...d550bb` | ⚠️ Unaudited |
| REVLoans | unknown | project_anchor | own_supporting | 0 | base | unit-243853 | `0x1880d8...d550bb` | ⚠️ Unaudited |
| REVLoans | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243796 | `0x1880d8...d550bb` | ⚠️ Unaudited |
| TerminalV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd569d3...714431` | ⚠️ Unaudited |
| TerminalV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981c8e...2e5c68` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (82)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00eeee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30aed1...b251b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318f8a...7824f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483c9b...c752ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac3e2...4f0320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fd73d...832edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f820a...67c41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6294eb...112f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73d045...aad774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e5ca...1aa8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b1e...59e552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb35ab8...76f2df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6133a...51d088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7369f...d4d32d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3f2c...c29fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7503b...2fd0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf082e3...21815f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30aed1...b251b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca3f2c...c29fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf082e3...21815f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f820a...67c41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb35ab8...76f2df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7503b...2fd0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79e5ca...1aa8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d7b1e...59e552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7369f...d4d32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base-sepolia | unit-243905 | `0x79e5ca...1aa8fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base-sepolia | unit-243906 | `0xc7369f...d4d32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-sepolia | unit-243837 | `0x5f820a...67c41c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-sepolia | unit-243838 | `0xb35ab8...76f2df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243719 | `0x0061e5...651dcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243720 | `0x03ef9e...20ee24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243721 | `0x048626...0e725a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243722 | `0x04fd69...a7793d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243723 | `0x07c8c5...24ece3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243724 | `0x09b23b...17111b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243725 | `0x127fa6...690883` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243726 | `0x172ad9...761816` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243727 | `0x1880d8...d550bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243728 | `0x195b4d...f88814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243729 | `0x1ce40d...167422` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243730 | `0x27da30...f7668a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243731 | `0x2bc696...eba8ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243732 | `0x2ca27b...de251d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243733 | `0x2db6d7...361846` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243734 | `0x30aed1...b251b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243735 | `0x3a46b2...497ce7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243736 | `0x4d0edd...e87636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243737 | `0x4eeb65...71799a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243738 | `0x52869d...cd371c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243740 | `0x587bf8...c2fc71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243741 | `0x5cdfcf...a1d964` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243743 | `0x60b4f5...e6a4f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243744 | `0x629228...6ab428` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243746 | `0x6ed8ee...28bba4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243747 | `0x6fbf8d...9e138a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243748 | `0x7160a3...df3c5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243749 | `0x749ac9...8eb25b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243750 | `0x77cdb0...cc3057` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243751 | `0x792bdd...6d2732` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243753 | `0x885f70...c8c1d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243754 | `0x8f5ded...101590` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243755 | `0x9b90e5...e614c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243756 | `0x9e1e0f...a12b1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243758 | `0xaeac45...be5d31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243761 | `0xc29d69...cbb566` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243762 | `0xc3c266...e5d8ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243764 | `0xca3f2c...c29fc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243766 | `0xcffdd1...b924d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243768 | `0xd42570...14b056` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243772 | `0xd9f35d...947efd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243774 | `0xdf911b...636031` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243775 | `0xea06bd...5c9699` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243777 | `0xeb15c1...c9a7f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243779 | `0xef6087...d41ca7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243781 | `0xf082e3...21815f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243782 | `0xf3cc99...9987e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243784 | `0xf816d2...ca4bcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243785 | `0xfc702a...d91d53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243786 | `0xfe33b4...014744` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism-sepolia | unit-243787 | `0x79e5ca...1aa8fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism-sepolia | unit-243788 | `0xc7369f...d4d32d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [5.24.2022.md](https://github.com/jbx-protocol/juice-contracts-v2/blob/main/security/postmortem/5.24.2022.md) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | medium |
| [hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022](https://hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022) | Hacken | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hackmd.io/@berndartmueller/2023-01-juice-v3-migration](https://hackmd.io/@berndartmueller/2023-01-juice-v3-migration) | unknown | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [code4rena.com/reports/2022-10-juicebox](https://code4rena.com/reports/2022-10-juicebox) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2022-10-juicebox (GitHub directory)](https://github.com/code-423n4/2022-10-juicebox) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf](https://docs.juicebox.money/assets/files/certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 59 | high |
| [code4rena.com/audits/2022-07-juicebox-v2-contest](https://code4rena.com/audits/2022-07-juicebox-v2-contest) | Code4rena | Contest | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/reports/2022-07-juicebox](https://code4rena.com/reports/2022-07-juicebox) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 15 | high |
| [peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf](https://docs.juicebox.money/assets/files/peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [code4rena.com/reports/2023-05-juicebox](https://code4rena.com/reports/2023-05-juicebox) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [C4 Juicebox Buyback Delegate repository](https://github.com/code-423n4/2023-05-juicebox) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7040] 5.24.2022.md — no match: This is a postmortem report, not a formal audit. Contracts are mentioned as redeployed or deployed, but no explicit scope section. Date inferred from latest update (May 31, 2022).
- [11935] hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022 — no match: The provided text is a summary page with no detailed scope or contract names.
- [11936] hackmd.io/@berndartmueller/2023-01-juice-v3-migration — no match: Scope section lists two contracts: JBV3Token.sol and JBV3TokenDeployer.sol. Audit date is January 2023, converted to last day of month.
- [11937] code4rena.com/reports/2022-10-juicebox — no match: Scope section states 10 smart contracts, but only 5 are explicitly named in the report. The report focuses on JBTiered721Delegate and JBTiered721DelegateStore as main contracts.
- [11938] 2022-10-juicebox (GitHub directory) — no match: Extracted 10 contracts from the scope table and file paths. Audit end date is October 23, 2022.
- [11939] certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf — no match: Extracted all contracts from the audit scope table and findings sections. The audit date is explicitly stated as 'Mar 29th, 2022' in the header and delivery date.
- [11940] code4rena.com/audits/2022-07-juicebox-v2-contest — no match: The provided text is a leaderboard for a Code4rena contest, not an audit report. No contracts in scope are listed.
- [11941] code4rena.com/reports/2022-07-juicebox — matched: Extracted 16 contract names from the Juicebox V2 contest audit report. The scope section states 10 smart contracts, but additional contracts are referenced in findings and mitigation review. Audit date found on cover page.
- [11942] peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf — no match: Contracts extracted from 'Target' fields in findings and scope table.
- [11943] code4rena.com/reports/2023-05-juicebox — no match: Only one contract in scope: JBXBuybackDelegate. Audit date from report header.
- [27245] C4 Juicebox Buyback Delegate repository — no match: Only one contract in scope: JBXBuybackDelegate. Audit end date is May 22, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 5.24.2022.md | JBFundingCycleStore | unmatched — not counted | — | mentioned as bug location and redeployed | no |
| 5.24.2022.md | JBDirectory | ambiguous — not counted | JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:17+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:36:11+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:13+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 5.24.2022.md | JBController | ambiguous — not counted | JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:25+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:23+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 5.24.2022.md | JBETHPaymentTerminal | unmatched — not counted | — | listed as redeployed contract | no |
| 5.24.2022.md | JBSingleTokenPaymentTerminalStore | unmatched — not counted | — | listed as redeployed contract | no |
| 5.24.2022.md | JBSplitsStore | unmatched — not counted | — | listed as redeployed contract | no |
| 5.24.2022.md | JBTokenStore | unmatched — not counted | — | listed as redeployed contract | no |
| 5.24.2022.md | JB3DayReconfigurationBufferBallot | unmatched — not counted | — | listed as deployed contract | no |
| 5.24.2022.md | JB7DayReconfigurationBufferBallot | unmatched — not counted | — | listed as deployed contract | no |
| 5.24.2022.md | JBProjects | ambiguous — not counted | JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:01+03 — liveness: live (code_present_context)<br>JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:47+03 — liveness: live (code_present_context)<br>JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:09+03 — liveness: live (code_present_context)<br>JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 5.24.2022.md | Multipay | unmatched — not counted | — | deployed contract mentioned in update | no |
| hackmd.io/@berndartmueller/2023-01-juice-v3-migration | JBV3Token | unmatched — not counted | — | listed in scope table | no |
| hackmd.io/@berndartmueller/2023-01-juice-v3-migration | JBV3TokenDeployer | unmatched — not counted | — | listed in scope table | no |
| code4rena.com/reports/2022-10-juicebox | JBTiered721Delegate | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-juicebox | JBTiered721DelegateStore | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-juicebox | JB721Delegate | unmatched — not counted | — | mentioned in findings as abstract contract | no |
| code4rena.com/reports/2022-10-juicebox | JBTiered721DelegateDeployer | unmatched — not counted | — | mentioned in gas optimization | no |
| code4rena.com/reports/2022-10-juicebox | JBIpfsDecoder | unmatched — not counted | — | mentioned in low risk finding | no |
| 2022-10-juicebox (GitHub directory) | JB721GlobalGovernance | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBTiered721DelegateDeployer | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBTiered721DelegateProjectDeployer | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JB721TieredGovernance | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBTiered721Delegate | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBTiered721DelegateStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JB721Delegate | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBTiered721FundingCycleMetadataResolver | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBBitmap | unmatched — not counted | — | listed in scope table | no |
| 2022-10-juicebox (GitHub directory) | JBIpfsDecoder | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBControllerUtility | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBOperatable | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBProject | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBBallotState | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBController | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBControllerUtility | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBDirectory | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBETHPaymentTerminal | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBFeeGauge | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBFundingCycleBallot | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBFundingCycleDataSource | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBFundingCycleStore | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBOperatable | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBOperatorStore | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBPayDelegate | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBPrices | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBProjects | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBRedemptionDelegate | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBSplitAllocator | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBSplitsStore | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBTerminal | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBTerminalUtility | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBToken | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBTokenStore | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | IJBTokenUriResolver | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBConstants | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBCurrencies | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFundingCycleMetadataResolver | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBOperations | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBSplitsGroups | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBTokens | ambiguous — not counted | JBTokens (alternative) `0x4d0edd...e87636` — deployed 2025-09-10 20:36:11+03 — liveness: live (code_present_context)<br>JBTokens (alternative) `0x4d0edd...e87636` — deployed 2025-09-10 20:36:07+03 — liveness: live (code_present_context)<br>JBTokens (alternative) `0x4d0edd...e87636` — deployed 2025-09-10 20:38:23+03 — liveness: live (code_present_context)<br>JBTokens (alternative) `0x4d0edd...e87636` — deployed 2025-09-10 20:36:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBDidPayData | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBDidRedeemData | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFee | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFundAccessConstraints | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFundingCycle | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFundingCycleData | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFundingCycleMetadata | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBGroupedSplits | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBOperatorData | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBPayParamsData | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBProjectMetadata | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBRedeemParamsData | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBSplit | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFakeFundingCycleMetadataResolver | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFakeProject | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JB3DayReconfigurationBufferBallot | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JB7DayReconfigurationBufferBallot | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBController | ambiguous — not counted | JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:25+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:23+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBDirectory | ambiguous — not counted | JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:17+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:36:11+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:13+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBETHPaymentTerminal | unmatched — not counted | — | listed in scope table and findings | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBETHPaymentTerminalStore | unmatched — not counted | — | listed in scope table and findings | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBFundingCycleStore | unmatched — not counted | — | listed in scope table and findings | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBOperatorStore | unmatched — not counted | — | listed in scope table | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBPrices | ambiguous — not counted | JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:35:44+03 — liveness: live (code_present_context)<br>JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:37:35+03 — liveness: live (code_present_context)<br>JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:35:51+03 — liveness: live (code_present_context)<br>JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:35:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBProjects | ambiguous — not counted | JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:01+03 — liveness: live (code_present_context)<br>JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:47+03 — liveness: live (code_present_context)<br>JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:09+03 — liveness: live (code_present_context)<br>JBProjects (alternative) `0x885f70...c8c1d4` — deployed 2025-09-10 20:35:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBSplitsStore | unmatched — not counted | — | listed in scope table and findings | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBToken | unmatched — not counted | — | listed in scope table and findings | no |
| certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf | JBTokenStore | unmatched — not counted | — | listed in scope table and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBChainlinkV3PriceFeed | own contract | JBChainlinkV3PriceFeed (selected) `0x6ed8ee...28bba4` — deployed 2025-09-11 14:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-07-juicebox | JBPrices | ambiguous — not counted | JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:35:44+03 — liveness: live (code_present_context)<br>JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:37:35+03 — liveness: live (code_present_context)<br>JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:35:51+03 — liveness: live (code_present_context)<br>JBPrices (alternative) `0x9b90e5...e614c4` — deployed 2025-09-10 20:35:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2022-07-juicebox | JBSingleTokenPaymentTerminalStore | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBTokenStore | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBController | ambiguous — not counted | JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:25+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:23+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2022-07-juicebox | JBFundingCycleStore | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBERC20PaymentTerminal | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBSplitsStore | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBPayoutRedemptionPaymentTerminal | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBETHPaymentTerminal | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBDirectory | ambiguous — not counted | JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:17+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:36:11+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:13+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2022-07-juicebox | JBOperatorStore | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2022-07-juicebox | JBETHERC20ProjectPayer | unmatched — not counted | — | mentioned in findings as out of scope but referenced | no |
| code4rena.com/reports/2022-07-juicebox | JBETHERC20SplitsPayer | unmatched — not counted | — | mentioned in findings as out of scope but referenced | no |
| code4rena.com/reports/2022-07-juicebox | JBConstants | unmatched — not counted | — | listed in scope and findings | no |
| peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf | JBDirectory | ambiguous — not counted | JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:17+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:36:11+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:13+03 — liveness: live (code_present_context)<br>JBDirectory (alternative) `0x0061e5...651dcf` — deployed 2025-09-10 20:35:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf | JBSplitsStore | unmatched — not counted | — | Target in finding PVE-002 | no |
| peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf | JBETHPaymentTerminal | unmatched — not counted | — | Target in finding PVE-003 | no |
| peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf | JBController | ambiguous — not counted | JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:25+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:23+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0xf3cc99...9987e1` — deployed 2025-12-18 18:05:01+03 — liveness: live (current_address_book_code)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:29:27+03 — liveness: live (code_present_context)<br>JBController (alternative) `0x27da30...f7668a` — deployed 2025-09-11 14:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf | JBTokenStore | unmatched — not counted | — | Target in finding PVE-005 | no |
| code4rena.com/reports/2023-05-juicebox | JBXBuybackDelegate | unmatched — not counted | — | listed in scope section | no |
| C4 Juicebox Buyback Delegate repository | JBXBuybackDelegate | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc3c266...e5d8ea` | CTDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc3c266...e5d8ea` | CTDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc3c266...e5d8ea` | CTDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc3c266...e5d8ea` | CTDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x127fa6...690883` | CTProjectOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x127fa6...690883` | CTProjectOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x127fa6...690883` | CTProjectOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x127fa6...690883` | CTProjectOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03ef9e...20ee24` | CTPublisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x03ef9e...20ee24` | CTPublisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03ef9e...20ee24` | CTPublisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x03ef9e...20ee24` | CTPublisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc29d69...cbb566` | ERC2771Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc29d69...cbb566` | ERC2771Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc29d69...cbb566` | ERC2771Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc29d69...cbb566` | ERC2771Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x749ac9...8eb25b` | JB721TiersHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x749ac9...8eb25b` | JB721TiersHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x749ac9...8eb25b` | JB721TiersHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x749ac9...8eb25b` | JB721TiersHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x792bdd...6d2732` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef6087...d41ca7` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x792bdd...6d2732` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xef6087...d41ca7` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x792bdd...6d2732` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xef6087...d41ca7` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x792bdd...6d2732` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xef6087...d41ca7` | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x048626...0e725a` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb15c1...c9a7f8` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x048626...0e725a` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xeb15c1...c9a7f8` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x048626...0e725a` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeb15c1...c9a7f8` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x048626...0e725a` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xeb15c1...c9a7f8` | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2bc696...eba8ee` | JB721TiersHookStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2bc696...eba8ee` | JB721TiersHookStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2bc696...eba8ee` | JB721TiersHookStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2bc696...eba8ee` | JB721TiersHookStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea06bd...5c9699` | JBArbitrumSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xea06bd...5c9699` | JBArbitrumSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9f35d...947efd` | JBBaseSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9f35d...947efd` | JBBaseSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd34249...fe0f9b` | JBBuybackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x318f8a...7824f3` | JBBuybackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb6133a...51d088` | JBBuybackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4ac3e2...4f0320` | JBBuybackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e1e0f...a12b1a` | JBBuybackHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9e1e0f...a12b1a` | JBBuybackHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9e1e0f...a12b1a` | JBBuybackHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9e1e0f...a12b1a` | JBBuybackHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x172ad9...761816` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x195b4d...f88814` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf816d2...ca4bcf` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x172ad9...761816` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x586839...4a3d7d` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaa0dbd...c8bcd1` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x195b4d...f88814` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x586839...4a3d7d` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc295a8...88c8a7` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaa0dbd...c8bcd1` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc295a8...88c8a7` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf816d2...ca4bcf` | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6ed8ee...28bba4` | JBChainlinkV3SequencerPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6ed8ee...28bba4` | JBChainlinkV3SequencerPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6ed8ee...28bba4` | JBChainlinkV3SequencerPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27da30...f7668a` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3cc99...9987e1` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x27da30...f7668a` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf3cc99...9987e1` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x27da30...f7668a` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf3cc99...9987e1` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x27da30...f7668a` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf3cc99...9987e1` | JBController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcffdd1...b924d7` | JBDeadline1Day | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xcffdd1...b924d7` | JBDeadline1Day | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcffdd1...b924d7` | JBDeadline1Day | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcffdd1...b924d7` | JBDeadline1Day | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09b23b...17111b` | JBDeadline3Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x09b23b...17111b` | JBDeadline3Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09b23b...17111b` | JBDeadline3Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x09b23b...17111b` | JBDeadline3Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4eeb65...71799a` | JBDeadline3Hours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4eeb65...71799a` | JBDeadline3Hours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4eeb65...71799a` | JBDeadline3Hours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4eeb65...71799a` | JBDeadline3Hours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdf911b...636031` | JBDeadline7Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xdf911b...636031` | JBDeadline7Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdf911b...636031` | JBDeadline7Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf911b...636031` | JBDeadline7Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0061e5...651dcf` | JBDirectory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0061e5...651dcf` | JBDirectory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0061e5...651dcf` | JBDirectory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0061e5...651dcf` | JBDirectory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaeac45...be5d31` | JBERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaeac45...be5d31` | JBERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaeac45...be5d31` | JBERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaeac45...be5d31` | JBERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc702a...d91d53` | JBFeelessAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfc702a...d91d53` | JBFeelessAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfc702a...d91d53` | JBFeelessAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfc702a...d91d53` | JBFeelessAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a46b2...497ce7` | JBFundAccessLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3a46b2...497ce7` | JBFundAccessLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3a46b2...497ce7` | JBFundAccessLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3a46b2...497ce7` | JBFundAccessLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6fbf8d...9e138a` | JBMatchingPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6fbf8d...9e138a` | JBMatchingPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6fbf8d...9e138a` | JBMatchingPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6fbf8d...9e138a` | JBMatchingPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2db6d7...361846` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52869d...cd371c` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2db6d7...361846` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x52869d...cd371c` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2db6d7...361846` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52869d...cd371c` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2db6d7...361846` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x52869d...cd371c` | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x587bf8...c2fc71` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8f5ded...101590` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x587bf8...c2fc71` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8f5ded...101590` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x587bf8...c2fc71` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8f5ded...101590` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x587bf8...c2fc71` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8f5ded...101590` | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77cdb0...cc3057` | JBOptimismSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x77cdb0...cc3057` | JBOptimismSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04fd69...a7793d` | JBPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x04fd69...a7793d` | JBPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x04fd69...a7793d` | JBPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x04fd69...a7793d` | JBPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b90e5...e614c4` | JBPrices | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9b90e5...e614c4` | JBPrices | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9b90e5...e614c4` | JBPrices | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9b90e5...e614c4` | JBPrices | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x885f70...c8c1d4` | JBProjects | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x885f70...c8c1d4` | JBProjects | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x885f70...c8c1d4` | JBProjects | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x885f70...c8c1d4` | JBProjects | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x629228...6ab428` | JBRulesets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x629228...6ab428` | JBRulesets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x629228...6ab428` | JBRulesets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x629228...6ab428` | JBRulesets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd42570...14b056` | JBRulesets5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd42570...14b056` | JBRulesets5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd42570...14b056` | JBRulesets5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd42570...14b056` | JBRulesets5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7160a3...df3c5e` | JBSplits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7160a3...df3c5e` | JBSplits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7160a3...df3c5e` | JBSplits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7160a3...df3c5e` | JBSplits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07c8c5...24ece3` | JBSuckerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x07c8c5...24ece3` | JBSuckerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x07c8c5...24ece3` | JBSuckerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x07c8c5...24ece3` | JBSuckerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x259385...b145dd` | JBSwapTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x73d045...aad774` | JBSwapTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4fd73d...832edd` | JBSwapTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x483c9b...c752ad` | JBSwapTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x642f6f...378f80` | JBSwapTerminal5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7ba67a...f4a0ed` | JBSwapTerminal5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7e000e...bee8ab` | JBSwapTerminal5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x36379b...d99c08` | JBSwapTerminal5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1ce40d...167422` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60b4f5...e6a4f6` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1ce40d...167422` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x60b4f5...e6a4f6` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1ce40d...167422` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x60b4f5...e6a4f6` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ce40d...167422` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x60b4f5...e6a4f6` | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5cdfcf...a1d964` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe33b4...014744` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5cdfcf...a1d964` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfe33b4...014744` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5cdfcf...a1d964` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfe33b4...014744` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5cdfcf...a1d964` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfe33b4...014744` | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d0edd...e87636` | JBTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4d0edd...e87636` | JBTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4d0edd...e87636` | JBTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4d0edd...e87636` | JBTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ca27b...de251d` | REVDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2ca27b...de251d` | REVDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ca27b...de251d` | REVDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ca27b...de251d` | REVDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1880d8...d550bb` | REVLoans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1880d8...d550bb` | REVLoans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1880d8...d550bb` | REVLoans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1880d8...d550bb` | REVLoans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 201 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 13 ambiguous, 96 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=2, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [7040] 5.24.2022.md
- [11935] hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022
- [11936] hackmd.io/@berndartmueller/2023-01-juice-v3-migration
- [11937] code4rena.com/reports/2022-10-juicebox
- [11938] 2022-10-juicebox (GitHub directory)
- [11939] certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf
- [11940] code4rena.com/audits/2022-07-juicebox-v2-contest
- [11942] peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf
- [11943] code4rena.com/reports/2023-05-juicebox
- [27245] C4 Juicebox Buyback Delegate repository

Fork inheritance lineage and inherited audits are included when available.
