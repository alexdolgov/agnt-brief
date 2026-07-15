# Agentic Audit Brief: UFarm Digital

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

- Project: UFarm Digital (`ufarm-digital`)
- Website: [https://ufarm.digital](https://ufarm.digital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 124 unique implementations (137 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $523,352.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for UFarm Digital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe28161...29a15b`, chain 1)
- UnnamedContract (`0xdf3a99...0a1e40`, chain 42161)
- AFI test x2 (`0xe1e189...621b4a`, chain 42161)
- Bitcoin Prime Pool (`0x88f121...361e71`, chain 42161)
- BTC invest (`0x4e6544...4fb921`, chain 42161)
- CG3 (`0x433780...c67bab`, chain 42161)
- Crypto Nova Pool (`0xc2efd7...bd8915`, chain 42161)
- DeFi USD Income (`0xa0d9ff...648ce2`, chain 1)
- DeFi USD Income (`0xa6ade8...88119b`, chain 42161)
- DeFi USD Income (`0xd96454...5bfd4d`, chain 42161)
- DIGITAL.dorm (`0x7cc0d6...3eb099`, chain 42161)
- ERC1967Proxy (`0xe92b70...91f305`, chain 1)
- ERC1967Proxy (`0x46df84...b8a81f`, chain 42161)
- Excellion Alpha Yield (`0x3260f8...84e5ab`, chain 1)
- First eth pool (USDC only) (`0x076e71...e079cd`, chain 1)
- First Eth pool multisig (`0x53b620...5aa8bb`, chain 1)
- Funders (Market Neutral) (`0x88b672...b6d51c`, chain 1)
- Funders (Market Neutral) (`0xab59de...8ef0d0`, chain 1)
- Helios Lotus USD yield (`0x2a82e0...b9e046`, chain 1)
- Inhibitory Synapse (`0x3a9eb0...b7a4c3`, chain 1)
- LaLexpo $1 pool (`0x69ea8c...1bed1d`, chain 42161)
- MPCVault (`0xfcf015...57e230`, chain 1)
- New Generation (`0xa6da5c...f86825`, chain 42161)
- Next gen pool (`0xeb23ef...90e25e`, chain 42161)
- Nova Growth Pool (`0xb187ba...d80421`, chain 42161)
- POINTS TEST (`0xf2a832...e2caa6`, chain 42161)
- Profit test (`0x012ca6...379416`, chain 42161)
- reg22-01 ed (`0xcae5b5...258e93`, chain 42161)
- Reliable Low Risk Stable pool by Stan DeFi (`0xce9c94...8fc597`, chain 42161)
- RWA Vault (`0xdec879...817638`, chain 1)
- Single token pool (`0xe47d9c...3a7529`, chain 42161)
- smoke_08_06 ed (`0xd5e545...ac0d62`, chain 1)
- Spring Hills Blue Chips (`0x505665...de22a8`, chain 42161)
- stable (`0x9a4bc9...2b99ac`, chain 42161)
- Stable farming (`0xabd5c8...ca8175`, chain 42161)
- Stable Future (`0x56d615...2e11db`, chain 42161)
- Stable Future 2 (`0xdfef07...19233a`, chain 42161)
- Supreme Ethereum (`0x413040...8d8822`, chain 42161)
- TargetAPY (`0x4dd6ae...b5ce5f`, chain 42161)
- Ultra Yield Stable Pool (`0x752a8c...ddb0a4`, chain 1)
- USD test (`0x1afe30...b01beb`, chain 42161)
- USDC only test pool (`0xd71452...aca13c`, chain 42161)
- USDT + USDC (`0x0638a9...9ba9d9`, chain 1)
- USDT Only (`0x9779a6...33044e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 42/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 42 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 42 of 124 unique; 82 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 124
- Raw deployments: 137
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0962ac...da5892`; ethereum `0x515414...f63f67` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a1f78...615a9a`; ethereum `0xf666e2...07befe` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395266 | 2 deployments: ethereum `0xe28161...29a15b`; ethereum `0xe92b70...91f305` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0ec8f2...25aaa1`; arbitrum `0x9d7e10...5c1ad0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395267 | 2 deployments: arbitrum `0x46df84...b8a81f`; arbitrum `0xdf3a99...0a1e40` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8a39db...0b1ab8`; arbitrum `0xa89b38...4ed40f` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42b24a...0a48ec` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc36442...11fe88` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x91ae84...9294f3`; arbitrum `0xee6a57...c24785` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb75354...e90cf2` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb27308...ce5ab6` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61ffe0...30b21e` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe59242...861564` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x075b36...aa8a60` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x68b346...65fc45` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfd813...47f573` | ⚠️ Unaudited |
| UFarmCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc66660...4376fb` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x06a7be...faae15`; ethereum `0x43270b...0ea4ff` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6c13a6...34560e`; ethereum `0x83a82a...ff1540` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x828d19...947f70`; ethereum `0xd4161f...a5a3d3` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0c8ed8...f848b4`; arbitrum `0x9cb749...843f9a` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7de353...c36503`; arbitrum `0xf1a9c5...382413` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xadc240...7a58d5`; arbitrum `0xd3e1ad...4600d8` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa5644e...f92b34` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AFI test x2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395262 | `0xe1e189...621b4a` | ❓ Unverified |
| Bitcoin Prime Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395250 | `0x88f121...361e71` | ❓ Unverified |
| BTC invest | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395245 | `0x4e6544...4fb921` | ❓ Unverified |
| CG3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395242 | `0x433780...c67bab` | ❓ Unverified |
| Crypto Nova Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395256 | `0xc2efd7...bd8915` | ❓ Unverified |
| DeFi USD Income | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395234 | `0xa0d9ff...648ce2` | ❓ Unverified |
| DeFi USD Income | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395252 | `0xa6ade8...88119b` | ❓ Unverified |
| DeFi USD Income | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395260 | `0xd96454...5bfd4d` | ❓ Unverified |
| DIGITAL.dorm | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395249 | `0x7cc0d6...3eb099` | ❓ Unverified |
| Excellion Alpha Yield | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395228 | `0x3260f8...84e5ab` | ❓ Unverified |
| First eth pool (USDC only) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395226 | `0x076e71...e079cd` | ❓ Unverified |
| First Eth pool multisig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395230 | `0x53b620...5aa8bb` | ❓ Unverified |
| Funders (Market Neutral) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395232 | `0x88b672...b6d51c` | ❓ Unverified |
| Funders (Market Neutral) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395235 | `0xab59de...8ef0d0` | ❓ Unverified |
| Helios Lotus USD yield | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395227 | `0x2a82e0...b9e046` | ❓ Unverified |
| Inhibitory Synapse | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395229 | `0x3a9eb0...b7a4c3` | ❓ Unverified |
| LaLexpo $1 pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395248 | `0x69ea8c...1bed1d` | ❓ Unverified |
| MPCVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395238 | `0xfcf015...57e230` | ❓ Unverified |
| New Generation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395253 | `0xa6da5c...f86825` | ❓ Unverified |
| Next gen pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395264 | `0xeb23ef...90e25e` | ❓ Unverified |
| Nova Growth Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395255 | `0xb187ba...d80421` | ❓ Unverified |
| POINTS TEST | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395265 | `0xf2a832...e2caa6` | ❓ Unverified |
| Profit test | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395239 | `0x012ca6...379416` | ❓ Unverified |
| reg22-01 ed | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395257 | `0xcae5b5...258e93` | ❓ Unverified |
| Reliable Low Risk Stable pool by Stan DeFi | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395258 | `0xce9c94...8fc597` | ❓ Unverified |
| RWA Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395237 | `0xdec879...817638` | ❓ Unverified |
| Single token pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395263 | `0xe47d9c...3a7529` | ❓ Unverified |
| smoke_08_06 ed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395236 | `0xd5e545...ac0d62` | ❓ Unverified |
| Spring Hills Blue Chips | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395246 | `0x505665...de22a8` | ❓ Unverified |
| stable | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395251 | `0x9a4bc9...2b99ac` | ❓ Unverified |
| Stable farming | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395254 | `0xabd5c8...ca8175` | ❓ Unverified |
| Stable Future | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395247 | `0x56d615...2e11db` | ❓ Unverified |
| Stable Future 2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395261 | `0xdfef07...19233a` | ❓ Unverified |
| Supreme Ethereum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395241 | `0x413040...8d8822` | ❓ Unverified |
| TargetAPY | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395243 | `0x4dd6ae...b5ce5f` | ❓ Unverified |
| Ultra Yield Stable Pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395231 | `0x752a8c...ddb0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e4ed...d0da97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d5de...333f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a1efb...334ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6738e8...c33e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989610...c6acee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5c39...4fc084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18171...178a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8b64...26e384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec07c3...954a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x054145...13e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x084a08...ff5733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19e96d...b32472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b31bf...363dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x224e26...ecb9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab9c6...46f2be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f509c...ebd9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30187e...94455e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x322412...aedad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32b707...9a6995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x330552...9ac6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x338037...2235c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33b3f4...6255a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x388cb7...b3ceaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bfcb2...a8e57d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e6194...af460c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x444cbb...31ebac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54d271...237d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b623e...dde10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bb9f9...2f52b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d293f...d7b5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5eb095...935784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d8b2...8bf1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67624f...8f0fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6db9d1...42dad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70555f...359a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x785a40...db2c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dd9c4...a29c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x825b84...07f404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x826f6a...f6feef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82898a...ff4ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x844811...5c6664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x971553...71b484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b0f1c...c8cef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b584b...089dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0282d...ed5e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6f3b8...104b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacebc7...ca1052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9fb31...d9e9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc02c6f...744471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc42bfa...509f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc66dc8...713aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca9bbf...f12804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfce6c...1eebd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4ea95...86a318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd974d0...388cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfcb4b...fcc1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe72fcf...b6499e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec0b81...93cf23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2e605...27812c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe6144...0dd659` | ❓ Unverified |
| USD test | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395240 | `0x1afe30...b01beb` | ❓ Unverified |
| USDC only test pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395259 | `0xd71452...aca13c` | ❓ Unverified |
| USDT + USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395225 | `0x0638a9...9ba9d9` | ❓ Unverified |
| USDT Only | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395233 | `0x9779a6...33044e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ufarm-audit-report-2023-1.1.pdf](https://github.com/Decurity/audits/blob/master/UFarm/ufarm-audit-report-2023-1.1.pdf) | Decurity | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [ufarm-may-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/ufarm-may-25(Final).pdf) | Hexens | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14047] ufarm-audit-report-2023-1.1.pdf — no match: No reason recorded
- [14048] ufarm-may-25(Final).pdf — no match: Extracted contracts from scope section and findings. Audit date from final report date (30 June 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ufarm-audit-report-2023-1.1.pdf | CoreWhitelist | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | ECDSARecover | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | IUFarmPool | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | SafeOPS | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmCore | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmFund | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmPermissionsModel | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmPool | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UnoswapV2Controller | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UnoswapV3Controller | unmatched — not counted | — | — | no |
| ufarm-may-25(Final).pdf | UFarmPool | unmatched — not counted | — | listed in scope and findings | no |
| ufarm-may-25(Final).pdf | FundFactory | unmatched — not counted | — | finding UFARM1-10 | no |
| ufarm-may-25(Final).pdf | UFarmCore | unmatched — not counted | — | mentioned in findings as caller of FundFactory | no |
| ufarm-may-25(Final).pdf | UFarmFund | unmatched — not counted | — | mentioned in findings as deployed by FundFactory | no |
| ufarm-may-25(Final).pdf | UnoswapV2Controller | unmatched — not counted | — | finding UFARM1-5 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [14047] ufarm-audit-report-2023-1.1.pdf
- [14048] ufarm-may-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
