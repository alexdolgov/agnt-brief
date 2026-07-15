# Agentic Audit Brief: AirPuff

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: AirPuff (`airpuff`)
- Website: [https://www.airpuff.io](https://www.airpuff.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, mantle, mode
- Contract surface: 183 unique implementations (183 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $432,648.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for AirPuff in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 183 discovered implementations shown in the inventory but excluded from coverage (19 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/183
- Verified + Unaudited implementations: 183
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 183
- Raw deployments: 183
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (183)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121173 | `0xc6f89c...622d8f` | ⚠️ Unaudited |
| AddressMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121206 | `0x3ff715...78998f` | ⚠️ Unaudited |
| AirPuff1XAPUFF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121099 | `0x17bf16...04177f` | ⚠️ Unaudited |
| AirPuff1XEmmETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121265 | `0x239661...9efc3f` | ⚠️ Unaudited |
| AirPuff1XETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121259 | `0x43d10b...0bdbb5` | ⚠️ Unaudited |
| AirPuff1XezETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-121272 | `0x0bac1a...cff781` | ⚠️ Unaudited |
| AirPuff1XezETH26DEC2024M | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121123 | `0x3d4673...e55ae8` | ⚠️ Unaudited |
| AirPuff1XezETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121270 | `0xa6550c...c558f5` | ⚠️ Unaudited |
| AirPuff1XezETHM260924 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121148 | `0x73996a...c1bab0` | ⚠️ Unaudited |
| AirPuff1XkrsETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121269 | `0x9c70d4...446f88` | ⚠️ Unaudited |
| AirPuff1XmstETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121129 | `0x4f3925...d6ec75` | ⚠️ Unaudited |
| AirPuff1XmswETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121250 | `0x110019...fe572c` | ⚠️ Unaudited |
| AirPuff1XmwbETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121157 | `0x932af7...a652d8` | ⚠️ Unaudited |
| AirPuff1XPtENAM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121180 | `0xde69fb...88bcfd` | ⚠️ Unaudited |
| AirPuff1XPtUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121118 | `0x37710e...eddee7` | ⚠️ Unaudited |
| AirPuff1XrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121246 | `0x15a692...120843` | ⚠️ Unaudited |
| AirPuff1XrsETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121154 | `0x83a162...a9e29f` | ⚠️ Unaudited |
| AirPuff1XrsETHM260924 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121254 | `0x76338f...17c634` | ⚠️ Unaudited |
| AirPuff1XrswETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121257 | `0x9977ee...64e2f5` | ⚠️ Unaudited |
| AirPuff1XStakingezETHM220824 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121093 | `0x0c18d2...79f8c3` | ⚠️ Unaudited |
| AirPuff1XstTAOM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121266 | `0xc9710e...5212b5` | ⚠️ Unaudited |
| AirPuff1XsvETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121251 | `0x060fea...65247f` | ⚠️ Unaudited |
| AirPuff1XuniETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121127 | `0x4d35b4...efb410` | ⚠️ Unaudited |
| AirPuff1XUSDeM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121258 | `0x1f53c5...a7c0c2` | ⚠️ Unaudited |
| AirPuff1XweETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121189 | `0x0cdf98...39ab23` | ⚠️ Unaudited |
| AirPuff1XweETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121153 | `0x83886a...8a6ac4` | ⚠️ Unaudited |
| AirPuff1XweETHM260924 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121159 | `0x9988bf...ff8850` | ⚠️ Unaudited |
| AirPuff1XZircuitrsETHM220824 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121138 | `0x67cb2a...31d372` | ⚠️ Unaudited |
| AirPuff1XZircuitweETHM220824 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121260 | `0x1692de...f1695e` | ⚠️ Unaudited |
| AirPuffClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121106 | `0x278c59...2738e8` | ⚠️ Unaudited |
| AirPuffHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-121274 | `0x15f6cb...d57133` | ⚠️ Unaudited |
| AirPuffLendingARB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-121275 | `0x529f94...217517` | ⚠️ Unaudited |
| AirPuffLendingETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121081 | `0x025347...d38ad8` | ⚠️ Unaudited |
| AirPuffLendingUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121195 | `0x38583d...b8b7a6` | ⚠️ Unaudited |
| AirPuffLendingUSDCe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121197 | `0x3b9e25...f89c27` | ⚠️ Unaudited |
| AirPuffLendingUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121191 | `0x17e9d6...3aab04` | ⚠️ Unaudited |
| AirPuffLendingwstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121187 | `0x064559...5ca834` | ⚠️ Unaudited |
| AirPuffptezETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121262 | `0x679eb9...bfebd6` | ⚠️ Unaudited |
| AirPuffptrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121256 | `0x72da01...c493ad` | ⚠️ Unaudited |
| AirPuffptweETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121083 | `0x02c888...d2e93b` | ⚠️ Unaudited |
| AirPuffVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121188 | `0x0770c1...94db6d` | ⚠️ Unaudited |
| AirPuffVaultEPM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121110 | `0x2baff9...e42b75` | ⚠️ Unaudited |
| AirPuffVaultezETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121192 | `0x2a678f...435673` | ⚠️ Unaudited |
| AirPuffVaultezETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121105 | `0x252951...7b338c` | ⚠️ Unaudited |
| AirPuffVaultLiquidM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121082 | `0x029ec2...ea8f4f` | ⚠️ Unaudited |
| AirPuffVaultMNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121202 | `0x1002c6...cb4cec` | ⚠️ Unaudited |
| AirPuffVaultrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121196 | `0x3a30b3...f1a8c5` | ⚠️ Unaudited |
| AirPuffVaultrsETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121080 | `0x0219e8...04561a` | ⚠️ Unaudited |
| AirPuffVaultsUSDEM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121139 | `0x686e7e...eeb554` | ⚠️ Unaudited |
| AirPuffVaultuniETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121089 | `0x0934a8...5034b8` | ⚠️ Unaudited |
| AirPuffVaultVectorM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121158 | `0x97fa26...567768` | ⚠️ Unaudited |
| AirPuffVaultweETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121190 | `0x123b00...6ef4a6` | ⚠️ Unaudited |
| AirPuffVaultweETHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121107 | `0x298144...3219f3` | ⚠️ Unaudited |
| AllocateRegister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121201 | `0x0c2b8c...200cf2` | ⚠️ Unaudited |
| ApuffToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121193 | `0x2be056...5307d9` | ⚠️ Unaudited |
| ApuffTokenMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121111 | `0x2be056...5307d9` | ⚠️ Unaudited |
| ApxETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121124 | `0x440d08...02d239` | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121182 | `0xe12eef...faa54a` | ⚠️ Unaudited |
| AtomicQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121177 | `0xd45884...5dea07` | ⚠️ Unaudited |
| AtomicSolverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121132 | `0x5b744e...1a2d7a` | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121094 | `0x0f3f8c...2bb162` | ⚠️ Unaudited |
| BoringVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121174 | `0xc79cc4...5952ea` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121100 | `0x17ea3d...908ee1` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121152 | `0x7c3f1f...465c95` | ⚠️ Unaudited |
| CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121248 | `0xea1a63...06a221` | ⚠️ Unaudited |
| ChefIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121194 | `0x35dd41...6aa7d8` | ⚠️ Unaudited |
| Conversion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121210 | `0x57f4c0...9ff713` | ⚠️ Unaudited |
| DapiProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121096 | `0x1250bb...1aa67d` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121147 | `0x720081...eb859d` | ⚠️ Unaudited |
| Dinero | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121144 | `0x6df0e6...0c14d3` | ⚠️ Unaudited |
| DineroOFTLockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121103 | `0x1cd5b7...cef208` | ⚠️ Unaudited |
| directBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121095 | `0x11964b...09954b` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121146 | `0x704a2f...9481ee` | ⚠️ Unaudited |
| DirectStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121088 | `0x07a5d3...0eef57` | ⚠️ Unaudited |
| DistributeYieldERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121218 | `0x713db7...c67d56` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121175 | `0xc93ab6...6a21b3` | ⚠️ Unaudited |
| eEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121128 | `0x4ec6e3...740d5b` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121198 | `0x7b0378...354951` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121200 | `0x012aa8...f8510f` | ⚠️ Unaudited |
| EmptyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121220 | `0x7a3c0c...62cebb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | mantle | unit-121278 | `0x6199cc...82f58e` | ⚠️ Unaudited |
| ERC20Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121150 | `0x7a5b17...81331d` | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121167 | `0xb1761a...a681e2` | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121161 | `0x9d3eb5...8014b0` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121163 | `0xa3a30f...85b1ae` | ⚠️ Unaudited |
| FeesAndReserves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121155 | `0x8a2295...02ec74` | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121134 | `0x5d84ec...b358da` | ⚠️ Unaudited |
| Fiat24CardAuthorizationMarqeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121204 | `0x1b56ea...017821` | ⚠️ Unaudited |
| Fiat24CryptoDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121205 | `0x31b6f0...349f74` | ⚠️ Unaudited |
| Fiat24CryptoRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121232 | `0xcb9176...46d450` | ⚠️ Unaudited |
| gVEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121168 | `0xb2d007...dfa2e6` | ⚠️ Unaudited |
| gVECOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121170 | `0xc00a7e...036057` | ⚠️ Unaudited |
| IncentiveDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121184 | `0xf0164d...0f8780` | ⚠️ Unaudited |
| L2cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121211 | `0x5a7b3c...4ca033` | ⚠️ Unaudited |
| L2Cook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121208 | `0x4a5982...a5e28b` | ⚠️ Unaudited |
| L2CookMessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121240 | `0xfcbbf8...39bec0` | ⚠️ Unaudited |
| L2MessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121236 | `0xf9ca01...edcb81` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121084 | `0x048a50...4d0a17` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121212 | `0x6c0766...79545d` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121207 | `0x47501d...9cdcc5` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121104 | `0x218c92...371e63` | ⚠️ Unaudited |
| MJAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121238 | `0xf9e5cb...09bc72` | ⚠️ Unaudited |
| MntStakeV2Contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121228 | `0x9f39dc...0d1e4f` | ⚠️ Unaudited |
| MsgReceiveEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-121199 | `0x90272f...15a595` | ⚠️ Unaudited |
| MsgSendEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121141 | `0x690090...ab62f8` | ⚠️ Unaudited |
| MShards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121234 | `0xd7782b...dbb111` | ⚠️ Unaudited |
| OneInchAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121135 | `0x5f7de9...c58d43` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121097 | `0x15f120...eb44fc` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121224 | `0x8255c1...ab503b` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-121090 | `0x094be6...3d7e67` | ⚠️ Unaudited |
| PirexEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121178 | `0xd664b7...8b02b0` | ⚠️ Unaudited |
| PirexFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121098 | `0x177d68...717fdb` | ⚠️ Unaudited |
| PodOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121092 | `0x0ac774...e76f52` | ⚠️ Unaudited |
| PowderMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121216 | `0x7083c5...c479ea` | ⚠️ Unaudited |
| PriceProviderMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121160 | `0x9c9082...268e1c` | ⚠️ Unaudited |
| PriceProviderSide | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-121276 | `0x1019cd...a931ec` | ⚠️ Unaudited |
| PriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121142 | `0x693799...a4fff5` | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121181 | `0xdfb286...e42524` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-121091 | `0x0aa581...b078c0` | ⚠️ Unaudited |
| pxETHvETHBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121086 | `0x054b28...dec947` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121140 | `0x6882ae...57497d` | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-121179 | `0xdb4b77...63ae84` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121120 | `0x37912f...059bbd` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121085 | `0x04f744...b7b5c0` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121108 | `0x29b06c...50a415` | ⚠️ Unaudited |
| RewardRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121176 | `0xcd6152...c76b78` | ⚠️ Unaudited |
| RockXETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121116 | `0x3376eb...61514a` | ⚠️ Unaudited |
| RockXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121119 | `0x3774af...4ba818` | ⚠️ Unaudited |
| RockXRestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121117 | `0x351eea...69a098` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121143 | `0x6a4abb...c67d73` | ⚠️ Unaudited |
| RSClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121222 | `0x7c7219...9668c3` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121101 | `0x18d0d9...d021b5` | ⚠️ Unaudited |
| StakedDinero | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121115 | `0x2f412f...94a0e0` | ⚠️ Unaudited |
| StakedVectorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121137 | `0x6733f0...0fd2bc` | ⚠️ Unaudited |
| StakedVECVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121130 | `0x5291d0...5d26a0` | ⚠️ Unaudited |
| StakingCOOK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121209 | `0x4b7485...2c5159` | ⚠️ Unaudited |
| StakingMETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121203 | `0x1766be...9d3b82` | ⚠️ Unaudited |
| StakingMNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121226 | `0x9cdbde...ddad9b` | ⚠️ Unaudited |
| SubRedManagementAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121214 | `0x6d827c...ddbb40` | ⚠️ Unaudited |
| sVEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121136 | `0x66d5c6...9b3365` | ⚠️ Unaudited |
| sVECVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121156 | `0x91c894...812733` | ⚠️ Unaudited |
| svETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121166 | `0xad4bfa...7a1879` | ⚠️ Unaudited |
| svETHZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121145 | `0x6e2875...ec1314` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121169 | `0xbbe07e...a6c125` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-121131 | `0x55148d...13924c` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121109 | `0x2baf3a...77f117` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121185 | `0xf0ab75...bc342b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121263 | `0x004e9c...350568` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121244 | `0x02e3e2...af25ea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121242 | `0x047d41...10d6da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121261 | `0x1419b4...0e3386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121252 | `0x2ec37d...8f6646` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121267 | `0x4befa2...269e9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121255 | `0x552b0c...42fa05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121253 | `0xa1290d...99e5a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-121268 | `0xe54291...abc716` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | mantle | unit-121277 | `0x004560...c24296` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | mantle | unit-121279 | `0x067e07...eb257b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | mantle | unit-121280 | `0x08ccf7...d5c978` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | mantle | unit-121281 | `0xca4a76...3b6d54` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-121271 | `0x04528d...3f8520` | ⚠️ Unaudited |
| UniV3LiquidityFreezer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121264 | `0x2805b7...88646d` | ⚠️ Unaudited |
| UpxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121133 | `0x5bf241...c43868` | ⚠️ Unaudited |
| ValidatorQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121162 | `0x9e0d7d...c0bbdb` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121087 | `0x078452...98880e` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-121230 | `0xaa5c9c...454840` | ⚠️ Unaudited |
| VECStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121186 | `0xfdc28c...9be9b1` | ⚠️ Unaudited |
| Vector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121102 | `0x1bb9b6...5d8447` | ⚠️ Unaudited |
| VectorBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121122 | `0x3abcf9...13c969` | ⚠️ Unaudited |
| VectorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121121 | `0x38d64c...6fb4a0` | ⚠️ Unaudited |
| VectorETHManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121112 | `0x2d476b...476bcf` | ⚠️ Unaudited |
| VectorOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121171 | `0xc2afda...a9527d` | ⚠️ Unaudited |
| VectorTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121113 | `0x2dd568...371064` | ⚠️ Unaudited |
| VectorVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121165 | `0xaa9d91...f88a8c` | ⚠️ Unaudited |
| VECVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121151 | `0x7abcfd...75f1f8` | ⚠️ Unaudited |
| vETHOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121164 | `0xa508e8...4107b0` | ⚠️ Unaudited |
| VeTokenChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121114 | `0x2e8147...adeb6d` | ⚠️ Unaudited |
| VotingEscrowMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121125 | `0x476319...ac4369` | ⚠️ Unaudited |
| VotingEscrowSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-121273 | `0x56153f...eb0464` | ⚠️ Unaudited |
| weEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121149 | `0x78e593...fd7535` | ⚠️ Unaudited |
| WrappedFeedPXETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121183 | `0xe463e9...7ff4e9` | ⚠️ Unaudited |
| WstEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121172 | `0xc5a3cb...c46d35` | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121126 | `0x497bbe...eecfc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CD Security Audit Report](https://github.com/Airpuff/Audit-Report/blob/main/AirPuff-Report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Zokyo Audit Report](https://github.com/Airpuff/Audit-Report/blob/main/Zokyo%20Audit%20Report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19404] CD Security Audit Report — no match: Scope section says 'contracts/*' but only AirPuffHandler is explicitly named in findings. Other contracts may exist but are not named.
- [19405] Zokyo Audit Report — no match: The audit report explicitly lists AirPuffLendingARB, AirPuffHandler, and AirPuffVault as the contracts in scope. The date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CD Security Audit Report | AirPuffHandler | unmatched — not counted | — | mentioned in finding M-01 as AirPuffHandler::getLatestData | no |
| Zokyo Audit Report | AirPuffLendingARB | unmatched — not counted | — | listed in scope and described in protocol overview | no |
| Zokyo Audit Report | AirPuffHandler | unmatched — not counted | — | listed in scope and described in protocol overview | no |
| Zokyo Audit Report | AirPuffVault | unmatched — not counted | — | listed in scope and described in protocol overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 164 |
| upstream | 2 |
| standard_library | 17 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19404] CD Security Audit Report
- [19405] Zokyo Audit Report

Fork inheritance lineage and inherited audits are included when available.
