# Agentic Audit Brief: VaultCraft

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: VaultCraft (`vaultcraft`)
- Website: [https://vaultcraft.io/](https://vaultcraft.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon
- Contract surface: 229 unique implementations (244 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $542,645.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VaultCraft. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, bsc, ethereum, optimism, polygon. Structural roles: 6 core, 5 supporting, 2 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (6), supporting (5), unclassified (2)
- Contract kinds: contract (12), unclassified (1)
- Detected standards: erc20 (3), erc20permit (2), erc165 (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4), solmate (2)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x007318dc89b314b47609c684260cfbfbcd412864`, chain 1)
- UnnamedContract (`0x47fd36abceeb9954ae9ea1581295ce9a8308655e`, chain 1)
- UnnamedContract (`0x6aa03ebab1e9cb8d44fd79153d3a258ffd48169a`, chain 1)
- UnnamedContract (`0xd57d8eec36f0ba7d8fd693b9d97e02d8353eb1f4`, chain 1)
- UnnamedContract (`0x6f0fecbc276de8fc69257065fe47c5a03d986394`, chain 10)
- UnnamedContract (`0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a`, chain 10)
- UnnamedContract (`0xe8647ea19496e87c061bbad79f457928b2f52b5a`, chain 56)
- UnnamedContract (`0xb205e94d402742b919e851892f7d515592a7a6cc`, chain 42161)
- ClonableBeaconProxy (`0x59a696bf34eae5ad8fd472020e3bed410694a230`, chain 42161)
- ClonableBeaconProxy (`0x68ead55c258d6fa5e46d67fc90f53211eab885be`, chain 42161)
- FeeRecipientProxy (`0x74bb390786072ea1329f270ca6c0058b2d1afe3f`, chain 1)
- GnosisSafeProxy (`0xb85e0d4ad9078676ca86c6baa51228ab3e21f5da`, chain 1)
- MiniMeToken (`0xd0cd466b34a24fcb2f87676278af2005ca8a78c4`, chain 1)
- OptimismMintableERC20 (`0xd41d34d6b50785fdc025cad971fe940b8aa1be45`, chain 10)
- OptionsToken (`0xafa52e3860b4371ab9d8f08e801e9ea1027c0ca2`, chain 1)
- UChildERC20Proxy (`0xc5b57e9a1e7914fda753a88f24e5703e617ee50c`, chain 137)
- VaultRouter (`0x4995f3bb85e1381d02699e2164bc1c6c6fa243cd`, chain 1)
- VaultRouter (`0x3828845f4d7212b6a0dc3d67482aff4544002919`, chain 10)
- VaultRouter (`0x48943f145686bf5c4580d545cda405844d1f777b`, chain 42161)
- Voting Escrow (`0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a`, chain 1)
- WeightedPool2Tokens (`0x577a7f7ee659aa14dc16fd384b3f8078e23f1920`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 209 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 20 of 229 unique; 209 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/22
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 207
- Unique implementations: 229
- Raw deployments: 244
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 4.5% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeRecipientProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260605 | `0x74bb390786072ea1329f270ca6c0058b2d1afe3f` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GenericVaultAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6dfe8b986e89ce841331f833ba82dc12b8cd828` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x770f4e38615e24e9e438b30cfabf411ec499f9b6` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-260627 | `0xb85e0d4ad9078676ca86c6baa51228ab3e21f5da` | ⚠️ Unaudited |
| LockVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d383fc43f6c370ddd3975cf9e363ad42367697` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260609 | `0xd0cd466b34a24fcb2f87676278af2005ca8a78c4` | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93`; arbitrum `0xe1543d4b3b25913d788ccf80288095ab298f20f8` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-260617 | `0xd41d34d6b50785fdc025cad971fe940b8aa1be45` | ⚠️ Unaudited |
| OptionsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260607 | `0xafa52e3860b4371ab9d8f08e801e9ea1027c0ca2` | ⚠️ Unaudited |
| OracleVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x11eaa7a46afe1023f47040691071e174125366c8`; ethereum `0x54c5515133dd9ced5c8f0bff834a2c004d9b7ccc`; ethereum `0x7b42e0d1b7f2111b04c6547fca8ca2b0f271498c`; ethereum `0xcf9273ba04b875f94e4a9d8914bbd6b3c1f08edb`; ethereum `0xd13f3d74904101ee2b8690d5ff7499abf434c3ea`; ethereum `0xdb06a9d79f5ff660f611234c963c255e03cb5554`; ethereum `0xdb435e82b853c85dfbec81dc1120558e77632a2a`; ethereum `0xe66f1abc862f2730d5cdc3c780da2052c7aa4cbd` | ⚠️ Unaudited |
| PORExchangeRateFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7d271ce727252053748f3c3adab5e7c33dc3f3` | ⚠️ Unaudited |
| StakingVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-260631 (2 proxies) | 2 deployments: arbitrum `0x59a696bf34eae5ad8fd472020e3bed410694a230`; arbitrum `0x68ead55c258d6fa5e46d67fc90f53211eab885be` | ⚠️ Unaudited |
| StringPoRAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2091c4eccb16756c2ade0a298fcc75c25a3219` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-260629 | `0xc5b57e9a1e7914fda753a88f24e5703e617ee50c` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x434e7ea9bc77c93c3f4680862281603338c7ae02`; ethereum `0xa48d49f63dfc185cdd409b65f042955f509d9658`; optimism `0x4e93cc7b2d4be75b9c3cfbc6436dd4315c46c412`; arbitrum `0xc9ed56fbcbc3f0ce764d38e039cdaf36aa3c284c`; arbitrum `0xd11a312a7d9745c62dfc014d72e7bb2403dabf72`; arbitrum `0xd3a17928245064b6df5095a76e277fe441d538a4` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-260599 | `0x4995f3bb85e1381d02699e2164bc1c6c6fa243cd` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-260613 | `0x3828845f4d7212b6a0dc3d67482aff4544002919` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-260621 | `0x48943f145686bf5c4580d545cda405844d1f777b` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260595 | `0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260601 | `0x577a7f7ee659aa14dc16fd384b3f8078e23f1920` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x788dbb1888a50e97837b9d06fd70db107b082a12`; ethereum `0xf8207f71aa87725f412125d06e57cb8fd912f04d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (207)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260592 | `0x007318dc89b314b47609c684260cfbfbcd412864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008a1832841b0bba57886da2005ae7f666efecc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032f4dbfdf5b0851908a9a85aea2f408753d192d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0989b0618b039a0494486146c4f8f4869436988d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dd50a98654addeb48287c7e8301c6640d050649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfb88861123a8a37ab109de90164b1a23974dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121936a3a28390035f3c9ec965743bf6ab6d90a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c1701d28db5c08586c58469be1d3da279d39c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153515d39d84b762a8bf7606e37af74e8f97f4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19433012db9e7f53a969c8a1a5436b219fb72ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a48e2c22aa0b63fa47f4e2cb0ed7862282c1cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aaafe03a8a2e93a399dbce03f88bbaff1b08d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9432248c5437c52a6cdff701259c247f870f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b546b365809b061ecab0dbdb57b2db12f29869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2529a6ac43acad57fe82f850d7dc824a44d2e6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x268aefe36a154e762cfc2488d06f4fc1b009e6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5a6b779e3a227b20825e823924574211ceec8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31ccea38dafdd20082645937f7235bcdc5aaaac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31f687c0f28bb10b0296de15792407f6c0d62f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377dfcc7b9ce9add96347f34b2303c9bd8067e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b51bba174478d641770bf4356a1bf3c215aed49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9dd8c572bad16298d2ce6bc37baba686dcc4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5936efe69cbf837fde12fbbe43f00c8c0660a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4083382c8ae95247823ce1a699a23fd458900a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4485b515b648bad2bc72c6c66ce5e6ec109438db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260597 | `0x47fd36abceeb9954ae9ea1581295ce9a8308655e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2a63a08a8663c66b3a908f4890f34c0cabc111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b2294b16673f3d0951ea84018934118f0c2245c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dff3aba0fbd61c332f38205ed4a8ba42b4407d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec671e19730dd92aa7cb3399970dbe988f88111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0c9257306da6c835825f531fe96d5e776aa015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502a30a607680298a8783d7c47c1151bdfdeb171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508b2d6289fe46010019f7b4c82c8330b07139e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a768bf8d5fcd42e82cb08c81d02a48fb84c6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564fbe59c448743fa9382e691a0320458f6dcde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57f0d23a643164915cc1a0cdd883d09dd4f92f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58722b55cd31780032a49e70128c644d867d62d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59fd900ca80bf914374aafb1d16ab12ae1234f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af95546a11c6bb9b0fbee86324c3a9d88000778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7162342028a99fe1f81cbc0fb98589c407d4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6028ad2df05a8c4928c7867aec7cab33ea7e25fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62ee7d6f2ddac7cda8ac768d54273d55cc122057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6391774be2a8af18061621ff66b79a6ab21dca94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e14854a4d7240fd311ada079762fe984b68e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658a94ef990c5307707a428c927adcb65b89bd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e2e5c5040c474841e9efa0764a967953ef648c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6703266eea06248f157171bb63fb5e326cfaf8c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260603 | `0x6aa03ebab1e9cb8d44fd79153d3a258ffd48169a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7241820d17374eaaa312fd69209a64bc1f3a649c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768ba3da02de34bbcbc4be34e50d7ff5c1415a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779fc28f55c1db147edcf6d5ee5569d361d963fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e88ca17a6d384dcbb13747f6767f30e3753e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782b9c6e3b03c48b5dde3d5ea299e7e5eed89567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d884bb872a3118d29bb41856fb5963f995b3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e077cceafa4e55f5189c8637b765c3a2ab4e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a33b5b57c8b235a3519e6c010027c5cebb15cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a68123429b55ebe6cbd1db489d0ff83da55f1ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d51baba56c2ca79e15eec9ecc4e92d9c0a7dbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8133ca3ab91b3fe3792992ea69720ca6d3a92163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841af31c35fce829dbb939466239dc32f96840ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84aa5cd5b75f8a9f09b1de8f9b7e71244242fd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872418226d8dbd423084007f33b8e242d5c3c074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87520b96405ba8e846142262d246f6d36f6b831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877ff2b4517a323954d794f1af4c3bb7a64af93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8a73b111e5fc0048a179a5d7dbc3bca08d1ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9481468b7ea2abe4ac6db15567e00a215a2603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c006903d618bada6efa128145b491ca4a5966b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6e2cca7e363bac3c64009280b23ae17804eaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b8424d3774b670a3cf1fc0c4f70b5c0c34624c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f60021b107867b970de439d93f023e472947a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9495f3decae47fc0d5897bf6831bed231890c5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c28249029d0c660716f0a98569134eef144d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ee890c8162a60b09a4c672547a45bc66e7ad6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973f41d70e8aa05519a1b92aa685c4cca522bf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99a53fab6fbd1eacb59ae998da2dbf130be94c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a5b41fe5a19975243a7a1876b5e15ac4182286f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daaa6a2bdfc277478be7304a51c3e68b3685dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0c5d524dc3ff0aa734c52aa57ab623436364e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed1f82db690b6219cd0425f4b140c701e8c1753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b22d5f534383026edf5f44cb9c957efcf56b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa199409f99bdbd998ae1ef4fdaa58b356370837d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5aef04e03789ad15405d153a82d0b128c36988b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f5e90304758250764ad26cbdd04b68d6ce5d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7604c600eba3f075347dc9f0cb221181300527b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76331558b8d501dd644603e98ae02e291bbd197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84397004abe8229cc481ce91ba850ecd8204822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c5815f6ea5f7a1551541b0d7f970d546126bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa733e18a26c23fbfdadf9b2be846f67412d0467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaadcadb8514c33455635fda3b6ebe19e90555440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf810647e3a52c05063f5babb9a6fbeab3f3bed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0dde847b5837f97b302b807dcaee2fba9039b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1804e09c431943939f4470c8ee11c9b0232f0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3404f101f11a14988c4111e30006972edbb99ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64d29f6ab71a11e55953a6ee030a92e6acb8814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb673c0763d592be8a0e57a136540acc7e164aaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7aadfc700e5adc288473c0ba0f9473550ab7483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e3db191e6e25aab1d13d6fd91df9e1ab7966f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb49b6e7b045e4a0f5e7d9c36ce6826340bd939c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5b77a1f61ece8feab332f2d437815983c00574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd18c2d7e186c6f56357482087079f7c0409fbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4458cfa154ea9ade45baf4da6136cbc3a70f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf8217477f304ea1d9d20fffc44463ca09bcc8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59b7ca9d2556dfebcf4f1c4a357b590ab54583c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9b383c73b915648dba1204c3670a883b38f41ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca227f32917cec6c579b0030920b47387e8fbd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8a6287a69977022ad3b5211d568192e131a574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3ac66020555edce9b54dad5ec1c35e0478b887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd158ec0bc85c1b109b1d2fe962be492f9f50499e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e538f6a2c1aa9b23bfec3d17dee1a98d7991a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24844c1eb111c1385a311deec62533a09d4c86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3035ed848924b60977a098a7a98441a886d3fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ffed2025320453a937a77f19128dd1acc25d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd522ce5794d7a12539c9d966c496cd674d37d29b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260611 | `0xd57d8eec36f0ba7d8fd693b9d97e02d8353eb1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd76f37faf4bfb7044a4f78427312a8f1da405f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb3a95b2e43636acfd6a108d35c10055666c411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce45feab60668195d891242914864837aa22d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd21bc8d4e690a9f97e5f47ae419b867c07522dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9b9c1151587d5c087ce208b38aea5a68083110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3514a5e431442d794a1aa738ac94984b593c799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f4645422550447cfa470f6f6387cafcc3dac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecee4b038485ab05d9ddfa19991ef9ed5ea8cdec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecef1f6d37c51a450111ff463d48e6d72bbb2668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfd61f20d41731df0cffc30f93839d44ef888fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4e3a8980e2186824b32d365714882c881b4899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0fe24290963878be0c7ad1a3a445ede4751fd67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a89b67207b83acff043d353d8b681fa6c2b566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf76b7de04a76609766f437d2eb6021748c0598af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82316c0cd110db4c4a6c15f85dfad7266551854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e4663ae3b37e8540fa62329d13ce454e5e3df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb398a42e9befb31680db1a230f5748d409e6de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc1437d21e1ec7602c5e726f4a7ff35bc6c163cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc90a1b7e86e20607871a23b0ca560591a5db30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd2f659356758b47162f7c27987a72a485c86f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdba40d5502cba8163b09955c7abbbafc349bcbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7ff5404aa57c7d05c974b2def16d5f830b722e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff30a56c6413a5429d260a041d494509c8876e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05cf4e9de040e1f83b53e31583e608fd30838de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10710562d45a5356d32ad27eea9f61f6ec44cc19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x133d8127bed4bb7ad9ba8e924590c0e771a308ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2732a8bb7f7bef891a856b816fccf73e8fda28f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x276890cd41e256952663798637f88d3938f8930b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b276e8621f455a04c2279be3c1648780ef0414b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3fcc4ea703054453d8697b58c5cb2585f8883c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41813a5303597a68c0a780ff37a827b9c7e84397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x432a97a2db81bde9978dd2430e1415fd0029a68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x504f828886ab10d09ca1c116d6e1c5b8963cb109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6362042f9f7a96a9d1d90c519db21592fdf145eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64af9c2c2069353aaa5fa0d2a9942c2a2dc212e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260615 | `0x6f0fecbc276de8fc69257065fe47c5a03d986394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7226f3482501f1dcb7087951e4577a326cf761ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x757d953c53ad28748acf94ad2d59c13955e09c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x795d90945e5b9b320410b31e6e544b647d0ea5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b1987844939cb8b185b4968ec08565e0127c15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d224f9eaf3855ce3109b205e6fa853d25bb457f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81fdf895a700cc679755509e9e582ed33cbca9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x823033d1014f0f4da2bb5b2ce4bc73d6e7eae7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e69c90ff6aafa7c2c8b175ad4e29d3662c0fbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x927ff7d337d861594f1969141480be85c733f13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9854c6b2c3aaa61b19136bb372b59f5856f75d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x99470be7c3c60548d417cadf2e8d75cfa6f57637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c45fe2bf8f76f0de45ea9f56c3acf6613c87675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f76282daf16566f7d8d6cf47b5a1c257e48599c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa04f549b1eab2d6669ba57da3e528587082ef5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa18735b352a926ad957f94ff40764e63139ec0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0da5ac5c813d2e7675f80563255e06c79dc609a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4cb045c30211377656ea691f66e44db2bef410f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9cc3eac603b7e90091909ea15c3cad0bf57e5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfe6b93bd6e6ca185e925d29ccffb53c3a527162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0789c92e210ae2bb74c4e67bfeb4ba488737a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd84d5d1ea37647b4ae580e0170e322760b2d3c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd9869e5e72119f09290ed818f20d07d4fda54733` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260619 | `0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef2d4ce0bcb8d9d729ae0d0d1a8f6840bfd773a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf5862457aa842605f8b675af13026d3fd03bfff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf64f4f0e6964eb0f94aa79a0f787dde57fa4c043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfed46bb65403d99eb666d8cabf815fdde4986d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffc8b56058d5d1116c347ce9021c08fb38a9cc6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260625 | `0xe8647ea19496e87c061bbad79f457928b2f52b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b64206eadd25f27145d1b29a27e3a242d0922f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bd690d27ae6a5036348a44fae5458ede27e472a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1db17afe14732a5267a0839d5f3de0af1426cb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ea65ae3d7e60e374221cde29844df81f447d68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23dbbe898a8b69ea0681f8d8c74f4b17daae5fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x243331e8e825db310fda328e35755670f878db9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25172c73958064f9abc757ffc63eb859d7dc2219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x504f828886ab10d09ca1c116d6e1c5b8963cb109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5769f1c62fa2aa6087df3dd1fa6a7ae89bb45ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57c041e4504b05a7b3a3597134a1da78e719fc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58a2704dea4168d307eff593e897ec73c6670f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b946b0b2d19f59884d756babaf93c079fbfc809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62ac4341eaa3f81649df6774cc16d9765e0a9cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69c5290eeae87d10d0b8d8dc6291dd31292a6a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x823033d1014f0f4da2bb5b2ce4bc73d6e7eae7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87ebac6021f133e217ff6b8e374cae2c3456936e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ac3b69aa4b14649f746dec66ab0e9ff1624482b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x932249c0ca46245a88455716a63b511208cbe824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x935c01e50f7c216dc7a97b1884f7431aaa164552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99fdfcc95a45ca4604e3c1eb86f2b5d9e217f460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260623 | `0xb205e94d402742b919e851892f7d515592a7a6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb67c4c9c3cebcec2fd3fde436340d728d990a8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb3c6f7c755eb9c83363249d883ccdc551232c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc09f5bd7582d02bb31825d09589f4773b65ecc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeff1094d76c4f44f17583d78ecfc4965d8078739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40749d72ab5422cc5d735a373e66d67f7ca9393` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 198
- Live contracts: 3
- Unknown liveness contracts: 195
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=3, unverified unclassified=195

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | exact address book overlap | UnnamedContract<br>`0xb205e94d402742b919e851892f7d515592a7a6cc` | project_anchor | unknown | live | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0b64206eadd25f27145d1b29a27e3a242d0922f9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1bd690d27ae6a5036348a44fae5458ede27e472a` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1db17afe14732a5267a0839d5f3de0af1426cb9e` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ea65ae3d7e60e374221cde29844df81f447d68c` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23dbbe898a8b69ea0681f8d8c74f4b17daae5fcd` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x243331e8e825db310fda328e35755670f878db9d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25172c73958064f9abc757ffc63eb859d7dc2219` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x504f828886ab10d09ca1c116d6e1c5b8963cb109` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5769f1c62fa2aa6087df3dd1fa6a7ae89bb45ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x57c041e4504b05a7b3a3597134a1da78e719fc73` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58a2704dea4168d307eff593e897ec73c6670f6a` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b946b0b2d19f59884d756babaf93c079fbfc809` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62ac4341eaa3f81649df6774cc16d9765e0a9cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69c5290eeae87d10d0b8d8dc6291dd31292a6a41` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x823033d1014f0f4da2bb5b2ce4bc73d6e7eae7a8` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87ebac6021f133e217ff6b8e374cae2c3456936e` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8ac3b69aa4b14649f746dec66ab0e9ff1624482b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x932249c0ca46245a88455716a63b511208cbe824` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x935c01e50f7c216dc7a97b1884f7431aaa164552` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x99fdfcc95a45ca4604e3c1eb86f2b5d9e217f460` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb67c4c9c3cebcec2fd3fde436340d728d990a8d9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb3c6f7c755eb9c83363249d883ccdc551232c9d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc09f5bd7582d02bb31825d09589f4773b65ecc9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeff1094d76c4f44f17583d78ecfc4965d8078739` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf40749d72ab5422cc5d735a373e66d67f7ca9393` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x007318dc89b314b47609c684260cfbfbcd412864` | project_anchor | unknown | live | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x008a1832841b0bba57886da2005ae7f666efecc4` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x032f4dbfdf5b0851908a9a85aea2f408753d192d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0dfb88861123a8a37ab109de90164b1a23974dc3` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x153515d39d84b762a8bf7606e37af74e8f97f4ea` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22b546b365809b061ecab0dbdb57b2db12f29869` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d5a6b779e3a227b20825e823924574211ceec8d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b51bba174478d641770bf4356a1bf3c215aed49` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d9dd8c572bad16298d2ce6bc37baba686dcc4a9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4083382c8ae95247823ce1a699a23fd458900a13` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a2a63a08a8663c66b3a908f4890f34c0cabc111` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b2294b16673f3d0951ea84018934118f0c2245c` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ec671e19730dd92aa7cb3399970dbe988f88111` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f0c9257306da6c835825f531fe96d5e776aa015` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x508b2d6289fe46010019f7b4c82c8330b07139e8` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55a768bf8d5fcd42e82cb08c81d02a48fb84c6be` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x564fbe59c448743fa9382e691a0320458f6dcde5` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57f0d23a643164915cc1a0cdd883d09dd4f92f7c` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58722b55cd31780032a49e70128c644d867d62d5` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59fd900ca80bf914374aafb1d16ab12ae1234f77` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5af95546a11c6bb9b0fbee86324c3a9d88000778` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f7162342028a99fe1f81cbc0fb98589c407d4bb` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6028ad2df05a8c4928c7867aec7cab33ea7e25fa` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62ee7d6f2ddac7cda8ac768d54273d55cc122057` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6391774be2a8af18061621ff66b79a6ab21dca94` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65e2e5c5040c474841e9efa0764a967953ef648c` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6703266eea06248f157171bb63fb5e326cfaf8c6` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x782b9c6e3b03c48b5dde3d5ea299e7e5eed89567` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a33b5b57c8b235a3519e6c010027c5cebb15cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d51baba56c2ca79e15eec9ecc4e92d9c0a7dbeb` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8133ca3ab91b3fe3792992ea69720ca6d3a92163` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x841af31c35fce829dbb939466239dc32f96840ae` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84aa5cd5b75f8a9f09b1de8f9b7e71244242fd6d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c006903d618bada6efa128145b491ca4a5966b3` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d6e2cca7e363bac3c64009280b23ae17804eaa5` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91b8424d3774b670a3cf1fc0c4f70b5c0c34624c` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9495f3decae47fc0d5897bf6831bed231890c5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x973f41d70e8aa05519a1b92aa685c4cca522bf0b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99a53fab6fbd1eacb59ae998da2dbf130be94c38` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a5b41fe5a19975243a7a1876b5e15ac4182286f` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e0c5d524dc3ff0aa734c52aa57ab623436364e6` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ed1f82db690b6219cd0425f4b140c701e8c1753` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0b22d5f534383026edf5f44cb9c957efcf56b27` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa199409f99bdbd998ae1ef4fdaa58b356370837d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7604c600eba3f075347dc9f0cb221181300527b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa84397004abe8229cc481ce91ba850ecd8204822` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8c5815f6ea5f7a1551541b0d7f970d546126bdb` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa733e18a26c23fbfdadf9b2be846f67412d0467` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaadcadb8514c33455635fda3b6ebe19e90555440` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf810647e3a52c05063f5babb9a6fbeab3f3bed5` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0dde847b5837f97b302b807dcaee2fba9039b81` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1804e09c431943939f4470c8ee11c9b0232f0b8` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb673c0763d592be8a0e57a136540acc7e164aaf8` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7aadfc700e5adc288473c0ba0f9473550ab7483` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9e3db191e6e25aab1d13d6fd91df9e1ab7966f3` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb5b77a1f61ece8feab332f2d437815983c00574` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd18c2d7e186c6f56357482087079f7c0409fbfa` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd4458cfa154ea9ade45baf4da6136cbc3a70f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca227f32917cec6c579b0030920b47387e8fbd10` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca8a6287a69977022ad3b5211d568192e131a574` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1e538f6a2c1aa9b23bfec3d17dee1a98d7991a9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd24844c1eb111c1385a311deec62533a09d4c86b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3ffed2025320453a937a77f19128dd1acc25d32` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd76f37faf4bfb7044a4f78427312a8f1da405f73` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdce45feab60668195d891242914864837aa22d8d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3514a5e431442d794a1aa738ac94984b593c799` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5f4645422550447cfa470f6f6387cafcc3dac37` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecee4b038485ab05d9ddfa19991ef9ed5ea8cdec` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecef1f6d37c51a450111ff463d48e6d72bbb2668` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xedfd61f20d41731df0cffc30f93839d44ef888fa` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2a89b67207b83acff043d353d8b681fa6c2b566` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf76b7de04a76609766f437d2eb6021748c0598af` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8e4663ae3b37e8540fa62329d13ce454e5e3df4` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc1437d21e1ec7602c5e726f4a7ff35bc6c163cd` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc90a1b7e86e20607871a23b0ca560591a5db30d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe7ff5404aa57c7d05c974b2def16d5f830b722e` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0989b0618b039a0494486146c4f8f4869436988d` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x121936a3a28390035f3c9ec965743bf6ab6d90a5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12c1701d28db5c08586c58469be1d3da279d39c5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19433012db9e7f53a969c8a1a5436b219fb72ab6` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a48e2c22aa0b63fa47f4e2cb0ed7862282c1cae` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1aaafe03a8a2e93a399dbce03f88bbaff1b08d60` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c9432248c5437c52a6cdff701259c247f870f88` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x268aefe36a154e762cfc2488d06f4fc1b009e6ab` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31ccea38dafdd20082645937f7235bcdc5aaaac2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31f687c0f28bb10b0296de15792407f6c0d62f5d` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x377dfcc7b9ce9add96347f34b2303c9bd8067e01` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e5936efe69cbf837fde12fbbe43f00c8c0660a1` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4485b515b648bad2bc72c6c66ce5e6ec109438db` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dff3aba0fbd61c332f38205ed4a8ba42b4407d6` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x502a30a607680298a8783d7c47c1151bdfdeb171` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x645e14854a4d7240fd311ada079762fe984b68e5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x658a94ef990c5307707a428c927adcb65b89bd8f` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7241820d17374eaaa312fd69209a64bc1f3a649c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x768ba3da02de34bbcbc4be34e50d7ff5c1415a38` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x779fc28f55c1db147edcf6d5ee5569d361d963fd` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77e88ca17a6d384dcbb13747f6767f30e3753e63` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78d884bb872a3118d29bb41856fb5963f995b3e5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79e077cceafa4e55f5189c8637b765c3a2ab4e76` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a68123429b55ebe6cbd1db489d0ff83da55f1ad` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x872418226d8dbd423084007f33b8e242d5c3c074` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87520b96405ba8e846142262d246f6d36f6b831d` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x877ff2b4517a323954d794f1af4c3bb7a64af93b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a8a73b111e5fc0048a179a5d7dbc3bca08d1ef4` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b9481468b7ea2abe4ac6db15567e00a215a2603` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92f60021b107867b970de439d93f023e472947a8` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94c28249029d0c660716f0a98569134eef144d45` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95ee890c8162a60b09a4c672547a45bc66e7ad6a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9daaa6a2bdfc277478be7304a51c3e68b3685dd3` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5f5e90304758250764ad26cbdd04b68d6ce5d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa76331558b8d501dd644603e98ae02e291bbd197` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3404f101f11a14988c4111e30006972edbb99ab` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb64d29f6ab71a11e55953a6ee030a92e6acb8814` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb49b6e7b045e4a0f5e7d9c36ce6826340bd939c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf8217477f304ea1d9d20fffc44463ca09bcc8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc59b7ca9d2556dfebcf4f1c4a357b590ab54583c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9b383c73b915648dba1204c3670a883b38f41ba` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce3ac66020555edce9b54dad5ec1c35e0478b887` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd158ec0bc85c1b109b1d2fe962be492f9f50499e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3035ed848924b60977a098a7a98441a886d3fa3` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd522ce5794d7a12539c9d966c496cd674d37d29b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbb3a95b2e43636acfd6a108d35c10055666c411` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd21bc8d4e690a9f97e5f47ae419b867c07522dd` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf9b9c1151587d5c087ce208b38aea5a68083110` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0fe24290963878be0c7ad1a3a445ede4751fd67` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf82316c0cd110db4c4a6c15f85dfad7266551854` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb398a42e9befb31680db1a230f5748d409e6de0` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd2f659356758b47162f7c27987a72a485c86f4b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdba40d5502cba8163b09955c7abbbafc349bcbe` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff30a56c6413a5429d260a041d494509c8876e20` | non_address_book | unknown | unknown | unverified | n/a | `0x2c3b135cd7dc6c673b358bef214843dab3464278` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0dd50a98654addeb48287c7e8301c6640d050649` | non_address_book | unknown | unknown | unverified | n/a | `0x919d5a6f2cbc0731380c26b4ac4f6183dd3a40c8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2529a6ac43acad57fe82f850d7dc824a44d2e6e8` | non_address_book | unknown | unknown | unverified | n/a | `0x919d5a6f2cbc0731380c26b4ac4f6183dd3a40c8` |
| optimism | exact address book overlap | UnnamedContract<br>`0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a` | project_anchor | unknown | live | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x05cf4e9de040e1f83b53e31583e608fd30838de3` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x10710562d45a5356d32ad27eea9f61f6ec44cc19` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x133d8127bed4bb7ad9ba8e924590c0e771a308ee` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2732a8bb7f7bef891a856b816fccf73e8fda28f1` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x276890cd41e256952663798637f88d3938f8930b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3b276e8621f455a04c2279be3c1648780ef0414b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3fcc4ea703054453d8697b58c5cb2585f8883c05` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x41813a5303597a68c0a780ff37a827b9c7e84397` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x432a97a2db81bde9978dd2430e1415fd0029a68a` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x504f828886ab10d09ca1c116d6e1c5b8963cb109` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6362042f9f7a96a9d1d90c519db21592fdf145eb` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x64af9c2c2069353aaa5fa0d2a9942c2a2dc212e6` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7226f3482501f1dcb7087951e4577a326cf761ee` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x757d953c53ad28748acf94ad2d59c13955e09c08` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x795d90945e5b9b320410b31e6e544b647d0ea5aa` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7b1987844939cb8b185b4968ec08565e0127c15e` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7d224f9eaf3855ce3109b205e6fa853d25bb457f` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x81fdf895a700cc679755509e9e582ed33cbca9a2` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x823033d1014f0f4da2bb5b2ce4bc73d6e7eae7a8` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x8e69c90ff6aafa7c2c8b175ad4e29d3662c0fbb2` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x99470be7c3c60548d417cadf2e8d75cfa6f57637` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9c45fe2bf8f76f0de45ea9f56c3acf6613c87675` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9f76282daf16566f7d8d6cf47b5a1c257e48599c` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa04f549b1eab2d6669ba57da3e528587082ef5b1` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa18735b352a926ad957f94ff40764e63139ec0a6` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb0da5ac5c813d2e7675f80563255e06c79dc609a` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb4cb045c30211377656ea691f66e44db2bef410f` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb9cc3eac603b7e90091909ea15c3cad0bf57e5c6` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xcfe6b93bd6e6ca185e925d29ccffb53c3a527162` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd0789c92e210ae2bb74c4e67bfeb4ba488737a0e` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd84d5d1ea37647b4ae580e0170e322760b2d3c7a` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd9869e5e72119f09290ed818f20d07d4fda54733` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xef2d4ce0bcb8d9d729ae0d0d1a8f6840bfd773a9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf5862457aa842605f8b675af13026d3fd03bfff0` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf64f4f0e6964eb0f94aa79a0f787dde57fa4c043` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0xfed46bb65403d99eb666d8cabf815fdde4986d94` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| optimism | unverified unclassified | UnnamedContract<br>`0x927ff7d337d861594f1969141480be85c733f13e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c8d9fc6d9d4323e8d226c62aee2f6d698dd9be6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf](https://1854965950-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FgF4N9JVFD9kYVbxfqUOJ%2Fblocksec_popcorn_v1.0-signed.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)](https://gist.github.com/gjaldon/f3d1e2410f6e52370c8f19e72b98ea5c) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)](https://gist.github.com/gjaldon/8d2067cd7b382a347c5ca4a5d01aa7c2) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [code4rena.com/audits/2023-01-popcorn-contest](https://code4rena.com/audits/2023-01-popcorn-contest) | Code4rena | Contest | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)](https://gist.github.com/0xruhum/4252cee7e84da6bb5b0a19ed00b5e34e) | 0xRuhum | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FmBWIydyZzVeNBuK3u5an%2FZokyo%20Audit.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2F0NB6k44GVu1IW2B2mOcG%2FPopcornMay2022.pdf) | G0 Group | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14099] spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf — matched: Scope explicitly lists files in audit2/src folder. Contract names extracted from file paths and findings.
- [14100] f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) — no match: No explicit scope section found; contracts extracted from findings and file paths referenced in the report.
- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) — no match: The report is a gist with findings for Peapods Strategies. No explicit scope section; contracts are inferred from findings.
- [14102] code4rena.com/audits/2023-01-popcorn-contest — no match: The provided text is a leaderboard for a Code4rena contest, not an audit report. No contracts in scope or audit date are identifiable.
- [14103] 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) — no match: No reason recorded
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf — no match: The audit report explicitly lists two contracts in scope: HysiBatchZapper and HysiBatchInteraction. The audit date is given as 'Nov 1st, 2021' on the cover page.
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf — no match: Scope explicitly lists three Solidity files: AffiliateToken.sol, Vault.sol, VaultFeeController.sol. Audit date inferred from 'June 2022' in title and header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | EIP | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | MultiRewardEscrow | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | MultiRewardStaking | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | Owned | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | OwnedUpgradeable | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | AdminProxy | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | CloneFactory | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | CloneRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | DeploymentController | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | FeeRecipientProxy | own contract | FeeRecipientProxy (selected) `0x74bb390786072ea1329f270ca6c0058b2d1afe3f` — deployed 2023-04-18 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | PermissionRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | TemplateRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | Vault | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultController | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultRouter | ambiguous — not counted | VaultRouter (alternative) `0x3828845f4d7212b6a0dc3d67482aff4544002919` — deployed 2024-03-13 14:55:41+03 — liveness: live (current_address_book_code)<br>VaultRouter (alternative) `0x4995f3bb85e1381d02699e2164bc1c6c6fa243cd` — deployed 2023-12-01 16:38:11+03 — liveness: live (current_address_book_code)<br>VaultRouter (alternative) `0x48943f145686bf5c4580d545cda405844d1f777b` — deployed 2024-03-13 14:56:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | AdapterBase | unmatched — not counted | — | mentioned in findings (Section 2.1.4, 2.3.1) | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | BeefyAdapter | unmatched — not counted | — | mentioned in findings (Section 2.1.7) | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapter | unmatched — not counted | — | mentioned in findings H-01, H-02, H-03, M-04, M-05, L-02 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | AdapterBase | unmatched — not counted | — | mentioned in findings H-02, H-03 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapterBalancerCurveHarvest | unmatched — not counted | — | mentioned in findings M-01, M-03, L-01 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapterBalancerHarvest | unmatched — not counted | — | mentioned in findings M-03, L-01 | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | BaseUniV2LpCompounder | unmatched — not counted | — | Referenced in findings M-01, L-02, L-03 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | BaseBalancerLpCompounder | unmatched — not counted | — | Referenced in findings M-01, L-02, L-03 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsBalancerUniV2Compounder | unmatched — not counted | — | Mentioned in L-01 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsUniV2Compounder | unmatched — not counted | — | Mentioned in L-01 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsBase | unmatched — not counted | — | Referenced in L-01 as __PeapodsBase_init(). | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AaveV2Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AaveV3Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AdminProxy | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | CompoundV2Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | ConvexAdapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | DeploymentController | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MasterChefAdapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MultiRewardEscrow | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MultiRewardStaking | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | Vault | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | VaultController | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | YearnAdapter | unmatched — not counted | — | — | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf | HysiBatchZapper | unmatched — not counted | — | Listed in scope: 'Contracts: HysiBatchZapper; HysiBatchInteraction.' | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf | HysiBatchInteraction | unmatched — not counted | — | Listed in scope: 'Contracts: HysiBatchZapper; HysiBatchInteraction.' | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | AffiliateToken | unmatched — not counted | — | listed in scope | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | VaultFeeController | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd0cd466b34a24fcb2f87676278af2005ca8a78c4` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd41d34d6b50785fdc025cad971fe940b8aa1be45` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafa52e3860b4371ab9d8f08e801e9ea1027c0ca2` | OptionsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x59a696bf34eae5ad8fd472020e3bed410694a230` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc5b57e9a1e7914fda753a88f24e5703e617ee50c` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4995f3bb85e1381d02699e2164bc1c6c6fa243cd` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3828845f4d7212b6a0dc3d67482aff4544002919` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x48943f145686bf5c4580d545cda405844d1f777b` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a` | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x577a7f7ee659aa14dc16fd384b3f8078e23f1920` | WeightedPool2Tokens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 207 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 42 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=2
- Match method counts: unique_name=1

Zero-match audit list:

- [14100] f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)
- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)
- [14102] code4rena.com/audits/2023-01-popcorn-contest
- [14103] 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf

Fork inheritance lineage and inherited audits are included when available.
