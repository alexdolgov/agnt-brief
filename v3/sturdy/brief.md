# Agentic Audit Brief: Sturdy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sturdy (`sturdy`)
- Website: [https://sturdy.finance/](https://sturdy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 57 unique implementations (66 raw deployments)
- Coverage basis: 0/38 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $364,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sturdy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 46 contract row(s) across ethereum. Structural roles: 26 unclassified, 12 core, 6 supporting, 2 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 46
- Structural roles: unclassified (26), core (12), supporting (6), infra (2)
- Contract kinds: contract (35), abstract (8), unclassified (3)
- Detected standards: ownable (4), erc20permit (1)
- Frameworks: openzeppelin (19), chainlink (2), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 55 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x28bba0...097966`, chain 1)
- UnnamedContract (`0x2ca52c...c3f166`, chain 1)
- UnnamedContract (`0x423559...f6f318`, chain 1)
- UnnamedContract (`0x5630d6...f469fb`, chain 1)
- UnnamedContract (`0x72d6b1...32958a`, chain 1)
- UnnamedContract (`0x73e4c1...e54523`, chain 1)
- UnnamedContract (`0x7578f3...990091`, chain 1)
- UnnamedContract (`0x9a8175...8af1c2`, chain 1)
- UnnamedContract (`0x9b0afd...290b99`, chain 1)
- UnnamedContract (`0x9c1737...dae537`, chain 1)
- UnnamedContract (`0x9c7e7d...b0804f`, chain 1)
- UnnamedContract (`0xa25f4c...2ef11f`, chain 1)
- UnnamedContract (`0xacdbcd...b26b76`, chain 1)
- UnnamedContract (`0xbd1290...2005f1`, chain 1)
- UnnamedContract (`0xbd564b...bce383`, chain 1)
- UnnamedContract (`0xbf91fb...a9877d`, chain 1)
- UnnamedContract (`0xc7a65e...ad97dd`, chain 1)
- UnnamedContract (`0xcfb23d...88945e`, chain 1)
- UnnamedContract (`0xd1eed9...e65006`, chain 1)
- UnnamedContract (`0xef9e51...ef7d53`, chain 1)
- AggregatorDataProvider (`0x69764e...68cc9e`, chain 1)
- AggregatorFactory (`0x7520aa...647c51`, chain 1)
- AprOracle (`0xf7be73...f41a4d`, chain 1)
- BalancerswapAdapter (`0xdad951...077cdb`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0x680f85...0d1a2d`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0x6f7c66...c76adc`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0xa460cc...06d213`, chain 1)
- CrvUSDYvMkUSDCrvUSDOracle (`0xe0dd70...49f5f0`, chain 1)
- CurveswapAdapter (`0x4827b1...2402a7`, chain 1)
- ERC4626Oracle (`0x3723d7...c3e57d`, chain 1)
- ERC4626Oracle (`0xa34fe4...6f17ad`, chain 1)
- IncentiveDistributor (`0x94c120...40d39d`, chain 1)
- RewardConfig (`0x169a80...8fc05a`, chain 1)
- SturdyPairDeployer (`0x797b17...2b2d2f`, chain 1)
- SturdyPairRegistry (`0xd57742...794a3b`, chain 1)
- SturdySiloAprOracle (`0x1b05ce...48fbad`, chain 1)
- SturdySiloStrategy (`0x066909...288124`, chain 1)
- SturdySiloStrategy (`0x076d2b...783cab`, chain 1)
- SturdySiloStrategy (`0x0dd49c...02fd8f`, chain 1)
- SturdySiloStrategy (`0x200723...b1a04b`, chain 1)
- SturdySiloStrategy (`0x26fe40...16ac88`, chain 1)
- SturdySiloStrategy (`0x4e72fc...c4d883`, chain 1)
- SturdySiloStrategy (`0x6311ff...8e5227`, chain 1)
- SturdySiloStrategy (`0x8dde9a...08c84d`, chain 1)
- SturdySiloStrategy (`0xd002dc...b81bd2`, chain 1)
- SturdyWhitelist (`0xf0382a...c120ec`, chain 1)
- Token (`0xaeb360...54309a`, chain 1)
- UniswapAdapter (`0xd23bfa...cf5818`, chain 1)
- VariableInterestRate (`0x1f081b...4cdf24`, chain 1)
- VariableInterestRate (`0x31993d...3459f3`, chain 1)
- VariableInterestRate (`0x7e4859...51fb0e`, chain 1)
- VariableInterestRate (`0x8ae2f8...dfaeb6`, chain 1)
- VariableInterestRate (`0xa5961b...580832`, chain 1)
- VariableInterestRate (`0xcc46dc...d1532e`, chain 1)
- VariableInterestRate (`0xf4386d...d81ac6`, chain 1)

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 46 (46 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 57/57 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/38 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 57 of 57 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 57
- Raw deployments: 66
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorDataProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393213 | `0x69764e...68cc9e` | ⚠️ Unaudited |
| AggregatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393217 | `0x7520aa...647c51` | ⚠️ Unaudited |
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393251 | `0xf7be73...f41a4d` | ⚠️ Unaudited |
| BalancerswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393245 | `0xdad951...077cdb` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393212 | `0x680f85...0d1a2d` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393214 | `0x6f7c66...c76adc` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393230 | `0xa460cc...06d213` | ⚠️ Unaudited |
| CrvUSDYvMkUSDCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393247 | `0xe0dd70...49f5f0` | ⚠️ Unaudited |
| CurveswapAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393253 | 2 deployments: ethereum `0x4827b1...2402a7`; ethereum `0xef9e51...ef7d53` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393207 | `0x3f1e01...066063` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393210 | `0x5528c5...423075` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393239 | `0xcc06b0...a8f521` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393249 | `0xf2d6c5...4bdade` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393202 | `0x1f4b81...7c9ead` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393206 | `0x3723d7...c3e57d` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393229 | `0xa34fe4...6f17ad` | ⚠️ Unaudited |
| ETHSWETHOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393252 | `0xfef192...baa185` | ⚠️ Unaudited |
| IncentiveDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393222 | `0x94c120...40d39d` | ⚠️ Unaudited |
| PxETHYvStETHPxETHOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393198 | `0x0d3fc4...b8178b` | ⚠️ Unaudited |
| RewardConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393199 | `0x169a80...8fc05a` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393209 | `0x4d07a5...f4bed3` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393223 | `0x987a70...6b8ae5` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393238 | `0xc7e667...354c1a` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393246 | `0xde9e69...a92aed` | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393219 | `0x797b17...2b2d2f` | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393244 | `0xd57742...794a3b` | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393200 | `0x1b05ce...48fbad` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393248 | `0xf0382a...c120ec` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | ethereum | unit-393233 | `0xaeb360...54309a` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 9 | ethereum | unit-393254 (9 proxies) | 9 deployments: ethereum `0x066909...288124`; ethereum `0x076d2b...783cab`; ethereum `0x0dd49c...02fd8f`; ethereum `0x200723...b1a04b`; ethereum `0x26fe40...16ac88`; ethereum `0x4e72fc...c4d883`; ethereum `0x6311ff...8e5227`; ethereum `0x8dde9a...08c84d`; ethereum `0xd002dc...b81bd2` | ⚠️ Unaudited |
| UniswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393243 | `0xd23bfa...cf5818` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393201 | `0x1f081b...4cdf24` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393205 | `0x31993d...3459f3` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393220 | `0x7e4859...51fb0e` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393221 | `0x8ae2f8...dfaeb6` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393231 | `0xa5961b...580832` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393240 | `0xcc46dc...d1532e` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393250 | `0xf4386d...d81ac6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393203 | `0x28bba0...097966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393204 | `0x2ca52c...c3f166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393208 | `0x423559...f6f318` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393211 | `0x5630d6...f469fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393215 | `0x72d6b1...32958a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393216 | `0x73e4c1...e54523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393218 | `0x7578f3...990091` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393224 | `0x9a8175...8af1c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393225 | `0x9b0afd...290b99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393226 | `0x9c1737...dae537` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393227 | `0x9c7e7d...b0804f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393228 | `0xa25f4c...2ef11f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393232 | `0xacdbcd...b26b76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393234 | `0xbd1290...2005f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393235 | `0xbd564b...bce383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393236 | `0xbf91fb...a9877d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393237 | `0xc7a65e...ad97dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393241 | `0xcfb23d...88945e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393242 | `0xd1eed9...e65006` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/sturdy](https://skynet.certik.com/projects/sturdy) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Sturdy - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Sturdy%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts](https://www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf](https://reports.chainsecurity.com/Sturdy/ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [code4rena.com/reports/2022-05-sturdy](https://code4rena.com/reports/2022-05-sturdy) | Code4rena | Contest | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [sturdy-aura-integration-and-leverage.pdf](https://certificate.quantstamp.com/full/sturdy-aura-integration-and-leverage.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32](https://cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13925] skynet.certik.com/projects/sturdy — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It mentions a security audit completed by CertiK but does not include the actual audit report content, scope, or contract names.
- [13926] Sturdy - Zellic Audit Report.pdf — no match: Scope section explicitly lists DebtManager and SiloGateway as the two programs in scope. Audit date is September 15, 2023 from the cover page.
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts — no match: No scope section or contract names found in the provided text.
- [13928] ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf — no match: Scope explicitly lists SiloGateway.sol and DebtManager.sol as the only contracts in scope. Excluded contracts are VaultV3, ISilo implementations, and ZK verifier.
- [13930] code4rena.com/reports/2022-05-sturdy — no match: Scope section explicitly lists 5 smart contracts. Audit date found on cover page.
- [13931] sturdy-aura-integration-and-leverage.pdf — no match: Extracted 5 contracts from the scope section listing file paths. Audit date from cover page: February 15th 2023.
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32 — no match: No scope section or contract names found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sturdy - Zellic Audit Report.pdf | DebtManager | ambiguous — not counted | DebtManager (alternative) `0xf2d6c5...4bdade` — deployed 2024-01-18 01:05:11+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0xcc06b0...a8f521` — deployed 2024-01-18 14:21:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x5528c5...423075` — deployed 2024-01-18 01:19:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x3f1e01...066063` — deployed 2024-01-12 21:14:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sturdy - Zellic Audit Report.pdf | SiloGateway | ambiguous — not counted | SiloGateway (alternative) `0xc7e667...354c1a` — deployed 2024-01-18 01:07:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x4d07a5...f4bed3` — deployed 2024-01-18 14:23:59+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0xde9e69...a92aed` — deployed 2024-01-12 21:20:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x987a70...6b8ae5` — deployed 2024-01-18 01:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf | SiloGateway | ambiguous — not counted | SiloGateway (alternative) `0xc7e667...354c1a` — deployed 2024-01-18 01:07:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x4d07a5...f4bed3` — deployed 2024-01-18 14:23:59+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0xde9e69...a92aed` — deployed 2024-01-12 21:20:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x987a70...6b8ae5` — deployed 2024-01-18 01:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf | DebtManager | ambiguous — not counted | DebtManager (alternative) `0xf2d6c5...4bdade` — deployed 2024-01-18 01:05:11+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0xcc06b0...a8f521` — deployed 2024-01-18 14:21:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x5528c5...423075` — deployed 2024-01-18 01:19:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x3f1e01...066063` — deployed 2024-01-12 21:14:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2022-05-sturdy | CollateralAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | ConvexCurveLPVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | GeneralVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | LidoVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | YieldManager | unmatched — not counted | — | listed in scope | no |
| sturdy-aura-integration-and-leverage.pdf | BALWSTETHWETHOracle | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | AuraBalancerLPVault | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | AURAWSTETHWETHLevSwap | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | LeverageSwapManager | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | GeneralLevSwap | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x69764e...68cc9e` | AggregatorDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7520aa...647c51` | AggregatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7be73...f41a4d` | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdad951...077cdb` | BalancerswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x680f85...0d1a2d` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f7c66...c76adc` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa460cc...06d213` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0dd70...49f5f0` | CrvUSDYvMkUSDCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4827b1...2402a7` | CurveswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f1e01...066063` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5528c5...423075` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc06b0...a8f521` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf2d6c5...4bdade` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f4b81...7c9ead` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3723d7...c3e57d` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa34fe4...6f17ad` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfef192...baa185` | ETHSWETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94c120...40d39d` | IncentiveDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d3fc4...b8178b` | PxETHYvStETHPxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x169a80...8fc05a` | RewardConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d07a5...f4bed3` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x987a70...6b8ae5` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7e667...354c1a` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde9e69...a92aed` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x797b17...2b2d2f` | SturdyPairDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd57742...794a3b` | SturdyPairRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b05ce...48fbad` | SturdySiloAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0382a...c120ec` | SturdyWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaeb360...54309a` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x066909...288124` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd23bfa...cf5818` | UniswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f081b...4cdf24` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31993d...3459f3` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e4859...51fb0e` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ae2f8...dfaeb6` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5961b...580832` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc46dc...d1532e` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4386d...d81ac6` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: n/a

Zero-match audit list:

- [13925] skynet.certik.com/projects/sturdy
- [13926] Sturdy - Zellic Audit Report.pdf
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts
- [13928] ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf
- [13930] code4rena.com/reports/2022-05-sturdy
- [13931] sturdy-aura-integration-and-leverage.pdf
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32

Fork inheritance lineage and inherited audits are included when available.
