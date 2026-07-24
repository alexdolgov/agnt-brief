# Agentic Audit Brief: USD AI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 5 audit(s)
- Eligible audit results: 7 (5 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: USD AI (`usd-ai`)
- Website: [https://usd.ai/](https://usd.ai/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, plasma
- Contract surface: 163 unique implementations (167 raw deployments)
- Coverage basis: 10/11 confirmed own live verified implementations (90.9%); conservative 90.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $427,344,714.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for USD AI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base, ethereum, plasma. Structural roles: 6 core, 5 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (6), supporting (5)
- Contract kinds: contract (6), abstract (5)
- Detected standards: erc1967proxy (5), erc165 (3), accesscontrol (2), ownable (2)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b2b2b2076d95dda7817e785989fe353fe955ef9`, chain 1)
- UnnamedContract (`0x0c1c1c109fe34733fca54b82d7b46b75cfb71f6e`, chain 1)
- UnnamedContract (`0xffb20098fd7b8e84762eea4609f299d101427f24`, chain 1)
- UnnamedContract (`0xffc1002994b1e9a744036d0abdaefe8356b7cf4e`, chain 1)
- UnnamedContract (`0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef`, chain 8453)
- UnnamedContract (`0x0b2b2b2076d95dda7817e785989fe353fe955ef9`, chain 8453)
- UnnamedContract (`0x0c1c1c109fe34733fca54b82d7b46b75cfb71f6e`, chain 8453)
- UnnamedContract (`0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5`, chain 8453)
- UnnamedContract (`0xffb20098fd7b8e84762eea4609f299d101427f24`, chain 8453)
- UnnamedContract (`0xffc1002994b1e9a744036d0abdaefe8356b7cf4e`, chain 8453)
- UnnamedContract (`0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef`, chain 9745)
- UnnamedContract (`0x0b2b2b2076d95dda7817e785989fe353fe955ef9`, chain 9745)
- UnnamedContract (`0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5`, chain 9745)
- UnnamedContract (`0xffb20098fd7b8e84762eea4609f299d101427f24`, chain 9745)
- UnnamedContract (`0x0b2b2b2076d95dda7817e785989fe353fe955ef9`, chain 42161)
- UnnamedContract (`0x0c1c1c109fe34733fca54b82d7b46b75cfb71f6e`, chain 42161)
- UnnamedContract (`0x24a92e28a8c5d8812dcfaf44bcb20cc0babd1392`, chain 42161)
- UnnamedContract (`0x80e3146fb2328fe1b79f92f5a3a6bf35515aee37`, chain 42161)
- UnnamedContract (`0x9ddfd49ac4689cf894203794d792dcb38e4b1a9e`, chain 42161)
- UnnamedContract (`0xea0eae46bc15cd975f0545ba35584d96c7b35a1e`, chain 42161)
- UnnamedContract (`0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5`, chain 42161)
- UnnamedContract (`0xffb20098fd7b8e84762eea4609f299d101427f24`, chain 42161)
- AmortizedInterestRateModel (`0xe01520fd4f249efa4d905f60b6b54e2ade6fa18d`, chain 42161)
- ChainlinkPriceOracle (`0xd40a5298c6fced81eb5da8bb1f9328b16f741ebc`, chain 42161)
- ChipGovernor (`0x0ddc1dd03c58e425f96567679b52f349db847b26`, chain 42161)
- DepositTimelock (`0x0d710cc05f34d2ead9fba3c78d53d76a0623c9f8`, chain 42161)
- LoanRouter (`0x0c2ed170f2bb1df1a44292ad621b577b3c9597d1`, chain 42161)
- OAdapter (`0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5`, chain 1)
- OLockAdapter (`0xffc1002994b1e9a744036d0abdaefe8356b7cf4e`, chain 42161)
- OToken (`0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef`, chain 1)
- StakedChip (`0x0d2d2d20962f2468566f4d1a4ddeb482915c4d4a`, chain 42161)
- TimelockController (`0x0eec1ee03add82342a6ac68a9c5cf62cb2398221`, chain 42161)
- USDai (`0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/11 (90.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 33 of 163 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/49
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 114
- Unique implementations: 163
- Raw deployments: 167
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 18.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ktl | Tier 2 | 10 | 20.4% | 2026-03 |
| Spearbit | Tier 1 | 2 | 4.1% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmortizedInterestRateModel | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395517 | `0xe01520fd4f249efa4d905f60b6b54e2ade6fa18d` | ✅ Audited |
| ChainlinkPriceOracle | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395516 | `0xd40a5298c6fced81eb5da8bb1f9328b16f741ebc` | ✅ Audited |
| ChipGovernor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395511 | `0x0ddc1dd03c58e425f96567679b52f349db847b26` | ✅ Audited |
| DepositTimelock | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395535 | `0x0d710cc05f34d2ead9fba3c78d53d76a0623c9f8` | ✅ Audited |
| LoanRouter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395536 | `0x0c2ed170f2bb1df1a44292ad621b577b3c9597d1` | ✅ Audited |
| OAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395506 | `0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5` | ✅ Audited |
| OToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395532 | `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` | ✅ Audited |
| StakedChip | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395533 | `0x0d2d2d20962f2468566f4d1a4ddeb482915c4d4a` | ✅ Audited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395512 | `0x0eec1ee03add82342a6ac68a9c5cf62cb2398221` | ✅ Audited |
| USDai | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395534 | `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0846ec18c83a867e64f3fd1dc0da6ced868ca7dc` | ⚠️ Unaudited |
| BaseYieldEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eff54373bce60adac42daf8892684f5911d8acb` | ⚠️ Unaudited |
| BundleCollateralWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b47d3a936dc43be3b1915935c80102aae9d2f47` | ⚠️ Unaudited |
| Chip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b471c6740f3f29aa9c8f50340a713886e127cbc` | ⚠️ Unaudited |
| ChipClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c211385f5b061ce5b6d14d7c7d0aefc777faaae` | ⚠️ Unaudited |
| ChipReceiptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0c502123de42aae8e38ef4e26a2961bea295471e`; arbitrum `0xb0a5fba7b591c6aee0cf66db8485d46e395d6b62` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x19ed5c631edd34ac776368c377a855c42bc1876a`; arbitrum `0xb071515976bcfc69ca1f57babbb8f974b2c6867e` | ⚠️ Unaudited |
| ExecutorEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4db06053edb413899454bad5bf25213b22fda979` | ⚠️ Unaudited |
| ExtensionBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb823280379f3e057ccae4ba5f6f772528979a931` | ⚠️ Unaudited |
| ExtensionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bcb52965004561ed4d78366a36d0b1b11f6cca4` | ⚠️ Unaudited |
| ExternalCollateralLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0764dc5f138e879721d2ead70a37c6efad17b57d` | ⚠️ Unaudited |
| FLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ead2a169e9183746302cb623f09fa0f35cdbfc3` | ⚠️ Unaudited |
| HyperlaneBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26feb1f798b0737ddb64c3e83aa39fcdac8cbf80` | ⚠️ Unaudited |
| ICOVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e1b1ea6a30456e9c5ee35b44a9475e4d6b049b5` | ⚠️ Unaudited |
| IssuerGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1bb9f97af604385eb69212f34d986073ac6693c` | ⚠️ Unaudited |
| MS721v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb31549d4216de82147e7c25ea757e7e7cad60a19` | ⚠️ Unaudited |
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ⚠️ Unaudited |
| MultiMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ffbc316cf29e8eb39cbf819cfd3d5f5b34033ef` | ⚠️ Unaudited |
| OLockAdapter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395521 | `0xffc1002994b1e9a744036d0abdaefe8356b7cf4e` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5567fbf92486cba1692858afad1907db118c721` | ⚠️ Unaudited |
| OUSDaiUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c17b2ab80158d422c3f945bc92add549503dbd7` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23ca665c8a73292fc7ac2cc4493d2ce883bba468` | ⚠️ Unaudited |
| PYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x46850ad61c2b7d64d08c9c754f45254596696984` | ⚠️ Unaudited |
| PYUSDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dfb7c8ce5e67ace965520b134b4aca8fd71c5e0` | ⚠️ Unaudited |
| ReceiptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6dbe4fad1616be5d6435be6227df3da81793584c` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ⚠️ Unaudited |
| SimpleInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92e1a11d0689adb40f0abcc0aeef7b36ff48711a` | ⚠️ Unaudited |
| SpokePortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x658cb1f1ac918da7d330ac2dae28ef01e14a7878` | ⚠️ Unaudited |
| SpokePortalV1StorageCleaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ae99b6029ca77f3a6814173a30b84264f5e5f74` | ⚠️ Unaudited |
| SpokeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf78e63cdf695976f0100f161abae5579fe8b403e` | ⚠️ Unaudited |
| StakedUSDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x008014531ecb268c6fddde6f891d2d0e8b1bc08a` | ⚠️ Unaudited |
| SwapFacility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18b8a7aaa40b647d9f5c040be265b007679c7e9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xac5036965da7db1cd353f5d76d9709ea2c048e00`; arbitrum `0xb5b272eb139bf2feee10d38834277bc96879201b` | ⚠️ Unaudited |
| USDaiQueuedDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1038a3ca77886247bdf3342b2f8c174698f8e9d1` | ⚠️ Unaudited |
| USDaiSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3a3337316204855e2eb240a7439a2d8d501b75f` | ⚠️ Unaudited |
| USDZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd87c75a92db19fe334fe7812890f893449ff1bda` | ⚠️ Unaudited |
| WeightedRateGracePeriodRangedCollectionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0f62b8c58e1039f246d69ba2215ad5bf0d2bb867` | ⚠️ Unaudited |
| WrappedMToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x437cc33344a0b27a429f795ff6b469c72698b291`; arbitrum `0x813b926b1d096e117721bd1eb017fba122302da0` | ⚠️ Unaudited |
| YieldToOne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc560c9b8ed6d589ee676d279f2649a236c678803` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (114)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395504 | `0x0b2b2b2076d95dda7817e785989fe353fe955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395505 | `0x0c1c1c109fe34733fca54b82d7b46b75cfb71f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395507 | `0xffb20098fd7b8e84762eea4609f299d101427f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395508 | `0xffc1002994b1e9a744036d0abdaefe8356b7cf4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395522 | `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395523 | `0x0b2b2b2076d95dda7817e785989fe353fe955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395524 | `0x0c1c1c109fe34733fca54b82d7b46b75cfb71f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395525 | `0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395526 | `0xffb20098fd7b8e84762eea4609f299d101427f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395527 | `0xffc1002994b1e9a744036d0abdaefe8356b7cf4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395528 | `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395529 | `0x0b2b2b2076d95dda7817e785989fe353fe955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395530 | `0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395531 | `0xffb20098fd7b8e84762eea4609f299d101427f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f7acc10875bfece661d2575e9aaaf6b1ff17c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f86dcdc4bd5dbd54b537af0efd60ba84a76531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0629798983c356524f932b214ce02a6b7a727ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a1ff1130d226060bcbf840785c57a9ee0013bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ab74df531c0d8f1c46643e404b3d14723bbc212` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395509 | `0x0b2b2b2076d95dda7817e785989fe353fe955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395510 | `0x0c1c1c109fe34733fca54b82d7b46b75cfb71f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c24216c730f984eebff297c4047cb550d671776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c4c71f1c3aa5af90b6c7516a26fe5a493c4bf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cfa82fbf8b745bbb06d1aafdf7fadd7adad4a54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e45821731ea1ddffb7ebd51a8cdd053dc34e431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1032c693200be3f239d8ae18e9ee4c7fc667b0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13ae0c66dd063fbd6ba12ec1a1d5d07343daa03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x188fd99b71b40b0f044b07423a975a447ad9bc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f8345ea241b01df7f9c23c41efe75e5285827b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21dce201f978085a7d73e5e9ff8b9b66dc5b5417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23783ee86db1a05dfc6dc2f042606a92c97a374c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23ea0944271c0a69d9816490218af1e13967bd87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24038d32e5006726dc2a165640b2a26d34a5b622` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395513 | `0x24a92e28a8c5d8812dcfaf44bcb20cc0babd1392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2625809ff768ba6832be872af0624df930d84dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27ff9594a00fd0605689f66ab2f6be27e9e0c476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2af577d7e3baa01a991509f7f218dea1ff7d5bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c7e4598dd70d542a170794b01e9391b2e133de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a072f624acb636c2389927593f3118c5c852ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d3803a10f996b62d3e1bc6f404231f6af038221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5477072aa366cff31c1c28b81ed783a2a1cf87a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x557b517962767594a2e3d73478ba8f511c9ed218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c0a7c1c4af7da7d1d3403871acd1d4c469d7f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f02c1bec4ad5de9b7abf999c1f0854d4836a049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609d0735f4f52d937e5fb4d9a92db4566d4e4dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x629d63fb3e9275e61233676e704194fbc6620378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65004d29b3b1f633d41036e17c085bff4ed46e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x664cc3c1e294f425dd8b9440ea687d578b33329c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69b2fc5446650a93be21765b3cba07ebf6abc3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a47495faf6a3d1a214b3456b7498a25721e36ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x705644af4b2c5066c20715680af632d924aeb594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72974d1735642c49aa0195bc51f08968083190a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78767578465a2dbf0b0fb76ab2b1a0a0cef23751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b4d5c3a1b6295c4cc6b9b4545be499c82682bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b676a38ee6f8ad0c537d417b556514ecfaa202b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80da2520f5347bb278672098bd2eb0d86e31af41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395514 | `0x80e3146fb2328fe1b79f92f5a3a6bf35515aee37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81cc0dee5e599784cbb4862c605c7003b0ac5a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82eae942f2f7a4987c131247018c1e01b2696931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x923b13f246d16959863297c4e9f5946f460df36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92b1319fdf7e12d215d48cf0b4c0198587a505e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9372f83b48d36d53b224ce0c254adca0318c190d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95bba95d3c7eec1c59f23b7d2b53f6748afa344c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95c5994772492c2db8a51aa6018447693e3cd185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95f9a3dd08f557859db73a1462fccad280be4b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9867be16d7fbba067230766d6c99d5dfffb62048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a81ce3ecc8fbb604a20b84f4202d87776086a71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395515 | `0x9ddfd49ac4689cf894203794d792dcb38e4b1a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e72e098cbb48ea6b8ff317d158335a3ab048001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa10b9db24220266f282dffac538937852fd8e1d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa33bc63c475d23459c7e881171e68c86ff888ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa546b59a6d5ea0aa932fb586caf91fcca268fc8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae76172a56630907795fde1af3f4abfd595adc33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb17092da8a111ff3097d8952bec5358107800653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb31f04f920f24eda3ad276d55c5afefad6230c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3298301dbc0b1b6e1fccaa0b345fdca8a7aae8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb991e9588e10c8968e0670d0dfbc9fe0e3a56740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb92d3fc2a20f880c5d921ccbf2c724f9ddae2bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf43e0b20164d841a3befb70ebb7705d50946156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0540184de0e42eab2b0a4fc35f4817041001e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc37c9cbd60f4407ed03e402e906296bba64b1c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4a17e39c3dd64f5f1f261f15696f074bd7e7318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc517b5a80a4608822dca93e6938fa2dba28642d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc757712357cb3dc5c65066480c9217b00fe62fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca6fa8cea66ac7d0f49b6f27e8da759dcbf20eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccf492b3170d8972cc756b3f2d36190912d91df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce0b26c62a4c0c87ed8dec26d554c169be1d1a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfbd9e3987e98eee1257d3ff4f8cf24c211521ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd06a5692e2f7894c6387f0f376a9d1572b53cc79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7015647056646e5f2498393d315a3662d9f818a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda8c2f3da2857e9d66f813d11baba555aab46460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb5f2284cefc372d4e9d7e3918b180145ccf4fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbb20434e95afc9667c014fd69eda765aa785ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbe9abff18b447af62a680dc74fd5d200e5bdab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddc88cd5d825747e5517eab8fca99dfb4f283887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4cf937251672ec12655f7ac99bf2b7843a2c950` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395518 | `0xea0eae46bc15cd975f0545ba35584d96c7b35a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb115f582cce5b0754cf14c7d13214bb74321d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb19604e807381a5ae3d639bc0b4805400bec55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb90a5f7fb39bab571cca37755894604288a470d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebc65e2d72949908f549c92c41ca6f351e99a73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebe50b7b49b86c3d17b430e6c0767c32fec1d08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee748b527a6c280b8df5b06d00132f7bb52afd3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3ae57bdfdcc6732b5ab076d6b0a7c8a858c14b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5782490fe33547e7a902c35d4f1e8ca59a050fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7050377f26d6a9f1032b3857aab651378adde0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf83d9bbf3e233eb0b8fc9c3e0418f1bfd78bb68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf97892dcce1318480baf8765b4a8ea7b6048c1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfad5d0717729000ea489451dd4ee7bf320a299d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff6954d6109b14b63fb5268daac09647305f954c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff885c32372952efa20ccf33b024a78edd9a7976` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395519 | `0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395520 | `0xffb20098fd7b8e84762eea4609f299d101427f24` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 95
- Live contracts: 0
- Unknown liveness contracts: 95
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=95

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00f7acc10875bfece661d2575e9aaaf6b1ff17c2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x00f86dcdc4bd5dbd54b537af0efd60ba84a76531` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0629798983c356524f932b214ce02a6b7a727ac4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0a1ff1130d226060bcbf840785c57a9ee0013bfa` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0ab74df531c0d8f1c46643e404b3d14723bbc212` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0c24216c730f984eebff297c4047cb550d671776` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0c4c71f1c3aa5af90b6c7516a26fe5a493c4bf3f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0cfa82fbf8b745bbb06d1aafdf7fadd7adad4a54` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x0e45821731ea1ddffb7ebd51a8cdd053dc34e431` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x1032c693200be3f239d8ae18e9ee4c7fc667b0f9` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x13ae0c66dd063fbd6ba12ec1a1d5d07343daa03f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x188fd99b71b40b0f044b07423a975a447ad9bc49` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x1f8345ea241b01df7f9c23c41efe75e5285827b1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x21dce201f978085a7d73e5e9ff8b9b66dc5b5417` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x23783ee86db1a05dfc6dc2f042606a92c97a374c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x23ea0944271c0a69d9816490218af1e13967bd87` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x24038d32e5006726dc2a165640b2a26d34a5b622` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x2625809ff768ba6832be872af0624df930d84dcd` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x27ff9594a00fd0605689f66ab2f6be27e9e0c476` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x2af577d7e3baa01a991509f7f218dea1ff7d5bc4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x2c7e4598dd70d542a170794b01e9391b2e133de8` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0x3a072f624acb636c2389927593f3118c5c852ad7` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x3d3803a10f996b62d3e1bc6f404231f6af038221` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x5477072aa366cff31c1c28b81ed783a2a1cf87a2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x557b517962767594a2e3d73478ba8f511c9ed218` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x5c0a7c1c4af7da7d1d3403871acd1d4c469d7f30` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x5f02c1bec4ad5de9b7abf999c1f0854d4836a049` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x609d0735f4f52d937e5fb4d9a92db4566d4e4dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x629d63fb3e9275e61233676e704194fbc6620378` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x65004d29b3b1f633d41036e17c085bff4ed46e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x664cc3c1e294f425dd8b9440ea687d578b33329c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x69b2fc5446650a93be21765b3cba07ebf6abc3cf` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x6a47495faf6a3d1a214b3456b7498a25721e36ca` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x705644af4b2c5066c20715680af632d924aeb594` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x72974d1735642c49aa0195bc51f08968083190a2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x78767578465a2dbf0b0fb76ab2b1a0a0cef23751` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x7b4d5c3a1b6295c4cc6b9b4545be499c82682bf2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x7b676a38ee6f8ad0c537d417b556514ecfaa202b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x80da2520f5347bb278672098bd2eb0d86e31af41` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x813b926b1d096e117721bd1eb017fba122302da0` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0x81cc0dee5e599784cbb4862c605c7003b0ac5a53` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x82eae942f2f7a4987c131247018c1e01b2696931` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x923b13f246d16959863297c4e9f5946f460df36f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x92b1319fdf7e12d215d48cf0b4c0198587a505e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x9372f83b48d36d53b224ce0c254adca0318c190d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x95bba95d3c7eec1c59f23b7d2b53f6748afa344c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x95c5994772492c2db8a51aa6018447693e3cd185` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x95f9a3dd08f557859db73a1462fccad280be4b21` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x9867be16d7fbba067230766d6c99d5dfffb62048` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x9a81ce3ecc8fbb604a20b84f4202d87776086a71` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0x9e72e098cbb48ea6b8ff317d158335a3ab048001` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xa10b9db24220266f282dffac538937852fd8e1d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xa33bc63c475d23459c7e881171e68c86ff888ac1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xa546b59a6d5ea0aa932fb586caf91fcca268fc8b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xae76172a56630907795fde1af3f4abfd595adc33` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xb0a5fba7b591c6aee0cf66db8485d46e395d6b62` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xb17092da8a111ff3097d8952bec5358107800653` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xb31f04f920f24eda3ad276d55c5afefad6230c5d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xb3298301dbc0b1b6e1fccaa0b345fdca8a7aae8a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xb5b272eb139bf2feee10d38834277bc96879201b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xb991e9588e10c8968e0670d0dfbc9fe0e3a56740` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xbb92d3fc2a20f880c5d921ccbf2c724f9ddae2bd` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xbf43e0b20164d841a3befb70ebb7705d50946156` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xc0540184de0e42eab2b0a4fc35f4817041001e85` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xc37c9cbd60f4407ed03e402e906296bba64b1c99` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xc4a17e39c3dd64f5f1f261f15696f074bd7e7318` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xc517b5a80a4608822dca93e6938fa2dba28642d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xc757712357cb3dc5c65066480c9217b00fe62fac` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xca6fa8cea66ac7d0f49b6f27e8da759dcbf20eb7` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xccf492b3170d8972cc756b3f2d36190912d91df3` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xce0b26c62a4c0c87ed8dec26d554c169be1d1a5b` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xcfbd9e3987e98eee1257d3ff4f8cf24c211521ac` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xd06a5692e2f7894c6387f0f376a9d1572b53cc79` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xd7015647056646e5f2498393d315a3662d9f818a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xda8c2f3da2857e9d66f813d11baba555aab46460` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xdb5f2284cefc372d4e9d7e3918b180145ccf4fc5` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xdbb20434e95afc9667c014fd69eda765aa785ef9` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xdbe9abff18b447af62a680dc74fd5d200e5bdab0` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xddc88cd5d825747e5517eab8fca99dfb4f283887` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xe4cf937251672ec12655f7ac99bf2b7843a2c950` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xeb115f582cce5b0754cf14c7d13214bb74321d21` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xeb19604e807381a5ae3d639bc0b4805400bec55e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xeb90a5f7fb39bab571cca37755894604288a470d` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xebc65e2d72949908f549c92c41ca6f351e99a73d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xebe50b7b49b86c3d17b430e6c0767c32fec1d08c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xee748b527a6c280b8df5b06d00132f7bb52afd3f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xf3ae57bdfdcc6732b5ab076d6b0a7c8a858c14b8` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xf5782490fe33547e7a902c35d4f1e8ca59a050fa` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xf7050377f26d6a9f1032b3857aab651378adde0b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xf83d9bbf3e233eb0b8fc9c3e0418f1bfd78bb68b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xf97892dcce1318480baf8765b4a8ea7b6048c1e1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xfad5d0717729000ea489451dd4ee7bf320a299d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |
| unverified unclassified | UnnamedContract<br>`0xff6954d6109b14b63fb5268daac09647305f954c` | non_address_book | unknown | unknown | unverified | n/a | `0xf2f1acbe0ba726fee8d75f3e32900526874740bb` |
| unverified unclassified | UnnamedContract<br>`0xff885c32372952efa20ccf33b024a78edd9a7976` | non_address_book | unknown | unknown | unverified | n/a | `0x5a9b0b5e7856359a581637a1b1df9c9d83c28e97` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ktl Audit Report (03-12-2026 part 2).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2Fzl2jDTZL4Akw5GuHXiKg%2Fktl%20Audit%20Report%20(03-12-2026%20part%202).pdf) | ktl | Audit | 2026-03 | fresh | Direct | contract_name | matched | 5 | 2 | 0 | 4 | high |
| [ktl Audit Report (03-12-2026 part 1).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FRL8zlXoxnJGyCceapFfD%2Fktl%20Audit%20Report%20(03-12-2026%20part%201).pdf) | ktl | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Quantstamp Audit Report (02-03-2026).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2Fwt0lsgmhb1rngz4saN1c%2FQuantstamp%20Audit%20Report%20(02-03-2026).pdf) | Quantstamp | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ktl Audit Report (11-27-2025).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FweGipmdxSba2MgMJu8yl%2Fktl%20Audit%20Report%20(11-27-2025).pdf) | ktl | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |
| [ktl Audit Report (10-29-2025).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FIcLiDGBCSCvsqXNxOWr7%2Fktl%20Audit%20Report%20(10-29-2025).pdf) | ktl | Audit | 2025-11 | fresh | Direct | contract_name | matched | 3 | 2 | 0 | 15 | high |
| [ktl Audit Report (05-14-2025).pdf](https://content.gitbook.com/content/yihtTguEhuWiLBn09qwl/blobs/IzF1VSnPIPQtqI7Z2xxU/ktl%20Audit%20Report%20(05-14-2025).pdf) | ktl | Audit | 2025-05 | aging | Direct | contract_name | matched | 4 | 2 | 0 | 22 | high |
| [Cantina Audit Report (05-12-2025).pdf](https://content.gitbook.com/content/yihtTguEhuWiLBn09qwl/blobs/NAQu7sNV6TV0uiNyb4bl/Cantina%20Audit%20Report%20(05-12-2025).pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18437] ktl Audit Report (03-12-2026 part 2).pdf — matched: Scope section lists 9 contracts/interfaces including subdirectories. Audit date is end of review timeline (March 27, 2026).
- [18438] ktl Audit Report (03-12-2026 part 1).pdf — no match: Scope section lists 10 files: AirdropVault.sol, ChipClaim.sol, ChipReceiptToken.sol, ICOVault.sol, and interfaces IAirdropVault.sol, IChipClaim.sol, IChipReceiptToken.sol, IICOVault.sol, and external ISyToken.sol, IYieldToken.sol. Audit date is end of review period (Mar 27, 2026).
- [18439] Quantstamp Audit Report (02-03-2026).pdf — no match: Only one contract, Chip.sol, is explicitly listed in scope. The report mentions USDai.sol as an external contract (out of scope).
- [18440] ktl Audit Report (11-27-2025).pdf — matched: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the review timeline (Dec 28th, 2025).
- [18441] ktl Audit Report (10-29-2025).pdf — matched: All contracts listed in the Scope section of the audit report. Audit date is the end date of the review timeline (Oct 29th to Nov 18th, 2025).
- [18442] ktl Audit Report (05-14-2025).pdf — matched: All contracts listed in scope section of the audit report.
- [18443] Cantina Audit Report (05-12-2025).pdf — matched: Extracted contract names from findings context and file paths. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ktl Audit Report (03-12-2026 part 2).pdf | Chip | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | ChipGovernor | own contract | ChipGovernor (selected) `0x0ddc1dd03c58e425f96567679b52f349db847b26` — deployed 2026-03-31 11:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | StakedChip | own proxy deployment | StakedChip (proxy) (selected) `0x0d2d2d20962f2468566f4d1a4ddeb482915c4d4a` — deployed 2026-03-31 11:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | TimelockController | own contract | TimelockController (selected) `0x0eec1ee03add82342a6ac68a9c5cf62cb2398221` — deployed 2026-03-31 11:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | IChip | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | IMintableBurnable | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | IStakedChip | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | OAdapter | own contract | OAdapter (selected) `0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | OToken | own proxy deployment | OToken (proxy) (selected) `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 1).pdf | AirdropVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ChipClaim | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ChipReceiptToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ICOVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IAirdropVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IChipClaim | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IChipReceiptToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IICOVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ISyToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IYieldToken | unmatched — not counted | — | listed in scope | no |
| Quantstamp Audit Report (02-03-2026).pdf | Chip | unmatched — not counted | — | listed in scope section: Included Paths: src/Chip.sol | no |
| ktl Audit Report (11-27-2025).pdf | RedemptionLogic | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | StakedUSDai | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | StakedUSDaiStorage | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | USDai | own proxy deployment | USDai (proxy) (selected) `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` — deployed 2025-05-13 12:29:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (11-27-2025).pdf | ILoanRouterPositionManager | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | IStakedUSDai | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | IUSDai | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | IUSDaiQueuedDepositor | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | LoanRouterPositionManager | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | LoanRouterPositionManagerLogic | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (10-29-2025).pdf | DepositTimelock | own proxy deployment | DepositTimelock (proxy) (selected) `0x0d710cc05f34d2ead9fba3c78d53d76a0623c9f8` — deployed 2025-12-03 19:48:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (10-29-2025).pdf | LoanRouter | own proxy deployment | LoanRouter (proxy) (selected) `0x0c2ed170f2bb1df1a44292ad621b577b3c9597d1` — deployed 2025-12-05 20:15:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (10-29-2025).pdf | LoanTermsLogic | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IDepositTimelock | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ILoanRouter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ILoanRouterHooks | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ISwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IApproveAndCall | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ICollateralLiquidationReceiver | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ICollateralLiquidator | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ICollateralWrapper | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ISwapRouter02 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | AmortizedInterestRateModel | own contract | AmortizedInterestRateModel (selected) `0xe01520fd4f249efa4d905f60b6b54e2ade6fa18d` — deployed 2025-12-03 11:57:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (10-29-2025).pdf | SimpleInterestRateModel | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | USDaiSwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | RedemptionLogic | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | StakedUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | StakedUSDaiStorage | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | USDai | own proxy deployment | USDai (proxy) (selected) `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` — deployed 2025-05-13 12:29:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | IBasePositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IERC7540 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IERC7575 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IMintableBurnable | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IPoolPositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IStakedUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | ISwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IAggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IApproveAndCall | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IPool | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | ISwapRouter02 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IWrappedMToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | OAdapter | own contract | OAdapter (selected) `0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | OToken | own proxy deployment | OToken (proxy) (selected) `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | OUSDaiUtility | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | ChainlinkPriceOracle | own contract | ChainlinkPriceOracle (selected) `0xd40a5298c6fced81eb5da8bb1f9328b16f741ebc` — deployed 2026-02-02 20:47:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | BasePositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | PoolPositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope | no |
| Cantina Audit Report (05-12-2025).pdf | USDai | own proxy deployment | USDai (proxy) (selected) `0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef` — deployed 2025-05-13 12:29:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Audit Report (05-12-2025).pdf | StakedUSDai | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | RedemptionLogic | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | ChainlinkPriceOracle | own contract | ChainlinkPriceOracle (selected) `0xd40a5298c6fced81eb5da8bb1f9328b16f741ebc` — deployed 2026-02-02 20:47:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Audit Report (05-12-2025).pdf | BasePositionManager | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | PoolPositionManager | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | UniswapV3SwapAdapter | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xffc1002994b1e9a744036d0abdaefe8356b7cf4e` | OLockAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 66 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=15

Zero-match audit list:

- [18438] ktl Audit Report (03-12-2026 part 1).pdf
- [18439] Quantstamp Audit Report (02-03-2026).pdf

Fork inheritance lineage and inherited audits are included when available.
