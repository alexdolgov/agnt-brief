# Agentic Audit Brief: zkBob_

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: zkBob_ (`zkbob_`)
- Website: [https://www.zkbob.com/](https://www.zkbob.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: optimism, polygon, sepolia
- Contract surface: 54 unique implementations (54 raw deployments)
- Coverage basis: 2/12 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $206,978.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkBob_. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across optimism, polygon, sepolia. Structural roles: 8 core, 3 supporting, 1 infra. 6 row(s) use upgradeable patterns.

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
- Address-book implementation classification: 18 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 18 of 54 unique; 36 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/39
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 54
- Raw deployments: 54
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
| EIP1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1f9843c88efc073cb0e33b9e138cff5b9efa039b` | ⚠️ Unaudited |
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
| ZkBobPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x00707bbab9dbb07b77df63dfabbafa192c09912b` | ⚠️ Unaudited |
| ZkBobPoolUSDC | unknown | project_anchor | own_supporting | 1 | optimism | unit-263865 | `0x1ca8c2b9b20e18e86d5b9a72370fc6c91814c97c` | ⚠️ Unaudited |
| ZkBobPoolUSDCMigrated | unknown | project_anchor | own_supporting | 1 | polygon | unit-263870 | `0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263856 | `0x668c5286ead26fac5fa944887f9d2f20f7ddf289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263857 | `0x82907eaeb25d248dc82033e45b00a3e012ba2d0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263858 | `0x8aeb89d5c689c2cf373fe8b56c7a0cd5bdc74ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263859 | `0x9a7b4198065efe631a962e737bdfe1f44f2cb3ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263861 | `0xa86c511832ead78d30ad49711874a9f3a1dfb840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263862 | `0xb8580ea6312dd2311d72bc932b0354a07d974138` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263846 | `0x2c74b18e2f84b78ac67428d0c7a9898515f0c46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263847 | `0x3bd088c19960a8b5d72e4e01847791bd0dd1c9e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263848 | `0x4b6f007a91c5733cd4f8bbec5ba5951f8303cdab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263849 | `0x5573d865cf113d44d219faf1b26f5785cb2ea3ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263850 | `0x98db3a72bef2145a8f8d8b94f81317341af2b08c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263851 | `0xb5fe2f991db54b6c9362fe2ace8f78c9dd05277e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263852 | `0xb9988d599a64723462955bfc8441f1af90335796` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263854 | `0xe342ca03a553383c1983b892c24290c1ce1b614f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263855 | `0xe3dd183ffa70bcfc442a0b9991e682ca8a442ade` | ❓ Unverified |

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
| needs_review | 15 |

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
