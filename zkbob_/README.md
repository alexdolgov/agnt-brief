# Agentic Audit Brief: zkBob_

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: zkBob_ (`zkbob_`)
- Website: [https://www.zkbob.com/](https://www.zkbob.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: goerli, optimism, polygon, sepolia
- Contract surface: 131 unique implementations (133 raw deployments)
- Coverage basis: 2/12 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $206,978.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkBob_. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across goerli, optimism, polygon, sepolia. Structural roles: 8 core, 3 supporting, 1 infra. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (8), supporting (3), infra (1)
- Contract kinds: contract (12)
- Detected standards: erc1967proxy (6), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x668c5286ead26fac5fa944887f9d2f20f7ddf289`, chain 137)
- UnnamedContract (`0x82907eaeb25d248dc82033e45b00a3e012ba2d0d`, chain 137)
- UnnamedContract (`0x8aeb89d5c689c2cf373fe8b56c7a0cd5bdc74ce6`, chain 137)
- UnnamedContract (`0x9a7b4198065efe631a962e737bdfe1f44f2cb3ee`, chain 137)
- UnnamedContract (`0xa86c511832ead78d30ad49711874a9f3a1dfb840`, chain 137)
- UnnamedContract (`0xb8580ea6312dd2311d72bc932b0354a07d974138`, chain 137)
- DelegatedDepositVerifier (`0x85afa00f38ad5f353c2b80985407b8e8a27ea38f`, chain 10)
- FiatTokenProxy (`0x0b2c639c533813f4aa9d7837caf62653d097ff85`, chain 10)
- TimelockController (`0x9ec9d8b2ff9b9f93d7ed3362d714d751b4f8982a`, chain 137)
- TransferVerifier (`0x7ad8d97c60bfb59e501e3b6c1d8e564b0bb8195d`, chain 10)
- TreeUpdateVerifier (`0x2c34afcb1c51796c3c0c7710c72a56eb72e1e81d`, chain 10)
- UChildERC20Proxy (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 10)
- ZkBobDirectDepositQueue (`0x15b8c75c024acba8c114c21f42eb515a762c0014`, chain 10)
- ZkBobDirectDepositQueueETH (`0x318e2c1f5f6ac4fdd5979e73d498342b255fc869`, chain 10)
- ZkBobPoolETH (`0x58320a55bbc5f89e5d0c92108f762ac0172c5992`, chain 10)
- ZkBobPoolUSDC (`0x1ca8c2b9b20e18e86d5b9a72370fc6c91814c97c`, chain 10)
- ZkBobPoolUSDCMigrated (`0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/12 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 40 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 18 of 131 unique; 113 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/39
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 131
- Raw deployments: 133
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 2 | 5.1% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ZkBobDirectDepositQueue | unknown | project_anchor | own_supporting | 1 | optimism | unit-263868 | `0x15b8c75c024acba8c114c21f42eb515a762c0014` | ✅ Audited |
| ZkBobPoolETH | unknown | project_anchor | own_supporting | 1 | optimism | unit-263866 | `0x58320a55bbc5f89e5d0c92108f762ac0172c5992` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbff0020638011357315302727ed55c5193a95f7b` | ⚠️ Unaudited |
| AllowListOperatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6cbe376af580bc2c718f710d0e3ab98feb3aaccb` | ⚠️ Unaudited |
| Base58 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x056295b97c743b3553e00a54a574da24a9551ad1` | ⚠️ Unaudited |
| BobToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82907eaeb25d248dc82033e45b00a3e012ba2d0d` | ⚠️ Unaudited |
| BobVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| DelegatedDepositVerifier | unknown | project_anchor | own_supporting | 0 | optimism | unit-263845 | `0x85afa00f38ad5f353c2b80985407b8e8a27ea38f` | ⚠️ Unaudited |
| EIP1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x1f9843c88efc073cb0e33b9e138cff5b9efa039b`; optimism `0x525b4e120ddc602ff055aa86803acd7d71f0c753` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | optimism | unit-263869 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70429f78c2d7d1de6f89be421bce64ba876c325b` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MutableOperatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b8c0b14aa7cb5a7cff3546415bbdcacd7c75a2e` | ⚠️ Unaudited |
| OPSupplyReductionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c28fb3aa25239e6a35a6a36757d38fe9303f21c` | ⚠️ Unaudited |
| SimpleKYCProviderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6cdf60c4097b8ef9f90bf70d2a2abd8b8caed78` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | polygon | unit-263860 | `0x9ec9d8b2ff9b9f93d7ed3362d714d751b4f8982a` | ⚠️ Unaudited |
| TransferVerifier | unknown | project_anchor | own_supporting | 0 | optimism | unit-263844 | `0x7ad8d97c60bfb59e501e3b6c1d8e564b0bb8195d` | ⚠️ Unaudited |
| TreeUpdateVerifier | unknown | project_anchor | own_supporting | 0 | optimism | unit-263842 | `0x2c34afcb1c51796c3c0c7710c72a56eb72e1e81d` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-263871 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-263843 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| ZkAddress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a165e27ebbd4da0c0c0eb851ac9cc78e0ec5283` | ⚠️ Unaudited |
| ZkBobAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf3d58f026642951990c0421964179c83e2c9c1b` | ⚠️ Unaudited |
| ZkBobDirectDepositQueueETH | unknown | project_anchor | own_supporting | 1 | optimism | unit-263867 | `0x318e2c1f5f6ac4fdd5979e73d498342b255fc869` | ⚠️ Unaudited |
| ZkBobPay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22299414e9e0e7663f8977a7ea6c1908f2167181` | ⚠️ Unaudited |
| ZkBobPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x00707bbab9dbb07b77df63dfabbafa192c09912b`; optimism `0x0ece04d62689c18b248229ae2c06d968c8a48b66` | ⚠️ Unaudited |
| ZkBobPoolUSDC | unknown | project_anchor | own_supporting | 1 | optimism | unit-263865 | `0x1ca8c2b9b20e18e86d5b9a72370fc6c91814c97c` | ⚠️ Unaudited |
| ZkBobPoolUSDCMigrated | unknown | project_anchor | own_supporting | 1 | polygon | unit-263870 | `0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x0043e6ff8032299616c770a264a9c6fd1157ef48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x28b531401ee3f17521b3772c13eaf3f86c2fe780` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x2b031c78cf958fc72e43f1fed75d70cead910a99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x2da1128639c2ad6ebf780364c299b1c8206ce6db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x31da60e61275dab3033986111df80477c6259860` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x351af131b080f9c458fa0f58b55ef32143d64492` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x3f6c6aaa1674e7178dbd521b1b65dbf61580f00d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x49661694a71b3dab9f25e86d5df2809b170c56e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x49cd0a25a0c453b70cf3ee71018875fc9fa39260` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x56c105d40f637ef3ac04905682b3daeff3f13d24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x6562a1ea6723be0224dc64843e7abf79e6a88c2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x7a5f24d03aa69f3ab02968cdca796a8b11e2527d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x7c95959192a92c3b1fb99cfe079be7cd8d31b03b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x8f7020dd968b7f8510d889ccdada4b041c4f3b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x97a4ab97028466fe67f18a6cd67559baabe391b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0x9c76fa2e25bdd7f4a2827434297538dff39d05d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xab76044aa1bd8e55461263ba7d25d122638dad6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xb4fbf271143f4fbf7b91a5ded31805e42b2208d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xb72e1e3ec1fbad9b2b5e35597e698027bd8f06e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xbae9d18a1d7f21b6b005d18ae49623a156c6f177` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xc45da11d73e6ba6c6b866b26feaae106406d95b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xcb84e60cf7dab1df405bf07113737c2b39d14799` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xcf6446deb67b2b56604657c67daf54f884412531` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xe4c77b7787cc116a5e1549c5bb36de07732100bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xf9dbcf4005497e042838de9082c817fca790e945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06b573c2bcd4dbd0c692727910f10d3912af330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18d8073b2dfbcd1d5ce5c19aa74bd257c0c329f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18f070bee0fd651f19b07bdeba9b7b2916d051ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c93ec00cc88d3b2a138f856ad3e4f26555c7852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25e6505297b44f4817538fb2d91b88e1cf841b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2db8370825104332065ef8c2a2243b948c92c936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33f6689917c8c561f6aa72efc0309e961717b106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5524e24bd944480def40cc69120cab066121e9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59cc168654dbb7f6874115bf47ac7312cecdb6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5eef7f755ff1a6e9ddd33e75c84a6888f6f43ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61a57f1c82da40e632c075d7812af375db23367c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c8fc6d273500d06da01ed517dd072a32df59088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7003efe90b741aca322851e4350786c63dcc953d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x716bb495284e0e22ff975021e0945b9183d902d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a8006ea0dda93c56e60187bd55109abff486c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x811c148d9b7753277d85a4c3c2bd71918ef4c72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x831b003398106153ed89a758bec9734667d18aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x84605ea206a1d5b39f13dc7add690dbd1e038525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x860513fbdc4b6b2b210e1d393be244f1d0b1babd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x87a82a4784d27c5462a22d667f2b218a9e8e3c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x889aed5204d9fb23c758588dcc7bfdf67302e9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8aeb89d5c689c2cf373fe8b56c7a0cd5bdc74ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d2415be576358d9aa65b4fd7a08635ea19f2eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f4127d3131789a9e2f7380af903f643d0ae721c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9224ee604e9b62f8e0a0e5824fee2e0df2ca902f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92b9da6fccfdc4b70fc02cf3f2fd291f599e7e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9586daca69f81083dae5d6210d3728ec72474d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98db3a72bef2145a8f8d8b94f81317341af2b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9bf586ceb3f3c1bebbe8b0262c2ae7d0952ce3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9fe5fc411789488b4ff033227e431ceecccf33b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xbe7d4e55d80fc3e67d80ebf988eb0e551cca4eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3f844cec31eeeae8b38a5dc29e73ea92b9f81b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd92b94d7555bcd11e56e71f7e1b9ac82eccea8e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xe4f2ab4ec79a0d23fb96489b57d558b637c68303` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xee174e75c206498649d04050528008020fceb88a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf321a98dffe0c790a84bbe754811f3918a431ab9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xf52e8c8ebde32495a9a79b61e0b91f65a71f343a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xf853e272893035a8c6a82616b7b442ab329d92d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xfc84d2963a1711c98ea7592c91bb207d75ed1040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263856 | `0x668c5286ead26fac5fa944887f9d2f20f7ddf289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263857 | `0x82907eaeb25d248dc82033e45b00a3e012ba2d0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263858 | `0x8aeb89d5c689c2cf373fe8b56c7a0cd5bdc74ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263859 | `0x9a7b4198065efe631a962e737bdfe1f44f2cb3ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263861 | `0xa86c511832ead78d30ad49711874a9f3a1dfb840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263862 | `0xb8580ea6312dd2311d72bc932b0354a07d974138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04aaafecee051bbb9517d95a25d0caf2f580af71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c34afcb1c51796c3c0c7710c72a56eb72e1e81d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263846 | `0x2c74b18e2f84b78ac67428d0c7a9898515f0c46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263847 | `0x3bd088c19960a8b5d72e4e01847791bd0dd1c9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a594aee27c68ae6b24f802df35c3cb7f1d9af68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263848 | `0x4b6f007a91c5733cd4f8bbec5ba5951f8303cdab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263849 | `0x5573d865cf113d44d219faf1b26f5785cb2ea3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ad8d97c60bfb59e501e3b6c1d8e564b0bb8195d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82907eaeb25d248dc82033e45b00a3e012ba2d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85afa00f38ad5f353c2b80985407b8e8a27ea38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x869e31b25f9c84354fe962cec2a0ec1468476925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x92b9da6fccfdc4b70fc02cf3f2fd291f599e7e02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263850 | `0x98db3a72bef2145a8f8d8b94f81317341af2b08c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263851 | `0xb5fe2f991db54b6c9362fe2ace8f78c9dd05277e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263852 | `0xb9988d599a64723462955bfc8441f1af90335796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd5621009949828a9654bd1a5f7aec8e6ad5b4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1ba0f646c8ec01d2647dfd2f52ac8e686d88ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc30016a4518cc2f945566c83c6efa0f72c57b6dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263854 | `0xe342ca03a553383c1983b892c24290c1ce1b614f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263855 | `0xe3dd183ffa70bcfc442a0b9991e682ca8a442ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9082b12bb1ff20e8749cd5ef9bd2b29c5ef5695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf87c261e6ca4b89af4c34a1e38194d8a17ee000f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 0
- Unknown liveness contracts: 54
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=6, unverified unclassified=48

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0xbe7d4e55d80fc3e67d80ebf988eb0e551cca4eb7` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| exact address book overlap | UnnamedContract<br>`0xe4f2ab4ec79a0d23fb96489b57d558b637c68303` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| exact address book overlap | UnnamedContract<br>`0xee174e75c206498649d04050528008020fceb88a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| exact address book overlap | UnnamedContract<br>`0xf52e8c8ebde32495a9a79b61e0b91f65a71f343a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| exact address book overlap | UnnamedContract<br>`0xf853e272893035a8c6a82616b7b442ab329d92d9` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| exact address book overlap | UnnamedContract<br>`0xfc84d2963a1711c98ea7592c91bb207d75ed1040` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x06b573c2bcd4dbd0c692727910f10d3912af330c` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0x0ece04d62689c18b248229ae2c06d968c8a48b66` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x18d8073b2dfbcd1d5ce5c19aa74bd257c0c329f3` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x18f070bee0fd651f19b07bdeba9b7b2916d051ba` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x1c93ec00cc88d3b2a138f856ad3e4f26555c7852` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x25e6505297b44f4817538fb2d91b88e1cf841b54` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x2db8370825104332065ef8c2a2243b948c92c936` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x33f6689917c8c561f6aa72efc0309e961717b106` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x525b4e120ddc602ff055aa86803acd7d71f0c753` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x5524e24bd944480def40cc69120cab066121e9fc` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x59cc168654dbb7f6874115bf47ac7312cecdb6de` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x5eef7f755ff1a6e9ddd33e75c84a6888f6f43ed4` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x61a57f1c82da40e632c075d7812af375db23367c` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x6c8fc6d273500d06da01ed517dd072a32df59088` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x7003efe90b741aca322851e4350786c63dcc953d` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x716bb495284e0e22ff975021e0945b9183d902d7` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x7a8006ea0dda93c56e60187bd55109abff486c6f` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x811c148d9b7753277d85a4c3c2bd71918ef4c72a` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x831b003398106153ed89a758bec9734667d18aec` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x84605ea206a1d5b39f13dc7add690dbd1e038525` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x860513fbdc4b6b2b210e1d393be244f1d0b1babd` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x87a82a4784d27c5462a22d667f2b218a9e8e3c8d` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x889aed5204d9fb23c758588dcc7bfdf67302e9d7` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x8aeb89d5c689c2cf373fe8b56c7a0cd5bdc74ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x8d2415be576358d9aa65b4fd7a08635ea19f2eeb` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x8f4127d3131789a9e2f7380af903f643d0ae721c` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x9224ee604e9b62f8e0a0e5824fee2e0df2ca902f` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x92b9da6fccfdc4b70fc02cf3f2fd291f599e7e02` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x9586daca69f81083dae5d6210d3728ec72474d7f` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x98db3a72bef2145a8f8d8b94f81317341af2b08c` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x9bf586ceb3f3c1bebbe8b0262c2ae7d0952ce3b1` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x9fe5fc411789488b4ff033227e431ceecccf33b4` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xc3f844cec31eeeae8b38a5dc29e73ea92b9f81b4` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xd92b94d7555bcd11e56e71f7e1b9ac82eccea8e0` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xf321a98dffe0c790a84bbe754811f3918a431ab9` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x04aaafecee051bbb9517d95a25d0caf2f580af71` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x2c34afcb1c51796c3c0c7710c72a56eb72e1e81d` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x4a594aee27c68ae6b24f802df35c3cb7f1d9af68` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x7ad8d97c60bfb59e501e3b6c1d8e564b0bb8195d` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x82907eaeb25d248dc82033e45b00a3e012ba2d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x85afa00f38ad5f353c2b80985407b8e8a27ea38f` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x869e31b25f9c84354fe962cec2a0ec1468476925` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0x92b9da6fccfdc4b70fc02cf3f2fd291f599e7e02` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xbd5621009949828a9654bd1a5f7aec8e6ad5b4ce` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xc1ba0f646c8ec01d2647dfd2f52ac8e686d88ff4` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xc30016a4518cc2f945566c83c6efa0f72c57b6dd` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xe9082b12bb1ff20e8749cd5ef9bd2b29c5ef5695` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |
| unverified unclassified | UnnamedContract<br>`0xf87c261e6ca4b89af4c34a1e38194d8a17ee000f` | non_address_book | unknown | unknown | unverified | n/a | `0x39f0bd56c1439a22ee90b4972c16b7868d161981` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf](https://github.com/zkBob/zkbob-contracts/blob/master/audit/chainsecurity/BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf](https://github.com/zkBob/zkbob-contracts/blob/master/audit/decurity/BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf) | Decurity | Audit | 2023-01 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 37 | high |
| [ChainSecurity_BOB_Protocol_zkBob_audit.pdf](https://old.chainsecurity.com/wp-content/uploads/2023/01/ChainSecurity_BOB_Protocol_zkBob_audit.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [final audit report](https://www.chainsecurity.com/security-audit/zkbob-smart-contracts-security-audit) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21485] BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf — no match: Scope section explicitly lists three main contracts and 19 dependencies. Date from cover page.
- [21486] BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf — matched: Extracted contract names from the scope section (page 4) and findings tables. Audit date is the end of the audit period (05/01/2023).
- [21487] ChainSecurity_BOB_Protocol_zkBob_audit.pdf — no match: Extracted 22 contract names from scope table and dependencies list. Audit date from cover page.
- [28618] final audit report — no match: The provided text is a summary/overview of an audit report for zkBob smart contracts, but it does not contain a scope section or list of specific contract names. The only mention is 'BOB Protocol' and 'BOB ERC20 stablecoin token', which are not contract names. No file paths or contract names are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ZkBobPool | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | BobToken | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | BobVault | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | EIP1967Admin | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | BaseERC20 | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ERC20Blocklist | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ERC20MintBurn | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ERC20Permit | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ERC20Recovery | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ERC677 | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | Claimable | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | EIP712 | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | Ownable | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | Sacrifice | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | UniswapV3Seller | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | AAVEYieldImplementation | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | YieldConnector | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | MutableOperatorManager | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | SimpleOperatorManager | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | CustomABIDecoder | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | Parameters | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf | ZkBobAccounting | unmatched — not counted | — | listed in scope dependencies | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | BalancedMinter | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | Bot | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ZkBobAccounting | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ZkBobDirectDepositQueue | own proxy deployment | ZkBobDirectDepositQueue (proxy) (selected) `0x15b8c75c024acba8c114c21f42eb515a762c0014` — deployed 2023-04-05 16:41:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | MutableOperatorManager | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | SimpleOperatorManager | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | UniswapV3Seller | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | BaseMinter | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | FlashMinter | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | SurplusMinter | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | UniV3Oracle | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | QuickswapV3Oracle | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC20Recovery | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ZkBobPool | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ZkBobPoolETH | own proxy deployment | ZkBobPoolETH (proxy) (selected) `0x58320a55bbc5f89e5d0c92108f762ac0172c5992` — deployed 2023-06-27 18:39:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | BobVault | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | EIP1967Admin | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | EIP1967Proxy | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | BaseERC20 | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC20Blocklist | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC20MintBurn | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC20Permit | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC677 | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | Claimable | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | AAVEYieldImplementation | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | YieldConnector | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | SimpleKYCProviderManager | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | KycProvidersManagerStorage | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC721 | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ERC721Enumerable | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | DebtMinter | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | FaucetMinter | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ZkAddress | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | EIP712 | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | VaultAccessControl | unmatched — not counted | — | listed in scope table | no |
| BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf | ICDP | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ZkBobPool | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | BobToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | BobVault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | EIP1967Admin | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | BaseERC20 | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ERC20Blocklist | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ERC20MintBurn | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ERC20Permit | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ERC20Recovery | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ERC677 | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | Claimable | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | EIP712 | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | Ownable | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | Sacrifice | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | UniswapV3Seller | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | AAVEYieldImplementation | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | YieldConnector | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | MutableOperatorManager | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | SimpleOperatorManager | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | CustomABIDecoder | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | Parameters | unmatched — not counted | — | listed in scope dependencies | no |
| ChainSecurity_BOB_Protocol_zkBob_audit.pdf | ZkBobAccounting | unmatched — not counted | — | listed in scope dependencies | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x85afa00f38ad5f353c2b80985407b8e8a27ea38f` | DelegatedDepositVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7ad8d97c60bfb59e501e3b6c1d8e564b0bb8195d` | TransferVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2c34afcb1c51796c3c0c7710c72a56eb72e1e81d` | TreeUpdateVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000006` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x318e2c1f5f6ac4fdd5979e73d498342b255fc869` | ZkBobDirectDepositQueueETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1ca8c2b9b20e18e86d5b9a72370fc6c91814c97c` | ZkBobPoolUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb` | ZkBobPoolUSDCMigrated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [21485] BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf
- [21487] ChainSecurity_BOB_Protocol_zkBob_audit.pdf
- [28618] final audit report

Fork inheritance lineage and inherited audits are included when available.
