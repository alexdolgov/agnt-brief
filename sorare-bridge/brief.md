# Agentic Audit Brief: Sorare Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sorare Bridge (`sorare-bridge`)
- Website: [https://sorare.com/](https://sorare.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 67 unique implementations (211 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,840,787.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sorare Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: none
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Proxy (`0xf5c9f957705bea56a7e806943f98f7777b995826`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 1 of 67 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 67
- Raw deployments: 211
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllVerifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5d8cc5659db74eebf19aa2bb39973f9339012ac5`; ethereum `0x61d3389aa2d001c860859cc021153e40d557bf4b`; ethereum `0x62bca4db742a99c834e2c24b609656a70ea25379`; ethereum `0xf65c115efd24102315af53f84ad65ad240bc9d57`; ethereum `0xfbea22feb369db10c0d3a2aaa8f4939e76815f12` | ⚠️ Unaudited |
| CairoBootloaderProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x18186aee529b9fac9d51397a4beac6f5bb011db8`; ethereum `0x1dd8945200f5a09d6fe0ed68494c2ac41cd02e2d`; ethereum `0x2503ed84d4353852a666ec548337fb2aa82a5576`; ethereum `0x33e7594ee58bf3dc608907e8d917d3410d17e387`; ethereum `0xabf068705d238e2980ec7f6f57a05ab29a82c115` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f58e286edeac10a197ba1906ea348bed3ee41a0`; ethereum `0x1fee2090492d824d71ee20e4035084d39d39aa43`; ethereum `0xb2419feb412ec9a5d6c76a0cdf60596941ca5c6f` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2cabd63f6f28b493f33d13e34060f0959f3570ae`; ethereum `0xd4c4044aca68ebbcb81b13cc2699e1bca2d3f458` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc8c212f11f6acca77a7afeb7282deba5530eb46c`; ethereum `0xcc5b2c75cbbd281b2fc4b58c7d5b080d023c92f2` | ⚠️ Unaudited |
| Committee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295`; ethereum `0x1e601435e181423e7a8430813d7500012a6169cb`; ethereum `0x879cd57975d596004863d30c59d579ef78bbbe32`; ethereum `0x89472921f016bf024aab1696a3c0d2dc2f7a32c0`; ethereum `0x8a8e80e0762243f0df39f2847808b7f6d62e2bb1`; ethereum `0x90ceb3bd97284df8c3240f3a8c4aab29c1ee9542` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x08745211194aa895083cbb5d54d47314c7e7fe6a`; ethereum `0x140586af66f9da9db97fa857654c6c0cfbb16e23`; ethereum `0x16c65bc4b2ef4d0ee275e71ff9d665ce019e1435`; ethereum `0x1f5459aa7857291112a8172ae1328248948d9d13`; ethereum `0x5e1cc8256a2a6393aeb9d728b52f2068ccadb387`; ethereum `0x5f1a71f42ac77fadad126c7ed4c6875b52d249ea`; ethereum `0x7737ae8bf9c6e36166372cdddcb9cacc5be90e46`; ethereum `0x8d588ab4d3295a8a82f0b8df24b87b830331f3d1`; ethereum `0x9135274eb31bea793fa1e31da9954c1aec8c954a`; ethereum `0x986083b1344a83b3e81ebde25455d872a194380a`; ethereum `0x98bfc870f78c0827412bf3edcfa901eadcda2035`; ethereum `0xa5e413d979084ee385204284be3c45371b44af64`; ethereum `0xaa766b0456114b658c45d89301870d66a1192b17`; ethereum `0xbd01f2cf3db41f04784eb71844f3f153b2ae7e2d`; ethereum `0xc31f314ba06d5034a83c9d33cff7e7de3ec46527`; ethereum `0xc3c63f4a0c0b726b9e37dee4329ce6c5da6ae01e`; ethereum `0xcd05aeb4ca289cd603984721af9b0231dba231d5`; ethereum `0xdf9929178e0e9bc5b03f6d04e4ce89573f1ef52b`; ethereum `0xf15f83bee32113aebe92ad98120cc4d9a66df027`; ethereum `0xf17bcbdac10c7123fd22daefc64cff5103d83212`; ethereum `0xf8b8d5193ce4e9edc734b3638b3dbcc5b7d1ab93`; ethereum `0xfd00687ee4aae786233c008f44e884b35992431a` | ⚠️ Unaudited |
| CpuFrilessVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x024b2f66cc07a3f9361d5339035cef78b0eee393`; ethereum `0x04d4e67f8b6c67d63219cd088bc45e8e89fe6d73`; ethereum `0x17a5713b3ab066ad990af8415f2441dc7e6f08d8`; ethereum `0x2ac2e97dceeab8569f73e151e0a69f6b30eb461a`; ethereum `0x2d70ec2e88a2b46078efa96f67810bed9293a604`; ethereum `0x4922f8750dfd040954b44f23980160342e308863`; ethereum `0x52ab702c1184b43553e0cb814ee5cbca60933f5a`; ethereum `0x5cf08fbdd30a20baeae5a7abda1136ac85f04279`; ethereum `0x5f7bb95b1761bb57d03fc56c59cbf404be5a8563`; ethereum `0x7a4f7abd3899e3094dc5f043174574f0f5b3d8d3`; ethereum `0x92043f243831a9b0af379f0bed8513fabdabe513`; ethereum `0x975dbd0c8e6f1527dea5b8885df2f5695ec1a33d`; ethereum `0xaf7ceb9b500a5d1ea5c984a11d0e0a31d38643af`; ethereum `0xb6ee53325595ac10d6ac898973f1da081839c927`; ethereum `0xceab2e8088eeb79f268a25da908a71722f3aa325`; ethereum `0xe1e66efd6c103334b17cc2e752df8012c8db9d57`; ethereum `0xe6557b0b708ec767519a211d21b457e6157f4e93`; ethereum `0xeca5da0287d407a23f7c0a13a9aad87c7fbc10a3`; ethereum `0xef6476d0d5fe1ef869fe97bd88d0a3df44a4e1ba`; ethereum `0xf1e64ee81b2fe0c0a29da0ee1cc3c160b1f167ea`; ethereum `0xf8584916c737a30fe153d4424abdaa7b14aaedca`; ethereum `0xfedc9df4f53ca775315e27bc009ae17f02287f9e` | ⚠️ Unaudited |
| CpuOods | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x0c6dec0b366b1bb4c14597cf1da8b4af2e7799b5`; ethereum `0x1144d637d7f350d4ad115dad5af1a704a99bbe43`; ethereum `0x3016f9ed9ae0258a49c994ac14ff29c219f3897b`; ethereum `0x4df0adb8f6e9b26cd32fc88b271e9fd0567ec10a`; ethereum `0x4f445164a2d3b9a4fba83bb0d0d7f51131d3c79e`; ethereum `0x4f795246fe639e5e6451cb1052c6e93ebd288938`; ethereum `0x85c0fc13f92020851c4710cc6a00c5c0877726c2`; ethereum `0x897c26115b8985f639a134b83627b53ae10cfc66`; ethereum `0x8ad328f3aa9277cb3b2d096042a3ba792d25b129`; ethereum `0x9a720131d037afebdc78ee6eaeb421ecbccf6e54`; ethereum `0xa7abcd296eb1b6a0363118a6fa0205a551968490`; ethereum `0xa98f9c50c9cf5e78317164d751ccab77597b89e4`; ethereum `0xb597f7f9e2c9fb4cc349b9c47f652d097ce6874d`; ethereum `0xb755f65671de8813664bc5c4dfc9545ecc3a1f12`; ethereum `0xc22fea60bb340f5213fb75dd1a87063e90c1b7de`; ethereum `0xc874c0a6c0b16de54cc3ec06d01fb8ae1b2d81ef`; ethereum `0xe97ca08ed0ce8508177cd28eb9c74104497b8302`; ethereum `0xf2add902e12b1146cb357db10a56e8b62cf59625`; ethereum `0xf336bcb1d5861f98c9ac06eeeb134e278b624a4c`; ethereum `0xf35f6dee8cad4ad6316e7a2ddbca805692794983`; ethereum `0xf769f7a3d87c2bcfdf6e044d60605006ee87a6b3`; ethereum `0xfceeb130efcfbe4894e806ee6cbb913a7ef9f2f9` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0b2d74dc27308031713596898a6b56366205a6b5`; ethereum `0x52c4bb16fba75f6ebd672568267bc334255fb3c5`; ethereum `0x8528e4b70c33ed932b3f7caaff0d1b2b641dd321`; ethereum `0x8a9edfbcae434a8f29f24cbb3bc1480517e7c13f`; ethereum `0xace04f569a1f5c08b4ab8d37dbe04186646fb547` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0xc5ca4cd798d2aeb964126eee71ec572ddf2abd8a`; ethereum `0xcc45eee0128e40fc30a062359fab90e4b4ee0790`; ethereum `0xd14fd39630ec941c3ba6c791e3af9e0027013a15`; ethereum `0xfc4988f67e3bd268187789035f361c11e8e9437c`; ethereum `0xffc5df8d6f010f4e28633c4a7b2d5929edfd9457` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8260d7ab762db278880811906fe5a2b342ea2ece`; ethereum `0x8ab85d3a1816a0d7ece0f57af6b27fc3b05532f4` | ⚠️ Unaudited |
| ForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07228f73aa048f67893f4b966d1d09783edd8764`; ethereum `0x0d7c8d7a16c7832869d8feef02730238cdfe083a`; ethereum `0x3799ad2a4eb4e882219b02c036656d4ecbd437a1` | ⚠️ Unaudited |
| FriStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x689f886b4e61b5907166b2506db5e89609443045`; ethereum `0x932457426841dc45ca4abc7ebdafe60133474363`; ethereum `0xe74999fbc71455462c8143b56797d3bb84c1064b`; ethereum `0xecf98a84eea8f83d8510c19488c1bbc2db9eda6d`; ethereum `0xf6b83ccadeee478fc372af6ca7069b14fbc5e1b1` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcc928977e4a75d25099e7da7b6fd79dac2f9fd2b` | ⚠️ Unaudited |
| GpsFactRegistryAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x472fa70390a46e1815cdfe96b16b7d232e917388`; ethereum `0x5339ab7557b3152b91a57d10b0caf5da88db5143`; ethereum `0x575dd6eaa04b71924ce63f6d6ca3ae7a9960b531`; ethereum `0x6e3abce72a3cd5edc05e59283c733fd4bf8b3bae`; ethereum `0x733872718e87119be00dc48a9099b5c444ddd1fb`; ethereum `0xfa6a50fa22b427f058450247feab4e0acba9e16d` | ⚠️ Unaudited |
| GpsStatementVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x45769d52d47e9cbfac9a2df68c2051adb0630f17`; ethereum `0x522b2871c3918b92c165115d862e50e440905068`; ethereum `0x894c4a12548fb18eaa48cf34f9cd874fc08b7fc3`; ethereum `0x9bca5c55137057208ee5b14f3e269133bdcac1f8`; ethereum `0xa739b175325cca7b71fcb51c3032935ef7ac338f`; ethereum `0xb1eda32c467569fbdc8c3e041c81825d76b32b84` | ⚠️ Unaudited |
| MemoryPageFactRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x076cf2113b6eed19883a92454c473998fc8479e5`; ethereum `0x28067505e54b7ac2a5f860b343340be8e73edecd`; ethereum `0x96375087b2f6efc59e5e0dd5111b4d090ebfdd8b`; ethereum `0xa9b7e2dca4b7bd8161204c6c8a4e2db3750dfd2e`; ethereum `0xefbcce4659db72ec6897f46783303708cf9acef8` | ⚠️ Unaudited |
| MerkleStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01378dadf607ac74a072c956d8240d1df75bcca0`; ethereum `0x03e291611dc72d9c41e35f409333c0e3e10821fe`; ethereum `0x0d62bac5c346c78dc1b27107cabc5f4de057a830`; ethereum `0x26ec188f555f0c491083d280cf8162e9d5e0d386`; ethereum `0xfc359d4565a5f09a7b534ce8adc049eb99902607` | ⚠️ Unaudited |
| ModifyUpgradeDelayExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00e349a9ccca340b1e3dd48c4c77a2ba18b6d49` | ⚠️ Unaudited |
| OnchainVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1688abb0b5c72f34b7f78e857aa317ded5b5d339`; ethereum `0x2d542881e93491e765e5110c1e373fc2968e720a`; ethereum `0xb2ed005d0278179001a49a9969bb22ba8e98f31f` | ⚠️ Unaudited |
| OrderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x518c4a79a1102eedc987005ca8ce6b87ca14ddf8`; ethereum `0x806d435a82b0381bd884540c2235147c13b97fe6`; ethereum `0x886322af49d8ad0af440df1c0e5c94008e90c0bd` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x8426e8797f5a6cef602c99ed247ccb4fb6bf3e41`; ethereum `0x9bcf13c6b68450b427bfa86698d61901a8a3456d`; ethereum `0xb2f8b84ee090be376df7d11fd6b8942709efee54`; ethereum `0xc91a01497e7788d572be7f95507a37859947986f`; ethereum `0xf7896d449cad8e27eb13bc05b3030b58ef658e2d` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0fed12bd8b1b11c629001c436b90bcd99f4fec92`; ethereum `0x4a971c776309dbef4277ce3ec20a704b1175a0d1`; ethereum `0x8c2a011c916aee28f30817211e0eace89014516f`; ethereum `0xbbaf3b4ca41816753c3ac178453a7f024e3dde07`; ethereum `0xd85c64532f741e59c6bba0924061394671609928` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c075a0af1b3bff61be0e98dadd9c2344a617378`; ethereum `0x626211c1e9bc633f4d342af99f4e8bc93f11f3dd` | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc43f5526124877f9125e3b48101dca6d7c6b4ea3` | ⚠️ Unaudited |
| PerpetualState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9c117cad37f2ed8c99e36a40317d8cc340d4a0` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3fed7bf5bf3e738bc30fbe61b048fdcb82368545`; ethereum `0xebfea8ac94fbeecee91d457d8cbd3b047bfd2481` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x970d1fa79c64b256ef68bbfeab34137786811c7f`; ethereum `0xb3788a88f063b217227e27ae16ba550db3132be6`; ethereum `0xb5353268d8d4d711a92cb838f8fedfc2a66e50db` | ⚠️ Unaudited |
| ReplaceEscapeVerifierExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bb5527834385ac440732d35e8fd501ececa560` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1390f521a79babe99b69b37154d63d431da27a07`; ethereum `0x3071be11f9e92a9eb28f305e1fa033cd102714e7`; ethereum `0xc0251e680269d602e0524591ad3f644ff4ba491a` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x49401ddc4e0a858b5b4cf3d6de38393b7fac7378`; ethereum `0x4edd62189732e9ff476aba880b48c29432a7ac9b`; ethereum `0x7d2375a873cf858f02f97f40cbbbc03293f9a055`; ethereum `0xb8563ad5af1f79dd04937be8b572318c8e6f43ac`; ethereum `0xe6785c3aff4292c9d7c6b039f649672c45caffee` | ⚠️ Unaudited |
| StarkExchange | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392763 | `0xf5c9f957705bea56a7e806943f98f7777b995826` | ⚠️ Unaudited |
| StarkExchangeMigrationV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5fdcca53617f4d2b9134b29090c87d01058e27e9` | ⚠️ Unaudited |
| StarkExState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c3a4eff75a287fe6249cab49606fa25659929a2`; ethereum `0x4b9b30e6e135d5e39345a03f381d9c704b2af010`; ethereum `0x86d8f977c9cec503ad4e6805802cef62cde13773`; ethereum `0xedb67d40161d9fa660dcffe60f859b7381e4793a` | ⚠️ Unaudited |
| Starknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc109c4a1a3084ed15a97692fbef3e1fb32a6955` | ⚠️ Unaudited |
| StarknetERC20Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e233d613743297cdd27fafc5c1f5c1dc2a381b` | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xbb3400f107804dfb482565ff1ec8d8ae66747605`; ethereum `0xf6080d9fbeebcd44d89affbfd42f098cbff92816` | ⚠️ Unaudited |
| StarknetEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f3301bbbbb1dfa2c8d20d75b162afa6dbe37` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x283751a21eafbfcd52297820d27c1f1963d9b5b4` | ⚠️ Unaudited |
| StarkPerpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5a7a738528af22b4f5cfe70e5a1e07a2cfe643` | ⚠️ Unaudited |
| StarkPerpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c0df87e073755139101b35c0a51e065291cc2d3`; ethereum `0xd54f502e184b6b739d7d27a6410a67dc462d69c8` | ⚠️ Unaudited |
| TokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2dbc18a3ac126abe1ff90a83bbc3947ff7912afb`; ethereum `0x8536850750956c2feebecab786d82271a5467687`; ethereum `0x97aa9658cfe27d6382b71ff9e72d773615bd529e`; ethereum `0xa4e9524efba0cb6bd7474a48c14582deb300469e`; ethereum `0xf677a1e6261e55c1f3c33d6c9fcf20b476d57713` | ⚠️ Unaudited |
| TransferRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9a129909ebcb954bc065536d2bfafbd170d27a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205172f25e791975edb4def203f3789b01f43bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b72b9b0de3d029391155071df9163a0e6b7d322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f400c055df0746896a67980f52b5f0172190c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2823d6b37174d7fc443f7ed184a4634590544b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae85152f4882ac1e21025b633684f937bcfc859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45697cb1d898cb7a9e3871008b59cd263ae6784f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51439318084aa5197d5157c59fa7808104de1e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x579b2d6a095278658f632e059886c6650055a589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59aafd2eb1d42f96acb96eb182ce592a0c1646a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eab21c375912af4fc0c8d69de8eb34250df77be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64e48e5a65e9f47c976a0244f2df76507b0db43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655584fb66f617bb646fc670a399e2a6d4639d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f6e52ae2c12a169aa3af475a126343639bfd614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fb35875a3816a5d09d61f086feb6c252e096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0dff0e8dd7e4f1b972973e7a2bfef25639bf10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd387d150423af1f98bdd303a40c87f9192030c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75f0b08867792681cd14e2be7104ed394825fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe75534623157e1493fd4a3d3e009bd88a6f3f9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5af6239b4a2c7bd4efa273e541cb7726f6dd2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc126e8df298baa3530554122a458ad5ccf6f5a6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 200
- Live contracts: 1
- Unknown liveness contracts: 199
- Source-verified contracts: 180
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=3, contamination review=15, exact address book overlap=1, source verified unclassified=161, unverified unclassified=20

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | Committee<br>`0x89472921f016bf024aab1696a3c0d2dc2f7a32c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | candidate review | Committee<br>`0x8a8e80e0762243f0df39f2847808b7f6d62e2bb1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | candidate review | Committee<br>`0x90ceb3bd97284df8c3240f3a8c4aab29c1ee9542` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | CairoBootloaderProgram<br>`0x18186aee529b9fac9d51397a4beac6f5bb011db8` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | CpuFrilessVerifier<br>`0x024b2f66cc07a3f9361d5339035cef78b0eee393` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | EcdsaPointsXColumn<br>`0x0b2d74dc27308031713596898a6b56366205a6b5` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | EcdsaPointsYColumn<br>`0xc5ca4cd798d2aeb964126eee71ec572ddf2abd8a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | ForcedActions<br>`0x07228f73aa048f67893f4b966d1d09783edd8764` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | ModifyUpgradeDelayExternalInitializer<br>`0xf00e349a9ccca340b1e3dd48c4c77a2ba18b6d49` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | PedersenHashPointsXColumn<br>`0x8426e8797f5a6cef602c99ed247ccb4fb6bf3e41` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | PedersenHashPointsYColumn<br>`0x0fed12bd8b1b11c629001c436b90bcd99f4fec92` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | PerpetualState<br>`0xdf9c117cad37f2ed8c99e36a40317d8cc340d4a0` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | PerpetualTokensAndRamping<br>`0x3fed7bf5bf3e738bc30fbe61b048fdcb82368545` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | ReplaceEscapeVerifierExternalInitializer<br>`0x89bb5527834385ac440732d35e8fd501ececa560` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | StarkExState<br>`0x1c3a4eff75a287fe6249cab49606fa25659929a2` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | StarknetEthBridge<br>`0x5e70f3301bbbbb1dfa2c8d20d75b162afa6dbe37` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | StarkPerpetual<br>`0x0a5a7a738528af22b4f5cfe70e5a1e07a2cfe643` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | contamination review | TokensAndRamping<br>`0x2dbc18a3ac126abe1ff90a83bbc3947ff7912afb` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | exact address book overlap | Proxy<br>`0xf5c9f957705bea56a7e806943f98f7777b995826` | project_anchor | unknown | live | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | AllVerifiers<br>`0x5d8cc5659db74eebf19aa2bb39973f9339012ac5` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | AllVerifiers<br>`0x61d3389aa2d001c860859cc021153e40d557bf4b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | AllVerifiers<br>`0x62bca4db742a99c834e2c24b609656a70ea25379` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | AllVerifiers<br>`0xf65c115efd24102315af53f84ad65ad240bc9d57` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | AllVerifiers<br>`0xfbea22feb369db10c0d3a2aaa8f4939e76815f12` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CairoBootloaderProgram<br>`0x1dd8945200f5a09d6fe0ed68494c2ac41cd02e2d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CairoBootloaderProgram<br>`0x2503ed84d4353852a666ec548337fb2aa82a5576` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CairoBootloaderProgram<br>`0x33e7594ee58bf3dc608907e8d917d3410d17e387` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CairoBootloaderProgram<br>`0xabf068705d238e2980ec7f6f57a05ab29a82c115` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CallProxy<br>`0x0f58e286edeac10a197ba1906ea348bed3ee41a0` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CallProxy<br>`0x1fee2090492d824d71ee20e4035084d39d39aa43` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CallProxy<br>`0xb2419feb412ec9a5d6c76a0cdf60596941ca5c6f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CallProxy<br>`0xcc5b2c75cbbd281b2fc4b58c7d5b080d023c92f2` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CallProxy<br>`0xd4c4044aca68ebbcb81b13cc2699e1bca2d3f458` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x08745211194aa895083cbb5d54d47314c7e7fe6a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x140586af66f9da9db97fa857654c6c0cfbb16e23` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x16c65bc4b2ef4d0ee275e71ff9d665ce019e1435` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x1f5459aa7857291112a8172ae1328248948d9d13` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x5e1cc8256a2a6393aeb9d728b52f2068ccadb387` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x5f1a71f42ac77fadad126c7ed4c6875b52d249ea` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x7737ae8bf9c6e36166372cdddcb9cacc5be90e46` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x8d588ab4d3295a8a82f0b8df24b87b830331f3d1` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x9135274eb31bea793fa1e31da9954c1aec8c954a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x986083b1344a83b3e81ebde25455d872a194380a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0x98bfc870f78c0827412bf3edcfa901eadcda2035` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xa5e413d979084ee385204284be3c45371b44af64` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xaa766b0456114b658c45d89301870d66a1192b17` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xbd01f2cf3db41f04784eb71844f3f153b2ae7e2d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xc31f314ba06d5034a83c9d33cff7e7de3ec46527` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xc3c63f4a0c0b726b9e37dee4329ce6c5da6ae01e` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xcd05aeb4ca289cd603984721af9b0231dba231d5` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xdf9929178e0e9bc5b03f6d04e4ce89573f1ef52b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xf15f83bee32113aebe92ad98120cc4d9a66df027` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xf17bcbdac10c7123fd22daefc64cff5103d83212` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xf8b8d5193ce4e9edc734b3638b3dbcc5b7d1ab93` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuConstraintPoly<br>`0xfd00687ee4aae786233c008f44e884b35992431a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x04d4e67f8b6c67d63219cd088bc45e8e89fe6d73` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x17a5713b3ab066ad990af8415f2441dc7e6f08d8` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x2ac2e97dceeab8569f73e151e0a69f6b30eb461a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x2d70ec2e88a2b46078efa96f67810bed9293a604` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x4922f8750dfd040954b44f23980160342e308863` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x52ab702c1184b43553e0cb814ee5cbca60933f5a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x5cf08fbdd30a20baeae5a7abda1136ac85f04279` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x5f7bb95b1761bb57d03fc56c59cbf404be5a8563` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x7a4f7abd3899e3094dc5f043174574f0f5b3d8d3` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x92043f243831a9b0af379f0bed8513fabdabe513` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0x975dbd0c8e6f1527dea5b8885df2f5695ec1a33d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xaf7ceb9b500a5d1ea5c984a11d0e0a31d38643af` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xb6ee53325595ac10d6ac898973f1da081839c927` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xceab2e8088eeb79f268a25da908a71722f3aa325` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xe1e66efd6c103334b17cc2e752df8012c8db9d57` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xe6557b0b708ec767519a211d21b457e6157f4e93` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xeca5da0287d407a23f7c0a13a9aad87c7fbc10a3` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xef6476d0d5fe1ef869fe97bd88d0a3df44a4e1ba` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xf1e64ee81b2fe0c0a29da0ee1cc3c160b1f167ea` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xf8584916c737a30fe153d4424abdaa7b14aaedca` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuFrilessVerifier<br>`0xfedc9df4f53ca775315e27bc009ae17f02287f9e` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x0c6dec0b366b1bb4c14597cf1da8b4af2e7799b5` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x1144d637d7f350d4ad115dad5af1a704a99bbe43` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x3016f9ed9ae0258a49c994ac14ff29c219f3897b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x4df0adb8f6e9b26cd32fc88b271e9fd0567ec10a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x4f445164a2d3b9a4fba83bb0d0d7f51131d3c79e` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x4f795246fe639e5e6451cb1052c6e93ebd288938` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x85c0fc13f92020851c4710cc6a00c5c0877726c2` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x897c26115b8985f639a134b83627b53ae10cfc66` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x8ad328f3aa9277cb3b2d096042a3ba792d25b129` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0x9a720131d037afebdc78ee6eaeb421ecbccf6e54` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xa7abcd296eb1b6a0363118a6fa0205a551968490` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xa98f9c50c9cf5e78317164d751ccab77597b89e4` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xb597f7f9e2c9fb4cc349b9c47f652d097ce6874d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xb755f65671de8813664bc5c4dfc9545ecc3a1f12` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xc22fea60bb340f5213fb75dd1a87063e90c1b7de` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xc874c0a6c0b16de54cc3ec06d01fb8ae1b2d81ef` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xe97ca08ed0ce8508177cd28eb9c74104497b8302` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xf2add902e12b1146cb357db10a56e8b62cf59625` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xf336bcb1d5861f98c9ac06eeeb134e278b624a4c` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xf35f6dee8cad4ad6316e7a2ddbca805692794983` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xf769f7a3d87c2bcfdf6e044d60605006ee87a6b3` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | CpuOods<br>`0xfceeb130efcfbe4894e806ee6cbb913a7ef9f2f9` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsXColumn<br>`0x52c4bb16fba75f6ebd672568267bc334255fb3c5` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsXColumn<br>`0x8528e4b70c33ed932b3f7caaff0d1b2b641dd321` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsXColumn<br>`0x8a9edfbcae434a8f29f24cbb3bc1480517e7c13f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsXColumn<br>`0xace04f569a1f5c08b4ab8d37dbe04186646fb547` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsYColumn<br>`0xcc45eee0128e40fc30a062359fab90e4b4ee0790` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsYColumn<br>`0xd14fd39630ec941c3ba6c791e3af9e0027013a15` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsYColumn<br>`0xfc4988f67e3bd268187789035f361c11e8e9437c` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | EcdsaPointsYColumn<br>`0xffc5df8d6f010f4e28633c4a7b2d5929edfd9457` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FinalizableGpsFactAdapter<br>`0x8260d7ab762db278880811906fe5a2b342ea2ece` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FinalizableGpsFactAdapter<br>`0x8ab85d3a1816a0d7ece0f57af6b27fc3b05532f4` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | ForcedActions<br>`0x0d7c8d7a16c7832869d8feef02730238cdfe083a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | ForcedActions<br>`0x3799ad2a4eb4e882219b02c036656d4ecbd437a1` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FriStatementContract<br>`0x689f886b4e61b5907166b2506db5e89609443045` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FriStatementContract<br>`0x932457426841dc45ca4abc7ebdafe60133474363` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FriStatementContract<br>`0xe74999fbc71455462c8143b56797d3bb84c1064b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FriStatementContract<br>`0xecf98a84eea8f83d8510c19488c1bbc2db9eda6d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | FriStatementContract<br>`0xf6b83ccadeee478fc372af6ca7069b14fbc5e1b1` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsFactRegistryAdapter<br>`0x472fa70390a46e1815cdfe96b16b7d232e917388` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsFactRegistryAdapter<br>`0x5339ab7557b3152b91a57d10b0caf5da88db5143` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsFactRegistryAdapter<br>`0x575dd6eaa04b71924ce63f6d6ca3ae7a9960b531` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsFactRegistryAdapter<br>`0x6e3abce72a3cd5edc05e59283c733fd4bf8b3bae` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsFactRegistryAdapter<br>`0x733872718e87119be00dc48a9099b5c444ddd1fb` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsFactRegistryAdapter<br>`0xfa6a50fa22b427f058450247feab4e0acba9e16d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsStatementVerifier<br>`0x45769d52d47e9cbfac9a2df68c2051adb0630f17` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsStatementVerifier<br>`0x522b2871c3918b92c165115d862e50e440905068` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsStatementVerifier<br>`0x894c4a12548fb18eaa48cf34f9cd874fc08b7fc3` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsStatementVerifier<br>`0x9bca5c55137057208ee5b14f3e269133bdcac1f8` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsStatementVerifier<br>`0xa739b175325cca7b71fcb51c3032935ef7ac338f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | GpsStatementVerifier<br>`0xb1eda32c467569fbdc8c3e041c81825d76b32b84` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MemoryPageFactRegistry<br>`0x076cf2113b6eed19883a92454c473998fc8479e5` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MemoryPageFactRegistry<br>`0x28067505e54b7ac2a5f860b343340be8e73edecd` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MemoryPageFactRegistry<br>`0x96375087b2f6efc59e5e0dd5111b4d090ebfdd8b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MemoryPageFactRegistry<br>`0xa9b7e2dca4b7bd8161204c6c8a4e2db3750dfd2e` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MemoryPageFactRegistry<br>`0xefbcce4659db72ec6897f46783303708cf9acef8` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MerkleStatementContract<br>`0x01378dadf607ac74a072c956d8240d1df75bcca0` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MerkleStatementContract<br>`0x03e291611dc72d9c41e35f409333c0e3e10821fe` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MerkleStatementContract<br>`0x0d62bac5c346c78dc1b27107cabc5f4de057a830` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MerkleStatementContract<br>`0x26ec188f555f0c491083d280cf8162e9d5e0d386` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | MerkleStatementContract<br>`0xfc359d4565a5f09a7b534ce8adc049eb99902607` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | OnchainVaults<br>`0x1688abb0b5c72f34b7f78e857aa317ded5b5d339` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | OnchainVaults<br>`0x2d542881e93491e765e5110c1e373fc2968e720a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | OnchainVaults<br>`0xb2ed005d0278179001a49a9969bb22ba8e98f31f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | OrderRegistry<br>`0x518c4a79a1102eedc987005ca8ce6b87ca14ddf8` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | OrderRegistry<br>`0x806d435a82b0381bd884540c2235147c13b97fe6` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | OrderRegistry<br>`0x886322af49d8ad0af440df1c0e5c94008e90c0bd` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsXColumn<br>`0x9bcf13c6b68450b427bfa86698d61901a8a3456d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsXColumn<br>`0xb2f8b84ee090be376df7d11fd6b8942709efee54` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsXColumn<br>`0xc91a01497e7788d572be7f95507a37859947986f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsXColumn<br>`0xf7896d449cad8e27eb13bc05b3030b58ef658e2d` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsYColumn<br>`0x4a971c776309dbef4277ce3ec20a704b1175a0d1` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsYColumn<br>`0x8c2a011c916aee28f30817211e0eace89014516f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsYColumn<br>`0xbbaf3b4ca41816753c3ac178453a7f024e3dde07` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PedersenHashPointsYColumn<br>`0xd85c64532f741e59c6bba0924061394671609928` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PerpetualEscapeVerifier<br>`0x5c075a0af1b3bff61be0e98dadd9c2344a617378` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PerpetualEscapeVerifier<br>`0x626211c1e9bc633f4d342af99f4e8bc93f11f3dd` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PerpetualForcedActions<br>`0xc43f5526124877f9125e3b48101dca6d7c6b4ea3` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | PerpetualTokensAndRamping<br>`0xebfea8ac94fbeecee91d457d8cbd3b047bfd2481` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Proxy<br>`0x1390f521a79babe99b69b37154d63d431da27a07` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Proxy<br>`0x2cabd63f6f28b493f33d13e34060f0959f3570ae` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Proxy<br>`0x3071be11f9e92a9eb28f305e1fa033cd102714e7` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Proxy<br>`0xc0251e680269d602e0524591ad3f644ff4ba491a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Proxy<br>`0xc8c212f11f6acca77a7afeb7282deba5530eb46c` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Proxy<br>`0xd54f502e184b6b739d7d27a6410a67dc462d69c8` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | ProxyUtils<br>`0x970d1fa79c64b256ef68bbfeab34137786811c7f` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | ProxyUtils<br>`0xb3788a88f063b217227e27ae16ba550db3132be6` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | ProxyUtils<br>`0xb5353268d8d4d711a92cb838f8fedfc2a66e50db` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExchange<br>`0x49401ddc4e0a858b5b4cf3d6de38393b7fac7378` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExchange<br>`0x4edd62189732e9ff476aba880b48c29432a7ac9b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExchange<br>`0x7d2375a873cf858f02f97f40cbbbc03293f9a055` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExchange<br>`0xb8563ad5af1f79dd04937be8b572318c8e6f43ac` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExchange<br>`0xe6785c3aff4292c9d7c6b039f649672c45caffee` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExState<br>`0x4b9b30e6e135d5e39345a03f381d9c704b2af010` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExState<br>`0x86d8f977c9cec503ad4e6805802cef62cde13773` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkExState<br>`0xedb67d40161d9fa660dcffe60f859b7381e4793a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | Starknet<br>`0xdc109c4a1a3084ed15a97692fbef3e1fb32a6955` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarknetERC20Bridge<br>`0x56e233d613743297cdd27fafc5c1f5c1dc2a381b` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | StarkPerpetual<br>`0x2c0df87e073755139101b35c0a51e065291cc2d3` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | TokensAndRamping<br>`0x8536850750956c2feebecab786d82271a5467687` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | TokensAndRamping<br>`0x97aa9658cfe27d6382b71ff9e72d773615bd529e` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | TokensAndRamping<br>`0xa4e9524efba0cb6bd7474a48c14582deb300469e` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | TokensAndRamping<br>`0xf677a1e6261e55c1f3c33d6c9fcf20b476d57713` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | source verified unclassified | TransferRegistry<br>`0xbe9a129909ebcb954bc065536d2bfafbd170d27a` | non_address_book | unknown | unknown | verified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0205172f25e791975edb4def203f3789b01f43bb` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b72b9b0de3d029391155071df9163a0e6b7d322` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f400c055df0746896a67980f52b5f0172190c45` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2823d6b37174d7fc443f7ed184a4634590544b01` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ae85152f4882ac1e21025b633684f937bcfc859` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45697cb1d898cb7a9e3871008b59cd263ae6784f` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51439318084aa5197d5157c59fa7808104de1e7b` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x579b2d6a095278658f632e059886c6650055a589` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59aafd2eb1d42f96acb96eb182ce592a0c1646a8` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eab21c375912af4fc0c8d69de8eb34250df77be` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64e48e5a65e9f47c976a0244f2df76507b0db43a` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x655584fb66f617bb646fc670a399e2a6d4639d93` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f6e52ae2c12a169aa3af475a126343639bfd614` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaec1fb35875a3816a5d09d61f086feb6c252e096` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe0dff0e8dd7e4f1b972973e7a2bfef25639bf10` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd387d150423af1f98bdd303a40c87f9192030c8f` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd75f0b08867792681cd14e2be7104ed394825fb9` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe75534623157e1493fd4a3d3e009bd88a6f3f9a6` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5af6239b4a2c7bd4efa273e541cb7726f6dd2bc` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc126e8df298baa3530554122a458ad5ccf6f5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x3de55343499f59ceb3f1de47f2cd7eab28f2f5c6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf5c9f957705bea56a7e806943f98f7777b995826` | StarkExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
