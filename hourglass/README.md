# Agentic Audit Brief: Hourglass

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Hourglass (`hourglass`)
- Website: [https://hourglass.com/](https://hourglass.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bob, ethereum, mantle
- Contract surface: 285 unique implementations (321 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $116,802.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hourglass. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 79 contract row(s) across base, bob, ethereum, mantle. Structural roles: 73 core, 6 supporting. 70 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 79
- Structural roles: core (73), supporting (6)
- Contract kinds: contract (76), abstract (3)
- Detected standards: erc20 (63), erc20permit (9), erc1967proxy (6), erc165 (5), erc4626 (1), multicall (1), ownable (1), pausable (1)
- Frameworks: openzeppelin-upgradeable (70), openzeppelin (68), solmate (9), chainlink (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 70

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 79; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 129 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 156 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 19
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/152
- Verified + Unaudited implementations: 152
- Verified by bytecode match: 0
- Unverified implementations: 133
- Unique implementations: 285
- Raw deployments: 321
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (152)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f89cc0551c944ceae872997a4060dc95622d8f` | ⚠️ Unaudited |
| AccountsGuard | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b` | ⚠️ Unaudited |
| AccountSpot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | ⚠️ Unaudited |
| AccountV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbea2b6d45acaf62385877d835970a0788719cae1` | ⚠️ Unaudited |
| AccountV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` | ⚠️ Unaudited |
| AccountV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` | ⚠️ Unaudited |
| ActionMultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05b9ab82e34688ecc87408e0821d9779c3bfa5a3` | ⚠️ Unaudited |
| AerodromePoolAM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12eef08bfef01579d22895cd790f32d94faa54a` | ⚠️ Unaudited |
| AtomicQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd45884b592e316eb816199615a95c182f75dea07` | ⚠️ Unaudited |
| AtomicSolverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a`; ethereum `0x8650bd4701309a457c508f97cf3d15a5ac9987ec` | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3f8cab8d3888281033faf7a6c0b74de62bb162` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242087 | `0x08c6f91e2b681faf5e17227f2a44c307b3c1364c` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242106 | `0x5401b8620e5fb570064ca9114fd1e135fd77d57c` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x657e8c867d8b37dcc18fa4caead9c45eb088c642`; ethereum `0xc79cc44dc8a91330872d7815ae9cfb04405952ea` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242115 | `0x7223442cad8e9ca474fc40109ab981608f8c4273` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242127 | `0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242171 | `0xf0bb20865277abd641a307ece5ee04e79073416c` | ⚠️ Unaudited |
| CellarMigrationAdaptor2 | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242208 | `0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221` | ⚠️ Unaudited |
| ConcreteMultiStrategyVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242094 | `0x34bdba9b3d8e3073eb4470cd4c031c2e39c32da8` | ⚠️ Unaudited |
| CowSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0xb988a32def54821dde0d7382e8a74f1be4da1f23`; base `0xc928013a219ec9f18de7b2dee6a50ba626811854`; base `0xffc742e68d41389be9ef1afd518f036064da2bb6` | ⚠️ Unaudited |
| DefaultOrderHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0f56a2d3ad80817de76d0498c98dd1223bc1f681`; base `0x5f7dfa6695293d4e6dffd1306959232b6120cea6`; base `0xf510bad90a6bfaf26abfc7e14a72b9b05509e5bb` | ⚠️ Unaudited |
| eEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b` | ⚠️ Unaudited |
| ERC20Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5b17e0ad1e0f37061fcc7f90512c367981331d` | ⚠️ Unaudited |
| ERC20PrimaryAM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1761a7c7799cb429eb5bf2db16d88534da681e2` | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9d3eb50ed4540135a78facd70063bccc988014b0`; ethereum `0xb09cbb6aa95a004f9aee4349df431af5ad03ece4`; ethereum `0xb1214368b5c0a1592bb12f8e703243e72c981a04` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda14fdd72345c4d2511357214c5b89a919768e59` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0bc9df52ff655932d08daacba33881c0d268cd46`; ethereum `0xe0e4e08d3fb8b9e43a294e1a6cdc15b5e9c24897` | ⚠️ Unaudited |
| FeesAndReserves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a22951e3b5133844e37959cc75fce9b3502ec74` | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d84ec98c476b159f3e107709f224d5bbbb358da` | ⚠️ Unaudited |
| FraxVoterProxyV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78ec75e69a5f2150c1095e5feffc1fe17362acc0` | ⚠️ Unaudited |
| FXSDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce771ced28109cc4d6c3fc030ee981de667314d` | ⚠️ Unaudited |
| FXSDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28fb88e578890587563dd49ae35d3422e76aae3f`; ethereum `0xdfa1f69774ad2924cebd43d75aadfb92403c5335` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x183d1a60e1e00bd87ba8b7e673fd9c26585a9eab`; ethereum `0x5d135c1a7604bf0b78018a21ba722e9a06e6d096` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c836f69e627ec4acb99e15be00f1f0e320915a6`; ethereum `0x669a254f3ee2038c0b4a00189e05bbac79bcbe95` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa9e640a1fa2a74653368ebe12161939efaa8b766`; ethereum `0xbc74b83934b0c6890b4f85d417d15e40951349ae` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242085 | `0x004d956c022bd0791fc34c4b4f06ec65d499dd5d` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242086 | `0x036d9dad65964d05c4856cfa1bb7fa680e08544b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242088 | `0x0abcbd3af808c22f79f11592c8105a99423f3ca6` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242093 | `0x2b8e688cdf5752880126a6a6b7afb466a50fad28` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242096 | `0x3e931409fd55846a0d91096917ed59919973d863` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242098 | `0x418cff37c63739dc138361992285f832e84fa358` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242100 | `0x43efe817cdfa6a24529290dbdf655b6dc70a060d` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242101 | `0x47a3a38506af85fc32e950ec011f87c4ea9058e4` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242102 | `0x484f8d95bee9072f1fa4b4a6c88bcb23a8a77a71` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242104 | `0x4e11cfff0e68ad4cba954f2f82818f86809fcbbe` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242105 | `0x4eaf2ab88ad0e427d455ba2bf4c2a144cfe4842c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242108 | `0x5775121149f8fce540610f9b7fdf9bea539311c3` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242109 | `0x602883891dac24b2921a0120705976c28a3d0585` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242110 | `0x60e3e1f8f7a76edd2e7f03f29431e1ffc168d86b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242112 | `0x66e400769231e4cb8fbbf5df99713a23b1a7c37d` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242114 | `0x68f080904c97cb429475538a8af6fbec322f4ba6` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242119 | `0x7875ea21af918b0ab6b7d4332b51e33fc432870b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242122 | `0x859ce1eaa2597f6aa3eebebba4f1da81e44d788e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242126 | `0x8bd79fb9a6d6ff35666c7bc9b0650a1b6bb92e1e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed775c8784d381840e0fea327dc2fc816495e5c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242130 | `0x9734a6e26021905424c829c25987acc66e9416bf` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242133 | `0x98ca0ff4e172b3775b7df201a3d36894618a69d7` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242135 | `0x9b7f50c73764b4ebea18acfeecec3eb42af20418` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242136 | `0x9e1c226b7d4a7d4dd8451ee5d3364842960d6bdf` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242137 | `0x9ec53315ce201959b155f34aaa13cf414133d863` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242138 | `0x9eee7e183b8958aa067a6b6ed5c5785af2361857` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242140 | `0xa2962eafe66c474b1447ec47b05565b38c44e798` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242141 | `0xa47a1cd20dda3f34d21fd56c22e8437b389c12c3` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242143 | `0xb005910a3876bf1b12be64c0e89b6225a3484a24` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242144 | `0xb05e8ac77c76f4eb8cda07d3ce2e8552215d3fef` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242145 | `0xb204ab7a5371bf42ded6290d62950840eb4461a8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242146 | `0xb3cb22754d0e09b1392233b6a09991b16de6a38c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242147 | `0xb668357764f5170ce99d596fa3966b6f1bd88dd0` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242148 | `0xb7a2c72f361d5040d2e022bacc34a4ca1aaa9946` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242149 | `0xb976611d8b06fd7d874b8842f78e9619cdcd1fc8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242150 | `0xbaf470c7834c58e6f14b0bc5c7387f0a99e9ffa8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242151 | `0xbd91c7771df008c6321fb6357da6d0825f97196a` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242152 | `0xc5dbc2757ee116b68f5ac975bf9f1725beed6ae0` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242156 | `0xd02b31bd4e153776fec67f9fc62233cc32ea589c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242157 | `0xd3b63707ef19d9e07642b434a83bb11514d44579` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242159 | `0xd7f10ae183762383b2dcda40526164434743e834` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242160 | `0xdb0ee7308cf1f5a3f376d015a1545b4cb9a878d9` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242163 | `0xe6da3bd04ceee35d6a52ff329e57cc2220a669b1` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242164 | `0xe7f0dc86129fed2011bf1163d0e17687b9106fb6` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242165 | `0xe865509d7684a15974922f1d96791bc48e8d109a` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242167 | `0xe91838424d765f20e975f49e99b0d0314a54e76b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242173 | `0xf3fe4175b73083e030e42dda9dec37d683d0f275` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242174 | `0xf68c4b80320f64997965ba306abfdf3683910b5e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242175 | `0xfd8b204489bbfca6bef5a980f1441412e0aa3dc1` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242177 | `0x326b1129a3ec2ad5c4016d2bb4b912687890ae6c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242179 | `0x4865bb6598e6b3ff44b0d94b70b5b3ca86647560` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242181 | `0x62b9fda6d73d0aa12452707dd199ebc7830c92d7` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242182 | `0x8fc1e4ecdb25bf258cadb37f2303b11f33b5fef3` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242183 | `0x979ecd3cf8650ce306b7658652617bb93d3d01ed` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242184 | `0xbfe0e27c67e6453e5529c5ee8d8762c5d82470c4` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242193 | `0x2c7432c48547e39425158c5d28f7c373e6f4e41c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242194 | `0x37b93e2fdf587920712cb637f2f6e67e3f5d310b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242197 | `0x4347e8d10703dafe6cd23662514ced9cc9d291a0` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242199 | `0x5e57e8e8c1e13719606d57c3f361d08b5032c997` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242200 | `0x60fba82c2470a79251fd6be4543a3f29eebfa3a5` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242201 | `0x70b64cec0721646ea45c64fb603e4069f106342e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242203 | `0x85e2c7b8ddffdfae8ba360d137f8a8975d77088e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242205 | `0xea3ff288f1a1bbd0c43f926b0c5e0351c402af74` | ⚠️ Unaudited |
| HourglassEtherFiLiquidLockDepositor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | ethereum | unit-242211 (2 proxies) | 2 deployments: ethereum `0x035d135bf428460be8e1c19b36e8d4231752da4d`; ethereum `0xd573ce999776634d2edfe310d33382f4f0aa28a2` | ⚠️ Unaudited |
| HourglassStableVaultKYC | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9b2cb2fbad204fc548787ef56b918c845fcce40` | ⚠️ Unaudited |
| IncentiveDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0164d48b308c42ae028e3379b2fb620e70f8780` | ⚠️ Unaudited |
| L1cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6829d9a7ee3040e1276fa75293bde931859e8fa` | ⚠️ Unaudited |
| L2cmETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | mantle | unit-242212 | `0xe6829d9a7ee3040e1276fa75293bde931859e8fa` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3ec4a293fb906dd2cd440c20decb250def141df1`; base `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`; base `0xa37e9b4369dc20940009030bfbc2088f09645e3b` | ⚠️ Unaudited |
| Liquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048a5002e57166a78dd060b3b36ded2f404d0a17` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1f06b96f082c470e9759d1090d281b2493c6a2c` | ⚠️ Unaudited |
| METHL2 | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | mantle | unit-242213 | `0xcda86a272531e8640cd7f1a92c01839911b90bb0` | ⚠️ Unaudited |
| OneInchAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7de90fb222d37225dd8929672e427699c58d43` | ⚠️ Unaudited |
| PepeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8baf44b350ef672232a6673e1e128c7875640477` | ⚠️ Unaudited |
| Pitch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5bb61f958a418bf173f6f56090dc0a00a897aa` | ⚠️ Unaudited |
| PitchFXSToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ebe21e9d7bf541a18e1e3ac94939018ce88f0b` | ⚠️ Unaudited |
| PitchProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3c23b7b54629d58aa6e206e32e6473e067588ed` | ⚠️ Unaudited |
| PitchSDLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a381c7a8a47e2e7247d45ec374391129d1b6021` | ⚠️ Unaudited |
| PriceOraclePitchFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e4088378edaab0e715f9a4aa63a99feca7f9c4` | ⚠️ Unaudited |
| PriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x693799805b502264f9365440b93c113d86a4fff5`; ethereum `0xab2d48358d41980eee1cb93764f45148f6818964` | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb286d16f9cd8c5cf4d5180501c190519e42524` | ⚠️ Unaudited |
| Puff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26a6b0dcdcfb981362afa56d581e4a7dba3be140` | ⚠️ Unaudited |
| RecoveryController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3889255c5a9a55137dfdf870a0c30a285978176a` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x812785c39a794a9518ee72dd0ce0bdd3f6250773` | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4b778085ed412518cb64207259a746f363ae84` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd`; base `0xd0690557600eb8be8391d1d97346e2aab5300d5f` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a4abbee0a07f358c7706c78fd7cc2702fc67d73`; ethereum `0xfebe9930e41459e2b12dba3a96a514bd3588caf0` | ⚠️ Unaudited |
| RouterTrampoline | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x354dbba1348985cc952c467b8ddaf5dd07590667` | ⚠️ Unaudited |
| SaddleVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2cba8a85f44dd1da10a093cc0f96d93b3c37e0ee`; ethereum `0x92812d2734ec455fcea5fba3fccd0cd2988586ed` | ⚠️ Unaudited |
| SaddleVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc0a668d27f344dc723abc87f88792722e623d254`; ethereum `0xf942f26188229025aa81ae96cc0d19408bd62dd9` | ⚠️ Unaudited |
| SDLDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17a67bdb5cfb7a21781240997505d69a398813bc`; ethereum `0x7c06f6bd6c873cc5286cd46fa36dc75051407653` | ⚠️ Unaudited |
| SDLDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6f559192134709585780e953013b864e00639d78`; ethereum `0xbdb83be6ce365abfea061dfd77392a3358160888` | ⚠️ Unaudited |
| SlipstreamAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b`; base `0xcaf4167de878cfb23d9912b1ff5869f2b3527189`; base `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | ⚠️ Unaudited |
| SnapshotLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b65a3e769a4a6515267ca045f7c8a100874082` | ⚠️ Unaudited |
| StakedAerodromeAM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`; base `0xbed6c3e35b9b1e044b3bc71465769edfdc0fdd4c`; base `0xe0f20be5886f11cbcd2cb5ba9987bcbbf1d8ca7b` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe07e335235b5be21d9ef413fc52aa250a6c125` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x55148d7e3983a54c9f9d1e0c2c2039e2d513924c`; ethereum `0x73e85a12aaf9b1e2cde096fd66d97d3c104e629d`; mantle `0x91a19402818ec3da51ead9db15a4776827ec65e5` | ⚠️ Unaudited |
| Tranche | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242195 | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | ⚠️ Unaudited |
| Tranche | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242204 | `0x9c63a4c499b323a25d389da759c2ac1e385eec92` | ⚠️ Unaudited |
| Tranche | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242206 | `0xefe32813dba3a783059d50e5358b9e3661218dad` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x7cc8013e784418dc9771403dd057f55ceb34ba3a`; base `0xbc10718571fcb3c3f67800e7c0887e450d2ff398`; base `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | ⚠️ Unaudited |
| Vault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242210 | `0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb` | ⚠️ Unaudited |
| VeRevenueConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x512f50a1dc5ac087cd76195fe6388c7b2919cc94`; ethereum `0x9180624ccbdc6a7b345831b7b020ea2678c5ce86` | ⚠️ Unaudited |
| WeETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242207 | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ⚠️ Unaudited |
| weEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e59309ba2779a5d3522e965fe9be2790fd7535` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17b5826382e3a5257b829cf0546a08bd77409270` | ⚠️ Unaudited |
| WstEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a3cb224b799b982706008a1081073fe0c46d35` | ⚠️ Unaudited |
| YieldClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1f75abf8a24782053b351d9b4ea6d1236ed59105`; base `0x2a07d99ec1140e25db07283930160d4bde93d09f`; base `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`; base `0x8c1fbf38118fd5a704b6e7babcb7af1a9a291980`; base `0xc8bf4b2c740ff665864e9494832520f18822871c` | ⚠️ Unaudited |
| ynETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242209 | `0x09db87a538bd693e9d08544577d5ccfaa6373a48` | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (133)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a46caabf498863426dc2292284879d277e1333e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242089 | `0x0cb35dc9addce18669e2fd5db4b405ea655e98bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d207a9952eb12a6b240d4e76a69078b31a23819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2ab62e91b115167df40045477a55d3ffd0f1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13da7c056d46ddb617d5c9eb0ec9e52cb00a26dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x174668d0ad180c8046b0f7321c986ba99505fec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178e55c4fcfcd64251721ee15212bdbb2e90e6c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242090 | `0x1ba3ce9d0e6db041b6818b79bc101614b17548a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242091 | `0x25f14f0baccaf69526d1ba335106830300d8b02b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242092 | `0x27b60af8a25d7a65037f0a7422c165a3ec6e12ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287f02ea74bc967b1c325f10739b9378feccebab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b2eb9fe03d30a325836b3d2cbcd7f44aa0d4d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc9d11578abbb409dab4f780ad50b08e1178a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d175e1bca1d6785e5f81cf2223871b1260f6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a0b4abba5657b842c6b3cbac2341010cde2ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34123c19792f20a1d347de556b6aa7ac92f091fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343aff1e49fcdebc002d0cc45976b0a46d50033e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3724fb57516f95b33c5e81dce4f572d35db69193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c84241327ad7f8aab696bb35a2a19b1d57b51c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242095 | `0x3d7fe7b7b207fb12f01295d402bd4380ccc833df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242097 | `0x40eb88c4428d9dd641f3b0cf781adcaf86268ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242099 | `0x43c9ecba97d3294b47babda178bb62104eb9b613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45334dbb33b8d737682fb2ecdc0b455e0a1685e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47589d70294af02455d7dccf024c25ba4eebc4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47771d238c27dab30439c3f04439dc39e2ea26f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47be0902f0b01d362db88d174d2b173995a686ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242103 | `0x497aa207309e5793883e9db95c5e0e6c093e2b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d9ef84464c53c04934b8d23d7b1733fdcfd302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2a6106d9f52585daf5e905572d998d3f7a25f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa2a0a62bbe6a3152fe056e970398877d2e78b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5281f798e15ef6ea44e64a702d8ede0abc765f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54451dd2c6a0e8dd3e5a9f8caa1dc8bccb922094` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242107 | `0x5771b8cb4e090370e477a7e45a971b85f6bfc2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b44c366ecda89bfd5d4a79c7a472ad64758449a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1d7dca32d5ffbdd23dca2c7f38f55297fbcf4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242111 | `0x63b278bb28bffcb1b1e43494932c7a3ca3338786` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242113 | `0x679619fa685a18782a86dd5850124a75e83dad8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68c8b52c2d12e282397d0bd28f476366b7fe5303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d38f4f38fd28b166967563a31994c49d6f5b32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x704559a0f71665b0548e9ae70ad3e93cb959ba40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e96e60b3c9a133891c3b58663eb7789a8916fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x719d592abe80504fcd5d043f962633bb05ca0c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74cb6a9d5b441afa867e48c6ce6f3d60b49ff168` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242116 | `0x758d139bf6a8464ffdd4d8a736cc49f099a49189` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242117 | `0x76d9ff809b48e2f92325a5003a74c366df3baf8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242118 | `0x782c84a869486940c849ff94618775e2c1fdb5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7841fc510cc7897a07b3d465330f13e6eb501cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793296c0b11fd9bb65211ac61aaca82885eb2cab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242120 | `0x7a49248d9ae0372beca308043cc265ab77e0fd68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e08867b6220d1035e6ce7389150b80d8739c5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f8bac9c4605b29a55c3a8367d183236adf2dfe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242121 | `0x80a3a51c8afa855597ee70d593dd2d83995454f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c1cfab971d5d0125acfbec00ece0ac7e0a0dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a24b0d417de23bb322fe8ccbb2e01edd9d1ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86cd0c27c830e4a6247185b996af832bec4b6709` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242123 | `0x8753f58bd27513c1a8f84937660c2f2e3aab5b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242124 | `0x89258b5d584c6c34b54d9f522d3f85a136a83b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8945cca2d2e822399c0e8254ccdde203ae5e0933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242125 | `0x8afbf65a76793ae0cd041ed2f26811d952de6ee3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242128 | `0x9284754004ffe7f68f8969cf2f3c3b86f0802532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94606d5168f48258e6a4ae47643e9616860d21ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242129 | `0x9522a199503e8dab5ec765e4ebb706f7bdcfbf43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954864d2ddf2e0f45546d6a07526ea19abcecafb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242131 | `0x97955073caa92028a86cd3f660fe484d6b89b938` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242132 | `0x97a10806c1ad3df7d14d38d6a7ed6636286d44fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97dd1acb693669e2c11670955141919257c37565` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242134 | `0x99579085ec15a386e34b592f719e9dadeae4ebcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b0c39e78999b37736a7a3fa04086f44420ea984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b0e76d982e1bbaddf1371d4cec9413b3f4417aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc228711706db212ed2bc12d9dc1643cf304eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4ac8cacb116a65bac5ea6f236709b2d11c0c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d0fc9112fd2c6e87f70adeb8c13b867f0165fee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242139 | `0xa285bca8f01c8f18953443e645ef2786d31ada99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d6a0af3a07ac57a2190a36ba0388e2c0aca3d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242142 | `0xa6c318b8b4a0702b4836d75eae4fa30d4c5383e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb02bd7d36e8247c1e5aa126ff22234bccaf367a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc2c4880115cb2e67adf5babd8b2b3a5d32ec5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc61d69a75047d55d43c214deca54cbb38e95bfa5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242153 | `0xc8be25dd2ff1830f1207243380f767b26379415a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242154 | `0xca12dcd793f2a720051e7e2873bac54ce243f359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca66edf801a32982f09a8652e6b1f21ae348d304` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242155 | `0xce280dbe19c2833cc44bb484a11879d7dd5a3b8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242158 | `0xd7d929dad6667e28f05796091c75021e0d1a6900` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242161 | `0xdd243def764c4be58525fb61c3d953080cfe79f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xded4c7d5ff6279032a6a29dc7e98acc102f875b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28335ed77b8f4d5f20a1e200d310a19e357ce59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242162 | `0xe374fa1ebe255ff15c46eaafbc734d6f36926a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe640ed103f62b8a616e1beb2d699bdf7b8b72a70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242166 | `0xe8f0613fd627f6914eaed2be5a3773268125b2d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242168 | `0xe954c2c6fdfee62f5d2bf24eab680d9a75a8c2d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242169 | `0xede7677fc413499f966c1b5392b529a66b172134` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242170 | `0xf06617fbecf1bdea2d62079bdab9595f86801604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf083c8e524b1da5b557e89120a497ce9a61f2cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0afa19305473ede1b033148ffaaba91b89f90b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b32eaa08582f54498abf5e78b41ad589258745` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242172 | `0xf11fbb660b9950fecd38e13b446a28e8605535fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c29a990ba4cf699ee4d13752a76c20be07d145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3de771ac92505786826eeec3bd2e320d45d18cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0133ef87c788c19c27feec93bfb4515176fdd67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05f7a3db35df68a97190985e2803887d8c4e0263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1422ca8874df782a417bb0a24902bd24d5f7d9e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242176 | `0x1af5d20d93148acabb8780846311252dda1a7f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2474b58db2d8d719c0f06eb803ba2c7d786959a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x379c8070c3c0c46ec95487c9d6c86e91d728118c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242178 | `0x37e3ac623b488bb075ce8f3199ae93f8cac727f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x45334dbb33b8d737682fb2ecdc0b455e0a1685e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5b44c366ecda89bfd5d4a79c7a472ad64758449a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d39a2ef679b999279fdbcb10b2f2c2d89ea4ebb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242180 | `0x624bd5ba06a856c4d5f60c8ba29eee1f684ddf05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x68c8b52c2d12e282397d0bd28f476366b7fe5303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x725b0e815467db1649eff96aa106233fb9f72ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x83294f4d84edc6dd20e85d73ce132d2600cc0772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc61d69a75047d55d43c214deca54cbb38e95bfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd192826a48f04c5ae9142eb9ce81284154a7ccc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe926b113cf6e1d41edaf23aba77a4734d6762239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0133ef87c788c19c27feec93bfb4515176fdd67c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242191 | `0x05f1c0414de7a36c48180d59db35b45ee262768b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242192 | `0x20364ad9eb65fd8f1dc1a923dd590b2eff54817d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26672c47db11deead955a74bad0f3aa62f08b1b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242196 | `0x3fd91719c8b2db10402bc38a1e105633729bf1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b44c366ecda89bfd5d4a79c7a472ad64758449a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242198 | `0x5e009aea95ca13085fe8f2d195c437aca28968ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7110d609d4743a65e8f26dbf815f3556ed2de6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82c239a9f41ac756dd9a5e4ed2e99ccc8600a327` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242202 | `0x843a3e4e8dba14e85bfb040af1d409e0a32ad86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcea51e8caae5a320dcfdc1de126e22bb8087ed90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0b32eaa08582f54498abf5e78b41ad589258745` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242185 | `0x139ed7b470e66e1cfbd3fbdbba9f0b8783292a7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242186 | `0x20bee0d2b0ef61fce59b285b24bec40f1a7451f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242187 | `0x5d76f8adcf9e0d58f1e1632f00af39dec1c27644` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242188 | `0x82c239a9f41ac756dd9a5e4ed2e99ccc8600a327` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242189 | `0x9998e05030aee3af9ad3df35a34f5c51e1628779` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242190 | `0xde753dfce765ee6e1dc76ed2421afa07e1dc80ad` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 151
- Live contracts: 0
- Unknown liveness contracts: 151
- Source-verified contracts: 69
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=41, contamination review=7, source verified unclassified=21, unverified unclassified=82

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AccountantWithRateProviders<br>`0xc6f89cc0551c944ceae872997a4060dc95622d8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ArcticArchitectureLens<br>`0xe12eef08bfef01579d22895cd790f32d94faa54a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | AtomicSolverV2<br>`0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | AtomicSolverV2<br>`0x8650bd4701309a457c508f97cf3d15a5ac9987ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | AuraERC4626Adaptor<br>`0x0f3f8cab8d3888281033faf7a6c0b74de62bb162` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | BoringVault<br>`0xc79cc44dc8a91330872d7815ae9cfb04405952ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | eEthExtension<br>`0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ERC1967Proxy<br>`0x5d135c1a7604bf0b78018a21ba722e9a06e6d096` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | ERC1967Proxy<br>`0x78ec75e69a5f2150c1095e5feffc1fe17362acc0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | ERC1967Proxy<br>`0xbc74b83934b0c6890b4f85d417d15e40951349ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | ERC1967Proxy<br>`0xdfa1f69774ad2924cebd43d75aadfb92403c5335` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | ERC20Adaptor<br>`0x7a5b17e0ad1e0f37061fcc7f90512c367981331d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ERC4626Adaptor<br>`0xb1761a7c7799cb429eb5bf2db16d88534da681e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ERC4626SharePriceOracle<br>`0x9d3eb50ed4540135a78facd70063bccc988014b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ERC4626SharePriceOracle<br>`0xb09cbb6aa95a004f9aee4349df431af5ad03ece4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ERC4626SharePriceOracle<br>`0xb1214368b5c0a1592bb12f8e703243e72c981a04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | FeesAndReserves<br>`0x8a22951e3b5133844e37959cc75fce9b3502ec74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | FeesAndReservesAdaptor<br>`0x5d84ec98c476b159f3e107709f224d5bbbb358da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ManagerWithMerkleVerification<br>`0x048a5002e57166a78dd060b3b36ded2f404d0a17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | OneInchAdaptor<br>`0x5f7de90fb222d37225dd8929672e427699c58d43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | PitchProxyAdmin<br>`0xd3c23b7b54629d58aa6e206e32e6473e067588ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | PriceRouter<br>`0x693799805b502264f9365440b93c113d86a4fff5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | PriceRouter<br>`0xab2d48358d41980eee1cb93764f45148f6818964` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ProtocolFeeCollector<br>`0xdfb286d16f9cd8c5cf4d5180501c190519e42524` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | RedstoneEthPriceFeedExtension<br>`0xdb4b778085ed412518cb64207259a746f363ae84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | Registry<br>`0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | TellerWithMultiAssetSupport<br>`0xbbe07e335235b5be21d9ef413fc52aa250a6c125` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | TimelockController<br>`0x55148d7e3983a54c9f9d1e0c2c2039e2d513924c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | TimelockController<br>`0x73e85a12aaf9b1e2cde096fd66d97d3c104e629d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | TransparentUpgradeableProxy<br>`0x17a67bdb5cfb7a21781240997505d69a398813bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | TransparentUpgradeableProxy<br>`0xf942f26188229025aa81ae96cc0d19408bd62dd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | UUPSProxy<br>`0x0bc9df52ff655932d08daacba33881c0d268cd46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | UUPSProxy<br>`0x2cba8a85f44dd1da10a093cc0f96d93b3c37e0ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | UUPSProxy<br>`0x512f50a1dc5ac087cd76195fe6388c7b2919cc94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | UUPSProxy<br>`0x6f559192134709585780e953013b864e00639d78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| candidate review | weEthExtension<br>`0x78e59309ba2779a5d3522e965fe9be2790fd7535` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | WstEthExtension<br>`0xc5a3cb224b799b982706008a1081073fe0c46d35` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | ZeroXAdaptor<br>`0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| candidate review | TimelockController<br>`0x91a19402818ec3da51ead9db15a4776827ec65e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| candidate review | Registry<br>`0xd0690557600eb8be8391d1d97346e2aab5300d5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| candidate review | YieldClaimer<br>`0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| contamination review | IncentiveDistributor<br>`0xf0164d48b308c42ae028e3379b2fb620e70f8780` | non_address_book | unknown | unknown | verified | n/a | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| contamination review | PriceOraclePitchFXS<br>`0x96e4088378edaab0e715f9a4aa63a99feca7f9c4` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| contamination review | SnapshotLPStrategy<br>`0x79b65a3e769a4a6515267ca045f7c8a100874082` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| contamination review | AccountSpot<br>`0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| contamination review | ActionMultiCall<br>`0x05b9ab82e34688ecc87408e0821d9779c3bfa5a3` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| contamination review | AerodromePoolAM<br>`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| contamination review | ERC20PrimaryAM<br>`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| source verified unclassified | FeeRegistry<br>`0xe0e4e08d3fb8b9e43a294e1a6cdc15b5e9c24897` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | FXSDepositor<br>`0x6ce771ced28109cc4d6c3fc030ee981de667314d` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | FXSDepositorV2<br>`0x28fb88e578890587563dd49ae35d3422e76aae3f` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | GaugeIncentivesStash<br>`0x183d1a60e1e00bd87ba8b7e673fd9c26585a9eab` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | GaugeIncentivesStash<br>`0x5c836f69e627ec4acb99e15be00f1f0e320915a6` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | GaugeIncentivesStash<br>`0x669a254f3ee2038c0b4a00189e05bbac79bcbe95` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | GaugeIncentivesStash<br>`0xa9e640a1fa2a74653368ebe12161939efaa8b766` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | Pitch<br>`0x1b5bb61f958a418bf173f6f56090dc0a00a897aa` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | PitchSDLToken<br>`0x1a381c7a8a47e2e7247d45ec374391129d1b6021` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | RolesAuthority<br>`0x6a4abbee0a07f358c7706c78fd7cc2702fc67d73` | non_address_book | unknown | unknown | verified | n/a | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| source verified unclassified | RolesAuthority<br>`0xfebe9930e41459e2b12dba3a96a514bd3588caf0` | non_address_book | unknown | unknown | verified | n/a | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| source verified unclassified | SaddleVoterProxy<br>`0x92812d2734ec455fcea5fba3fccd0cd2988586ed` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | SaddleVoterProxy<br>`0xc0a668d27f344dc723abc87f88792722e623d254` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | SDLDepositor<br>`0x7c06f6bd6c873cc5286cd46fa36dc75051407653` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | SDLDepositor<br>`0xbdb83be6ce365abfea061dfd77392a3358160888` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | VeRevenueConverter<br>`0x9180624ccbdc6a7b345831b7b020ea2678c5ce86` | non_address_book | unknown | unknown | verified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| source verified unclassified | METHL2<br>`0xa1f06b96f082c470e9759d1090d281b2493c6a2c` | non_address_book | unknown | unknown | verified | n/a | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| source verified unclassified | PepeToken<br>`0x8baf44b350ef672232a6673e1e128c7875640477` | non_address_book | unknown | unknown | verified | n/a | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| source verified unclassified | AccountV1<br>`0xbea2b6d45acaf62385877d835970a0788719cae1` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| source verified unclassified | SlipstreamAM<br>`0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| source verified unclassified | StakedAerodromeAM<br>`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` | non_address_book | unknown | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| unverified unclassified | UnnamedContract<br>`0x0a46caabf498863426dc2292284879d277e1333e` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0x0d207a9952eb12a6b240d4e76a69078b31a23819` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x0f2ab62e91b115167df40045477a55d3ffd0f1aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x13da7c056d46ddb617d5c9eb0ec9e52cb00a26dd` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x174668d0ad180c8046b0f7321c986ba99505fec8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x178e55c4fcfcd64251721ee15212bdbb2e90e6c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x287f02ea74bc967b1c325f10739b9378feccebab` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x2b2eb9fe03d30a325836b3d2cbcd7f44aa0d4d86` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0x2bc9d11578abbb409dab4f780ad50b08e1178a14` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x31d175e1bca1d6785e5f81cf2223871b1260f6bb` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0x33a0b4abba5657b842c6b3cbac2341010cde2ac8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x34123c19792f20a1d347de556b6aa7ac92f091fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x343aff1e49fcdebc002d0cc45976b0a46d50033e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x3724fb57516f95b33c5e81dce4f572d35db69193` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x3c84241327ad7f8aab696bb35a2a19b1d57b51c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x45334dbb33b8d737682fb2ecdc0b455e0a1685e3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x47589d70294af02455d7dccf024c25ba4eebc4f3` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0x47771d238c27dab30439c3f04439dc39e2ea26f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x47be0902f0b01d362db88d174d2b173995a686ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x49d9ef84464c53c04934b8d23d7b1733fdcfd302` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0x4d2a6106d9f52585daf5e905572d998d3f7a25f1` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x4fa2a0a62bbe6a3152fe056e970398877d2e78b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x5281f798e15ef6ea44e64a702d8ede0abc765f65` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x54451dd2c6a0e8dd3e5a9f8caa1dc8bccb922094` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x5b44c366ecda89bfd5d4a79c7a472ad64758449a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x5f1d7dca32d5ffbdd23dca2c7f38f55297fbcf4e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x68c8b52c2d12e282397d0bd28f476366b7fe5303` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x6d38f4f38fd28b166967563a31994c49d6f5b32c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x704559a0f71665b0548e9ae70ad3e93cb959ba40` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x70e96e60b3c9a133891c3b58663eb7789a8916fb` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x719d592abe80504fcd5d043f962633bb05ca0c91` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x74cb6a9d5b441afa867e48c6ce6f3d60b49ff168` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x7841fc510cc7897a07b3d465330f13e6eb501cec` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x793296c0b11fd9bb65211ac61aaca82885eb2cab` | non_address_book | unknown | unknown | unverified | n/a | `0x2322ba43eff1542b6a7baed35e66099ea0d12bd1` |
| unverified unclassified | UnnamedContract<br>`0x7e08867b6220d1035e6ce7389150b80d8739c5e0` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x7f8bac9c4605b29a55c3a8367d183236adf2dfe8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x84c1cfab971d5d0125acfbec00ece0ac7e0a0dd9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x85a24b0d417de23bb322fe8ccbb2e01edd9d1ad2` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x86cd0c27c830e4a6247185b996af832bec4b6709` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x8945cca2d2e822399c0e8254ccdde203ae5e0933` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x94606d5168f48258e6a4ae47643e9616860d21ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x954864d2ddf2e0f45546d6a07526ea19abcecafb` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x97dd1acb693669e2c11670955141919257c37565` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0x9b0c39e78999b37736a7a3fa04086f44420ea984` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x9b0e76d982e1bbaddf1371d4cec9413b3f4417aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x9bc228711706db212ed2bc12d9dc1643cf304eea` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x9c4ac8cacb116a65bac5ea6f236709b2d11c0c7e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x9d0fc9112fd2c6e87f70adeb8c13b867f0165fee` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xa2d6a0af3a07ac57a2190a36ba0388e2c0aca3d5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xb02bd7d36e8247c1e5aa126ff22234bccaf367a3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xbc2c4880115cb2e67adf5babd8b2b3a5d32ec5f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xc61d69a75047d55d43c214deca54cbb38e95bfa5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xca66edf801a32982f09a8652e6b1f21ae348d304` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0xded4c7d5ff6279032a6a29dc7e98acc102f875b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xe28335ed77b8f4d5f20a1e200d310a19e357ce59` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xe640ed103f62b8a616e1beb2d699bdf7b8b72a70` | non_address_book | unknown | unknown | unverified | n/a | `0x092308e1dcdeca61bf1153dd92e15ed08e164982` |
| unverified unclassified | UnnamedContract<br>`0xf083c8e524b1da5b557e89120a497ce9a61f2cea` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xf0afa19305473ede1b033148ffaaba91b89f90b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xf0b32eaa08582f54498abf5e78b41ad589258745` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xf2c29a990ba4cf699ee4d13752a76c20be07d145` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xf3de771ac92505786826eeec3bd2e320d45d18cb` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x0133ef87c788c19c27feec93bfb4515176fdd67c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x05f7a3db35df68a97190985e2803887d8c4e0263` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x1422ca8874df782a417bb0a24902bd24d5f7d9e5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x2474b58db2d8d719c0f06eb803ba2c7d786959a0` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x379c8070c3c0c46ec95487c9d6c86e91d728118c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x45334dbb33b8d737682fb2ecdc0b455e0a1685e3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x5b44c366ecda89bfd5d4a79c7a472ad64758449a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x5d39a2ef679b999279fdbcb10b2f2c2d89ea4ebb` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x68c8b52c2d12e282397d0bd28f476366b7fe5303` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x725b0e815467db1649eff96aa106233fb9f72ba5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x83294f4d84edc6dd20e85d73ce132d2600cc0772` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xc61d69a75047d55d43c214deca54cbb38e95bfa5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xd192826a48f04c5ae9142eb9ce81284154a7ccc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xe926b113cf6e1d41edaf23aba77a4734d6762239` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x0133ef87c788c19c27feec93bfb4515176fdd67c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x26672c47db11deead955a74bad0f3aa62f08b1b1` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x5b44c366ecda89bfd5d4a79c7a472ad64758449a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0x7110d609d4743a65e8f26dbf815f3556ed2de6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| unverified unclassified | UnnamedContract<br>`0x82c239a9f41ac756dd9a5e4ed2e99ccc8600a327` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xcea51e8caae5a320dcfdc1de126e22bb8087ed90` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |
| unverified unclassified | UnnamedContract<br>`0xf0b32eaa08582f54498abf5e78b41ad589258745` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HourglassAudit3.pdf](https://github.com/TheArcadiaGroup/publications/blob/main/audits/HourglassAudit3.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit](https://docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit?tab=t.0) | Code4rena | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hourglass_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Audit_Report.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Hourglass_HFXB_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_HFXB_Audit_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hourglass_Index_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Index_Audit_Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Hourglass_TBT_Locking_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_TBT_Locking_Audit_Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Hourglass_v2_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_v2_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13256] HourglassAudit3.pdf — no match: No reason recorded
- [13257] docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit — no match: Scope explicitly lists HourglassLockDepositorBase and HourglassVedaLockDepositor. HourglassTBTFactory is referenced in findings but not in scope table; however it is part of the audited codebase.
- [16310] Hourglass_Audit_Report.pdf — no match: Extracted 10 contract names from the scope table on page 8-9. Audit date from cover page and document revision history.
- [16311] Hourglass_HFXB_Audit_Report.pdf — no match: Three contracts explicitly listed in scope table on page 9. Audit date from report title page: 'Nov 22, 2023'.
- [16312] Hourglass_Index_Audit_Report.pdf — no match: Scope table on page 7 lists four contracts with filenames and SHA-256 checksums. Audit date is from the report title 'Jan08,2024'.
- [16313] Hourglass_TBT_Locking_Audit_Report.pdf — no match: No reason recorded
- [16314] Hourglass_v2_Audit_Report.pdf — no match: Extracted contract names from the scope table listing files with SHA256 checksums. Also included test file and unverified contract mentioned in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HourglassAudit3.pdf | HourglassERC20TBT | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | HourglassLockDepositor | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | HourglassTBTFactory | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | IHourglassDepositor | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | IHourglassERC20TBT | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | IHourglassLockingTBTFactory | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | TwoStepOwnable | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | TwoStepOwnableInterface | unmatched — not counted | — | — | no |
| docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit | HourglassLockDepositorBase | unmatched — not counted | — | listed in scope | no |
| docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit | HourglassVedaLockDepositor | unmatched — not counted | — | listed in scope | no |
| docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit | HourglassTBTFactory | unmatched — not counted | — | mentioned in finding LOCK-1 code location | no |
| Hourglass_Audit_Report.pdf | FeeManager | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | HourglassCustodian | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | RewardsDistributor | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | ConvexFraxVault | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | HourglassConvexFraxReceipt | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | ERC20Intermediary | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | GeneralMatureHoldingVault | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | HourglassCustodianTest | unmatched — not counted | — | Listed in scope table with SHA-256 checksum (later renamed to HourglassProtocolTest.t.sol) | no |
| Hourglass_Audit_Report.pdf | HourglassProtocolTest | unmatched — not counted | — | Renamed from HourglassCustodianTest.t.sol, listed in scope table | no |
| Hourglass_Audit_Report.pdf | ConvexFraxMaturedHoldings | unmatched — not counted | — | Mentioned as not verified due to work in progress, but listed as part of scope | no |
| Hourglass_HFXB_Audit_Report.pdf | HFXB | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_HFXB_Audit_Report.pdf | HFXBWithdrawalQueue | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_HFXB_Audit_Report.pdf | TwoStepOwnable | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | HourglassIndex | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | HourglassIndexWithdrawalQueue | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | TwoStepOwnable | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | HourglassIndexFactory | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | HourglassERC20TBT | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | HourglassLockDepositor | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | HourglassTBTFactory | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | IHourglassDepositor | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | IHourglassERC20TBT | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | IHourglassLockingTBTFactory | unmatched — not counted | — | — | no |
| Hourglass_v2_Audit_Report.pdf | FeeManager | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassCustodian | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassCustodianV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | RewardsDistributor | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | RewardsDistributorV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | ConvexFraxVault | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassConvexFraxReceipt | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassConvexFraxReceiptV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | ERC20Intermediary | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | GeneralMatureHoldingVault | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | GeneralMatureHoldingVaultV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | TwoStepOwnable | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | Burn | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassToken | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassProtocolTest | unmatched — not counted | — | mentioned in scope as test file | no |
| Hourglass_v2_Audit_Report.pdf | ConvexFraxMaturedHoldings | unmatched — not counted | — | mentioned as not verified but in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 149 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 133 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 50 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [13256] HourglassAudit3.pdf
- [13257] docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit
- [16310] Hourglass_Audit_Report.pdf
- [16311] Hourglass_HFXB_Audit_Report.pdf
- [16312] Hourglass_Index_Audit_Report.pdf
- [16313] Hourglass_TBT_Locking_Audit_Report.pdf
- [16314] Hourglass_v2_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
