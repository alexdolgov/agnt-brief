# Agentic Audit Brief: Equilibria

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Equilibria (`equilibria`)
- Website: [https://equilibria.fi/home](https://equilibria.fi/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic
- Contract surface: 130 unique implementations (142 raw deployments)
- Coverage basis: 8/118 confirmed own live verified implementations (6.8%); conservative 6.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,942,083.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Equilibria. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 180 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic. Structural roles: 121 unclassified, 53 core, 6 supporting. 41 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 180
- Structural roles: unclassified (121), core (53), supporting (6)
- Contract kinds: contract (180)
- Detected standards: erc1967proxy (33), erc20 (18), erc165 (14), ownable (14)
- Frameworks: openzeppelin (57), layerzero (11), openzeppelin-upgradeable (9), solmate (2)
- Upgradeable-pattern rows: 41

## Fork Analysis

0 of 70 contracts are derived from known codebases. 70 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x22fc5a...ce4455`, chain 1)
- UnnamedContract (`0x357f55...25e849`, chain 1)
- UnnamedContract (`0x4f1cdf...3d3452`, chain 1)
- UnnamedContract (`0x52f0bb...789ca5`, chain 1)
- UnnamedContract (`0xd6ecfd...4fd54f`, chain 1)
- UnnamedContract (`0xd8967b...73ec27`, chain 1)
- UnnamedContract (`0xfe80d6...740b2b`, chain 1)
- UnnamedContract (`0x77b777...d65973`, chain 9745)
- UnnamedContract (`0xd51d25...86aef1`, chain 9745)
- UnnamedContract (`0xf7498d...052981`, chain 9745)
- UnnamedContract (`0x1ef5e2...21fa39`, chain 42161)
- UnnamedContract (`0x741620...c4fecc`, chain 80094)
- BridgeToken (`0x374ca3...468609`, chain 56)
- BridgeToken (`0x5fec85...5bd6bc`, chain 56)
- ClonableBeaconProxy (`0xbfbcfe...bbad9c`, chain 42161)
- ClonableBeaconProxy (`0xd48482...242ac3`, chain 42161)
- ePendleOFT (`0x6408d9...d16005`, chain 999)
- EPendleOFT (`0x8a5a43...bbd36c`, chain 10)
- EPendleOFT (`0x06fd8e...534f37`, chain 56)
- EPendleOFT (`0x7700eb...ed33b1`, chain 146)
- EPendleOFT (`0xb2d167...4264c8`, chain 999)
- EPendleOFT (`0x7700eb...ed33b1`, chain 5000)
- EPendleOFT (`0x2350ea...709913`, chain 8453)
- EPendleOFT (`0x8c9b5b...0029f5`, chain 42161)
- EPendleProxyOFT (`0x6ae382...45c577`, chain 1)
- EQBOFT (`0x3ce842...ad4e50`, chain 999)
- ERC1967Proxy (`0x48540d...6fc335`, chain 146)
- ERC1967Proxy (`0x9cacb5...7e8c6b`, chain 146)
- GnosisSafeProxy (`0x397aa0...51afa0`, chain 1)
- GnosisSafeProxy (`0x29828f...6f0444`, chain 42161)
- GnosisSafeProxy (`0xfda441...2724e4`, chain 42161)
- L2StandardERC20 (`0x3e7ef8...276747`, chain 5000)
- L2StandardERC20 (`0x9e1028...6840e0`, chain 5000)
- OptimismMintableERC20 (`0x76c37f...858481`, chain 10)
- OptimismMintableERC20 (`0xaf3a6f...dca2a0`, chain 10)
- OptimismMintableERC20 (`0x010cd9...80a50a`, chain 8453)
- OptimismMintableERC20 (`0xc6e669...f239f0`, chain 8453)
- TransparentUpgradeableProxy (`0x0140de...91d3bc`, chain 1)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 1)
- TransparentUpgradeableProxy (`0x646279...f1e6e3`, chain 1)
- TransparentUpgradeableProxy (`0xd30d6f...968059`, chain 1)
- TransparentUpgradeableProxy (`0x18c616...e2b356`, chain 10)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 10)
- TransparentUpgradeableProxy (`0xf19fbc...e94cec`, chain 10)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 56)
- TransparentUpgradeableProxy (`0x646279...f1e6e3`, chain 56)
- TransparentUpgradeableProxy (`0x89a4e4...63186b`, chain 56)
- TransparentUpgradeableProxy (`0x479603...9e218d`, chain 146)
- TransparentUpgradeableProxy (`0x920873...56a3b8`, chain 146)
- TransparentUpgradeableProxy (`0x9f1453...ca341a`, chain 146)
- TransparentUpgradeableProxy (`0x18c616...e2b356`, chain 999)
- TransparentUpgradeableProxy (`0x5e73e7...ea4531`, chain 999)
- TransparentUpgradeableProxy (`0x7700eb...ed33b1`, chain 999)
- TransparentUpgradeableProxy (`0xad2995...53421c`, chain 999)
- TransparentUpgradeableProxy (`0x479603...9e218d`, chain 5000)
- TransparentUpgradeableProxy (`0x920873...56a3b8`, chain 5000)
- TransparentUpgradeableProxy (`0x9f1453...ca341a`, chain 5000)
- TransparentUpgradeableProxy (`0x2583a2...b4821d`, chain 8453)
- TransparentUpgradeableProxy (`0x6ee066...01b923`, chain 8453)
- TransparentUpgradeableProxy (`0x920873...56a3b8`, chain 8453)
- TransparentUpgradeableProxy (`0xd6ecfd...4fd54f`, chain 9745)
- TransparentUpgradeableProxy (`0x372277...b8319f`, chain 42161)
- TransparentUpgradeableProxy (`0x4250ea...654a92`, chain 42161)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 42161)
- TransparentUpgradeableProxy (`0x646279...f1e6e3`, chain 42161)
- TransparentUpgradeableProxy (`0x18c616...e2b356`, chain 80094)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 80094)
- TransparentUpgradeableProxy (`0x5e73e7...ea4531`, chain 80094)
- WOFT (`0x88bb2b...289032`, chain 80094)
- WOFT (`0xf9ee98...7e2037`, chain 80094)

## Contract Surface Quality

- Indexed contracts: 180; live-surface contracts included: 180 (130 live, 50 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 130/130 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/118 (6.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 130 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 112
- Deployed-live implementations: 130 of 130 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 8/118
- Verified + Unaudited implementations: 110
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 130
- Raw deployments: 142
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 8 | 6.8% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | optimism | unit-384879 (2 proxies) | 2 deployments: optimism `0x0140de...91d3bc`; optimism `0x898ca9...3602b3` | ✅ Audited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | bsc | unit-384919 (2 proxies) | 2 deployments: bsc `0x52f0bb...789ca5`; bsc `0xe2db20...01dde7` | ✅ Audited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384943 | `0x6ee066...01b923` | ✅ Audited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384903 | `0x09bae4...c8e94d` | ✅ Audited |
| PendleProxyMainchain | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384871 | `0x646279...f1e6e3` | ✅ Audited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384894 | `0x646279...f1e6e3` | ✅ Audited |
| VaultEPendle | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384869 | `0xd30d6f...968059` | ✅ Audited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384895 | `0x70f619...7e72b9` | ✅ Audited |

### ⚠️ Verified + Unaudited (110)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | sonic | unit-384886 (2 proxies) | 2 deployments: sonic `0x660e0d...cc9fa9`; sonic `0x741620...c4fecc` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | hyperliquid | unit-384964 (2 proxies) | 2 deployments: hyperliquid `0x22fc5a...ce4455`; hyperliquid `0x500d5e...84d3d6` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | mantle | unit-384911 (2 proxies) | 2 deployments: mantle `0x660e0d...cc9fa9`; mantle `0x741620...c4fecc` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | base | unit-384938 (2 proxies) | 2 deployments: base `0x71e0ce...401ebf`; base `0xb2d167...4264c8` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | plasma | unit-384956 (2 proxies) | 2 deployments: plasma `0x55f140...0433a8`; plasma `0xd8967b...73ec27` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384901 | `0x9739d1...bb4d6f` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | berachain | unit-384931 (2 proxies) | 2 deployments: berachain `0x0140de...91d3bc`; berachain `0x2350ea...709913` | ⚠️ Unaudited |
| BribeManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384905 | `0xb3c40b...df99ca` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | optimism | unit-384847 | `0x8a5a43...bbd36c` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | bsc | unit-384855 | `0x06fd8e...534f37` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | sonic | unit-384849 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| ePendleOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384866 | `0x6408d9...d16005` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384867 | `0xb2d167...4264c8` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | mantle | unit-384853 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | base | unit-384860 | `0x2350ea...709913` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-384851 | `0x8c9b5b...0029f5` | ⚠️ Unaudited |
| EPendleProxyOFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-384842 | `0x6ae382...45c577` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | optimism | unit-384874 | `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | bsc | unit-384922 | `0x6668f0...e84431` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | sonic | unit-384892 | `0x02c033...d981e4` | ⚠️ Unaudited |
| EpendleVault | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384966 | `0x5e73e7...ea4531` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | mantle | unit-384915 | `0x02c033...d981e4` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | base | unit-384941 | `0x9f1453...ca341a` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | berachain | unit-384928 | `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384876 | `0xf19fbc...e94cec` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384918 | `0x89a4e4...63186b` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384885 | `0x9f1453...ca341a` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384962 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384910 | `0x9f1453...ca341a` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384902 | `0x4250ea...654a92` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384935 | `0x5e73e7...ea4531` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-384878 | `0x86a201...a818c5` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-384925 | `0x898ca9...3602b3` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-384888 | `0x6ee066...01b923` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384965 | `0x2350ea...709913` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-384912 | `0x6ee066...01b923` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | base | unit-384944 | `0x741620...c4fecc` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384904 | `0x3eabe1...114600` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-384932 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | optimism | unit-384875 | `0x52f0bb...789ca5` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | bsc | unit-384926 | `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | sonic | unit-384891 | `0x09bae4...c8e94d` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384961 | `0x0140de...91d3bc` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | mantle | unit-384914 | `0x09bae4...c8e94d` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | base | unit-384942 | `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | berachain | unit-384929 | `0x52f0bb...789ca5` | ⚠️ Unaudited |
| EQBOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384865 | `0x3ce842...ad4e50` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | optimism | unit-384877 | `0x357f55...25e849` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | bsc | unit-384917 | `0x22fc5a...ce4455` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | sonic | unit-384884 | `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384967 | `0xd8967b...73ec27` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | mantle | unit-384908 | `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | base | unit-384940 | `0xc7517f...421e32` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384896 | `0xc7517f...421e32` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | berachain | unit-384937 | `0x357f55...25e849` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-384872 | `0x397aa0...51afa0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-384897 (2 proxies) | 2 deployments: arbitrum `0x29828f...6f0444`; arbitrum `0xfda441...2724e4` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | mantle | unit-384852 | `0x3e7ef8...276747` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | mantle | unit-384854 | `0x9e1028...6840e0` | ⚠️ Unaudited |
| MintedERC20 | token | project_anchor | own_supporting | 2 | sonic | unit-384889 (2 proxies) | 2 deployments: sonic `0x48540d...6fc335`; sonic `0x9cacb5...7e8c6b` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-384846 | `0x76c37f...858481` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-384848 | `0xaf3a6f...dca2a0` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-384859 | `0x010cd9...80a50a` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-384861 | `0xc6e669...f239f0` | ⚠️ Unaudited |
| PendleBoosterMainchain | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384870 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384873 | `0x18c616...e2b356` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384927 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384887 | `0x920873...56a3b8` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384959 | `0xad2995...53421c` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384909 | `0x920873...56a3b8` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384946 | `0x2583a2...b4821d` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | plasma | unit-384952 | `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384899 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384936 | `0x18c616...e2b356` | ⚠️ Unaudited |
| PendleDepositor | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384868 | `0x0140de...91d3bc` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384880 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384923 | `0x646279...f1e6e3` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384890 | `0x479603...9e218d` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384960 | `0x18c616...e2b356` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384913 | `0x479603...9e218d` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384945 | `0x920873...56a3b8` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384930 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-384898 (2 proxies) | 2 deployments: arbitrum `0xbfbcfe...bbad9c`; arbitrum `0xd48482...242ac3` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 2 | bsc | unit-384924 (2 proxies) | 2 deployments: bsc `0x374ca3...468609`; bsc `0x5fec85...5bd6bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384950 | `0x22fc5a...ce4455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384951 | `0x2350ea...709913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384949 | `0x357f55...25e849` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384948 | `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384955 | `0x500d5e...84d3d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384953 | `0x5e73e7...ea4531` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384957 | `0xa6ec3c...9f05c3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384954 | `0xfe80d6...740b2b` | ⚠️ Unaudited |
| VaultEPendleArbi | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384900 | `0x372277...b8319f` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | optimism | unit-384881 | `0x22fc5a...ce4455` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | bsc | unit-384921 | `0x0140de...91d3bc` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | sonic | unit-384883 | `0x71e0ce...401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384963 | `0x357f55...25e849` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | mantle | unit-384907 | `0x71e0ce...401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | base | unit-384939 | `0x70f619...7e72b9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | berachain | unit-384933 | `0x22fc5a...ce4455` | ⚠️ Unaudited |
| WOFT | token | project_anchor | own_supporting | 0 | berachain | unit-384857 | `0x88bb2b...289032` | ⚠️ Unaudited |
| WOFT | token | project_anchor | own_supporting | 0 | berachain | unit-384858 | `0xf9ee98...7e2037` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-384882 | `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-384920 | `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-384893 | `0x96c4a4...19ad8e` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384958 | `0x52f0bb...789ca5` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-384916 | `0x96c4a4...19ad8e` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | base | unit-384947 | `0x09bae4...c8e94d` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384906 | `0x96c4a4...19ad8e` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-384934 | `0xd6ecfd...4fd54f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384838 | `0x22fc5a...ce4455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384839 | `0x357f55...25e849` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384840 | `0x4f1cdf...3d3452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384841 | `0x52f0bb...789ca5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384843 | `0xd6ecfd...4fd54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384844 | `0xd8967b...73ec27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384845 | `0xfe80d6...740b2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384862 | `0x77b777...d65973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384863 | `0xd51d25...86aef1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384864 | `0xf7498d...052981` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384850 | `0x1ef5e2...21fa39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-384856 | `0x741620...c4fecc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf) | WatchPug | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2Fb8B3TscrPCJ1YmEeCb4Q%2FEquilibria_Continuous_Audit_May_21%2C_25_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FmmHtThc39pihExxQM3Jx%2FEquilibria_%232__Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FT7caQbKvLq6KPy2IRcuY%2FEquilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-10 | stale | Direct | n/a | matched | 2 | 2 | 0 | 1 | n/a |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-06 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 9 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield-Audit-Report-Equilibria-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3549] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf — no match: Extracted contract names from findings and code snippets. The report does not have a formal scope table but lists the codebase URL and commit. All contracts referenced in findings are considered in scope.
- [3550] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf — no match: No explicit scope section or contract names listed; only a code snippet referencing a reentrancy guard slot is shown.
- [3551] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf — matched: Contracts extracted from findings sections; no explicit scope table but contracts are clearly audited targets.
- [3552] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf — matched: No reason recorded
- [3553] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf — matched: Extracted contract names from findings and file paths. Audit date from delivery date on page 3.
- [3554] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf — no match: Extracted contract names from findings targets. No explicit scope table listing all contracts, but the report mentions the repository and commit hash. The audit date is from the cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | VaultDepositToken | unmatched — not counted | — | mentioned in findings and code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | VaultDepositTokenFactory | unmatched — not counted | — | mentioned in findings and code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbZap | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xc7517f...421e32` — deployed 2023-06-02 10:06:48+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55...25e849` — deployed 2023-08-18 13:13:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55...25e849` — deployed 2025-03-28 10:37:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2023-07-05 07:07:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x70f619...7e72b9` — deployed 2024-09-03 13:55:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x70f619...7e72b9` — deployed 2025-03-10 12:33:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-08-09 09:48:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc7517f...421e32` — deployed 2024-12-04 12:30:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbConstants | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbConfig | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | Booster | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IBaseRewardPool | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IPendleRouterV3 | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | ISwapRouter | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IERC20 | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IERC20Upgradeable | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IVaultDepositToken | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | AccessControlUpgradeable | unmatched — not counted | — | inherited by VaultDepositTokenFactory | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | BeaconProxy | unmatched — not counted | — | used in createVault | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | SafeERC20 | unmatched — not counted | — | referenced in findings | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IPSwapAggregator | unmatched — not counted | — | unused import mentioned in WP-N12 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IStandardizedYield | unmatched — not counted | — | unused import mentioned in WP-N12 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | SmartConvertor | unmatched — not counted | — | listed in finding WP-M1 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | ChainlinkOracle | unmatched — not counted | — | listed in findings WP-L2 and WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | EpendleVaultSidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x89a4e4...63186b` — deployed 2024-02-28 13:30:06+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9f1453...ca341a` — deployed 2025-03-10 12:34:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7700eb...ed33b1` — deployed 2025-08-09 09:54:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9f1453...ca341a` — deployed 2024-09-03 13:56:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4250ea...654a92` — deployed 2024-01-23 13:52:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x6ee066...01b923` — deployed 2024-12-04 12:33:15+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5e73e7...ea4531` — deployed 2025-03-28 10:38:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf19fbc...e94cec` — deployed 2024-01-29 08:52:07+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-04 was 28d from audit; next candidate 64d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | EqbRewardDistributor | unmatched — not counted | — | listed in finding WP-L6 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | BaseRewardPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1...bb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e...84d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0140de...91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167...4264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20...01dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140...0433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-08-18 was 44d from audit; next candidate 88d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | SmartConvertor | unmatched — not counted | — | — | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | VaultEPendle | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd30d6f...968059` — deployed 2023-10-13 09:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMsgReceiveEndpoint | unmatched — not counted | — | mentioned in finding WP-C1 and WP-N5 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterSidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-08-09 09:42:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x09bae4...c8e94d` — deployed 2023-06-02 10:05:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x09bae4...c8e94d` — deployed 2024-09-03 13:52:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2025-03-28 10:36:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd6ecfd...4fd54f` — deployed 2023-07-05 07:06:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x09bae4...c8e94d` — deployed 2025-03-10 12:33:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-12-04 12:29:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2023-08-18 13:11:39+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-02 was 3d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterBaseUpg | unmatched — not counted | — | mentioned in findings WP-C1, WP-I8, WP-I10 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxy | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxyBaseUpg | unmatched — not counted | — | mentioned in finding WP-H6 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleBoosterBaseUpg | unmatched — not counted | — | mentioned in findings WP-H6, WP-I8 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbExternalToken | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x6ee066...01b923` — deployed 2024-09-03 13:56:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ee066...01b923` — deployed 2025-03-10 12:34:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x86a201...a818c5` — deployed 2024-01-29 08:52:29+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7700eb...ed33b1` — deployed 2025-03-28 10:39:14+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-08-09 09:56:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-12-04 12:33:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3eabe1...114600` — deployed 2024-01-23 13:53:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-02-28 13:30:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbToken | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | DepositToken | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | VlEqb | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x70f619...7e72b9` — deployed 2024-12-04 12:29:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2023-08-18 13:12:53+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2023-07-05 07:06:48+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-03-28 10:37:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x70f619...7e72b9` — deployed 2023-06-02 10:06:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2025-03-10 12:33:41+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55...25e849` — deployed 2025-08-09 09:46:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-09-03 13:54:48+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-02 was 3d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | BaseRewardPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x52f0bb...789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1...bb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e...84d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167...4264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20...01dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140...0433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-05 was 30d from audit; next candidate 74d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxySidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x4d32c8...0c26bf` — deployed 2023-08-18 13:07:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x18c616...e2b356` — deployed 2025-08-09 09:32:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4d32c8...0c26bf` — deployed 2025-03-28 10:34:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x479603...9e218d` — deployed 2025-03-10 12:32:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x920873...56a3b8` — deployed 2024-12-04 12:26:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x479603...9e218d` — deployed 2024-09-03 13:25:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x646279...f1e6e3` — deployed 2023-07-05 07:04:26+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x646279...f1e6e3` — deployed 2023-06-01 18:59:30+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-01 was 4d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxyMainchain | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x646279...f1e6e3` — deployed 2023-06-01 18:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterMainchain | unmatched — not counted | — | mentioned in finding WP-I10 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | BaseRewardPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1...bb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e...84d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167...4264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20...01dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140...0433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | PendleCampaign | unmatched — not counted | — | Mentioned in finding PVE-001 as sharing same issue | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | EqbMasterChef | unmatched — not counted | — | Target in findings PVE-002, PVE-004 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | PendleBoosterBaseUpg | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x660e0d...cc9fa9` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x22fc5a...ce4455` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x660e0d...cc9fa9` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x71e0ce...401ebf` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x55f140...0433a8` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9739d1...bb4d6f` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0140de...91d3bc` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb3c40b...df99ca` | BribeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a5a43...bbd36c` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x06fd8e...534f37` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7700eb...ed33b1` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6408d9...d16005` | ePendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xb2d167...4264c8` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7700eb...ed33b1` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2350ea...709913` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c9b5b...0029f5` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ae382...45c577` | EPendleProxyOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4f1cdf...3d3452` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6668f0...e84431` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x02c033...d981e4` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e73e7...ea4531` | EpendleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x02c033...d981e4` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9f1453...ca341a` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x4f1cdf...3d3452` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf19fbc...e94cec` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x89a4e4...63186b` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9f1453...ca341a` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x7700eb...ed33b1` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9f1453...ca341a` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4250ea...654a92` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x5e73e7...ea4531` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x86a201...a818c5` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x898ca9...3602b3` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6ee066...01b923` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x2350ea...709913` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x6ee066...01b923` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x741620...c4fecc` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3eabe1...114600` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7700eb...ed33b1` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x52f0bb...789ca5` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd6ecfd...4fd54f` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09bae4...c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x0140de...91d3bc` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x09bae4...c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x660e0d...cc9fa9` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x52f0bb...789ca5` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x3ce842...ad4e50` | EQBOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x357f55...25e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22fc5a...ce4455` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x70f619...7e72b9` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xd8967b...73ec27` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x70f619...7e72b9` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc7517f...421e32` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7517f...421e32` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x357f55...25e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x3e7ef8...276747` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9e1028...6840e0` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x48540d...6fc335` | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x76c37f...858481` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf3a6f...dca2a0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x010cd9...80a50a` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc6e669...f239f0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfbcfe...bbad9c` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x374ca3...468609` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x372277...b8319f` | VaultEPendleArbi | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x22fc5a...ce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0140de...91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x71e0ce...401ebf` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x357f55...25e849` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x71e0ce...401ebf` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x70f619...7e72b9` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x22fc5a...ce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x88bb2b...289032` | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf9ee98...7e2037` | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd6ecfd...4fd54f` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfe80d6...740b2b` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x52f0bb...789ca5` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09bae4...c8e94d` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd6ecfd...4fd54f` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 20 |
| standard_library | 10 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 31 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: temporal_name=6, unique_name=2

Zero-match audit list:

- [3549] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf
- [3550] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf
- [3554] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
